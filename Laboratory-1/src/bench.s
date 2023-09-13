	.file	"benchmark.cpp"
	.text
	.section	.text._ZNSt9exceptionC2Ev,"axG",@progbits,_ZNSt9exceptionC5Ev,comdat
	.align 2
	.weak	_ZNSt9exceptionC2Ev
	.type	_ZNSt9exceptionC2Ev, @function
_ZNSt9exceptionC2Ev:
.LFB753:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVSt9exception(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	_ZNSt9exceptionC2Ev, .-_ZNSt9exceptionC2Ev
	.weak	_ZNSt9exceptionC1Ev
	.set	_ZNSt9exceptionC1Ev,_ZNSt9exceptionC2Ev
	.section	.text._ZNSt9bad_allocC2Ev,"axG",@progbits,_ZNSt9bad_allocC5Ev,comdat
	.align 2
	.weak	_ZNSt9bad_allocC2Ev
	.type	_ZNSt9bad_allocC2Ev, @function
_ZNSt9bad_allocC2Ev:
.LFB814:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9exceptionC2Ev
	leaq	16+_ZTVSt9bad_alloc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE814:
	.size	_ZNSt9bad_allocC2Ev, .-_ZNSt9bad_allocC2Ev
	.weak	_ZNSt9bad_allocC1Ev
	.set	_ZNSt9bad_allocC1Ev,_ZNSt9bad_allocC2Ev
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
.LC0:
	.string	"stoi"
	.section	.text._ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,"axG",@progbits,_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi,comdat
	.weak	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.type	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, @function
_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi:
.LFB1641:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	movq	%rax, %rdx
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
	leaq	.LC0(%rip), %rsi
	movq	strtol@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1641:
	.size	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi, .-_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
	.section	.rodata
	.type	_ZStL13allocator_arg, @object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.type	_ZStL6ignore, @object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
	.align 4
	.type	_ZN5EigenL7DynamicE, @object
	.size	_ZN5EigenL7DynamicE, 4
_ZN5EigenL7DynamicE:
	.long	-1
	.align 4
	.type	_ZN5EigenL12DynamicIndexE, @object
	.size	_ZN5EigenL12DynamicIndexE, 4
_ZN5EigenL12DynamicIndexE:
	.long	16777215
	.align 4
	.type	_ZN5EigenL13UndefinedIncrE, @object
	.size	_ZN5EigenL13UndefinedIncrE, 4
_ZN5EigenL13UndefinedIncrE:
	.long	16777214
	.align 4
	.type	_ZN5EigenL8InfinityE, @object
	.size	_ZN5EigenL8InfinityE, 4
_ZN5EigenL8InfinityE:
	.long	-1
	.align 4
	.type	_ZN5EigenL8HugeCostE, @object
	.size	_ZN5EigenL8HugeCostE, 4
_ZN5EigenL8HugeCostE:
	.long	10000
	.align 4
	.type	_ZN5EigenL11RowMajorBitE, @object
	.size	_ZN5EigenL11RowMajorBitE, 4
_ZN5EigenL11RowMajorBitE:
	.long	1
	.align 4
	.type	_ZN5EigenL20EvalBeforeNestingBitE, @object
	.size	_ZN5EigenL20EvalBeforeNestingBitE, 4
_ZN5EigenL20EvalBeforeNestingBitE:
	.long	2
	.align 4
	.type	_ZN5EigenL22EvalBeforeAssigningBitE, @object
	.size	_ZN5EigenL22EvalBeforeAssigningBitE, 4
_ZN5EigenL22EvalBeforeAssigningBitE:
	.long	4
	.align 4
	.type	_ZN5EigenL15PacketAccessBitE, @object
	.size	_ZN5EigenL15PacketAccessBitE, 4
_ZN5EigenL15PacketAccessBitE:
	.long	8
	.align 4
	.type	_ZN5EigenL21ActualPacketAccessBitE, @object
	.size	_ZN5EigenL21ActualPacketAccessBitE, 4
_ZN5EigenL21ActualPacketAccessBitE:
	.long	8
	.align 4
	.type	_ZN5EigenL15LinearAccessBitE, @object
	.size	_ZN5EigenL15LinearAccessBitE, 4
_ZN5EigenL15LinearAccessBitE:
	.long	16
	.align 4
	.type	_ZN5EigenL9LvalueBitE, @object
	.size	_ZN5EigenL9LvalueBitE, 4
_ZN5EigenL9LvalueBitE:
	.long	32
	.align 4
	.type	_ZN5EigenL15DirectAccessBitE, @object
	.size	_ZN5EigenL15DirectAccessBitE, 4
_ZN5EigenL15DirectAccessBitE:
	.long	64
	.align 4
	.type	_ZN5EigenL10AlignedBitE, @object
	.size	_ZN5EigenL10AlignedBitE, 4
_ZN5EigenL10AlignedBitE:
	.long	128
	.align 4
	.type	_ZN5EigenL12NestByRefBitE, @object
	.size	_ZN5EigenL12NestByRefBitE, 4
_ZN5EigenL12NestByRefBitE:
	.long	256
	.align 4
	.type	_ZN5EigenL26NoPreferredStorageOrderBitE, @object
	.size	_ZN5EigenL26NoPreferredStorageOrderBitE, 4
_ZN5EigenL26NoPreferredStorageOrderBitE:
	.long	512
	.align 4
	.type	_ZN5EigenL19CompressedAccessBitE, @object
	.size	_ZN5EigenL19CompressedAccessBitE, 4
_ZN5EigenL19CompressedAccessBitE:
	.long	1024
	.align 4
	.type	_ZN5EigenL14HereditaryBitsE, @object
	.size	_ZN5EigenL14HereditaryBitsE, 4
_ZN5EigenL14HereditaryBitsE:
	.long	3
	.section	.text._ZN5Eigen8internal19throw_std_bad_allocEv,"axG",@progbits,_ZN5Eigen8internal19throw_std_bad_allocEv,comdat
	.weak	_ZN5Eigen8internal19throw_std_bad_allocEv
	.type	_ZN5Eigen8internal19throw_std_bad_allocEv, @function
_ZN5Eigen8internal19throw_std_bad_allocEv:
.LFB3402:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	movl	$8, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	movq	%rbx, %rdi
	call	_ZNSt9bad_allocC1Ev
	movq	_ZNSt9bad_allocD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt9bad_alloc(%rip), %rsi
	movq	%rbx, %rdi
	call	__cxa_throw@PLT
	.cfi_endproc
.LFE3402:
	.size	_ZN5Eigen8internal19throw_std_bad_allocEv, .-_ZN5Eigen8internal19throw_std_bad_allocEv
	.section	.text._ZN5Eigen8internal28check_that_malloc_is_allowedEv,"axG",@progbits,_ZN5Eigen8internal28check_that_malloc_is_allowedEv,comdat
	.weak	_ZN5Eigen8internal28check_that_malloc_is_allowedEv
	.type	_ZN5Eigen8internal28check_that_malloc_is_allowedEv, @function
_ZN5Eigen8internal28check_that_malloc_is_allowedEv:
.LFB3412:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3412:
	.size	_ZN5Eigen8internal28check_that_malloc_is_allowedEv, .-_ZN5Eigen8internal28check_that_malloc_is_allowedEv
	.section	.rodata
	.align 8
.LC1:
	.string	"void* Eigen::internal::aligned_malloc(std::size_t)"
	.align 8
.LC2:
	.string	"../eigen-3.4.0/Eigen/src/Core/util/Memory.h"
	.align 8
.LC3:
	.string	"(size<16 || (std::size_t(result)%16)==0) && \"System's malloc returned an unaligned pointer. Compile with EIGEN_MALLOC_ALREADY_ALIGNED=0 to fallback to handmade aligned memory allocator.\""
	.section	.text._ZN5Eigen8internal14aligned_mallocEm,"axG",@progbits,_ZN5Eigen8internal14aligned_mallocEm,comdat
	.weak	_ZN5Eigen8internal14aligned_mallocEm
	.type	_ZN5Eigen8internal14aligned_mallocEm, @function
_ZN5Eigen8internal14aligned_mallocEm:
.LFB3413:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	_ZN5Eigen8internal28check_that_malloc_is_allowedEv
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$15, -24(%rbp)
	jbe	.L8
	movq	-8(%rbp), %rax
	andl	$15, %eax
	testq	%rax, %rax
	je	.L8
	leaq	.LC1(%rip), %rcx
	movl	$185, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	__assert_fail@PLT
.L8:
	cmpq	$0, -8(%rbp)
	jne	.L9
	cmpq	$0, -24(%rbp)
	je	.L9
	call	_ZN5Eigen8internal19throw_std_bad_allocEv
.L9:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3413:
	.size	_ZN5Eigen8internal14aligned_mallocEm, .-_ZN5Eigen8internal14aligned_mallocEm
	.section	.text._ZN5Eigen8internal12aligned_freeEPv,"axG",@progbits,_ZN5Eigen8internal12aligned_freeEPv,comdat
	.weak	_ZN5Eigen8internal12aligned_freeEPv
	.type	_ZN5Eigen8internal12aligned_freeEPv, @function
_ZN5Eigen8internal12aligned_freeEPv:
.LFB3414:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3414:
	.size	_ZN5Eigen8internal12aligned_freeEPv, .-_ZN5Eigen8internal12aligned_freeEPv
	.local	_ZN5EigenL4lastE
	.comm	_ZN5EigenL4lastE,1,1
	.local	_ZN5EigenL6lastp1E
	.comm	_ZN5EigenL6lastp1E,2,1
	.section	.text._ZN5Eigen8internal5all_tC2Ev,"axG",@progbits,_ZN5Eigen8internal5all_tC5Ev,comdat
	.align 2
	.weak	_ZN5Eigen8internal5all_tC2Ev
	.type	_ZN5Eigen8internal5all_tC2Ev, @function
_ZN5Eigen8internal5all_tC2Ev:
.LFB4756:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4756:
	.size	_ZN5Eigen8internal5all_tC2Ev, .-_ZN5Eigen8internal5all_tC2Ev
	.weak	_ZN5Eigen8internal5all_tC1Ev
	.set	_ZN5Eigen8internal5all_tC1Ev,_ZN5Eigen8internal5all_tC2Ev
	.local	_ZN5EigenL3allE
	.comm	_ZN5EigenL3allE,1,1
	.section	.rodata
	.type	_ZN5Eigen12placeholdersL3allE, @object
	.size	_ZN5Eigen12placeholdersL3allE, 1
_ZN5Eigen12placeholdersL3allE:
	.zero	1
	.type	_ZN5Eigen12placeholdersL4lastE, @object
	.size	_ZN5Eigen12placeholdersL4lastE, 1
_ZN5Eigen12placeholdersL4lastE:
	.zero	1
	.type	_ZN5Eigen12placeholdersL3endE, @object
	.size	_ZN5Eigen12placeholdersL3endE, 2
_ZN5Eigen12placeholdersL3endE:
	.zero	2
	.align 4
	.type	_ZN5EigenL9AutoOrderE, @object
	.size	_ZN5EigenL9AutoOrderE, 4
_ZN5EigenL9AutoOrderE:
	.long	2
	.align 8
	.type	_ZN5Eigen8internalL18defaultL1CacheSizeE, @object
	.size	_ZN5Eigen8internalL18defaultL1CacheSizeE, 8
_ZN5Eigen8internalL18defaultL1CacheSizeE:
	.quad	32768
	.align 8
	.type	_ZN5Eigen8internalL18defaultL2CacheSizeE, @object
	.size	_ZN5Eigen8internalL18defaultL2CacheSizeE, 8
_ZN5Eigen8internalL18defaultL2CacheSizeE:
	.quad	262144
	.align 8
	.type	_ZN5Eigen8internalL18defaultL3CacheSizeE, @object
	.size	_ZN5Eigen8internalL18defaultL3CacheSizeE, 8
_ZN5Eigen8internalL18defaultL3CacheSizeE:
	.quad	2097152
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv,"axG",@progbits,_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv,comdat
	.align 2
	.weak	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	.type	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv, @function
_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv:
.LFB8691:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4rowsEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8691:
	.size	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv, .-_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	.section	.text._ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv,"axG",@progbits,_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv,comdat
	.align 2
	.weak	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	.type	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv, @function
_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv:
.LFB8692:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4colsEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8692:
	.size	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv, .-_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	.section	.text._ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev,"axG",@progbits,_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED5Ev,comdat
	.align 2
	.weak	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev
	.type	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev, @function
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev:
.LFB8695:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8695:
	.size	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev, .-_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev
	.weak	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED1Ev
	.set	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED1Ev,_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev
	.section	.text._ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED2Ev,"axG",@progbits,_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED5Ev,comdat
	.align 2
	.weak	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED2Ev
	.type	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED2Ev, @function
_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED2Ev:
.LFB8697:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8697:
	.size	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED2Ev, .-_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED2Ev
	.weak	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED1Ev
	.set	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED1Ev,_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED2Ev
	.text
	.globl	_Z15multiplyNoEigenN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES1_
	.type	_Z15multiplyNoEigenN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES1_, @function
_Z15multiplyNoEigenN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES1_:
.LFB8690:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8690
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	movl	%eax, -140(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	movl	%eax, -136(%rbp)
	leaq	-136(%rbp), %rdx
	leaq	-140(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC1IiiEERKT_RKT0_
.LEHE0:
	movl	$0, -132(%rbp)
.L25:
	movl	-140(%rbp), %eax
	cmpl	%eax, -132(%rbp)
	jge	.L32
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-80(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl
	leaq	-80(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC1INS_5BlockIS1_Li1ELin1ELb0EEEEERKNS_9EigenBaseIT_EE
.LEHE1:
	movl	$0, -128(%rbp)
.L24:
	movl	-136(%rbp), %eax
	cmpl	%eax, -128(%rbp)
	jge	.L21
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -120(%rbp)
	movl	$0, -124(%rbp)
.L23:
	movl	-140(%rbp), %eax
	cmpl	%eax, -124(%rbp)
	jge	.L22
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEclEl
	movsd	(%rax), %xmm2
	movsd	%xmm2, -176(%rbp)
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movl	-124(%rbp), %eax
	movslq	%eax, %rcx
	movq	-168(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEclEll
	movsd	(%rax), %xmm0
	mulsd	-176(%rbp), %xmm0
	movsd	-120(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	addl	$1, -124(%rbp)
	jmp	.L23
.L22:
	movl	-128(%rbp), %eax
	movslq	%eax, %rdx
	movl	-132(%rbp), %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEclEll
.LEHE2:
	movsd	-120(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -128(%rbp)
	jmp	.L24
.L21:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED1Ev
	addl	$1, -132(%rbp)
	jmp	.L25
.L31:
	endbr64
	movq	%rax, %rbx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED1Ev
	jmp	.L28
.L30:
	endbr64
	movq	%rax, %rbx
.L28:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L32:
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L29
	call	__stack_chk_fail@PLT
.L29:
	movq	-152(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8690:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8690:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8690-.LLSDACSB8690
.LLSDACSB8690:
	.uleb128 .LEHB0-.LFB8690
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8690
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L30-.LFB8690
	.uleb128 0
	.uleb128 .LEHB2-.LFB8690
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L31-.LFB8690
	.uleb128 0
	.uleb128 .LEHB3-.LFB8690
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE8690:
	.text
	.size	_Z15multiplyNoEigenN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES1_, .-_Z15multiplyNoEigenN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES1_
	.section	.rodata
.LC5:
	.string	"Arguments : <size> [n|e|s]"
	.align 8
.LC6:
	.string	"n : normal, e : Eigen, s : sequential"
.LC7:
	.string	"n"
.LC8:
	.string	"e"
.LC9:
	.string	"s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8699:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8699
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movl	%edi, -244(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpl	$2, -244(%rbp)
	jg	.L34
	leaq	.LC5(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB4:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC6(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE4:
.L34:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	movq	-256(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB5:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE5:
	leaq	-64(%rbp), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB6:
	call	_ZNSt7__cxx114stoiERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi
.LEHE6:
	movl	%eax, -228(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	movq	-256(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB7:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE7:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movl	-228(%rbp), %eax
	movslq	%eax, %rdx
	movl	-228(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB8:
	call	_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6RandomEll
	leaq	-96(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC1INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES1_EEEERKNS_9EigenBaseIT_EE
.LEHE8:
	movl	-228(%rbp), %eax
	movslq	%eax, %rdx
	movl	-228(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB9:
	call	_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6RandomEll
	leaq	-96(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC1INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES1_EEEERKNS_9EigenBaseIT_EE
.LEHE9:
	leaq	-64(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	%al, %al
	je	.L35
	leaq	-192(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB10:
	call	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC1ERKS1_
.LEHE10:
	leaq	-224(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB11:
	call	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC1ERKS1_
.LEHE11:
	leaq	-96(%rbp), %rax
	leaq	-128(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB12:
	call	_Z15multiplyNoEigenN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES1_
.LEHE12:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED1Ev
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED1Ev
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED1Ev
	jmp	.L36
.L35:
	leaq	-64(%rbp), %rax
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	%al, %al
	je	.L37
	leaq	-192(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB13:
	call	_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmlIS2_EEKNS_7ProductIS2_T_Li0EEERKNS0_IS6_EE
	jmp	.L36
.L37:
	leaq	-64(%rbp), %rax
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	%al, %al
	je	.L36
	leaq	-192(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmlIS2_EEKNS_7ProductIS2_T_Li0EEERKNS0_IS6_EE
.LEHE13:
.L36:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED1Ev
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED1Ev
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	$0, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L47
	jmp	.L56
.L49:
	endbr64
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L40
.L48:
	endbr64
	movq	%rax, %rbx
.L40:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB14:
	call	_Unwind_Resume@PLT
.L50:
	endbr64
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L55:
	endbr64
	movq	%rax, %rbx
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED1Ev
	jmp	.L43
.L54:
	endbr64
	movq	%rax, %rbx
.L43:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED1Ev
	jmp	.L44
.L53:
	endbr64
	movq	%rax, %rbx
.L44:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED1Ev
	jmp	.L45
.L52:
	endbr64
	movq	%rax, %rbx
.L45:
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EED1Ev
	jmp	.L46
.L51:
	endbr64
	movq	%rax, %rbx
.L46:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE14:
.L56:
	call	__stack_chk_fail@PLT
.L47:
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8699:
	.section	.gcc_except_table
.LLSDA8699:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8699-.LLSDACSB8699
.LLSDACSB8699:
	.uleb128 .LEHB4-.LFB8699
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB8699
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L48-.LFB8699
	.uleb128 0
	.uleb128 .LEHB6-.LFB8699
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L49-.LFB8699
	.uleb128 0
	.uleb128 .LEHB7-.LFB8699
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L50-.LFB8699
	.uleb128 0
	.uleb128 .LEHB8-.LFB8699
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L51-.LFB8699
	.uleb128 0
	.uleb128 .LEHB9-.LFB8699
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L52-.LFB8699
	.uleb128 0
	.uleb128 .LEHB10-.LFB8699
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L53-.LFB8699
	.uleb128 0
	.uleb128 .LEHB11-.LFB8699
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L54-.LFB8699
	.uleb128 0
	.uleb128 .LEHB12-.LFB8699
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L55-.LFB8699
	.uleb128 0
	.uleb128 .LEHB13-.LFB8699
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L53-.LFB8699
	.uleb128 0
	.uleb128 .LEHB14-.LFB8699
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE8699:
	.text
	.size	main, .-main
	.section	.text._ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC5Ev,comdat
	.align 2
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.type	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, @function
_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev:
.LFB8703:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	__errno_location@PLT
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	call	__errno_location@PLT
	movl	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8703:
	.size	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev, .-_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	.set	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD5Ev,comdat
	.align 2
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.type	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, @function
_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev:
.LFB8706:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	__errno_location@PLT
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L60
	call	__errno_location@PLT
	movq	-8(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, (%rax)
.L60:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8706:
	.size	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev, .-_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	.set	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev
	.section	.text._ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE,"axG",@progbits,_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE,comdat
	.weak	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE
	.type	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE, @function
_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE:
.LFB8709:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$-2147483649, %rax
	cmpq	%rax, -8(%rbp)
	jle	.L62
	movl	$2147483648, %eax
	cmpq	%rax, -8(%rbp)
	jl	.L63
.L62:
	movl	$1, %eax
	jmp	.L64
.L63:
	movl	$0, %eax
.L64:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8709:
	.size	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE, .-_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE
	.section	.text._ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.weak	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, @function
_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB8701:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8701
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoC1Ev
	movl	-100(%rbp), %edx
	leaq	-40(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB15:
	call	*%r8
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpq	%rax, -88(%rbp)
	jne	.L67
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.L67:
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$34, %eax
	je	.L68
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN10_Range_chk6_S_chkElSt17integral_constantIbLb1EE
	testb	%al, %al
	je	.L69
.L68:
	movl	$1, %eax
	jmp	.L70
.L69:
	movl	$0, %eax
.L70:
	testb	%al, %al
	je	.L71
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE15:
.L71:
	movq	-32(%rbp), %rax
	movl	%eax, -44(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L72
	movq	-40(%rbp), %rax
	subq	-88(%rbp), %rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
.L72:
	movl	-44(%rbp), %ebx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	movl	%ebx, %eax
	movq	-24(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L75
	jmp	.L77
.L76:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB16:
	call	_Unwind_Resume@PLT
.LEHE16:
.L77:
	call	__stack_chk_fail@PLT
.L75:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8701:
	.section	.gcc_except_table
.LLSDA8701:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8701-.LLSDACSB8701
.LLSDACSB8701:
	.uleb128 .LEHB15-.LFB8701
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L76-.LFB8701
	.uleb128 0
	.uleb128 .LEHB16-.LFB8701
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSE8701:
	.section	.text._ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.size	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.section	.text._ZN5Eigen8symbolic10SymbolExprINS_8internal17symbolic_last_tagEEC2Ev,"axG",@progbits,_ZN5Eigen8symbolic10SymbolExprINS_8internal17symbolic_last_tagEEC5Ev,comdat
	.align 2
	.weak	_ZN5Eigen8symbolic10SymbolExprINS_8internal17symbolic_last_tagEEC2Ev
	.type	_ZN5Eigen8symbolic10SymbolExprINS_8internal17symbolic_last_tagEEC2Ev, @function
_ZN5Eigen8symbolic10SymbolExprINS_8internal17symbolic_last_tagEEC2Ev:
.LFB9007:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9007:
	.size	_ZN5Eigen8symbolic10SymbolExprINS_8internal17symbolic_last_tagEEC2Ev, .-_ZN5Eigen8symbolic10SymbolExprINS_8internal17symbolic_last_tagEEC2Ev
	.weak	_ZN5Eigen8symbolic10SymbolExprINS_8internal17symbolic_last_tagEEC1Ev
	.set	_ZN5Eigen8symbolic10SymbolExprINS_8internal17symbolic_last_tagEEC1Ev,_ZN5Eigen8symbolic10SymbolExprINS_8internal17symbolic_last_tagEEC2Ev
	.section	.text._ZN5Eigen8internal8FixedIntILi1EEC2Ev,"axG",@progbits,_ZN5Eigen8internal8FixedIntILi1EEC5Ev,comdat
	.align 2
	.weak	_ZN5Eigen8internal8FixedIntILi1EEC2Ev
	.type	_ZN5Eigen8internal8FixedIntILi1EEC2Ev, @function
_ZN5Eigen8internal8FixedIntILi1EEC2Ev:
.LFB9010:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9010:
	.size	_ZN5Eigen8internal8FixedIntILi1EEC2Ev, .-_ZN5Eigen8internal8FixedIntILi1EEC2Ev
	.weak	_ZN5Eigen8internal8FixedIntILi1EEC1Ev
	.set	_ZN5Eigen8internal8FixedIntILi1EEC1Ev,_ZN5Eigen8internal8FixedIntILi1EEC2Ev
	.section	.text._ZNK5Eigen8internal8FixedIntILi1EEclEv,"axG",@progbits,_ZNK5Eigen8internal8FixedIntILi1EEclEv,comdat
	.align 2
	.weak	_ZNK5Eigen8internal8FixedIntILi1EEclEv
	.type	_ZNK5Eigen8internal8FixedIntILi1EEclEv, @function
_ZNK5Eigen8internal8FixedIntILi1EEclEv:
.LFB9012:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9012:
	.size	_ZNK5Eigen8internal8FixedIntILi1EEclEv, .-_ZNK5Eigen8internal8FixedIntILi1EEclEv
	.section	.text._ZNK5Eigen8symbolic8BaseExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEEEplILi1EEENS0_7AddExprIS5_NS0_9ValueExprINS3_8FixedIntIXT_EEEEEEESB_,"axG",@progbits,_ZNK5Eigen8symbolic8BaseExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEEEplILi1EEENS0_7AddExprIS5_NS0_9ValueExprINS3_8FixedIntIXT_EEEEEEESB_,comdat
	.align 2
	.weak	_ZNK5Eigen8symbolic8BaseExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEEEplILi1EEENS0_7AddExprIS5_NS0_9ValueExprINS3_8FixedIntIXT_EEEEEEESB_
	.type	_ZNK5Eigen8symbolic8BaseExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEEEplILi1EEENS0_7AddExprIS5_NS0_9ValueExprINS3_8FixedIntIXT_EEEEEEESB_, @function
_ZNK5Eigen8symbolic8BaseExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEEEplILi1EEENS0_7AddExprIS5_NS0_9ValueExprINS3_8FixedIntIXT_EEEEEEESB_:
.LFB9013:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-27(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8symbolic9ValueExprINS_8internal8FixedIntILi1EEEEC1Ev
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen8symbolic8BaseExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEEE7derivedEv
	movq	%rax, %rcx
	leaq	-27(%rbp), %rdx
	leaq	-26(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8symbolic7AddExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEENS0_9ValueExprINS3_8FixedIntILi1EEEEEEC1ERKS5_RKS9_
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L84
	call	__stack_chk_fail@PLT
.L84:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9013:
	.size	_ZNK5Eigen8symbolic8BaseExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEEEplILi1EEENS0_7AddExprIS5_NS0_9ValueExprINS3_8FixedIntIXT_EEEEEEESB_, .-_ZNK5Eigen8symbolic8BaseExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEEEplILi1EEENS0_7AddExprIS5_NS0_9ValueExprINS3_8FixedIntIXT_EEEEEEESB_
	.section	.text._ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4rowsEv,"axG",@progbits,_ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4rowsEv,comdat
	.align 2
	.weak	_ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4rowsEv
	.type	_ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4rowsEv, @function
_ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4rowsEv:
.LFB9086:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9086:
	.size	_ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4rowsEv, .-_ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4rowsEv
	.section	.text._ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4colsEv,"axG",@progbits,_ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4colsEv,comdat
	.align 2
	.weak	_ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4colsEv
	.type	_ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4colsEv, @function
_ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4colsEv:
.LFB9087:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9087:
	.size	_ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4colsEv, .-_ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4colsEv
	.section	.text._ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_,"axG",@progbits,_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC5IiiEERKT_RKT0_,comdat
	.align 2
	.weak	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_
	.type	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_, @function
_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_:
.LFB9089:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9089
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
.LEHB17:
	call	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev
.LEHE17:
	call	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE22_check_template_paramsEv
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	movq	-32(%rbp), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
.LEHB18:
	call	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6_init2IiiEEvllPNS_8internal9enable_ifILb1ET_E4typeE
.LEHE18:
	jmp	.L92
.L91:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB19:
	call	_Unwind_Resume@PLT
.LEHE19:
.L92:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9089:
	.section	.gcc_except_table
.LLSDA9089:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9089-.LLSDACSB9089
.LLSDACSB9089:
	.uleb128 .LEHB17-.LFB9089
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB9089
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L91-.LFB9089
	.uleb128 0
	.uleb128 .LEHB19-.LFB9089
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE9089:
	.section	.text._ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_,"axG",@progbits,_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC5IiiEERKT_RKT0_,comdat
	.size	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_, .-_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_
	.weak	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC1IiiEERKT_RKT0_
	.set	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC1IiiEERKT_RKT0_,_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_
	.section	.text._ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EED2Ev,"axG",@progbits,_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EED5Ev,comdat
	.align 2
	.weak	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EED2Ev
	.type	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EED2Ev, @function
_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EED2Ev:
.LFB9092:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9092
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	imulq	%rdx, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal31conditional_aligned_delete_autoIdLb1EEEvPT_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9092:
	.section	.gcc_except_table
.LLSDA9092:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9092-.LLSDACSB9092
.LLSDACSB9092:
.LLSDACSE9092:
	.section	.text._ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EED2Ev,"axG",@progbits,_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EED5Ev,comdat
	.size	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EED2Ev, .-_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EED2Ev
	.weak	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EED1Ev
	.set	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EED1Ev,_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EED2Ev
	.section	.text._ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl,"axG",@progbits,_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl,comdat
	.align 2
	.weak	_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl
	.type	_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl, @function
_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl:
.LFB9094:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEC1ERS2_l
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9094:
	.size	_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl, .-_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl
	.section	.text._ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_5BlockIS1_Li1ELin1ELb0EEEEERKNS_9EigenBaseIT_EE,"axG",@progbits,_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC5INS_5BlockIS1_Li1ELin1ELb0EEEEERKNS_9EigenBaseIT_EE,comdat
	.align 2
	.weak	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_5BlockIS1_Li1ELin1ELb0EEEEERKNS_9EigenBaseIT_EE
	.type	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_5BlockIS1_Li1ELin1ELb0EEEEERKNS_9EigenBaseIT_EE, @function
_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_5BlockIS1_Li1ELin1ELb0EEEEERKNS_9EigenBaseIT_EE:
.LFB9096:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9EigenBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7derivedEv
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_5BlockIS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9096:
	.size	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_5BlockIS1_Li1ELin1ELb0EEEEERKNS_9EigenBaseIT_EE, .-_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_5BlockIS1_Li1ELin1ELb0EEEEERKNS_9EigenBaseIT_EE
	.weak	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC1INS_5BlockIS1_Li1ELin1ELb0EEEEERKNS_9EigenBaseIT_EE
	.set	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC1INS_5BlockIS1_Li1ELin1ELb0EEEEERKNS_9EigenBaseIT_EE,_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_5BlockIS1_Li1ELin1ELb0EEEEERKNS_9EigenBaseIT_EE
	.section	.rodata
	.align 8
.LC10:
	.string	"Eigen::DenseCoeffsBase<Derived, 1>::Scalar& Eigen::DenseCoeffsBase<Derived, 1>::operator()(Eigen::Index) [with Derived = Eigen::Matrix<double, -1, -1>; Eigen::DenseCoeffsBase<Derived, 1>::Scalar = double; Eigen::Index = long int]"
	.align 8
.LC11:
	.string	"../eigen-3.4.0/Eigen/src/Core/DenseCoeffsBase.h"
.LC12:
	.string	"index >= 0 && index < size()"
	.section	.text._ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEclEl,"axG",@progbits,_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEclEl,comdat
	.align 2
	.weak	_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEclEl
	.type	_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEclEl, @function
_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEclEl:
.LFB9101:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	js	.L98
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4sizeEv
	cmpq	%rax, -16(%rbp)
	jl	.L101
.L98:
	leaq	.LC10(%rip), %rcx
	movl	$427, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	call	__assert_fail@PLT
.L101:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE8coeffRefEl
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9101:
	.size	_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEclEl, .-_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEclEl
	.section	.rodata
	.align 8
.LC13:
	.string	"Eigen::DenseCoeffsBase<Derived, 1>::Scalar& Eigen::DenseCoeffsBase<Derived, 1>::operator()(Eigen::Index, Eigen::Index) [with Derived = Eigen::Matrix<double, -1, -1>; Eigen::DenseCoeffsBase<Derived, 1>::Scalar = double; Eigen::Index = long int]"
	.align 8
.LC14:
	.string	"row >= 0 && row < rows() && col >= 0 && col < cols()"
	.section	.text._ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEclEll,"axG",@progbits,_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEclEll,comdat
	.align 2
	.weak	_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEclEll
	.type	_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEclEll, @function
_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEclEll:
.LFB9102:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	js	.L103
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	cmpq	%rax, -16(%rbp)
	jge	.L103
	cmpq	$0, -24(%rbp)
	js	.L103
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	cmpq	%rax, -24(%rbp)
	jl	.L106
.L103:
	leaq	.LC13(%rip), %rcx
	movl	$366, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC14(%rip), %rdi
	call	__assert_fail@PLT
.L106:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE8coeffRefEll
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9102:
	.size	_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEclEll, .-_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EEclEll
	.section	.text._ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6RandomEll,"axG",@progbits,_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6RandomEll,comdat
	.align 2
	.weak	_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6RandomEll
	.type	_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6RandomEll, @function
_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6RandomEll:
.LFB9106:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-9(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal16scalar_random_opIdEC1Ev
	movq	-24(%rbp), %rax
	leaq	-9(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11NullaryExprINS_8internal16scalar_random_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L109
	call	__stack_chk_fail@PLT
.L109:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9106:
	.size	_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6RandomEll, .-_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6RandomEll
	.section	.text._ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES1_EEEERKNS_9EigenBaseIT_EE,"axG",@progbits,_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC5INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES1_EEEERKNS_9EigenBaseIT_EE,comdat
	.align 2
	.weak	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES1_EEEERKNS_9EigenBaseIT_EE
	.type	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES1_EEEERKNS_9EigenBaseIT_EE, @function
_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES1_EEEERKNS_9EigenBaseIT_EE:
.LFB9111:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9EigenBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE7derivedEv
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEERKNS_9DenseBaseIT_EE
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9111:
	.size	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES1_EEEERKNS_9EigenBaseIT_EE, .-_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES1_EEEERKNS_9EigenBaseIT_EE
	.weak	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC1INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES1_EEEERKNS_9EigenBaseIT_EE
	.set	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC1INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES1_EEEERKNS_9EigenBaseIT_EE,_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES1_EEEERKNS_9EigenBaseIT_EE
	.section	.text._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,"axG",@progbits,_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,comdat
	.weak	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.type	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, @function
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_:
.LFB9113:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	sete	%al
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9113:
	.size	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, .-_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.section	.text._ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_,"axG",@progbits,_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC5ERKS1_,comdat
	.align 2
	.weak	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_
	.type	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_, @function
_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_:
.LFB9115:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9115:
	.size	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_, .-_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_
	.weak	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC1ERKS1_
	.set	_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC1ERKS1_,_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_
	.section	.text._ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmlIS2_EEKNS_7ProductIS2_T_Li0EEERKNS0_IS6_EE,"axG",@progbits,_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmlIS2_EEKNS_7ProductIS2_T_Li0EEERKNS0_IS6_EE,comdat
	.align 2
	.weak	_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmlIS2_EEKNS_7ProductIS2_T_Li0EEERKNS0_IS6_EE
	.type	_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmlIS2_EEKNS_7ProductIS2_T_Li0EEERKNS0_IS6_EE, @function
_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmlIS2_EEKNS_7ProductIS2_T_Li0EEERKNS0_IS6_EE:
.LFB9117:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv
	movq	%rax, %rcx
	leaq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0EEC1ERKS2_S5_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L116
	call	__stack_chk_fail@PLT
.L116:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9117:
	.size	_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmlIS2_EEKNS_7ProductIS2_T_Li0EEERKNS0_IS6_EE, .-_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmlIS2_EEKNS_7ProductIS2_T_Li0EEERKNS0_IS6_EE
	.section	.text._ZNK5Eigen8symbolic8BaseExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEEE7derivedEv,"axG",@progbits,_ZNK5Eigen8symbolic8BaseExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEEE7derivedEv,comdat
	.align 2
	.weak	_ZNK5Eigen8symbolic8BaseExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEEE7derivedEv
	.type	_ZNK5Eigen8symbolic8BaseExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEEE7derivedEv, @function
_ZNK5Eigen8symbolic8BaseExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEEE7derivedEv:
.LFB9257:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9257:
	.size	_ZNK5Eigen8symbolic8BaseExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEEE7derivedEv, .-_ZNK5Eigen8symbolic8BaseExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEEE7derivedEv
	.section	.text._ZN5Eigen8symbolic9ValueExprINS_8internal8FixedIntILi1EEEEC2Ev,"axG",@progbits,_ZN5Eigen8symbolic9ValueExprINS_8internal8FixedIntILi1EEEEC5Ev,comdat
	.align 2
	.weak	_ZN5Eigen8symbolic9ValueExprINS_8internal8FixedIntILi1EEEEC2Ev
	.type	_ZN5Eigen8symbolic9ValueExprINS_8internal8FixedIntILi1EEEEC2Ev, @function
_ZN5Eigen8symbolic9ValueExprINS_8internal8FixedIntILi1EEEEC2Ev:
.LFB9259:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9259:
	.size	_ZN5Eigen8symbolic9ValueExprINS_8internal8FixedIntILi1EEEEC2Ev, .-_ZN5Eigen8symbolic9ValueExprINS_8internal8FixedIntILi1EEEEC2Ev
	.weak	_ZN5Eigen8symbolic9ValueExprINS_8internal8FixedIntILi1EEEEC1Ev
	.set	_ZN5Eigen8symbolic9ValueExprINS_8internal8FixedIntILi1EEEEC1Ev,_ZN5Eigen8symbolic9ValueExprINS_8internal8FixedIntILi1EEEEC2Ev
	.section	.text._ZN5Eigen8symbolic7AddExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEENS0_9ValueExprINS3_8FixedIntILi1EEEEEEC2ERKS5_RKS9_,"axG",@progbits,_ZN5Eigen8symbolic7AddExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEENS0_9ValueExprINS3_8FixedIntILi1EEEEEEC5ERKS5_RKS9_,comdat
	.align 2
	.weak	_ZN5Eigen8symbolic7AddExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEENS0_9ValueExprINS3_8FixedIntILi1EEEEEEC2ERKS5_RKS9_
	.type	_ZN5Eigen8symbolic7AddExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEENS0_9ValueExprINS3_8FixedIntILi1EEEEEEC2ERKS5_RKS9_, @function
_ZN5Eigen8symbolic7AddExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEENS0_9ValueExprINS3_8FixedIntILi1EEEEEEC2ERKS5_RKS9_:
.LFB9262:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9262:
	.size	_ZN5Eigen8symbolic7AddExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEENS0_9ValueExprINS3_8FixedIntILi1EEEEEEC2ERKS5_RKS9_, .-_ZN5Eigen8symbolic7AddExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEENS0_9ValueExprINS3_8FixedIntILi1EEEEEEC2ERKS5_RKS9_
	.weak	_ZN5Eigen8symbolic7AddExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEENS0_9ValueExprINS3_8FixedIntILi1EEEEEEC1ERKS5_RKS9_
	.set	_ZN5Eigen8symbolic7AddExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEENS0_9ValueExprINS3_8FixedIntILi1EEEEEEC1ERKS5_RKS9_,_ZN5Eigen8symbolic7AddExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEENS0_9ValueExprINS3_8FixedIntILi1EEEEEEC2ERKS5_RKS9_
	.section	.text._ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev,"axG",@progbits,_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC5Ev,comdat
	.align 2
	.weak	_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev
	.type	_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev, @function
_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev:
.LFB9270:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9270:
	.size	_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev, .-_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev
	.weak	_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1Ev
	.set	_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1Ev,_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev
	.section	.text._ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev,"axG",@progbits,_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC5Ev,comdat
	.align 2
	.weak	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev
	.type	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev, @function
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev:
.LFB9272:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9272:
	.size	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev, .-_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev
	.weak	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1Ev
	.set	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1Ev,_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev
	.section	.text._ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE22_check_template_paramsEv,"axG",@progbits,_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE22_check_template_paramsEv,comdat
	.weak	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE22_check_template_paramsEv
	.type	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE22_check_template_paramsEv, @function
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE22_check_template_paramsEv:
.LFB9274:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9274:
	.size	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE22_check_template_paramsEv, .-_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE22_check_template_paramsEv
	.section	.text._ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6_init2IiiEEvllPNS_8internal9enable_ifILb1ET_E4typeE,"axG",@progbits,_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6_init2IiiEEvllPNS_8internal9enable_ifILb1ET_E4typeE,comdat
	.align 2
	.weak	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6_init2IiiEEvllPNS_8internal9enable_ifILb1ET_E4typeE
	.type	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6_init2IiiEEvllPNS_8internal9enable_ifILb1ET_E4typeE, @function
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6_init2IiiEEvllPNS_8internal9enable_ifILb1ET_E4typeE:
.LFB9275:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movb	$1, -2(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9275:
	.size	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6_init2IiiEEvllPNS_8internal9enable_ifILb1ET_E4typeE, .-_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6_init2IiiEEvllPNS_8internal9enable_ifILb1ET_E4typeE
	.section	.text._ZN5Eigen8internal31conditional_aligned_delete_autoIdLb1EEEvPT_m,"axG",@progbits,_ZN5Eigen8internal31conditional_aligned_delete_autoIdLb1EEEvPT_m,comdat
	.weak	_ZN5Eigen8internal31conditional_aligned_delete_autoIdLb1EEEvPT_m
	.type	_ZN5Eigen8internal31conditional_aligned_delete_autoIdLb1EEEvPT_m, @function
_ZN5Eigen8internal31conditional_aligned_delete_autoIdLb1EEEvPT_m:
.LFB9276:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal24conditional_aligned_freeILb1EEEvPv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9276:
	.size	_ZN5Eigen8internal31conditional_aligned_delete_autoIdLb1EEEvPT_m, .-_ZN5Eigen8internal31conditional_aligned_delete_autoIdLb1EEEvPT_m
	.section	.text._ZN5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv,"axG",@progbits,_ZN5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv,comdat
	.align 2
	.weak	_ZN5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv
	.type	_ZN5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv, @function
_ZN5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv:
.LFB9277:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9277:
	.size	_ZN5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv, .-_ZN5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv
	.section	.rodata
	.align 8
.LC15:
	.string	"Eigen::Block<XprType, BlockRows, BlockCols, InnerPanel>::Block(XprType&, Eigen::Index) [with XprType = Eigen::Matrix<double, -1, -1>; int BlockRows = 1; int BlockCols = -1; bool InnerPanel = false; Eigen::Index = long int]"
	.align 8
.LC16:
	.string	"../eigen-3.4.0/Eigen/src/Core/Block.h"
	.align 8
.LC17:
	.string	"(i>=0) && ( ((BlockRows==1) && (BlockCols==XprType::ColsAtCompileTime) && i<xpr.rows()) ||((BlockRows==XprType::RowsAtCompileTime) && (BlockCols==1) && i<xpr.cols()))"
	.section	.text._ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEC2ERS2_l,"axG",@progbits,_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEC5ERS2_l,comdat
	.align 2
	.weak	_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEC2ERS2_l
	.type	_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEC2ERS2_l, @function
_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEC2ERS2_l:
.LFB9279:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen9BlockImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ENS_5DenseEEC2ERS2_l
	cmpq	$0, -24(%rbp)
	js	.L129
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	cmpq	%rax, -24(%rbp)
	jl	.L132
.L129:
	leaq	.LC15(%rip), %rcx
	movl	$120, %edx
	leaq	.LC16(%rip), %rsi
	leaq	.LC17(%rip), %rdi
	call	__assert_fail@PLT
.L132:
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9279:
	.size	_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEC2ERS2_l, .-_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEC2ERS2_l
	.weak	_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEC1ERS2_l
	.set	_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEC1ERS2_l,_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEC2ERS2_l
	.section	.text._ZNK5Eigen9EigenBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7derivedEv,"axG",@progbits,_ZNK5Eigen9EigenBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7derivedEv,comdat
	.align 2
	.weak	_ZNK5Eigen9EigenBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7derivedEv
	.type	_ZNK5Eigen9EigenBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7derivedEv, @function
_ZNK5Eigen9EigenBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7derivedEv:
.LFB9281:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9281:
	.size	_ZNK5Eigen9EigenBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7derivedEv, .-_ZNK5Eigen9EigenBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7derivedEv
	.section	.text._ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_5BlockIS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE,"axG",@progbits,_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC5INS_5BlockIS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE,comdat
	.align 2
	.weak	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_5BlockIS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE
	.type	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_5BlockIS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE, @function
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_5BlockIS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE:
.LFB9283:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9283
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC1Ev
	call	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE22_check_template_paramsEv
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB20:
	call	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Li1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_5BlockIS2_Li1ELin1ELb0EEEEERS2_RKNS_9DenseBaseIT_EE
.LEHE20:
	jmp	.L138
.L137:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB21:
	call	_Unwind_Resume@PLT
.LEHE21:
.L138:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9283:
	.section	.gcc_except_table
.LLSDA9283:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9283-.LLSDACSB9283
.LLSDACSB9283:
	.uleb128 .LEHB20-.LFB9283
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L137-.LFB9283
	.uleb128 0
	.uleb128 .LEHB21-.LFB9283
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSE9283:
	.section	.text._ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_5BlockIS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE,"axG",@progbits,_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC5INS_5BlockIS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE,comdat
	.size	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_5BlockIS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE, .-_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_5BlockIS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE
	.weak	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1INS_5BlockIS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE
	.set	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1INS_5BlockIS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE,_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_5BlockIS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE
	.section	.text._ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv,"axG",@progbits,_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv,comdat
	.align 2
	.weak	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	.type	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv, @function
_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv:
.LFB9290:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv
	movq	%rax, %rdi
	call	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9290:
	.size	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv, .-_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	.section	.text._ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4sizeEv,"axG",@progbits,_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4sizeEv,comdat
	.align 2
	.weak	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4sizeEv
	.type	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4sizeEv, @function
_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4sizeEv:
.LFB9289:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	imulq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9289:
	.size	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4sizeEv, .-_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4sizeEv
	.section	.text._ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev,"axG",@progbits,_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED5Ev,comdat
	.align 2
	.weak	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev
	.type	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev, @function
_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev:
.LFB9294:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9294:
	.size	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev, .-_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev
	.weak	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED1Ev
	.set	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED1Ev,_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev
	.section	.text._ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev,"axG",@progbits,_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED5Ev,comdat
	.align 2
	.weak	_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev
	.type	_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev, @function
_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev:
.LFB9296:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9296:
	.size	_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev, .-_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev
	.weak	_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED1Ev
	.set	_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED1Ev,_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev
	.section	.text._ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE8coeffRefEl,"axG",@progbits,_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE8coeffRefEl,comdat
	.align 2
	.weak	_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE8coeffRefEl
	.type	_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE8coeffRefEl, @function
_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE8coeffRefEl:
.LFB9291:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1ERKS3_
	movq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8coeffRefEl
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L147
	call	__stack_chk_fail@PLT
.L147:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9291:
	.size	_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE8coeffRefEl, .-_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE8coeffRefEl
	.section	.text._ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv,"axG",@progbits,_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv,comdat
	.align 2
	.weak	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	.type	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv, @function
_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv:
.LFB9298:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv
	movq	%rax, %rdi
	call	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9298:
	.size	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv, .-_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	.section	.text._ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE8coeffRefEll,"axG",@progbits,_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE8coeffRefEll,comdat
	.align 2
	.weak	_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE8coeffRefEll
	.type	_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE8coeffRefEll, @function
_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE8coeffRefEll:
.LFB9299:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9299
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB22:
	call	_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1ERKS3_
.LEHE22:
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB23:
	call	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8coeffRefEll
.LEHE23:
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L153
	jmp	.L155
.L154:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB24:
	call	_Unwind_Resume@PLT
.LEHE24:
.L155:
	call	__stack_chk_fail@PLT
.L153:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9299:
	.section	.gcc_except_table
.LLSDA9299:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9299-.LLSDACSB9299
.LLSDACSB9299:
	.uleb128 .LEHB22-.LFB9299
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB9299
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L154-.LFB9299
	.uleb128 0
	.uleb128 .LEHB24-.LFB9299
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
.LLSDACSE9299:
	.section	.text._ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE8coeffRefEll,"axG",@progbits,_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE8coeffRefEll,comdat
	.size	_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE8coeffRefEll, .-_ZN5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE8coeffRefEll
	.section	.text._ZN5Eigen8internal16scalar_random_opIdEC2Ev,"axG",@progbits,_ZN5Eigen8internal16scalar_random_opIdEC5Ev,comdat
	.align 2
	.weak	_ZN5Eigen8internal16scalar_random_opIdEC2Ev
	.type	_ZN5Eigen8internal16scalar_random_opIdEC2Ev, @function
_ZN5Eigen8internal16scalar_random_opIdEC2Ev:
.LFB9304:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9304:
	.size	_ZN5Eigen8internal16scalar_random_opIdEC2Ev, .-_ZN5Eigen8internal16scalar_random_opIdEC2Ev
	.weak	_ZN5Eigen8internal16scalar_random_opIdEC1Ev
	.set	_ZN5Eigen8internal16scalar_random_opIdEC1Ev,_ZN5Eigen8internal16scalar_random_opIdEC2Ev
	.section	.text._ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11NullaryExprINS_8internal16scalar_random_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_,"axG",@progbits,_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11NullaryExprINS_8internal16scalar_random_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_,comdat
	.align 2
	.weak	_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11NullaryExprINS_8internal16scalar_random_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_
	.type	_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11NullaryExprINS_8internal16scalar_random_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_, @function
_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11NullaryExprINS_8internal16scalar_random_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_:
.LFB9306:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1EllRKS3_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9306:
	.size	_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11NullaryExprINS_8internal16scalar_random_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_, .-_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11NullaryExprINS_8internal16scalar_random_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_
	.section	.text._ZN5Eigen8internal16scalar_random_opIdEC2ERKS2_,"axG",@progbits,_ZN5Eigen8internal16scalar_random_opIdEC5ERKS2_,comdat
	.align 2
	.weak	_ZN5Eigen8internal16scalar_random_opIdEC2ERKS2_
	.type	_ZN5Eigen8internal16scalar_random_opIdEC2ERKS2_, @function
_ZN5Eigen8internal16scalar_random_opIdEC2ERKS2_:
.LFB9311:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9311:
	.size	_ZN5Eigen8internal16scalar_random_opIdEC2ERKS2_, .-_ZN5Eigen8internal16scalar_random_opIdEC2ERKS2_
	.weak	_ZN5Eigen8internal16scalar_random_opIdEC1ERKS2_
	.set	_ZN5Eigen8internal16scalar_random_opIdEC1ERKS2_,_ZN5Eigen8internal16scalar_random_opIdEC2ERKS2_
	.section	.text._ZNK5Eigen9EigenBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE7derivedEv,"axG",@progbits,_ZNK5Eigen9EigenBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE7derivedEv,comdat
	.align 2
	.weak	_ZNK5Eigen9EigenBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE7derivedEv
	.type	_ZNK5Eigen9EigenBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE7derivedEv, @function
_ZNK5Eigen9EigenBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE7derivedEv:
.LFB9313:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9313:
	.size	_ZNK5Eigen9EigenBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE7derivedEv, .-_ZNK5Eigen9EigenBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE7derivedEv
	.section	.text._ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEERKNS_9DenseBaseIT_EE,"axG",@progbits,_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC5INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEERKNS_9DenseBaseIT_EE,comdat
	.align 2
	.weak	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEERKNS_9DenseBaseIT_EE
	.type	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEERKNS_9DenseBaseIT_EE, @function
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEERKNS_9DenseBaseIT_EE:
.LFB9315:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9315
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC1Ev
	call	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE22_check_template_paramsEv
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB25:
	call	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEERS2_RKNS_9DenseBaseIT_EE
.LEHE25:
	jmp	.L165
.L164:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB26:
	call	_Unwind_Resume@PLT
.LEHE26:
.L165:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9315:
	.section	.gcc_except_table
.LLSDA9315:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9315-.LLSDACSB9315
.LLSDACSB9315:
	.uleb128 .LEHB25-.LFB9315
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L164-.LFB9315
	.uleb128 0
	.uleb128 .LEHB26-.LFB9315
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSE9315:
	.section	.text._ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEERKNS_9DenseBaseIT_EE,"axG",@progbits,_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC5INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEERKNS_9DenseBaseIT_EE,comdat
	.size	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEERKNS_9DenseBaseIT_EE, .-_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEERKNS_9DenseBaseIT_EE
	.weak	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEERKNS_9DenseBaseIT_EE
	.set	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEERKNS_9DenseBaseIT_EE,_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEERKNS_9DenseBaseIT_EE
	.section	.text._ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_,"axG",@progbits,_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC5ERKS3_,comdat
	.align 2
	.weak	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_
	.type	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_, @function
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_:
.LFB9318:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC1ERKS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9318:
	.size	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_, .-_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_
	.weak	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1ERKS3_
	.set	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1ERKS3_,_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_
	.section	.text._ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv,"axG",@progbits,_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv,comdat
	.align 2
	.weak	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv
	.type	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv, @function
_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv:
.LFB9320:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9320:
	.size	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv, .-_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv
	.section	.text._ZN5Eigen10MatrixBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC2Ev,"axG",@progbits,_ZN5Eigen10MatrixBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC5Ev,comdat
	.align 2
	.weak	_ZN5Eigen10MatrixBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC2Ev
	.type	_ZN5Eigen10MatrixBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC2Ev, @function
_ZN5Eigen10MatrixBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC2Ev:
.LFB9325:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen9DenseBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9325:
	.size	_ZN5Eigen10MatrixBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC2Ev, .-_ZN5Eigen10MatrixBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC2Ev
	.weak	_ZN5Eigen10MatrixBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC1Ev
	.set	_ZN5Eigen10MatrixBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC1Ev,_ZN5Eigen10MatrixBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC2Ev
	.section	.text._ZN5Eigen8internal18dense_product_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0ELi8EEC2Ev,"axG",@progbits,_ZN5Eigen8internal18dense_product_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0ELi8EEC5Ev,comdat
	.align 2
	.weak	_ZN5Eigen8internal18dense_product_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0ELi8EEC2Ev
	.type	_ZN5Eigen8internal18dense_product_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0ELi8EEC2Ev, @function
_ZN5Eigen8internal18dense_product_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0ELi8EEC2Ev:
.LFB9327:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen10MatrixBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9327:
	.size	_ZN5Eigen8internal18dense_product_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0ELi8EEC2Ev, .-_ZN5Eigen8internal18dense_product_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0ELi8EEC2Ev
	.weak	_ZN5Eigen8internal18dense_product_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0ELi8EEC1Ev
	.set	_ZN5Eigen8internal18dense_product_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0ELi8EEC1Ev,_ZN5Eigen8internal18dense_product_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0ELi8EEC2Ev
	.section	.text._ZN5Eigen11ProductImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0ENS_5DenseEEC2Ev,"axG",@progbits,_ZN5Eigen11ProductImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0ENS_5DenseEEC5Ev,comdat
	.align 2
	.weak	_ZN5Eigen11ProductImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0ENS_5DenseEEC2Ev
	.type	_ZN5Eigen11ProductImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0ENS_5DenseEEC2Ev, @function
_ZN5Eigen11ProductImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0ENS_5DenseEEC2Ev:
.LFB9329:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal18dense_product_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0ELi8EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9329:
	.size	_ZN5Eigen11ProductImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0ENS_5DenseEEC2Ev, .-_ZN5Eigen11ProductImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0ENS_5DenseEEC2Ev
	.weak	_ZN5Eigen11ProductImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0ENS_5DenseEEC1Ev
	.set	_ZN5Eigen11ProductImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0ENS_5DenseEEC1Ev,_ZN5Eigen11ProductImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0ENS_5DenseEEC2Ev
	.section	.rodata
	.align 8
.LC18:
	.ascii	"Eigen::Product<Lhs, Rhs, Option>::Product(const L"
	.string	"hs&, const Rhs&) [with _Lhs = Eigen::Matrix<double, -1, -1>; _Rhs = Eigen::Matrix<double, -1, -1>; int Option = 0; Eigen::Product<Lhs, Rhs, Option>::Lhs = Eigen::Matrix<double, -1, -1>; Eigen::Product<Lhs, Rhs, Option>::Rhs = Eigen::Matrix<double, -1, -1>]"
	.align 8
.LC19:
	.string	"../eigen-3.4.0/Eigen/src/Core/Product.h"
	.align 8
.LC20:
	.string	"lhs.cols() == rhs.rows() && \"invalid matrix product\" && \"if you wanted a coeff-wise or a dot product use the respective explicit functions\""
	.section	.text._ZN5Eigen7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0EEC2ERKS2_S5_,"axG",@progbits,_ZN5Eigen7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0EEC5ERKS2_S5_,comdat
	.align 2
	.weak	_ZN5Eigen7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0EEC2ERKS2_S5_
	.type	_ZN5Eigen7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0EEC2ERKS2_S5_, @function
_ZN5Eigen7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0EEC2ERKS2_S5_:
.LFB9331:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen11ProductImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0ENS_5DenseEEC2Ev
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	cmpq	%rax, %rbx
	je	.L176
	leaq	.LC18(%rip), %rcx
	movl	$96, %edx
	leaq	.LC19(%rip), %rsi
	leaq	.LC20(%rip), %rdi
	call	__assert_fail@PLT
.L176:
	nop
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9331:
	.size	_ZN5Eigen7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0EEC2ERKS2_S5_, .-_ZN5Eigen7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0EEC2ERKS2_S5_
	.weak	_ZN5Eigen7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0EEC1ERKS2_S5_
	.set	_ZN5Eigen7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0EEC1ERKS2_S5_,_ZN5Eigen7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0EEC2ERKS2_S5_
	.section	.text._ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev,"axG",@progbits,_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC5Ev,comdat
	.align 2
	.weak	_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev
	.type	_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev, @function
_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev:
.LFB9379:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9379:
	.size	_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev, .-_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev
	.weak	_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1Ev
	.set	_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1Ev,_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev
	.section	.text._ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2Ev,"axG",@progbits,_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC5Ev,comdat
	.align 2
	.weak	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2Ev
	.type	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2Ev, @function
_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2Ev:
.LFB9382:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9382:
	.size	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2Ev, .-_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2Ev
	.weak	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC1Ev
	.set	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC1Ev,_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2Ev
	.section	.rodata
	.align 8
.LC21:
	.string	"void Eigen::PlainObjectBase<Derived>::resize(Eigen::Index, Eigen::Index) [with Derived = Eigen::Matrix<double, -1, -1>; Eigen::Index = long int]"
	.align 8
.LC22:
	.string	"../eigen-3.4.0/Eigen/src/Core/PlainObjectBase.h"
	.align 8
.LC23:
	.ascii	"(!(RowsAtCompileTime!=Dynamic) || (rows==RowsAtCompileTime))"
	.ascii	" && (!(ColsAtCompileTime!=Dynamic) || (cols==ColsAtCompileTi"
	.ascii	"me)) && (!(RowsAtCompi"
	.string	"leTime==Dynamic && MaxRowsAtCompileTime!=Dynamic) || (rows<=MaxRowsAtCompileTime)) && (!(ColsAtCompileTime==Dynamic && MaxColsAtCompileTime!=Dynamic) || (cols<=MaxColsAtCompileTime)) && rows>=0 && cols>=0 && \"Invalid sizes when resizing a matrix or array.\""
	.section	.text._ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll,"axG",@progbits,_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll,comdat
	.align 2
	.weak	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll
	.type	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll, @function
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll:
.LFB9384:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	cmpq	$0, -48(%rbp)
	js	.L180
	cmpq	$0, -56(%rbp)
	jns	.L186
.L180:
	leaq	.LC21(%rip), %rcx
	movl	$273, %edx
	leaq	.LC22(%rip), %rsi
	leaq	.LC23(%rip), %rdi
	call	__assert_fail@PLT
.L186:
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movabsq	$9223372036854775807, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L182
	cmpq	$0, -16(%rbp)
	je	.L182
	movq	-8(%rbp), %rax
	cqto
	idivq	-16(%rbp)
	cmpq	%rax, -24(%rbp)
	jle	.L182
	movl	$1, %eax
	jmp	.L183
.L182:
	movl	$0, %eax
.L183:
	movb	%al, -25(%rbp)
	cmpb	$0, -25(%rbp)
	je	.L187
	call	_ZN5Eigen8internal19throw_std_bad_allocEv
.L187:
	nop
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	imulq	-56(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9384:
	.size	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll, .-_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll
	.section	.text._ZN5Eigen8internal24conditional_aligned_freeILb1EEEvPv,"axG",@progbits,_ZN5Eigen8internal24conditional_aligned_freeILb1EEEvPv,comdat
	.weak	_ZN5Eigen8internal24conditional_aligned_freeILb1EEEvPv
	.type	_ZN5Eigen8internal24conditional_aligned_freeILb1EEEvPv, @function
_ZN5Eigen8internal24conditional_aligned_freeILb1EEEvPv:
.LFB9386:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal12aligned_freeEPv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9386:
	.size	_ZN5Eigen8internal24conditional_aligned_freeILb1EEEvPv, .-_ZN5Eigen8internal24conditional_aligned_freeILb1EEEvPv
	.section	.text._ZN5Eigen9BlockImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ENS_5DenseEEC2ERS2_l,"axG",@progbits,_ZN5Eigen9BlockImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ENS_5DenseEEC5ERS2_l,comdat
	.align 2
	.weak	_ZN5Eigen9BlockImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ENS_5DenseEEC2ERS2_l
	.type	_ZN5Eigen9BlockImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ENS_5DenseEEC2ERS2_l, @function
_ZN5Eigen9BlockImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ENS_5DenseEEC2ERS2_l:
.LFB9388:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC2ERS3_l
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9388:
	.size	_ZN5Eigen9BlockImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ENS_5DenseEEC2ERS2_l, .-_ZN5Eigen9BlockImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ENS_5DenseEEC2ERS2_l
	.weak	_ZN5Eigen9BlockImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ENS_5DenseEEC1ERS2_l
	.set	_ZN5Eigen9BlockImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ENS_5DenseEEC1ERS2_l,_ZN5Eigen9BlockImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ENS_5DenseEEC2ERS2_l
	.section	.text._ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE4rowsEv,"axG",@progbits,_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE4rowsEv,comdat
	.align 2
	.weak	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE4rowsEv
	.type	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE4rowsEv, @function
_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE4rowsEv:
.LFB9391:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZN5Eigen8internal19variable_if_dynamicIlLi1EE5valueEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9391:
	.size	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE4rowsEv, .-_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE4rowsEv
	.section	.text._ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE4colsEv,"axG",@progbits,_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE4colsEv,comdat
	.align 2
	.weak	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE4colsEv
	.type	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE4colsEv, @function
_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE4colsEv:
.LFB9392:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen8internal19variable_if_dynamicIlLin1EE5valueEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9392:
	.size	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE4colsEv, .-_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE4colsEv
	.section	.text._ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Li1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE,"axG",@progbits,_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Li1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE,comdat
	.align 2
	.weak	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Li1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE
	.type	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Li1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE, @function
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Li1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE:
.LFB9390:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9EigenBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7derivedEv
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE4colsEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE4rowsEv
	movq	%rax, -40(%rbp)
	movq	%rbx, -32(%rbp)
	movabsq	$9223372036854775807, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L195
	cmpq	$0, -32(%rbp)
	je	.L195
	movq	-24(%rbp), %rax
	cqto
	idivq	-32(%rbp)
	cmpq	%rax, -40(%rbp)
	jle	.L195
	movl	$1, %eax
	jmp	.L196
.L195:
	movl	$0, %eax
.L196:
	movb	%al, -57(%rbp)
	cmpb	$0, -57(%rbp)
	je	.L199
	call	_ZN5Eigen8internal19throw_std_bad_allocEv
.L199:
	nop
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE4rowsEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE4colsEv
	imulq	%rbx, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE4colsEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE4rowsEv
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9390:
	.size	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Li1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE, .-_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_5BlockIS2_Li1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE
	.section	.text._ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_5BlockIS2_Li1ELin1ELb0EEEEERS2_RKNS_9DenseBaseIT_EE,"axG",@progbits,_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_5BlockIS2_Li1ELin1ELb0EEEEERS2_RKNS_9DenseBaseIT_EE,comdat
	.align 2
	.weak	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_5BlockIS2_Li1ELin1ELb0EEEEERS2_RKNS_9DenseBaseIT_EE
	.type	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_5BlockIS2_Li1ELin1ELb0EEEEERS2_RKNS_9DenseBaseIT_EE, @function
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_5BlockIS2_Li1ELin1ELb0EEEEERS2_RKNS_9DenseBaseIT_EE:
.LFB9393:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal9assign_opIddEC1Ev
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9EigenBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7derivedEv
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv
	movq	%rax, %rcx
	leaq	-25(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv
	movq	-24(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L202
	call	__stack_chk_fail@PLT
.L202:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9393:
	.size	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_5BlockIS2_Li1ELin1ELb0EEEEERS2_RKNS_9DenseBaseIT_EE, .-_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_5BlockIS2_Li1ELin1ELb0EEEEERS2_RKNS_9DenseBaseIT_EE
	.section	.text._ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_,"axG",@progbits,_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC5ERKS3_,comdat
	.align 2
	.weak	_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_
	.type	_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_, @function
_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_:
.LFB9399:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2ERKS5_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9399:
	.size	_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_, .-_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_
	.weak	_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1ERKS3_
	.set	_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1ERKS3_,_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_
	.section	.text._ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev,"axG",@progbits,_ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED5Ev,comdat
	.align 2
	.weak	_ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev
	.type	_ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev, @function
_ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev:
.LFB9402:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9402:
	.size	_ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev, .-_ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev
	.weak	_ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED1Ev
	.set	_ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED1Ev,_ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev
	.section	.text._ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8coeffRefEl,"axG",@progbits,_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8coeffRefEl,comdat
	.align 2
	.weak	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8coeffRefEl
	.type	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8coeffRefEl, @function
_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8coeffRefEl:
.LFB9404:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9404:
	.size	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8coeffRefEl, .-_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8coeffRefEl
	.section	.text._ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8coeffRefEll,"axG",@progbits,_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8coeffRefEll,comdat
	.align 2
	.weak	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8coeffRefEll
	.type	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8coeffRefEll, @function
_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8coeffRefEll:
.LFB9405:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EE11outerStrideEv
	imulq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9405:
	.size	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8coeffRefEll, .-_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8coeffRefEll
	.section	.text._ZN5Eigen10MatrixBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev,"axG",@progbits,_ZN5Eigen10MatrixBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC5Ev,comdat
	.align 2
	.weak	_ZN5Eigen10MatrixBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev
	.type	_ZN5Eigen10MatrixBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev, @function
_ZN5Eigen10MatrixBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev:
.LFB9410:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen9DenseBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9410:
	.size	_ZN5Eigen10MatrixBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev, .-_ZN5Eigen10MatrixBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev
	.weak	_ZN5Eigen10MatrixBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC1Ev
	.set	_ZN5Eigen10MatrixBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC1Ev,_ZN5Eigen10MatrixBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev
	.section	.rodata
	.align 8
.LC24:
	.string	"Eigen::CwiseNullaryOp<NullaryOp, MatrixType>::CwiseNullaryOp(Eigen::Index, Eigen::Index, const NullaryOp&) [with NullaryOp = Eigen::internal::scalar_random_op<double>; PlainObjectType = Eigen::Matrix<double, -1, -1>; Eigen::Index = long int]"
	.align 8
.LC25:
	.string	"../eigen-3.4.0/Eigen/src/Core/CwiseNullaryOp.h"
	.align 8
.LC26:
	.string	"rows >= 0 && (RowsAtCompileTime == Dynamic || RowsAtCompileTime == rows) && cols >= 0 && (ColsAtCompileTime == Dynamic || ColsAtCompileTime == cols)"
	.section	.text._ZN5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2EllRKS3_,"axG",@progbits,_ZN5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC5EllRKS3_,comdat
	.align 2
	.weak	_ZN5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2EllRKS3_
	.type	_ZN5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2EllRKS3_, @function
_ZN5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2EllRKS3_:
.LFB9412:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen10MatrixBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal19variable_if_dynamicIlLin1EEC1El
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN5Eigen8internal19variable_if_dynamicIlLin1EEC1El
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN5Eigen8internal16scalar_random_opIdEC1ERKS2_
	cmpq	$0, -16(%rbp)
	js	.L211
	cmpq	$0, -24(%rbp)
	jns	.L213
.L211:
	leaq	.LC24(%rip), %rcx
	movl	$71, %edx
	leaq	.LC25(%rip), %rsi
	leaq	.LC26(%rip), %rdi
	call	__assert_fail@PLT
.L213:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9412:
	.size	_ZN5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2EllRKS3_, .-_ZN5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2EllRKS3_
	.weak	_ZN5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1EllRKS3_
	.set	_ZN5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1EllRKS3_,_ZN5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2EllRKS3_
	.section	.text._ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv,"axG",@progbits,_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv,comdat
	.align 2
	.weak	_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	.type	_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv, @function
_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv:
.LFB9415:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen8internal19variable_if_dynamicIlLin1EE5valueEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9415:
	.size	_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv, .-_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	.section	.text._ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv,"axG",@progbits,_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv,comdat
	.align 2
	.weak	_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	.type	_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv, @function
_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv:
.LFB9416:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen8internal19variable_if_dynamicIlLin1EE5valueEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9416:
	.size	_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv, .-_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	.section	.text._ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE,"axG",@progbits,_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE,comdat
	.align 2
	.weak	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE
	.type	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE, @function
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE:
.LFB9414:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9EigenBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE7derivedEv
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	movq	%rax, -40(%rbp)
	movq	%rbx, -32(%rbp)
	movabsq	$9223372036854775807, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L219
	cmpq	$0, -32(%rbp)
	je	.L219
	movq	-24(%rbp), %rax
	cqto
	idivq	-32(%rbp)
	cmpq	%rax, -40(%rbp)
	jle	.L219
	movl	$1, %eax
	jmp	.L220
.L219:
	movl	$0, %eax
.L220:
	movb	%al, -57(%rbp)
	cmpb	$0, -57(%rbp)
	je	.L223
	call	_ZN5Eigen8internal19throw_std_bad_allocEv
.L223:
	nop
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	imulq	%rbx, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9414:
	.size	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE, .-_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE
	.section	.text._ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEERS2_RKNS_9DenseBaseIT_EE,"axG",@progbits,_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEERS2_RKNS_9DenseBaseIT_EE,comdat
	.align 2
	.weak	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEERS2_RKNS_9DenseBaseIT_EE
	.type	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEERS2_RKNS_9DenseBaseIT_EE, @function
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEERS2_RKNS_9DenseBaseIT_EE:
.LFB9417:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal9assign_opIddEC1Ev
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9EigenBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE7derivedEv
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv
	movq	%rax, %rcx
	leaq	-25(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv
	movq	-24(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L226
	call	__stack_chk_fail@PLT
.L226:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9417:
	.size	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEERS2_RKNS_9DenseBaseIT_EE, .-_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEES2_EEEERS2_RKNS_9DenseBaseIT_EE
	.section	.text._ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2ERKS1_,"axG",@progbits,_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC5ERKS1_,comdat
	.align 2
	.weak	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2ERKS1_
	.type	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2ERKS1_, @function
_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2ERKS1_:
.LFB9419:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	imulq	%rdx, %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	imulq	%rsi, %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9419:
	.size	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2ERKS1_, .-_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2ERKS1_
	.weak	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC1ERKS1_
	.set	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC1ERKS1_,_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2ERKS1_
	.section	.text._ZN5Eigen9DenseBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC2Ev,"axG",@progbits,_ZN5Eigen9DenseBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC5Ev,comdat
	.align 2
	.weak	_ZN5Eigen9DenseBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC2Ev
	.type	_ZN5Eigen9DenseBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC2Ev, @function
_ZN5Eigen9DenseBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC2Ev:
.LFB9422:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9422:
	.size	_ZN5Eigen9DenseBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC2Ev, .-_ZN5Eigen9DenseBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC2Ev
	.weak	_ZN5Eigen9DenseBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC1Ev
	.set	_ZN5Eigen9DenseBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC1Ev,_ZN5Eigen9DenseBaseINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEC2Ev
	.section	.text._ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll,"axG",@progbits,_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll,comdat
	.align 2
	.weak	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll
	.type	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll, @function
_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll:
.LFB9463:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	imulq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	je	.L230
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	imulq	%rdx, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal31conditional_aligned_delete_autoIdLb1EEEvPT_m
	cmpq	$0, -16(%rbp)
	jle	.L231
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L230
.L231:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
.L230:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9463:
	.size	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll, .-_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll
	.section	.text._ZN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC2ERS3_l,"axG",@progbits,_ZN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC5ERS3_l,comdat
	.align 2
	.weak	_ZN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC2ERS3_l
	.type	_ZN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC2ERS3_l, @function
_ZN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC2ERS3_l:
.LFB9465:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	movq	%rax, %r13
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4dataEv
	movq	%rax, %r12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EE11innerStrideEv
	imulq	-56(%rbp), %rax
	salq	$3, %rax
	addq	%r12, %rax
	movq	%r13, %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EEC2EPdll
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN5Eigen8internal19variable_if_dynamicIlLin1EEC1El
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal19variable_if_dynamicIlLin1EEC1El
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE4initEv
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9465:
	.size	_ZN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC2ERS3_l, .-_ZN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC2ERS3_l
	.weak	_ZN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC1ERS3_l
	.set	_ZN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC1ERS3_l,_ZN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC2ERS3_l
	.section	.text._ZN5Eigen8internal19variable_if_dynamicIlLi1EE5valueEv,"axG",@progbits,_ZN5Eigen8internal19variable_if_dynamicIlLi1EE5valueEv,comdat
	.weak	_ZN5Eigen8internal19variable_if_dynamicIlLi1EE5valueEv
	.type	_ZN5Eigen8internal19variable_if_dynamicIlLi1EE5valueEv, @function
_ZN5Eigen8internal19variable_if_dynamicIlLi1EE5valueEv:
.LFB9467:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9467:
	.size	_ZN5Eigen8internal19variable_if_dynamicIlLi1EE5valueEv, .-_ZN5Eigen8internal19variable_if_dynamicIlLi1EE5valueEv
	.section	.text._ZNK5Eigen8internal19variable_if_dynamicIlLin1EE5valueEv,"axG",@progbits,_ZNK5Eigen8internal19variable_if_dynamicIlLin1EE5valueEv,comdat
	.align 2
	.weak	_ZNK5Eigen8internal19variable_if_dynamicIlLin1EE5valueEv
	.type	_ZNK5Eigen8internal19variable_if_dynamicIlLin1EE5valueEv, @function
_ZNK5Eigen8internal19variable_if_dynamicIlLin1EE5valueEv:
.LFB9468:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9468:
	.size	_ZNK5Eigen8internal19variable_if_dynamicIlLin1EE5valueEv, .-_ZNK5Eigen8internal19variable_if_dynamicIlLin1EE5valueEv
	.section	.text._ZN5Eigen8internal9assign_opIddEC2Ev,"axG",@progbits,_ZN5Eigen8internal9assign_opIddEC5Ev,comdat
	.align 2
	.weak	_ZN5Eigen8internal9assign_opIddEC2Ev
	.type	_ZN5Eigen8internal9assign_opIddEC2Ev, @function
_ZN5Eigen8internal9assign_opIddEC2Ev:
.LFB9470:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9470:
	.size	_ZN5Eigen8internal9assign_opIddEC2Ev, .-_ZN5Eigen8internal9assign_opIddEC2Ev
	.weak	_ZN5Eigen8internal9assign_opIddEC1Ev
	.set	_ZN5Eigen8internal9assign_opIddEC1Ev,_ZN5Eigen8internal9assign_opIddEC2Ev
	.section	.text._ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_,"axG",@progbits,_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_,comdat
	.weak	_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_
	.type	_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_, @function
_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_:
.LFB9472:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS5_RKS7_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9472:
	.size	_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_, .-_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_
	.section	.text._ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2ERKS5_,"axG",@progbits,_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC5ERKS5_,comdat
	.align 2
	.weak	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2ERKS5_
	.type	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2ERKS5_, @function
_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2ERKS5_:
.LFB9476:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9476
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE11outerStrideEv
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
.LEHB27:
	call	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4dataEv
.LEHE27:
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EEC1EPKdl
	jmp	.L242
.L241:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB28:
	call	_Unwind_Resume@PLT
.LEHE28:
.L242:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9476:
	.section	.gcc_except_table
.LLSDA9476:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9476-.LLSDACSB9476
.LLSDACSB9476:
	.uleb128 .LEHB27-.LFB9476
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L241-.LFB9476
	.uleb128 0
	.uleb128 .LEHB28-.LFB9476
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE9476:
	.section	.text._ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2ERKS5_,"axG",@progbits,_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC5ERKS5_,comdat
	.size	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2ERKS5_, .-_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2ERKS5_
	.weak	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC1ERKS5_
	.set	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC1ERKS5_,_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2ERKS5_
	.section	.text._ZNK5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EE11outerStrideEv,"axG",@progbits,_ZNK5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EE11outerStrideEv,comdat
	.align 2
	.weak	_ZNK5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EE11outerStrideEv
	.type	_ZNK5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EE11outerStrideEv, @function
_ZNK5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EE11outerStrideEv:
.LFB9478:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9478:
	.size	_ZNK5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EE11outerStrideEv, .-_ZNK5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EE11outerStrideEv
	.section	.text._ZN5Eigen9DenseBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev,"axG",@progbits,_ZN5Eigen9DenseBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC5Ev,comdat
	.align 2
	.weak	_ZN5Eigen9DenseBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev
	.type	_ZN5Eigen9DenseBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev, @function
_ZN5Eigen9DenseBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev:
.LFB9480:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9480:
	.size	_ZN5Eigen9DenseBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev, .-_ZN5Eigen9DenseBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev
	.weak	_ZN5Eigen9DenseBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC1Ev
	.set	_ZN5Eigen9DenseBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC1Ev,_ZN5Eigen9DenseBaseINS_14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev
	.section	.text._ZN5Eigen8internal19variable_if_dynamicIlLin1EEC2El,"axG",@progbits,_ZN5Eigen8internal19variable_if_dynamicIlLin1EEC5El,comdat
	.align 2
	.weak	_ZN5Eigen8internal19variable_if_dynamicIlLin1EEC2El
	.type	_ZN5Eigen8internal19variable_if_dynamicIlLin1EEC2El, @function
_ZN5Eigen8internal19variable_if_dynamicIlLin1EEC2El:
.LFB9483:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9483:
	.size	_ZN5Eigen8internal19variable_if_dynamicIlLin1EEC2El, .-_ZN5Eigen8internal19variable_if_dynamicIlLin1EEC2El
	.weak	_ZN5Eigen8internal19variable_if_dynamicIlLin1EEC1El
	.set	_ZN5Eigen8internal19variable_if_dynamicIlLin1EEC1El,_ZN5Eigen8internal19variable_if_dynamicIlLin1EEC2El
	.section	.text._ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_,"axG",@progbits,_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_,comdat
	.weak	_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_
	.type	_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_, @function
_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_:
.LFB9485:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS7_RKS9_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9485:
	.size	_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_, .-_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_
	.section	.text._ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m,"axG",@progbits,_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m,comdat
	.weak	_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m
	.type	_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m, @function
_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m:
.LFB9486:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L249
	movl	$0, %eax
	jmp	.L250
.L249:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, -8(%rbp)
	jbe	.L253
	call	_ZN5Eigen8internal19throw_std_bad_allocEv
.L253:
	nop
	movq	-24(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal26conditional_aligned_mallocILb1EEEPvm
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
.L250:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9486:
	.size	_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m, .-_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m
	.section	.text._ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_,"axG",@progbits,_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_,comdat
	.weak	_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_
	.type	_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_, @function
_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_:
.LFB9487:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal17smart_copy_helperIdLb1EE3runEPKdS4_Pd
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9487:
	.size	_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_, .-_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_
	.section	.text._ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4dataEv,"axG",@progbits,_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4dataEv,comdat
	.align 2
	.weak	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4dataEv
	.type	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4dataEv, @function
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4dataEv:
.LFB9519:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4dataEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9519:
	.size	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4dataEv, .-_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4dataEv
	.section	.text._ZNK5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EE11innerStrideEv,"axG",@progbits,_ZNK5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EE11innerStrideEv,comdat
	.align 2
	.weak	_ZNK5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EE11innerStrideEv
	.type	_ZNK5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EE11innerStrideEv, @function
_ZNK5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EE11innerStrideEv:
.LFB9520:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9520:
	.size	_ZNK5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EE11innerStrideEv, .-_ZNK5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EE11innerStrideEv
	.section	.text._ZNK5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EE11outerStrideEv,"axG",@progbits,_ZNK5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EE11outerStrideEv,comdat
	.align 2
	.weak	_ZNK5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EE11outerStrideEv
	.type	_ZNK5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EE11outerStrideEv, @function
_ZNK5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EE11outerStrideEv:
.LFB9521:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9innerSizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9521:
	.size	_ZNK5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EE11outerStrideEv, .-_ZNK5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EE11outerStrideEv
	.section	.text._ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EEC2EPdll,"axG",@progbits,_ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EEC5EPdll,comdat
	.align 2
	.weak	_ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EEC2EPdll
	.type	_ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EEC2EPdll, @function
_ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EEC2EPdll:
.LFB9523:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EEC2EPdll
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9523:
	.size	_ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EEC2EPdll, .-_ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EEC2EPdll
	.weak	_ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EEC1EPdll
	.set	_ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EEC1EPdll,_ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EEC2EPdll
	.section	.text._ZN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE4initEv,"axG",@progbits,_ZN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE4initEv,comdat
	.align 2
	.weak	_ZN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE4initEv
	.type	_ZN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE4initEv, @function
_ZN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE4initEv:
.LFB9525:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EE11innerStrideEv
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9525:
	.size	_ZN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE4initEv, .-_ZN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE4initEv
	.section	.text._ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS5_RKS7_,"axG",@progbits,_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS5_RKS7_,comdat
	.weak	_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS5_RKS7_
	.type	_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS5_RKS7_, @function
_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS5_RKS7_:
.LFB9526:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal18check_for_aliasingINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEEEEvRKT_RKT0_
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9526:
	.size	_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS5_RKS7_, .-_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS5_RKS7_
	.section	.text._ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4dataEv,"axG",@progbits,_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4dataEv,comdat
	.align 2
	.weak	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4dataEv
	.type	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4dataEv, @function
_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4dataEv:
.LFB9527:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4dataEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9527:
	.size	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4dataEv, .-_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4dataEv
	.section	.text._ZNK5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE11outerStrideEv,"axG",@progbits,_ZNK5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE11outerStrideEv,comdat
	.align 2
	.weak	_ZNK5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE11outerStrideEv
	.type	_ZNK5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE11outerStrideEv, @function
_ZNK5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE11outerStrideEv:
.LFB9528:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7derivedEv
	movq	%rax, %rdi
	call	_ZNK5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EE11outerStrideEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9528:
	.size	_ZNK5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE11outerStrideEv, .-_ZNK5Eigen15DenseCoeffsBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE11outerStrideEv
	.section	.text._ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev,"axG",@progbits,_ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC5Ev,comdat
	.align 2
	.weak	_ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev
	.type	_ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev, @function
_ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev:
.LFB9530:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9530:
	.size	_ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev, .-_ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev
	.weak	_ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1Ev
	.set	_ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1Ev,_ZN5Eigen8internal14evaluator_baseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2Ev
	.section	.text._ZN5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EEC2EPKdl,"axG",@progbits,_ZN5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EEC5EPKdl,comdat
	.align 2
	.weak	_ZN5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EEC2EPKdl
	.type	_ZN5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EEC2EPKdl, @function
_ZN5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EEC2EPKdl:
.LFB9533:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9533:
	.size	_ZN5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EEC2EPKdl, .-_ZN5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EEC2EPKdl
	.weak	_ZN5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EEC1EPKdl
	.set	_ZN5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EEC1EPKdl,_ZN5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EEC2EPKdl
	.section	.text._ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS7_RKS9_,"axG",@progbits,_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS7_RKS9_,comdat
	.weak	_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS7_RKS9_
	.type	_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS7_RKS9_, @function
_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS7_RKS9_:
.LFB9535:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal18check_for_aliasingINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EEEEvRKT_RKT0_
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9535:
	.size	_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS7_RKS9_, .-_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS7_RKS9_
	.section	.text._ZN5Eigen8internal26conditional_aligned_mallocILb1EEEPvm,"axG",@progbits,_ZN5Eigen8internal26conditional_aligned_mallocILb1EEEPvm,comdat
	.weak	_ZN5Eigen8internal26conditional_aligned_mallocILb1EEEPvm
	.type	_ZN5Eigen8internal26conditional_aligned_mallocILb1EEEPvm, @function
_ZN5Eigen8internal26conditional_aligned_mallocILb1EEEPvm:
.LFB9537:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal14aligned_mallocEm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9537:
	.size	_ZN5Eigen8internal26conditional_aligned_mallocILb1EEEPvm, .-_ZN5Eigen8internal26conditional_aligned_mallocILb1EEEPvm
	.section	.text._ZN5Eigen8internal17smart_copy_helperIdLb1EE3runEPKdS4_Pd,"axG",@progbits,_ZN5Eigen8internal17smart_copy_helperIdLb1EE3runEPKdS4_Pd,comdat
	.weak	_ZN5Eigen8internal17smart_copy_helperIdLb1EE3runEPKdS4_Pd
	.type	_ZN5Eigen8internal17smart_copy_helperIdLb1EE3runEPKdS4_Pd, @function
_ZN5Eigen8internal17smart_copy_helperIdLb1EE3runEPKdS4_Pd:
.LFB9539:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L276
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L273
.L276:
	nop
.L273:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9539:
	.size	_ZN5Eigen8internal17smart_copy_helperIdLb1EE3runEPKdS4_Pd, .-_ZN5Eigen8internal17smart_copy_helperIdLb1EE3runEPKdS4_Pd
	.section	.text._ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4dataEv,"axG",@progbits,_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4dataEv,comdat
	.align 2
	.weak	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4dataEv
	.type	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4dataEv, @function
_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4dataEv:
.LFB9566:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9566:
	.size	_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4dataEv, .-_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4dataEv
	.section	.text._ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9innerSizeEv,"axG",@progbits,_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9innerSizeEv,comdat
	.align 2
	.weak	_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9innerSizeEv
	.type	_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9innerSizeEv, @function
_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9innerSizeEv:
.LFB9567:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9567:
	.size	_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9innerSizeEv, .-_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9innerSizeEv
	.section	.text._ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev,"axG",@progbits,_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC5Ev,comdat
	.align 2
	.weak	_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev
	.type	_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev, @function
_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev:
.LFB9570:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9570:
	.size	_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev, .-_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev
	.weak	_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC1Ev
	.set	_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC1Ev,_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev
	.section	.rodata
	.align 8
.LC27:
	.string	"Eigen::MapBase<Derived, 0>::MapBase(Eigen::MapBase<Derived, 0>::PointerType, Eigen::Index, Eigen::Index) [with Derived = Eigen::Block<Eigen::Matrix<double, -1, -1>, 1, -1, false>; Eigen::MapBase<Derived, 0>::PointerType = double*; Eigen::Index = long int]"
	.align 8
.LC28:
	.string	"../eigen-3.4.0/Eigen/src/Core/MapBase.h"
	.align 8
.LC29:
	.string	"(dataPtr == 0) || ( rows >= 0 && (RowsAtCompileTime == Dynamic || RowsAtCompileTime == rows) && cols >= 0 && (ColsAtCompileTime == Dynamic || ColsAtCompileTime == cols))"
	.section	.text._ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EEC2EPdll,"axG",@progbits,_ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EEC5EPdll,comdat
	.align 2
	.weak	_ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EEC2EPdll
	.type	_ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EEC2EPdll, @function
_ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EEC2EPdll:
.LFB9572:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN5Eigen8internal19variable_if_dynamicIlLi1EEC1El
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN5Eigen8internal19variable_if_dynamicIlLin1EEC1El
	cmpq	$0, -16(%rbp)
	je	.L283
	cmpq	$0, -24(%rbp)
	js	.L284
	cmpq	$1, -24(%rbp)
	jne	.L284
	cmpq	$0, -32(%rbp)
	jns	.L283
.L284:
	leaq	.LC27(%rip), %rcx
	movl	$176, %edx
	leaq	.LC28(%rip), %rsi
	leaq	.LC29(%rip), %rdi
	call	__assert_fail@PLT
.L283:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE11checkSanityIS4_EEvNS_8internal9enable_ifIXeqsrNS7_6traitsIT_EE9AlignmentLi0EEPvE4typeE
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9572:
	.size	_ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EEC2EPdll, .-_ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EEC2EPdll
	.weak	_ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EEC1EPdll
	.set	_ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EEC1EPdll,_ZN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EEC2EPdll
	.section	.text._ZN5Eigen8internal18check_for_aliasingINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEEEEvRKT_RKT0_,"axG",@progbits,_ZN5Eigen8internal18check_for_aliasingINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEEEEvRKT_RKT0_,comdat
	.weak	_ZN5Eigen8internal18check_for_aliasingINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEEEEvRKT_RKT0_
	.type	_ZN5Eigen8internal18check_for_aliasingINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEEEEvRKT_RKT0_, @function
_ZN5Eigen8internal18check_for_aliasingINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEEEEvRKT_RKT0_:
.LFB9574:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	cmpq	$1, %rax
	jle	.L286
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	cmpq	$1, %rax
	jle	.L286
	movl	$1, %eax
	jmp	.L287
.L286:
	movl	$0, %eax
.L287:
	testb	%al, %al
	je	.L289
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal27checkTransposeAliasing_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEELb0EE3runERKS3_RKS5_
.L289:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9574:
	.size	_ZN5Eigen8internal18check_for_aliasingINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEEEEvRKT_RKT0_, .-_ZN5Eigen8internal18check_for_aliasingINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEEEEvRKT_RKT0_
	.section	.text._ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEED2Ev,"axG",@progbits,_ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEED5Ev,comdat
	.align 2
	.weak	_ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEED2Ev
	.type	_ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEED2Ev, @function
_ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEED2Ev:
.LFB9579:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9579:
	.size	_ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEED2Ev, .-_ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEED2Ev
	.weak	_ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEED1Ev
	.set	_ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEED1Ev,_ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEED2Ev
	.section	.text._ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EED2Ev,"axG",@progbits,_ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EED5Ev,comdat
	.align 2
	.weak	_ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EED2Ev
	.type	_ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EED2Ev, @function
_ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EED2Ev:
.LFB9581:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9581:
	.size	_ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EED2Ev, .-_ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EED2Ev
	.weak	_ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EED1Ev
	.set	_ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EED1Ev,_ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EED2Ev
	.section	.text._ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED2Ev,"axG",@progbits,_ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED5Ev,comdat
	.align 2
	.weak	_ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED2Ev
	.type	_ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED2Ev, @function
_ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED2Ev:
.LFB9583:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9583:
	.size	_ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED2Ev, .-_ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED2Ev
	.weak	_ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED1Ev
	.set	_ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED1Ev,_ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED2Ev
	.section	.text._ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_,"axG",@progbits,_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_,comdat
	.weak	_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_
	.type	_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_, @function
_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_:
.LFB9575:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9575
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-128(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB29:
	call	_ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC1ERKS5_
.LEHE29:
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB30:
	call	_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE
	movq	-120(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1ERKS3_
.LEHE30:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18const_cast_derivedEv
	movq	%rax, %rdi
	movq	-136(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEC1ERS5_RKS8_RKSA_RS4_
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB31:
	call	_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_5BlockIS5_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_
.LEHE31:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED1Ev
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED1Ev
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L296
	jmp	.L299
.L298:
	endbr64
	movq	%rax, %rbx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED1Ev
	jmp	.L295
.L297:
	endbr64
	movq	%rax, %rbx
.L295:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB32:
	call	_Unwind_Resume@PLT
.LEHE32:
.L299:
	call	__stack_chk_fail@PLT
.L296:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9575:
	.section	.gcc_except_table
.LLSDA9575:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9575-.LLSDACSB9575
.LLSDACSB9575:
	.uleb128 .LEHB29-.LFB9575
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB9575
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L297-.LFB9575
	.uleb128 0
	.uleb128 .LEHB31-.LFB9575
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L298-.LFB9575
	.uleb128 0
	.uleb128 .LEHB32-.LFB9575
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
.LLSDACSE9575:
	.section	.text._ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_,"axG",@progbits,_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_,comdat
	.size	_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_, .-_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_
	.section	.text._ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4dataEv,"axG",@progbits,_ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4dataEv,comdat
	.align 2
	.weak	_ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4dataEv
	.type	_ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4dataEv, @function
_ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4dataEv:
.LFB9585:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9585:
	.size	_ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4dataEv, .-_ZNK5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE4dataEv
	.section	.text._ZN5Eigen8internal18check_for_aliasingINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EEEEvRKT_RKT0_,"axG",@progbits,_ZN5Eigen8internal18check_for_aliasingINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EEEEvRKT_RKT0_,comdat
	.weak	_ZN5Eigen8internal18check_for_aliasingINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EEEEvRKT_RKT0_
	.type	_ZN5Eigen8internal18check_for_aliasingINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EEEEvRKT_RKT0_, @function
_ZN5Eigen8internal18check_for_aliasingINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EEEEvRKT_RKT0_:
.LFB9586:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	cmpq	$1, %rax
	jle	.L303
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	cmpq	$1, %rax
	jle	.L303
	movl	$1, %eax
	jmp	.L304
.L303:
	movl	$0, %eax
.L304:
	testb	%al, %al
	je	.L306
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal27checkTransposeAliasing_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EELb0EE3runERKS3_RKS7_
.L306:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9586:
	.size	_ZN5Eigen8internal18check_for_aliasingINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EEEEvRKT_RKT0_, .-_ZN5Eigen8internal18check_for_aliasingINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EEEEvRKT_RKT0_
	.section	.text._ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev,"axG",@progbits,_ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED5Ev,comdat
	.align 2
	.weak	_ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev
	.type	_ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev, @function
_ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev:
.LFB9589:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9589:
	.size	_ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev, .-_ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev
	.weak	_ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED1Ev
	.set	_ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED1Ev,_ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev
	.section	.text._ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_,"axG",@progbits,_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_,comdat
	.weak	_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_
	.type	_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_, @function
_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_:
.LFB9587:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9587
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-112(%rbp), %rdx
	leaq	-82(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB33:
	call	_ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC1ERKS7_
.LEHE33:
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB34:
	call	_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC1ERKS3_
.LEHE34:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18const_cast_derivedEv
	movq	%rax, %rdi
	movq	-120(%rbp), %rcx
	leaq	-82(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EEC1ERS5_RKSA_RKSC_RS4_
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB35:
	call	_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES5_EEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSE_
.LEHE35:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED1Ev
	leaq	-82(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED1Ev
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L311
	jmp	.L314
.L313:
	endbr64
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED1Ev
	jmp	.L310
.L312:
	endbr64
	movq	%rax, %rbx
.L310:
	leaq	-82(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB36:
	call	_Unwind_Resume@PLT
.LEHE36:
.L314:
	call	__stack_chk_fail@PLT
.L311:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9587:
	.section	.gcc_except_table
.LLSDA9587:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9587-.LLSDACSB9587
.LLSDACSB9587:
	.uleb128 .LEHB33-.LFB9587
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB9587
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L312-.LFB9587
	.uleb128 0
	.uleb128 .LEHB35-.LFB9587
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L313-.LFB9587
	.uleb128 0
	.uleb128 .LEHB36-.LFB9587
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
.LLSDACSE9587:
	.section	.text._ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_,"axG",@progbits,_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_,comdat
	.size	_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_, .-_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EENS0_9assign_opIddEEEEvRT_RKT0_RKT1_
	.section	.text._ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev,"axG",@progbits,_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC5Ev,comdat
	.align 2
	.weak	_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev
	.type	_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev, @function
_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev:
.LFB9600:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9600:
	.size	_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev, .-_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev
	.weak	_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC1Ev
	.set	_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC1Ev,_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev
	.section	.rodata
	.align 8
.LC30:
	.string	"Eigen::internal::variable_if_dynamic<T, Value>::variable_if_dynamic(T) [with T = long int; int Value = 1]"
	.align 8
.LC31:
	.string	"../eigen-3.4.0/Eigen/src/Core/util/XprHelper.h"
.LC32:
	.string	"v == T(Value)"
	.section	.text._ZN5Eigen8internal19variable_if_dynamicIlLi1EEC2El,"axG",@progbits,_ZN5Eigen8internal19variable_if_dynamicIlLi1EEC5El,comdat
	.align 2
	.weak	_ZN5Eigen8internal19variable_if_dynamicIlLi1EEC2El
	.type	_ZN5Eigen8internal19variable_if_dynamicIlLi1EEC2El, @function
_ZN5Eigen8internal19variable_if_dynamicIlLi1EEC2El:
.LFB9603:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$1, -16(%rbp)
	je	.L318
	leaq	.LC30(%rip), %rcx
	movl	$133, %edx
	leaq	.LC31(%rip), %rsi
	leaq	.LC32(%rip), %rdi
	call	__assert_fail@PLT
.L318:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9603:
	.size	_ZN5Eigen8internal19variable_if_dynamicIlLi1EEC2El, .-_ZN5Eigen8internal19variable_if_dynamicIlLi1EEC2El
	.weak	_ZN5Eigen8internal19variable_if_dynamicIlLi1EEC1El
	.set	_ZN5Eigen8internal19variable_if_dynamicIlLi1EEC1El,_ZN5Eigen8internal19variable_if_dynamicIlLi1EEC2El
	.section	.text._ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE11checkSanityIS4_EEvNS_8internal9enable_ifIXeqsrNS7_6traitsIT_EE9AlignmentLi0EEPvE4typeE,"axG",@progbits,_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE11checkSanityIS4_EEvNS_8internal9enable_ifIXeqsrNS7_6traitsIT_EE9AlignmentLi0EEPvE4typeE,comdat
	.align 2
	.weak	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE11checkSanityIS4_EEvNS_8internal9enable_ifIXeqsrNS7_6traitsIT_EE9AlignmentLi0EEPvE4typeE
	.type	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE11checkSanityIS4_EEvNS_8internal9enable_ifIXeqsrNS7_6traitsIT_EE9AlignmentLi0EEPvE4typeE, @function
_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE11checkSanityIS4_EEvNS_8internal9enable_ifIXeqsrNS7_6traitsIT_EE9AlignmentLi0EEPvE4typeE:
.LFB9605:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9605:
	.size	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE11checkSanityIS4_EEvNS_8internal9enable_ifIXeqsrNS7_6traitsIT_EE9AlignmentLi0EEPvE4typeE, .-_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE11checkSanityIS4_EEvNS_8internal9enable_ifIXeqsrNS7_6traitsIT_EE9AlignmentLi0EEPvE4typeE
	.section	.text._ZN5Eigen8internal27checkTransposeAliasing_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEELb0EE3runERKS3_RKS5_,"axG",@progbits,_ZN5Eigen8internal27checkTransposeAliasing_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEELb0EE3runERKS3_RKS5_,comdat
	.weak	_ZN5Eigen8internal27checkTransposeAliasing_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEELb0EE3runERKS3_RKS5_
	.type	_ZN5Eigen8internal27checkTransposeAliasing_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEELb0EE3runERKS3_RKS5_, @function
_ZN5Eigen8internal27checkTransposeAliasing_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEELb0EE3runERKS3_RKS5_:
.LFB9606:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9606:
	.size	_ZN5Eigen8internal27checkTransposeAliasing_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEELb0EE3runERKS3_RKS5_, .-_ZN5Eigen8internal27checkTransposeAliasing_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEELb0EE3runERKS3_RKS5_
	.section	.text._ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2ERKS5_,"axG",@progbits,_ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC5ERKS5_,comdat
	.align 2
	.weak	_ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2ERKS5_
	.type	_ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2ERKS5_, @function
_ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2ERKS5_:
.LFB9608:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC2ERKNS_5BlockIS3_Li1ELin1ELb0EEE
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9608:
	.size	_ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2ERKS5_, .-_ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2ERKS5_
	.weak	_ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC1ERKS5_
	.set	_ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC1ERKS5_,_ZN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2ERKS5_
	.section	.text._ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED2Ev,"axG",@progbits,_ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED5Ev,comdat
	.align 2
	.weak	_ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED2Ev
	.type	_ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED2Ev, @function
_ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED2Ev:
.LFB9611:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9611:
	.size	_ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED2Ev, .-_ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED2Ev
	.weak	_ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED1Ev
	.set	_ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED1Ev,_ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEED2Ev
	.section	.rodata
	.align 8
.LC33:
	.ascii	"void E"
	.string	"igen::internal::resize_if_allowed(DstXprType&, const SrcXprType&, const Eigen::internal::assign_op<T1, T2>&) [with DstXprType = Eigen::Matrix<double, -1, -1>; SrcXprType = Eigen::Block<Eigen::Matrix<double, -1, -1>, 1, -1, false>; T1 = double; T2 = double]"
	.align 8
.LC34:
	.string	"../eigen-3.4.0/Eigen/src/Core/AssignEvaluator.h"
	.align 8
.LC35:
	.string	"dst.rows() == dstRows && dst.cols() == dstCols"
	.section	.text._ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE,"axG",@progbits,_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE,comdat
	.weak	_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE
	.type	_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE, @function
_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE:
.LFB9613:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$1, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi0EE4colsEv
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	cmpq	%rax, -16(%rbp)
	jne	.L324
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	cmpq	%rax, -8(%rbp)
	je	.L325
.L324:
	movl	$1, %eax
	jmp	.L326
.L325:
	movl	$0, %eax
.L326:
	testb	%al, %al
	je	.L327
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll
.L327:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	cmpq	%rax, -16(%rbp)
	jne	.L328
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	cmpq	%rax, -8(%rbp)
	je	.L330
.L328:
	leaq	.LC33(%rip), %rcx
	movl	$765, %edx
	leaq	.LC34(%rip), %rsi
	leaq	.LC35(%rip), %rdi
	call	__assert_fail@PLT
.L330:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9613:
	.size	_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE, .-_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS3_Li1ELin1ELb0EEEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE
	.section	.text._ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18const_cast_derivedEv,"axG",@progbits,_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18const_cast_derivedEv,comdat
	.align 2
	.weak	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18const_cast_derivedEv
	.type	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18const_cast_derivedEv, @function
_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18const_cast_derivedEv:
.LFB9614:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9614:
	.size	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18const_cast_derivedEv, .-_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18const_cast_derivedEv
	.section	.text._ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEC2ERS5_RKS8_RKSA_RS4_,"axG",@progbits,_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEC5ERS5_RKS8_RKSA_RS4_,comdat
	.align 2
	.weak	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEC2ERS5_RKS8_RKSA_RS4_
	.type	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEC2ERS5_RKS8_RKSA_RS4_, @function
_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEC2ERS5_RKS8_RKSA_RS4_:
.LFB9616:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9616:
	.size	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEC2ERS5_RKS8_RKSA_RS4_, .-_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEC2ERS5_RKS8_RKSA_RS4_
	.weak	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEC1ERS5_RKS8_RKSA_RS4_
	.set	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEC1ERS5_RKS8_RKSA_RS4_,_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEC2ERS5_RKS8_RKSA_RS4_
	.section	.text._ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_5BlockIS5_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_,"axG",@progbits,_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_5BlockIS5_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_,comdat
	.weak	_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_5BlockIS5_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_
	.type	_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_5BlockIS5_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_, @function
_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_5BlockIS5_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_:
.LFB9618:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -16(%rbp)
.L338:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE9outerSizeEv
	cmpq	%rax, -16(%rbp)
	setl	%al
	testb	%al, %al
	je	.L339
	movq	$0, -8(%rbp)
.L337:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE9innerSizeEv
	cmpq	%rax, -8(%rbp)
	setl	%al
	testb	%al, %al
	je	.L336
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll
	addq	$1, -8(%rbp)
	jmp	.L337
.L336:
	addq	$1, -16(%rbp)
	jmp	.L338
.L339:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9618:
	.size	_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_5BlockIS5_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_, .-_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_5BlockIS5_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_
	.section	.text._ZN5Eigen8internal27checkTransposeAliasing_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EELb0EE3runERKS3_RKS7_,"axG",@progbits,_ZN5Eigen8internal27checkTransposeAliasing_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EELb0EE3runERKS3_RKS7_,comdat
	.weak	_ZN5Eigen8internal27checkTransposeAliasing_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EELb0EE3runERKS3_RKS7_
	.type	_ZN5Eigen8internal27checkTransposeAliasing_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EELb0EE3runERKS3_RKS7_, @function
_ZN5Eigen8internal27checkTransposeAliasing_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EELb0EE3runERKS3_RKS7_:
.LFB9619:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9619:
	.size	_ZN5Eigen8internal27checkTransposeAliasing_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EELb0EE3runERKS3_RKS7_, .-_ZN5Eigen8internal27checkTransposeAliasing_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EELb0EE3runERKS3_RKS7_
	.section	.text._ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2ERKS7_,"axG",@progbits,_ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC5ERKS7_,comdat
	.align 2
	.weak	_ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2ERKS7_
	.type	_ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2ERKS7_, @function
_ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2ERKS7_:
.LFB9621:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7functorEv
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN5Eigen8internal16scalar_random_opIdEC1ERKS2_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9621:
	.size	_ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2ERKS7_, .-_ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2ERKS7_
	.weak	_ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC1ERKS7_
	.set	_ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC1ERKS7_,_ZN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2ERKS7_
	.section	.text._ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev,"axG",@progbits,_ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED5Ev,comdat
	.align 2
	.weak	_ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev
	.type	_ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev, @function
_ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev:
.LFB9624:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9624:
	.size	_ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev, .-_ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev
	.weak	_ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED1Ev
	.set	_ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED1Ev,_ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEED2Ev
	.section	.rodata
	.align 8
.LC36:
	.ascii	"void Eigen::internal::resize_if_allowed(DstXp"
	.string	"rType&, const SrcXprType&, const Eigen::internal::assign_op<T1, T2>&) [with DstXprType = Eigen::Matrix<double, -1, -1>; SrcXprType = Eigen::CwiseNullaryOp<Eigen::internal::scalar_random_op<double>, Eigen::Matrix<double, -1, -1> >; T1 = double; T2 = double]"
	.section	.text._ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE,"axG",@progbits,_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE,comdat
	.weak	_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE
	.type	_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE, @function
_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE:
.LFB9626:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	cmpq	%rax, -16(%rbp)
	jne	.L344
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	cmpq	%rax, -8(%rbp)
	je	.L345
.L344:
	movl	$1, %eax
	jmp	.L346
.L345:
	movl	$0, %eax
.L346:
	testb	%al, %al
	je	.L347
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll
.L347:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv
	cmpq	%rax, -16(%rbp)
	jne	.L348
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	cmpq	%rax, -8(%rbp)
	je	.L350
.L348:
	leaq	.LC36(%rip), %rcx
	movl	$765, %edx
	leaq	.LC34(%rip), %rsi
	leaq	.LC35(%rip), %rdi
	call	__assert_fail@PLT
.L350:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9626:
	.size	_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE, .-_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_16scalar_random_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE
	.section	.text._ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EEC2ERS5_RKSA_RKSC_RS4_,"axG",@progbits,_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EEC5ERS5_RKSA_RKSC_RS4_,comdat
	.align 2
	.weak	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EEC2ERS5_RKSA_RKSC_RS4_
	.type	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EEC2ERS5_RKSA_RKSC_RS4_, @function
_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EEC2ERS5_RKSA_RKSC_RS4_:
.LFB9628:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9628:
	.size	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EEC2ERS5_RKSA_RKSC_RS4_, .-_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EEC2ERS5_RKSA_RKSC_RS4_
	.weak	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EEC1ERS5_RKSA_RKSC_RS4_
	.set	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EEC1ERS5_RKSA_RKSC_RS4_,_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EEC2ERS5_RKSA_RKSC_RS4_
	.section	.text._ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EE4sizeEv,"axG",@progbits,_ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EE4sizeEv,comdat
	.align 2
	.weak	_ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EE4sizeEv
	.type	_ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EE4sizeEv, @function
_ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EE4sizeEv:
.LFB9631:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9631:
	.size	_ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EE4sizeEv, .-_ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EE4sizeEv
	.section	.text._ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES5_EEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSE_,"axG",@progbits,_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES5_EEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSE_,comdat
	.weak	_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES5_EEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSE_
	.type	_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES5_EEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSE_, @function
_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES5_EEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSE_:
.LFB9630:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EE4sizeEv
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
.L356:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.L357
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl
	addq	$1, -16(%rbp)
	jmp	.L356
.L357:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9630:
	.size	_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES5_EEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSE_, .-_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES5_EEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSE_
	.section	.text._ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC2ERKNS_5BlockIS3_Li1ELin1ELb0EEE,"axG",@progbits,_ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC5ERKNS_5BlockIS3_Li1ELin1ELb0EEE,comdat
	.align 2
	.weak	_ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC2ERKNS_5BlockIS3_Li1ELin1ELb0EEE
	.type	_ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC2ERKNS_5BlockIS3_Li1ELin1ELb0EEE, @function
_ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC2ERKNS_5BlockIS3_Li1ELin1ELb0EEE:
.LFB9635:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEEC2ERKS5_
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EE4dataEv
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9635:
	.size	_ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC2ERKNS_5BlockIS3_Li1ELin1ELb0EEE, .-_ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC2ERKNS_5BlockIS3_Li1ELin1ELb0EEE
	.weak	_ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC1ERKNS_5BlockIS3_Li1ELin1ELb0EEE
	.set	_ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC1ERKNS_5BlockIS3_Li1ELin1ELb0EEE,_ZN5Eigen8internal15block_evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEC2ERKNS_5BlockIS3_Li1ELin1ELb0EEE
	.section	.text._ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE9outerSizeEv,"axG",@progbits,_ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE9outerSizeEv,comdat
	.align 2
	.weak	_ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE9outerSizeEv
	.type	_ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE9outerSizeEv, @function
_ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE9outerSizeEv:
.LFB9637:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9outerSizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9637:
	.size	_ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE9outerSizeEv, .-_ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE9outerSizeEv
	.section	.text._ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE9innerSizeEv,"axG",@progbits,_ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE9innerSizeEv,comdat
	.align 2
	.weak	_ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE9innerSizeEv
	.type	_ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE9innerSizeEv, @function
_ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE9innerSizeEv:
.LFB9638:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9innerSizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9638:
	.size	_ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE9innerSizeEv, .-_ZNK5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE9innerSizeEv
	.section	.text._ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll,"axG",@progbits,_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll,comdat
	.align 2
	.weak	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll
	.type	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll, @function
_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll:
.LFB9639:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE20rowIndexByOuterInnerEll
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE20colIndexByOuterInnerEll
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEll
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9639:
	.size	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll, .-_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll
	.section	.text._ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7functorEv,"axG",@progbits,_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7functorEv,comdat
	.align 2
	.weak	_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7functorEv
	.type	_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7functorEv, @function
_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7functorEv:
.LFB9640:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9640:
	.size	_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7functorEv, .-_ZNK5Eigen14CwiseNullaryOpINS_8internal16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7functorEv
	.section	.text._ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev,"axG",@progbits,_ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC5Ev,comdat
	.align 2
	.weak	_ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev
	.type	_ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev, @function
_ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev:
.LFB9642:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9642:
	.size	_ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev, .-_ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev
	.weak	_ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC1Ev
	.set	_ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC1Ev,_ZN5Eigen8internal14evaluator_baseINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEC2Ev
	.section	.text._ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl,"axG",@progbits,_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl,comdat
	.align 2
	.weak	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl
	.type	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl, @function
_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl:
.LFB9644:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE5coeffIlEEdT_
	movq	%xmm0, %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8coeffRefEl
	movq	%rax, %rcx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNK5Eigen8internal9assign_opIddE11assignCoeffERdRKd
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L368
	call	__stack_chk_fail@PLT
.L368:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9644:
	.size	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl, .-_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_14CwiseNullaryOpINS0_16scalar_random_opIdEES4_EEEENS0_9assign_opIddEELi0EE11assignCoeffEl
	.section	.text._ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEEC2ERKS5_,"axG",@progbits,_ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEEC5ERKS5_,comdat
	.align 2
	.weak	_ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEEC2ERKS5_
	.type	_ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEEC2ERKS5_, @function
_ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEEC2ERKS5_:
.LFB9646:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EE4dataEv
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE11innerStrideEv
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN5Eigen8internal19variable_if_dynamicIlLin1EEC1El
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE11outerStrideEv
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN5Eigen8internal19variable_if_dynamicIlLi1EEC1El
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9646:
	.size	_ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEEC2ERKS5_, .-_ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEEC2ERKS5_
	.weak	_ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEEC1ERKS5_
	.set	_ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEEC1ERKS5_,_ZN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEEC2ERKS5_
	.section	.text._ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EE4dataEv,"axG",@progbits,_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EE4dataEv,comdat
	.align 2
	.weak	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EE4dataEv
	.type	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EE4dataEv, @function
_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EE4dataEv:
.LFB9648:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9648:
	.size	_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EE4dataEv, .-_ZNK5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EE4dataEv
	.section	.text._ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9outerSizeEv,"axG",@progbits,_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9outerSizeEv,comdat
	.align 2
	.weak	_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9outerSizeEv
	.type	_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9outerSizeEv, @function
_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9outerSizeEv:
.LFB9649:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen9EigenBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9649:
	.size	_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9outerSizeEv, .-_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9outerSizeEv
	.section	.text._ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE20rowIndexByOuterInnerEll,"axG",@progbits,_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE20rowIndexByOuterInnerEll,comdat
	.weak	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE20rowIndexByOuterInnerEll
	.type	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE20rowIndexByOuterInnerEll, @function
_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE20rowIndexByOuterInnerEll:
.LFB9650:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9650:
	.size	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE20rowIndexByOuterInnerEll, .-_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE20rowIndexByOuterInnerEll
	.section	.text._ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE20colIndexByOuterInnerEll,"axG",@progbits,_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE20colIndexByOuterInnerEll,comdat
	.weak	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE20colIndexByOuterInnerEll
	.type	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE20colIndexByOuterInnerEll, @function
_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE20colIndexByOuterInnerEll:
.LFB9651:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9651:
	.size	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE20colIndexByOuterInnerEll, .-_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE20colIndexByOuterInnerEll
	.section	.text._ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEll,"axG",@progbits,_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEll,comdat
	.align 2
	.weak	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEll
	.type	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEll, @function
_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEll:
.LFB9652:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE5coeffEll
	movq	%rax, %r12
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE8coeffRefEll
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNK5Eigen8internal9assign_opIddE11assignCoeffERdRKd
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9652:
	.size	_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEll, .-_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_5BlockIS4_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EE11assignCoeffEll
	.section	.text._ZNK5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE5coeffIlEEdT_,"axG",@progbits,_ZNK5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE5coeffIlEEdT_,comdat
	.align 2
	.weak	_ZNK5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE5coeffIlEEdT_
	.type	_ZNK5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE5coeffIlEEdT_, @function
_ZNK5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE5coeffIlEEdT_:
.LFB9653:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movl	$0, %ecx
	movq	%rax, %rsi
	call	_ZNK5Eigen8internal15nullary_wrapperIdNS0_16scalar_random_opIdEELb1ELb0ELb0EEclIlEEdRKS3_T_S8_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9653:
	.size	_ZNK5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE5coeffIlEEdT_, .-_ZNK5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_16scalar_random_opIdEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE5coeffIlEEdT_
	.section	.text._ZNK5Eigen8internal9assign_opIddE11assignCoeffERdRKd,"axG",@progbits,_ZNK5Eigen8internal9assign_opIddE11assignCoeffERdRKd,comdat
	.align 2
	.weak	_ZNK5Eigen8internal9assign_opIddE11assignCoeffERdRKd
	.type	_ZNK5Eigen8internal9assign_opIddE11assignCoeffERdRKd, @function
_ZNK5Eigen8internal9assign_opIddE11assignCoeffERdRKd:
.LFB9654:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9654:
	.size	_ZNK5Eigen8internal9assign_opIddE11assignCoeffERdRKd, .-_ZNK5Eigen8internal9assign_opIddE11assignCoeffERdRKd
	.section	.text._ZNK5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE11innerStrideEv,"axG",@progbits,_ZNK5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE11innerStrideEv,comdat
	.align 2
	.weak	_ZNK5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE11innerStrideEv
	.type	_ZNK5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE11innerStrideEv, @function
_ZNK5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE11innerStrideEv:
.LFB9655:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EE11outerStrideEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9655:
	.size	_ZNK5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE11innerStrideEv, .-_ZNK5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE11innerStrideEv
	.section	.text._ZNK5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE11outerStrideEv,"axG",@progbits,_ZNK5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE11outerStrideEv,comdat
	.align 2
	.weak	_ZNK5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE11outerStrideEv
	.type	_ZNK5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE11outerStrideEv, @function
_ZNK5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE11outerStrideEv:
.LFB9656:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EE11innerStrideEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9656:
	.size	_ZNK5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE11outerStrideEv, .-_ZNK5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EE11outerStrideEv
	.section	.text._ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev,"axG",@progbits,_ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC5Ev,comdat
	.align 2
	.weak	_ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev
	.type	_ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev, @function
_ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev:
.LFB9658:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9658:
	.size	_ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev, .-_ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev
	.weak	_ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC1Ev
	.set	_ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC1Ev,_ZN5Eigen8internal14evaluator_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEC2Ev
	.section	.text._ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE5coeffEll,"axG",@progbits,_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE5coeffEll,comdat
	.align 2
	.weak	_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE5coeffEll
	.type	_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE5coeffEll, @function
_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE5coeffEll:
.LFB9660:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE9colStrideEv
	imulq	-40(%rbp), %rax
	movq	%rax, %r12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE9rowStrideEv
	imulq	-32(%rbp), %rax
	addq	%r12, %rax
	salq	$3, %rax
	addq	%rbx, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9660:
	.size	_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE5coeffEll, .-_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE5coeffEll
	.section	.text._ZNK5Eigen8internal15nullary_wrapperIdNS0_16scalar_random_opIdEELb1ELb0ELb0EEclIlEEdRKS3_T_S8_,"axG",@progbits,_ZNK5Eigen8internal15nullary_wrapperIdNS0_16scalar_random_opIdEELb1ELb0ELb0EEclIlEEdRKS3_T_S8_,comdat
	.align 2
	.weak	_ZNK5Eigen8internal15nullary_wrapperIdNS0_16scalar_random_opIdEELb1ELb0ELb0EEclIlEEdRKS3_T_S8_
	.type	_ZNK5Eigen8internal15nullary_wrapperIdNS0_16scalar_random_opIdEELb1ELb0ELb0EEclIlEEdRKS3_T_S8_, @function
_ZNK5Eigen8internal15nullary_wrapperIdNS0_16scalar_random_opIdEELb1ELb0ELb0EEclIlEEdRKS3_T_S8_:
.LFB9661:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen8internal16scalar_random_opIdEclEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9661:
	.size	_ZNK5Eigen8internal15nullary_wrapperIdNS0_16scalar_random_opIdEELb1ELb0ELb0EEclIlEEdRKS3_T_S8_, .-_ZNK5Eigen8internal15nullary_wrapperIdNS0_16scalar_random_opIdEELb1ELb0ELb0EEclIlEEdRKS3_T_S8_
	.section	.text._ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE9colStrideEv,"axG",@progbits,_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE9colStrideEv,comdat
	.align 2
	.weak	_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE9colStrideEv
	.type	_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE9colStrideEv, @function
_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE9colStrideEv:
.LFB9662:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNK5Eigen8internal19variable_if_dynamicIlLin1EE5valueEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9662:
	.size	_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE9colStrideEv, .-_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE9colStrideEv
	.section	.text._ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE9rowStrideEv,"axG",@progbits,_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE9rowStrideEv,comdat
	.align 2
	.weak	_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE9rowStrideEv
	.type	_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE9rowStrideEv, @function
_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE9rowStrideEv:
.LFB9663:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZN5Eigen8internal19variable_if_dynamicIlLi1EE5valueEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9663:
	.size	_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE9rowStrideEv, .-_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEE9rowStrideEv
	.section	.text._ZNK5Eigen8internal16scalar_random_opIdEclEv,"axG",@progbits,_ZNK5Eigen8internal16scalar_random_opIdEclEv,comdat
	.align 2
	.weak	_ZNK5Eigen8internal16scalar_random_opIdEclEv
	.type	_ZNK5Eigen8internal16scalar_random_opIdEclEv, @function
_ZNK5Eigen8internal16scalar_random_opIdEclEv:
.LFB9664:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZN5Eigen8internal6randomIdEENS0_13random_retvalINS0_36global_math_functions_filtering_baseIT_vE4typeEE4typeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9664:
	.size	_ZNK5Eigen8internal16scalar_random_opIdEclEv, .-_ZNK5Eigen8internal16scalar_random_opIdEclEv
	.section	.text._ZN5Eigen8internal6randomIdEENS0_13random_retvalINS0_36global_math_functions_filtering_baseIT_vE4typeEE4typeEv,"axG",@progbits,_ZN5Eigen8internal6randomIdEENS0_13random_retvalINS0_36global_math_functions_filtering_baseIT_vE4typeEE4typeEv,comdat
	.weak	_ZN5Eigen8internal6randomIdEENS0_13random_retvalINS0_36global_math_functions_filtering_baseIT_vE4typeEE4typeEv
	.type	_ZN5Eigen8internal6randomIdEENS0_13random_retvalINS0_36global_math_functions_filtering_baseIT_vE4typeEE4typeEv, @function
_ZN5Eigen8internal6randomIdEENS0_13random_retvalINS0_36global_math_functions_filtering_baseIT_vE4typeEE4typeEv:
.LFB9665:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	_ZN5Eigen8internal19random_default_implIdLb0ELb0EE3runEv
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9665:
	.size	_ZN5Eigen8internal6randomIdEENS0_13random_retvalINS0_36global_math_functions_filtering_baseIT_vE4typeEE4typeEv, .-_ZN5Eigen8internal6randomIdEENS0_13random_retvalINS0_36global_math_functions_filtering_baseIT_vE4typeEE4typeEv
	.section	.text._ZN5Eigen8internal19random_default_implIdLb0ELb0EE3runEv,"axG",@progbits,_ZN5Eigen8internal19random_default_implIdLb0ELb0EE3runEv,comdat
	.weak	_ZN5Eigen8internal19random_default_implIdLb0ELb0EE3runEv
	.type	_ZN5Eigen8internal19random_default_implIdLb0ELb0EE3runEv, @function
_ZN5Eigen8internal19random_default_implIdLb0ELb0EE3runEv:
.LFB9666:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	.LC37(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	.LC38(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Eigen8internal19random_default_implIdLb0ELb0EE3runERKdS4_
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L401
	call	__stack_chk_fail@PLT
.L401:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9666:
	.size	_ZN5Eigen8internal19random_default_implIdLb0ELb0EE3runEv, .-_ZN5Eigen8internal19random_default_implIdLb0ELb0EE3runEv
	.section	.text._ZN5Eigen8internal19random_default_implIdLb0ELb0EE3runERKdS4_,"axG",@progbits,_ZN5Eigen8internal19random_default_implIdLb0ELb0EE3runERKdS4_,comdat
	.weak	_ZN5Eigen8internal19random_default_implIdLb0ELb0EE3runERKdS4_
	.type	_ZN5Eigen8internal19random_default_implIdLb0ELb0EE3runERKdS4_, @function
_ZN5Eigen8internal19random_default_implIdLb0ELb0EE3runERKdS4_:
.LFB9667:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm3
	movsd	%xmm3, -24(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	call	rand@PLT
	cvtsi2sdl	%eax, %xmm0
	mulsd	-32(%rbp), %xmm0
	movsd	.LC39(%rip), %xmm1
	divsd	%xmm1, %xmm0
	addsd	-24(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9667:
	.size	_ZN5Eigen8internal19random_default_implIdLb0ELb0EE3runERKdS4_, .-_ZN5Eigen8internal19random_default_implIdLb0ELb0EE3runERKdS4_
	.local	_ZN5EigenL3fixILi1EEE
	.comm	_ZN5EigenL3fixILi1EEE,1,1
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB9668:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$1, -20(%rbp)
	jne	.L407
	cmpl	$65535, -24(%rbp)
	jne	.L407
	leaq	_ZN5EigenL4lastE(%rip), %rdi
	call	_ZN5Eigen8symbolic10SymbolExprINS_8internal17symbolic_last_tagEEC1Ev
	leaq	_ZN5EigenL3fixILi1EEE(%rip), %rdi
	call	_ZN5Eigen8internal8FixedIntILi1EEC1Ev
	leaq	_ZN5EigenL3fixILi1EEE(%rip), %rdi
	call	_ZNK5Eigen8internal8FixedIntILi1EEclEv
	leaq	_ZN5EigenL4lastE(%rip), %rdi
	call	_ZNK5Eigen8symbolic8BaseExprINS0_10SymbolExprINS_8internal17symbolic_last_tagEEEEplILi1EEENS0_7AddExprIS5_NS0_9ValueExprINS3_8FixedIntIXT_EEEEEEESB_
	leaq	_ZN5EigenL3allE(%rip), %rdi
	call	_ZN5Eigen8internal5all_tC1Ev
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L407:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L406
	call	__stack_chk_fail@PLT
.L406:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9668:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z15multiplyNoEigenN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES1_, @function
_GLOBAL__sub_I__Z15multiplyNoEigenN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES1_:
.LFB9669:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9669:
	.size	_GLOBAL__sub_I__Z15multiplyNoEigenN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES1_, .-_GLOBAL__sub_I__Z15multiplyNoEigenN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES1_
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z15multiplyNoEigenN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES1_
	.section	.rodata
	.align 8
.LC37:
	.long	0
	.long	1072693248
	.align 8
.LC38:
	.long	0
	.long	-1074790400
	.align 8
.LC39:
	.long	4290772992
	.long	1105199103
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
