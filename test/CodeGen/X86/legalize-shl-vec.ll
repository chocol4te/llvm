; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=i686-unknown-unknown | FileCheck %s --check-prefix=CHECK --check-prefix=X32
; RUN: llc < %s -mtriple=x86_64-unknown-unknown | FileCheck %s --check-prefix=CHECK --check-prefix=X64

define <2 x i256> @test_shl(<2 x i256> %In) {
; X32-LABEL: test_shl:
; X32:       # BB#0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    shll $31, %ecx
; X32-NEXT:    movl %ecx, 28(%eax)
; X32-NEXT:    movl $0, 60(%eax)
; X32-NEXT:    movl $0, 56(%eax)
; X32-NEXT:    movl $0, 52(%eax)
; X32-NEXT:    movl $0, 48(%eax)
; X32-NEXT:    movl $0, 44(%eax)
; X32-NEXT:    movl $0, 40(%eax)
; X32-NEXT:    movl $0, 36(%eax)
; X32-NEXT:    movl $0, 32(%eax)
; X32-NEXT:    movl $0, 24(%eax)
; X32-NEXT:    movl $0, 20(%eax)
; X32-NEXT:    movl $0, 16(%eax)
; X32-NEXT:    movl $0, 12(%eax)
; X32-NEXT:    movl $0, 8(%eax)
; X32-NEXT:    movl $0, 4(%eax)
; X32-NEXT:    movl $0, (%eax)
; X32-NEXT:    retl $4
;
; X64-LABEL: test_shl:
; X64:       # BB#0:
; X64-NEXT:    shlq $63, %rsi
; X64-NEXT:    movq %rsi, 24(%rdi)
; X64-NEXT:    movq $0, 56(%rdi)
; X64-NEXT:    movq $0, 48(%rdi)
; X64-NEXT:    movq $0, 40(%rdi)
; X64-NEXT:    movq $0, 32(%rdi)
; X64-NEXT:    movq $0, 16(%rdi)
; X64-NEXT:    movq $0, 8(%rdi)
; X64-NEXT:    movq $0, (%rdi)
; X64-NEXT:    movq %rdi, %rax
; X64-NEXT:    retq
  %Amt = insertelement <2 x i256> undef, i256 255, i32 0
  %Out = shl <2 x i256> %In, %Amt
  ret <2 x i256> %Out
}

define <2 x i256> @test_srl(<2 x i256> %In) {
; X32-LABEL: test_srl:
; X32:       # BB#0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    shrl $31, %ecx
; X32-NEXT:    movl %ecx, (%eax)
; X32-NEXT:    movl $0, 60(%eax)
; X32-NEXT:    movl $0, 56(%eax)
; X32-NEXT:    movl $0, 52(%eax)
; X32-NEXT:    movl $0, 48(%eax)
; X32-NEXT:    movl $0, 44(%eax)
; X32-NEXT:    movl $0, 40(%eax)
; X32-NEXT:    movl $0, 36(%eax)
; X32-NEXT:    movl $0, 32(%eax)
; X32-NEXT:    movl $0, 28(%eax)
; X32-NEXT:    movl $0, 24(%eax)
; X32-NEXT:    movl $0, 20(%eax)
; X32-NEXT:    movl $0, 16(%eax)
; X32-NEXT:    movl $0, 12(%eax)
; X32-NEXT:    movl $0, 8(%eax)
; X32-NEXT:    movl $0, 4(%eax)
; X32-NEXT:    retl $4
;
; X64-LABEL: test_srl:
; X64:       # BB#0:
; X64-NEXT:    shrq $63, %r8
; X64-NEXT:    movq %r8, (%rdi)
; X64-NEXT:    movq $0, 56(%rdi)
; X64-NEXT:    movq $0, 48(%rdi)
; X64-NEXT:    movq $0, 40(%rdi)
; X64-NEXT:    movq $0, 32(%rdi)
; X64-NEXT:    movq $0, 24(%rdi)
; X64-NEXT:    movq $0, 16(%rdi)
; X64-NEXT:    movq $0, 8(%rdi)
; X64-NEXT:    movq %rdi, %rax
; X64-NEXT:    retq
  %Amt = insertelement <2 x i256> undef, i256 255, i32 0
  %Out = lshr <2 x i256> %In, %Amt
  ret <2 x i256> %Out
}

define <2 x i256> @test_sra(<2 x i256> %In) {
; X32-LABEL: test_sra:
; X32:       # BB#0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl %ecx, 60(%eax)
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl %ecx, 56(%eax)
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl %ecx, 52(%eax)
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl %ecx, 48(%eax)
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl %ecx, 44(%eax)
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl %ecx, 40(%eax)
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl %ecx, 36(%eax)
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    movl %ecx, 32(%eax)
; X32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X32-NEXT:    sarl $31, %ecx
; X32-NEXT:    movl %ecx, 28(%eax)
; X32-NEXT:    movl %ecx, 24(%eax)
; X32-NEXT:    movl %ecx, 20(%eax)
; X32-NEXT:    movl %ecx, 16(%eax)
; X32-NEXT:    movl %ecx, 12(%eax)
; X32-NEXT:    movl %ecx, 8(%eax)
; X32-NEXT:    movl %ecx, 4(%eax)
; X32-NEXT:    movl %ecx, (%eax)
; X32-NEXT:    retl $4
;
; X64-LABEL: test_sra:
; X64:       # BB#0:
; X64-NEXT:    movq {{[0-9]+}}(%rsp), %rax
; X64-NEXT:    movq {{[0-9]+}}(%rsp), %rcx
; X64-NEXT:    movq {{[0-9]+}}(%rsp), %rdx
; X64-NEXT:    sarq $63, %r8
; X64-NEXT:    movq %rdx, 56(%rdi)
; X64-NEXT:    movq %rcx, 48(%rdi)
; X64-NEXT:    movq %rax, 40(%rdi)
; X64-NEXT:    movq %r9, 32(%rdi)
; X64-NEXT:    movq %r8, 24(%rdi)
; X64-NEXT:    movq %r8, 16(%rdi)
; X64-NEXT:    movq %r8, 8(%rdi)
; X64-NEXT:    movq %r8, (%rdi)
; X64-NEXT:    movq %rdi, %rax
; X64-NEXT:    retq
  %Amt = insertelement <2 x i256> undef, i256 255, i32 0
  %Out = ashr <2 x i256> %In, %Amt
  ret <2 x i256> %Out
}
