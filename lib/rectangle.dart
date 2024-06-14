class MyRectangle{
  double? length, breadth;

  MyRectangle(this.length, this.breadth);

  //calculate area
  double get area => length! * breadth!;
  //calculate perimeter
  double get perimeter => 2 * (length! + breadth!);

  void display(){
    print('Length:  $length , Breadth: $breadth , Area: $area , Perimeter: $perimeter');
  }

  Map<String, dynamic> toJson(){
    return {
      'length': length,
      'breadth': breadth,
    };
  }

  factory MyRectangle.fromJson(Map<String, dynamic> json){
    return MyRectangle(json['length'], json['breadth']);
  }
}