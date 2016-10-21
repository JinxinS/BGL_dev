#ifndef CWDV264_SIW_H_
#define CWDV264_SIW_H_
typedef	struct { // CWDV264_SIW
struct { //func_get_chroma_0x 
	int	base_address;
	int	confsize;
	long	kde[8];
	long	*m1;

	} func_get_chroma_0x;
struct { //recon8x8 
	int	base_address;
	int	confsize;
	long	kde[8];
	long	*m0;
	long	*m1;
	long	*m3;
	long	*m4;
	long	*m5;
	long	*m6;
	long	*m7;
	long	*m8;
	long	*m9;

	} recon8x8;

} CWDV264_SIW;

extern CWDV264_SIW cwdv264_siw;

#endif/*CWDV264_SIW_H_*/

