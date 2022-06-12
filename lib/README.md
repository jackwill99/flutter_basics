### documentation
Make document in flutter -> use ///

`In flutter, when state changes, rebuild and repaint it's widgets and all of it's component widgets`

## Stateless Vs Stateful
Stateless -> Will re-rendered when input data(props as in js) changes
Stateful  -> Will re-rendered when input data or local data variable changes

`In Widget, you can define that class is with "c" icon and element is with "e". e can call it's key and class can initialize the instance property`

### SizedBox Vs Container
If you want to <b>only</b> control `width and height`, u should use `SizedBox`.

### VoidCallback Vs Function
As you don’t want to return a value here, you will need to register a VoidCallback.
Where you want to return a value back to the parent or give a parameter, you will want to use Function(x).

```dart
class Test {
  Function(int) fCall;
  Test(this.fCall);
}

void main(){
  
  int fCall (int tt){
    return tt * 10;
  }
  
  var t1 = Test(fCall);
  print(t1.fCall(5));
}

```

### List Spread (...)
The element type 'Iterable<Answer>' can't be assigned to the list type 'Widget'.
So we use spread operator

### .toList()
'Iterable<Answer>' element type can be changed to list.

## final Vs const
final -> Initial state, we don't define it's value. After first time in run time, we define it's value and we can't change it later.
const -> It's value is constant and can never change.
         
## Getter & Setter
Getter and setter methods are the class methods used to manipulate the data of the class fields. Getter is used to read or get the data of the class field whereas setter is used to set the data of the class field to some variable.

```dart
// Creating Class named Test
class Test {
  // Creating a Field/Property
  String name;

  // Creating the getter method
  // to get input from Field/Property
  String get getName {
  	return name;
  }

  // Creating the setter method
  // to set the input in Field/Property
  set setName(String str) {
  	name = str;
  }
}

void main() {
  // Creating Instance of class
  Test t1 = Test();

  // Calling the set_name method(setter method we created)
  // To set the value in Property "name"
  t1  = "GeeksForGeeks";

  // Calling the get_name method(getter method we created)
  // To get the value from Property "name"
  print("Welcome to ${t1.getName}");
}


```

