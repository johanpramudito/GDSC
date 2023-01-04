void main()
{
  String text = 'The bright sun shone brightly in the clear blue sky as I walked through the bustling city streets, surrounded by towering skyscrapers and bustling crowds of people. The vibrant colors of the storefronts and advertisements seemed to pop against the bright blue sky, and the sounds of honking cars and chatter filled the air. As I walked, I couldn\'t help but feel a sense of excitement and energy, knowing that there was so much to see and do in this vibrant and lively city. Despite the chaos and noise, I felt at home in this bustling metropolis, and I couldn\'t wait to see what the day had in store for me.';
  String resultext = text.replaceAll(RegExp('[^A-Za-z0-9\' ]'), '');
  String resultext1 = resultext.toLowerCase();
  List<String> result = resultext1.split(' ');
  
  var map = Map();
  var list = [];

  result.forEach((element) {
    if(!map.containsKey(element)) {
      map[element] = 1;
    } else {
      map[element] += 1;
    }
  });
  
  map.removeWhere((key, value) => value == 1);
  map.entries.map((e) => list.add(e.key)).toList();
  print(list);
}
