package com.shop.exception;

/**
 * 自定义异常
 * @author chen
 *
 */
public class ShopException extends RuntimeException{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public ShopException() {
		super();
	}

	public ShopException(String message) {
		super(message);
	}

	public ShopException(String message, Throwable throwable) {
		super(message, throwable);
	}

}
