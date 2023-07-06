import 'dart:io';

void main() {
  //q1 sol:

  print('please enter your number');
  List<num> a = [];
  for (var i = 1; i <= 10; i++) {
    print('Please enter your number ${10 - i} more times');
    var e = int.parse(stdin.readLineSync()!);
    a.add(e);
  }

  for (var b in a) {
    if (b % 2 == 0) {
      print(b);
    }
  }

//q2 sol:
  num first_var = 0;
  num second_var = 1;
  for (var ii = 0; ii < 8; ii++) {
    num total = first_var + second_var;
    print(total);
    first_var = second_var;
    second_var = total;
  }

//q3 sol:
  print('enter your prime number');
  var input = int.parse(stdin.readLineSync()!);

  if (input / 2 == 1) {
    print('It is a Prime number');
  } else {
    print("it is not a prime number");
  }
//q4 sol:

  var cc = 1;
  var fact = 1;
  while (cc <= 5) {
    fact = fact * cc;
    cc += 1;
  }
  print(fact);

//q5 sol:

  var nos_sum = 0;
  for (var aaa = 1; aaa <= 5; aaa++) {
    print('please enter your numbers to sum');
    var no_input = int.parse(stdin.readLineSync()!);

    nos_sum += no_input;
  }
  print(nos_sum);

//q6 sol:

  var arr_list = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  var val_check = 0;
  for (var q = 0; q < arr_list.length; q++) {
    if (arr_list[q] > val_check) {
      val_check = arr_list[q];
    } else {
      null;
    }
  }
  print(val_check);

//q7 sol:

  var table_input = 5;

  for (var t = 1; t <= 10; t++) {
    print("${table_input} x ${t} = ${table_input * t}");
  }

//q9 sol:

//q10 sol:

  List cube_numbers = [1, 2, 3, 4, 5];

  cube_numbers.forEach((e) {
    print('$e cube is ${e * e * e}');
  });

//q11 sol:

  var ast = '';
  for (var o = 1; o <= 4; o++) {
    ast = ast + '*';
    print(ast);
  }

//q12 sol:
  var num_triangle = '';
  for (var oo = 1; oo <= 4; oo++) {
    num_triangle += oo.toString();

    print(num_triangle);
  }

//q13 sol:

  for (var oo = 1; oo <= 4; oo++) {
    var res = '';
    {
      for (var j = 1; j <= oo; j++) {
        res += j.toString();
      }
    }
    print(res);
  }

  //q14 sol:

  //q17 sol:

  var email = 'abc@gmail.com';
  var pass = 'aa';
  var check = 'N';
  while (check == 'N') {
    if (check == 'N') {
      print('please enter your email');
      var email_input = stdin.readLineSync();
      print('please enter your password');
      var pass_input = stdin.readLineSync();

      if (email == email_input && pass == pass_input) {
        print('welcome you are logged in');
        check = 'Y';
      } else {
        check = 'N';
        print('invalid email or password');
        print('please enter your email');
        email_input = stdin.readLineSync();
        print('please enter your password');
        pass_input = stdin.readLineSync();
      }
    }
  }

//q18 sol:

  var email = ['abc@gmail.com', 'user1@gmail.com', 'user2@gmail.com'];
  var pass = ['pass', 'pass2', 'pass3', 'pass4'];
  var check = 'N';

  while (check == 'N') {
    if (check == 'N') {
      print('please enter your email');
      var email_input = stdin.readLineSync();
      print('please enter your password');
      var pass_input = stdin.readLineSync();

      if (email.contains(email_input) && pass.contains(pass_input)) {
        print('welcome you are logged in');
        check = 'Y';
      } else {
        check = 'N';
        print('invalid email or password');
        print('please enter your email');
        email_input = stdin.readLineSync();
        print('please enter your password');
        pass_input = stdin.readLineSync();
      }
    }
  }

  //q19 sol:

  var List2 = [];

  for (var kk = 0; kk < 3; kk++) {
    var get_num = int.parse(stdin.readLineSync()!);
    List2.add(get_num);
  }
  for (var list_print in List2) {
    if (list_print > 5) {
      print(list_print);
    } else {
      null;
    }
  }

//q23 sol:

  var std_list = [];
  int total_marks = 200;
  for (var std_no = 1; std_no < 3; std_no++) {
    print('enter student $std_no name');
    var std_name = stdin.readLineSync();
    print('enter student $std_no section');
    var std_section = stdin.readLineSync();
    print('enter student $std_no rollno');
    var std_roll = stdin.readLineSync();
    print('enter subject 1 marks');
    var sub1_marks = int.parse(stdin.readLineSync()!);
    print('enter subject 2 marks');
    var sub2_marks = int.parse(stdin.readLineSync()!);
    var std_marks = [sub1_marks, sub2_marks];
    var std_obj = {
      'name': std_name,
      'section': std_section,
      'marks': std_marks,
      'roll_number': std_roll
    };
    dynamic marks_tot = 0;
    for (dynamic a in std_marks) {
      // marks_tot += a;

      marks_tot += a;
    }
    print(marks_tot);
    std_obj['marks_obt'] = marks_tot;
    std_list.add(std_obj);
  }

  // for (var a in std_list) {
  //   print(a["name"]);
  // }

  for (var a in std_list) {
    print('student ${a["name"]} got  ${(a["marks_obt"] / 200) * 100} %');
  }

//q24 sol:

  var no_list = [-22, 33, -45, -8, -25, 9, 09, 88];
  var list_sum = 0;
  var cc = no_list.map(
    (e) {
      if (e < 0) {
        list_sum += e;
      } else {
        null;
      }
    },
  ).toList();
  print(list_sum);

//q25 sol:
  List<int> prime_nos = [4, 7, 10, 13, 16, 19, 22, 25, 28, 31];
  List<int> only_prime_nos = [];
  var ccc = prime_nos.map(
    (e) {
      if (e % 2 == 0) {
        null;
      } else {
        only_prime_nos.add(e);
      }
    },
  ).toList();
  print(only_prime_nos);
}
