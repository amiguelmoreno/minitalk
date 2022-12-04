<h1 align="center">
	Libft
</h1>

<p align="center">
	<b><i>Development repo for 42-Malaga Libft project</i></b><br>
	For further information about 42 Malaga and its projects, please refer to <a href="https://github.com/amiguelmoreno/42-Malaga"><b>42 Malaga repo</b></a>.
</p>

---

## 🗣️ About

> _The aim of this project is to code a C library recoding usual functions that you'll be allowed to use in all your other projects._
For detailed information and comments, refer to the [**subject of this project**](pdf/42Cursus_Libft_v15.pdf).

	🚀 TLDR: this project consists of coding basic C functions (see below), which are then compiled
	into a library for use in other projects of the cursus.

## Mandatory Part

### Functions from `<ctype.h>` library

* [`ft_isalpha`](src/ft_isalpha.c)			- alphabetic character test.
* [`ft_isdigit`](src/ft_isdigit.c)			- decimal-digit character test.
* [`ft_isalnum`](src/ft_isalnum.c)			- alphanumeric character test.
* [`ft_isascii`](src/ft_isascii.c)			- test for ASCII character.
* [`ft_isprint`](src/ft_isprint.c)			- printing character test (space character inclusive).
* [`ft_toupper`](src/ft_toupper.c)			- lower case to upper case letter conversion.
* [`ft_tolower`](src/ft_tolower.c)			- upper case to lower case letter conversion.

### Functions from `<stdlib.h>` library

* [`ft_atoi`](src/ft_atoi.c)		- convert ASCII string to integer.
* [`ft_calloc`](src/ft_calloc.c)	- memory allocation (with malloc).

### Functions from `<strings.h>` library
* [`ft_bzero`](src/ft_bzero.c)		- write zeroes to a byte string.

### Functions from `<string.h>` library

* [`ft_strlen`](src/ft_strlen.c)				- find length of string.
* [`ft_memset`](src/ft_memset.c)		- write a byte to a byte string.
* [`ft_memcpy`](src/ft_memcpy.c)		- copy memory area.
* [`ft_memmove`](src/ft_memmove.c)	- copy byte string.
* [`ft_strlcpy`](src/ft_strlcpy.c)			- size-bounded string copying.
* [`ft_strlcat`](src/ft_strlcat.c)			- size-bounded string concatenation.
* [`ft_strchr`](src/ft_strchr.c)				- locate character in string (first occurrence).
* [`ft_strrchr`](src/ft_strrchr.c)			- locate character in string (last occurence).
* [`ft_strncmp`](src/ft_strncmp.c) 			- compare strings (size-bounded).
* [`ft_memchr`](src/ft_memchr.c)		- locate byte in byte string.
* [`ft_memcmp`](src/ft_memcmp.c)		- compare byte string.
* [`ft_strnstr`](src/ft_strnstr.c)			- locate a substring in a string (size-bounded).
* [`ft_strdup`](src/ft_strdup.c)				- save a copy of a string (with malloc).

### Non-standard functions

* [`ft_substr`](src/ft_substr.c)				- save substring from string (with malloc).
* [`ft_strjoin`](src/ft_strjoin.c)			- concatenate two strings into a new string (with malloc).
* [`ft_strtrim`](src/ft_strtrim.c)			- trim beginning and end of string with the specified characters with malloc).
* [`ft_split`](src/ft_split.c)				- split string, with specified character as delimiter, into an array of strings.
* [`ft_itoa`](src/ft_itoa.c)					- convert integer to ASCII string.
* [`ft_strmapi`](src/ft_strmapi.c)			- create new string from modifying string with specified function.
* [`ft_striteri`](src/ft_striteri.c)			- modifies string with specific function.
* [`ft_putchar_fd`](src/ft_putchar_fd.c)		- output a character to given file.
* [`ft_putstr_fd`](src/ft_putstr_fd.c)		- output string to given file.
* [`ft_putendl_fd`](src/ft_putendl_fd.c)		- output string to given file with newline.
* [`ft_putnbr_fd`](src/ft_putnbr_fd.c)		- output integer to given file.

## Bonus part

### Linked list functions

* [`ft_lstnew`](src/ft_lstnew.c)				- create a new list (with malloc).
* [`ft_lstadd_front`](src/ft_lstadd_front.c)	- add new element at the beginning of the list.
* [`ft_lstsize`](src/ft_lstsize.c)			- count the elements in a list.
* [`ft_lstlast`](src/ft_lstlast.c)			- find the last element of the list.
* [`ft_lstadd_back`](src/ft_lstadd_back.c)	- add new element at end of the list.
* [`ft_lstdelone`](src/ft_lstdelone.c)		- delete element from the list.
* [`ft_lstclear`](src/ft_lstclear.c)			- delete a sequence of elements of the list from a starting element.
* [`ft_lstiter`](src/ft_lstiter.c)			- apply function to all the elements of the list.
* [`ft_lstmap`](src/ft_lstmap.c)				- apply function to all the elements of the list and create a new list (with malloc).

## 🛠️ Testing

Here you all the thard party tester that you can use. Personally, I prefer to use francinette tester but it is totally up to you.

* [y3ll0w42 / libft-war-machine](https://github.com/y3ll0w42/libft-war-machine)
* [Tripouille / libftTester](https://github.com/Tripouille/libftTester)
* [alelievr / libft-unit-test](https://github.com/alelievr/libft-unit-test)
* [jtoty / Libftest](https://github.com/jtoty/Libftest)
* [xicodomingues / francinette](https://github.com/xicodomingues/francinette)

<br />
<p align="center">
	Thanks to Pedro Valadares for letting me use his README file, click <a href="https://github.com/pvaladares"><b>here</b></a> to see his profile.
</p>
