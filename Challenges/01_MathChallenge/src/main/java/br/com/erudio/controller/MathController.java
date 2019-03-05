package br.com.erudio.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import br.com.erudio.exception.UnsuportedMathOperationException;
import br.com.erudio.math.SimpleMath;
import br.com.erudio.request.converters.NumberConverter;

@RestController
public class MathController {
	
    @Autowired
    private SimpleMath math;	
    
    @Autowired
    private NumberConverter converter;
	
	@RequestMapping(value="/sum/{numberOne}/{numberTwo}", method=RequestMethod.GET)
	public Double sum(@PathVariable("numberOne") String numberOne, @PathVariable("numberTwo") String numberTwo) {
		validateInput(numberOne, numberTwo);
		return math.sum(converter.covertToDouble(numberOne), converter.covertToDouble(numberTwo));		
	}
	
	@RequestMapping(value="/subtraction/{numberOne}/{numberTwo}", method=RequestMethod.GET)
	public Double subtraction(@PathVariable("numberOne") String numberOne, @PathVariable("numberTwo") String numberTwo) {
		validateInput(numberOne, numberTwo);
		return math.subtraction(converter.covertToDouble(numberOne), converter.covertToDouble(numberTwo));	
	}	
	
	@RequestMapping(value="/multiplication/{numberOne}/{numberTwo}", method=RequestMethod.GET)
	public Double multiplication(@PathVariable("numberOne") String numberOne, @PathVariable("numberTwo") String numberTwo) {
		validateInput(numberOne, numberTwo);
		return math.multiplication(converter.covertToDouble(numberOne), converter.covertToDouble(numberTwo));	
	}	
	
	@RequestMapping(value="/division/{numberOne}/{numberTwo}", method=RequestMethod.GET)
	public Double division(@PathVariable("numberOne") String numberOne, @PathVariable("numberTwo") String numberTwo) {
		validateInput(numberOne, numberTwo);
		return math.division(converter.covertToDouble(numberOne), converter.covertToDouble(numberTwo));	
	}

	
	@RequestMapping(value="/mean/{numberOne}/{numberTwo}", method=RequestMethod.GET)
	public Double mean(@PathVariable("numberOne") String numberOne, @PathVariable("numberTwo") String numberTwo) {
		validateInput(numberOne, numberTwo);
		return math.mean(converter.covertToDouble(numberOne), converter.covertToDouble(numberTwo));		
	}	
	
	@RequestMapping(value="/squareRoot/{number}", method=RequestMethod.GET)
	public Double squareRoot(@PathVariable("number") String number) {
		validateInput(number);
		return math.squareRoot(converter.covertToDouble(number));		
	}
	
	private void validateInput(String number) {
		if (!converter.isNumeric(number)) {
			throw new UnsuportedMathOperationException("Please set a numeric value!");
		}
	}	
	
	private void validateInput(String numberOne, String numberTwo) {
		if (!converter.isNumeric(numberOne) || !converter.isNumeric(numberTwo)) {
			throw new UnsuportedMathOperationException("Please set a numeric value!");
		}
	}	
}