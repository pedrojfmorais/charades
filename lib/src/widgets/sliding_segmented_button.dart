import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

// --- Constants for UI Styling ---
class _SlidingConstants {
  // Dimensions
  static const double defaultBorderRadius = 32.0;
  static const double containerPaddingAll = 4.0;
  static const double buttonPaddingHorizontal = 16.0;
  static const double buttonPaddingVertical = 8.0;
  static const double buttonHorizontalMargin = 2.0;

  // Animation
  static const Duration indicatorAnimationDuration = Duration(
    milliseconds: 250,
  );
  static const Duration textAnimationDuration = Duration(milliseconds: 200);
  static const Curve animationCurve = Curves.easeInOut;

  // Text
  static const double unselectedOpacity = 0.5;
}

class SlidingSegmentedButton<T> extends StatefulWidget {
  final List<T> options;
  final T selectedValue;
  final ValueChanged<T> onValueChanged;
  final String Function(T value) labelBuilder;
  final Color? backgroundColor;
  final Color? indicatorColor;
  final Color? selectedTextColor;
  final Color? unselectedTextColor;
  final EdgeInsets? containerPadding;
  final EdgeInsets? buttonPadding;
  final double? borderRadius;

  const SlidingSegmentedButton({
    super.key,
    required this.options,
    required this.selectedValue,
    required this.onValueChanged,
    required this.labelBuilder,
    this.backgroundColor,
    this.indicatorColor,
    this.selectedTextColor,
    this.unselectedTextColor,
    this.containerPadding,
    this.buttonPadding,
    this.borderRadius,
  }) : assert(options.length >= 2, 'Must have at least 2 options');

  @override
  State<SlidingSegmentedButton<T>> createState() =>
      _SlidingSegmentedButtonState<T>();
}

class _SlidingSegmentedButtonState<T> extends State<SlidingSegmentedButton<T>> {
  late List<GlobalKey> _buttonKeys;

  @override
  void initState() {
    super.initState();
    _buttonKeys = List.generate(widget.options.length, (_) => GlobalKey());
  }

  @override
  void didUpdateWidget(SlidingSegmentedButton<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    const deepEquality = DeepCollectionEquality();
    if (!deepEquality.equals(oldWidget.options, widget.options)) {
      _buttonKeys = List.generate(widget.options.length, (_) => GlobalKey());
    }
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = widget.options.indexOf(widget.selectedValue);
    final borderRadius =
        widget.borderRadius ?? _SlidingConstants.defaultBorderRadius;

    return Container(
      padding:
          widget.containerPadding ??
          const EdgeInsets.all(_SlidingConstants.containerPaddingAll),
      decoration: BoxDecoration(
        color:
            widget.backgroundColor ??
            Theme.of(context).colorScheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: IgnorePointer(
              child: _SlidingIndicator(
                selectedIndex: selectedIndex,
                buttonKeys: _buttonKeys,
                color:
                    widget.indicatorColor ??
                    Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: borderRadius,
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: widget.options.asMap().entries.map((entry) {
              final index = entry.key;
              final option = entry.value;
              final isSelected = option == widget.selectedValue;
              return _SegmentButton(
                key: _buttonKeys[index],
                label: widget.labelBuilder(option),
                isSelected: isSelected,
                onTap: () => widget.onValueChanged(option),
                selectedTextColor: widget.selectedTextColor,
                unselectedTextColor: widget.unselectedTextColor,
                buttonPadding: widget.buttonPadding,
                borderRadius: borderRadius,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class _SlidingIndicator extends StatefulWidget {
  final int selectedIndex;
  final List<GlobalKey> buttonKeys;
  final Color color;
  final double borderRadius;

  const _SlidingIndicator({
    required this.selectedIndex,
    required this.buttonKeys,
    required this.color,
    required this.borderRadius,
  });

  @override
  State<_SlidingIndicator> createState() => _SlidingIndicatorState();
}

class _SlidingIndicatorState extends State<_SlidingIndicator> {
  double _left = 0;
  double _width = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _updatePosition());
  }

  @override
  void didUpdateWidget(_SlidingIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((_) => _updatePosition());
  }

  void _updatePosition() {
    if (!mounted) return;

    final buttonKey = widget.buttonKeys[widget.selectedIndex];
    final renderBox =
        buttonKey.currentContext?.findRenderObject() as RenderBox?;

    if (renderBox != null && renderBox.hasSize) {
      final stackBox = context.findRenderObject() as RenderBox?;
      if (stackBox != null) {
        final buttonPosition = renderBox.localToGlobal(Offset.zero);
        final stackPosition = stackBox.localToGlobal(Offset.zero);

        setState(() {
          _left = buttonPosition.dx - stackPosition.dx;
          _width = renderBox.size.width;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          duration: _SlidingConstants.indicatorAnimationDuration,
          curve: _SlidingConstants.animationCurve,
          left: _left,
          top: 0,
          bottom: 0,
          width: _width,
          child: Container(
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(widget.borderRadius),
            ),
          ),
        ),
      ],
    );
  }
}

class _SegmentButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final Color? selectedTextColor;
  final Color? unselectedTextColor;
  final EdgeInsets? buttonPadding;
  final double borderRadius;

  const _SegmentButton({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
    this.selectedTextColor,
    this.unselectedTextColor,
    this.buttonPadding,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: _SlidingConstants.buttonHorizontalMargin,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(borderRadius),
          child: Padding(
            padding:
                buttonPadding ??
                const EdgeInsets.symmetric(
                  horizontal: _SlidingConstants.buttonPaddingHorizontal,
                  vertical: _SlidingConstants.buttonPaddingVertical,
                ),
            child: AnimatedDefaultTextStyle(
              duration: _SlidingConstants.textAnimationDuration,
              curve: _SlidingConstants.animationCurve,
              style: (theme.textTheme.labelLarge ?? const TextStyle()).copyWith(
                color: isSelected
                    ? (selectedTextColor ??
                          theme.colorScheme.onSecondaryContainer)
                    : (unselectedTextColor ??
                          theme.colorScheme.onSecondaryContainer.withValues(
                            alpha: _SlidingConstants.unselectedOpacity,
                          )),
              ),
              child: Text(label),
            ),
          ),
        ),
      ),
    );
  }
}
