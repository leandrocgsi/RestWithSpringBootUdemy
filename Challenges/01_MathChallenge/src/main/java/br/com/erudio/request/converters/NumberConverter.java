package br.com.erudio.request.converters;

import org.springframework.stereotype.Service;

@Service
public class NumberConverter {

    public Double covertToDouble(String strNumber) {
        if (strNumber == null) return 0d; 
        String number = strNumber.replaceAll(",", ".");
        if (isNumeric(number)) return Double.parseDouble(number);
        return 0d;
    }

    public boolean isNumeric(String strNumber) {
        if (strNumber == null) return false; 
        String number = strNumber.replaceAll(",", ".");
        return number.matches("[-+]?[0-9]*\\.?[0-9]+");
    }
}
