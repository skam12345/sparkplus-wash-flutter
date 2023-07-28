import 'package:flutter/material.dart';
import 'package:sparkplus_project_modify_flutter/components/args/membership_opt.dart';

class MembershipPhoneInputViewModel with ChangeNotifier {
  // Set Instance Location
  String _inputBox = '';
  String _phoneNumber = '';
  // Get Instance Location
  String get inputBox => _inputBox;
  String get phoneNumber => _phoneNumber;
  // Constructor
  MembershipPhoneInputViewModel() {

  }
  // General Instance Location
  var keyPad = [['1', '2', '3'], ['4', '5', '6'], ['7', '8', '9'], ['010', '0', 'back']];
  // Setting Instance Definition Location
  set inputBox(String inputBox) {
    _inputBox = inputBox;
    notifyListeners();
  }

  set phoneNumber(String phoneNumber) {
    _phoneNumber = phoneNumber;
    notifyListeners();
  }
  // Real Proccess Function Location
  clickKeyPad(String data) {
    if(data != 'back') {
      if(inputBox.length <= 13) {
        inputBox += data;
      }
      if(inputBox.length == 3) {
        inputBox += '-';
      }else if(inputBox.length == 8) {
        inputBox += '-';
      }
    }else {
      if(inputBox.length != 0) {
        inputBox = inputBox.substring(0, inputBox.length - 1);
      }
    }
  }

  recognizePhoneNumber(BuildContext context, MembershipOpt args) {
    if(inputBox.length != 13) {
      showDialog(
        context: context, 
        builder: (context) {
          return AlertDialog(
            content: Container(
              width: 450,
              height: 280,
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '휴대폰 번호를 끝까지 입력해주세요.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SpoqaHanSansNeo-Light',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        '확인',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'SpoqaHanSansNeo-Light',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }, 
      );
    }else {
      phoneNumber = inputBox.replaceAll('-', '');
      Navigator.pushNamed(context, '/sparkplus/membership/payment', arguments: MembershipOpt(carNo: args.carNo, prodCode: args.prodCode, prodName: args.prodName, prodFee: args.prodFee, prodPlc: args.prodPlc, phone: phoneNumber));
    }
  }

  clear() {
    inputBox = '';
    phoneNumber = '';
  }
}