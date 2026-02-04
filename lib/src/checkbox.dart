import 'package:flutter/material.dart';

enum CheckboxShape { square, rounded, circle }

class CustomCheckbox extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool>? onChanged;

  final Color activeColor;
  final Color inactiveColor;
  final Color checkColor;

  final double size;
  final double borderRadius;

  final Widget? icon;
  final String? label;
  final TextStyle? labelStyle;

  final CheckboxShape shape;
  final bool isAnimated;
  final Duration animationDuration;

  const CustomCheckbox({
    super.key,
    this.initialValue = false,
    this.onChanged,
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.grey,
    this.checkColor = Colors.white,
    this.size = 24,
    this.borderRadius = 8,
    this.icon,
    this.label,
    this.labelStyle,
    this.shape = CheckboxShape.square,
    this.isAnimated = true,
    this.animationDuration = const Duration(milliseconds: 250),
  });

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  void _toggle() {
    setState(() {
      _value = !_value;
    });

    if (widget.onChanged != null) {
      widget.onChanged!(_value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggle,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            duration: widget.isAnimated
                ? widget.animationDuration
                : Duration.zero,
            curve: Curves.easeInOut,
            height: widget.size,
            width: widget.size,
            decoration: BoxDecoration(
              color: _value ? widget.activeColor : Colors.transparent,
              shape: widget.shape == CheckboxShape.circle
                  ? BoxShape.circle
                  : BoxShape.rectangle,
              borderRadius: widget.shape == CheckboxShape.circle
                  ? null
                  : BorderRadius.circular(
                      widget.shape == CheckboxShape.rounded
                          ? widget.borderRadius
                          : 0,
                    ),
              border: Border.all(
                color: _value ? widget.activeColor : widget.inactiveColor,
                width: 2,
              ),
            ),
            child: Center(
              child: AnimatedScale(
                scale: _value ? 1 : 0,
                duration: widget.isAnimated
                    ? widget.animationDuration
                    : Duration.zero,
                child: AnimatedOpacity(
                  opacity: _value ? 1 : 0,
                  duration: widget.isAnimated
                      ? widget.animationDuration
                      : Duration.zero,
                  child:
                      widget.icon ??
                      Icon(
                        Icons.check,
                        size: widget.size * 0.6,
                        color: widget.checkColor,
                      ),
                ),
              ),
            ),
          ),
          if (widget.label != null) ...[
            const SizedBox(width: 8),
            Text(
              widget.label!,
              style: widget.labelStyle ?? const TextStyle(fontSize: 16),
            ),
          ],
        ],
      ),
    );
  }
}
