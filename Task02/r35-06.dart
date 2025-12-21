void main(){

}
class Product {
  String _name = '';
  double _price = 0;

  set name(String value) {
    if (value.isEmpty) {
      throw ArgumentError('the name shouldnot be empty ');
    }
    _name = value;
  }

  String get name => _name;

  set price(double value) {
    if (value <= 0) {
      throw ArgumentError('the price should be greater than 0');
    }
    _price = value;
  }

  double get price => _price;
}

//class movie
class Movie {
  String _title = '';
  double _rating = 0;

  set title(String value) {
    if (value.isEmpty) {
      throw ArgumentError(' the address should not be empty ');
    }
    _title = value;
  }

  String get title => _title;

  // Setter for rating
  set rating(double value) {
    if (value < 0 || value > 10) {
      throw ArgumentError(' the rate should be between 0 and 10');
    }
    _rating = value;
  }

  double get rating => _rating;

  String get description => 'movie $_title have rate $_rating/10';
}

//password manager
class PasswordManager {
  String _password = '';

  // Setter for password
  set password(String value) {
    if (value.length < 6) {
      throw ArgumentError(' the password should be at least 6 digits');
    }
    _password = value;
  }

  String get password => '*****';

  void changePassword(String newPassword) {
    if (newPassword.length < 6) {
      throw ArgumentError('the new password should be at least 6 digits');
    }
    _password = newPassword;
  }

  String readPassword() {
    return _password;
  }
}



class ExamResult {
    
  String _studentName;
  int _score;

  ExamResult({
    required String studentName,
    required int score,
  })  : _studentName = studentName.trim(),
        _score = score {
  
    this.studentName = studentName;
    this.score = score;
  }
  String get studentName => _studentName;
  set studentName(String value) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) {
      throw ArgumentError('studentName cannot be empty.');
    }
    _studentName = trimmed;
  }
 int get score => _score;
  set score(int value) {
    if (value < 0 || value > 100) {
      throw ArgumentError('score must be between 0 and 100.');
    }
    _score = value;
  }
  String get grade {
    if (_score >= 85) {
      return 'excellent';
    } else if (_score >= 65) {
      return 'good';
    } else {
      return 'weak';
    }
  }

  @override
  String toString() => 'ExamResult(studentName: $_studentName, score: $_score, grade: $grade)';
}



class BankAccount {
  double _balance = 0;

   
  double get balance => _balance;


  set balance(double value) {
    if (value < 0) {
      throw ArgumentError('balance cannot be negative');
    }
    _balance = value;
  }

  void deposit(double amount) {
    if (amount <= 0) {
      throw ArgumentError('  deposit amount must be greater than zero');
    }
    _balance += amount;
    print('done adding : $amount balance is: $balance pounds');
  }


  void withdraw(double amount) {
    if (amount <= 0) {
      throw ArgumentError('   withdraw amount must be greater than zero');
    }
    if (amount > _balance) {
      throw ArgumentError('  insufficient balance');
    }
    _balance -= amount;
    print('withdraw done: $amount :balace now is: $balance pounds');
  }

}