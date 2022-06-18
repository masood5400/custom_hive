part of hive;

class CastUtils {
  dynamic cast<NewType>({required Object? currentValue}) {
    dynamic castedValue;
    if (currentValue != null) {
      switch (currentValue.runtimeType) {
        case int:
          {
            castedValue = _castFromInt<NewType>(value: currentValue);
            break;
          }
        case double:
          {
            castedValue = _castFromDouble<NewType>(value: currentValue);
            break;
          }
        case String:
          {
            castedValue = _castFromString<NewType>(value: currentValue);
            break;
          }
        case bool:
          {
            castedValue = _castFromBool<NewType>(value: currentValue);
            break;
          }
      }
    }
    return castedValue;
  }

  dynamic _castFromInt<NewType>({required Object value}) {
    dynamic castedValue;
    switch (NewType.runtimeType) {
      case int:
        {
          castedValue = value;
          break;
        }
      case double:
        {
          castedValue = (value as int).toDouble();
          break;
        }
      case String:
        {
          castedValue = value.toString();
          break;
        }
      case bool:
        {
          castedValue = (value as int) == 1;
          break;
        }
    }
    return castedValue;
  }

  dynamic _castFromDouble<NewType>({required Object value}) {
    dynamic castedValue;
    switch (NewType.runtimeType) {
      case int:
        {
          castedValue = (value as double).toInt();
          break;
        }
      case double:
        {
          castedValue = value;
          break;
        }
      case String:
        {
          castedValue = value.toString();
          break;
        }
      case bool:
        {
          castedValue = (value as double) > 0;
          break;
        }
    }
    return castedValue;
  }

  dynamic _castFromString<NewType>({required Object value}) {
    dynamic castedValue;
    switch (NewType.runtimeType) {
      case int:
        {
          castedValue = int.tryParse(value as String);
          break;
        }
      case double:
        {
          castedValue = double.tryParse(value as String);
          break;
        }
      case String:
        {
          castedValue = value;
          break;
        }
      case bool:
        {
          castedValue =
              (value as String).toLowerCase() == 'true' || value == '1';
          break;
        }
    }
    return castedValue;
  }

  dynamic _castFromBool<NewType>({required Object value}) {
    dynamic castedValue;
    switch (NewType.runtimeType) {
      case int:
        {
          castedValue = (value as bool) ? 1 : 0;
          break;
        }
      case double:
        {
          castedValue = (value as bool) ? 1.0 : 0.0;
          break;
        }
      case String:
        {
          castedValue = (value as bool) ? 'true' : 'false';
          break;
        }
      case bool:
        {
          castedValue = value;
          break;
        }
    }
    return castedValue;
  }
}
