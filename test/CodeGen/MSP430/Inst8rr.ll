; RUN: llc -march=msp430 < %s | FileCheck %s
target datalayout = "e-p:16:8:8-i8:8:8-i8:8:8-i32:8:8"
target triple = "msp430-generic-generic"

define i8 @mov(i8 %a, i8 %b) nounwind {
; CHECK-LABEL: mov:
; CHECK: mov.{{[bw]}} r14, r15
	ret i8 %b
}

define i8 @add(i8 %a, i8 %b) nounwind {
; CHECK-LABEL: add:
; CHECK: add.{{[bw]}}
	%1 = add i8 %a, %b
	ret i8 %1
}

define i8 @and(i8 %a, i8 %b) nounwind {
; CHECK-LABEL: and:
; CHECK: and.{{[bw]}} r14, r15
	%1 = and i8 %a, %b
	ret i8 %1
}

define i8 @bis(i8 %a, i8 %b) nounwind {
; CHECK-LABEL: bis:
; CHECK: bis.{{[bw]}} r14, r15
	%1 = or i8 %a, %b
	ret i8 %1
}

define i8 @bic(i8 %a, i8 %b) nounwind {
; CHECK-LABEL: bic:
; CHECK: bic.{{[bw]}} r14, r15
        %1 = xor i8 %b, -1
        %2 = and i8 %a, %1
        ret i8 %2
}

define i8 @xor(i8 %a, i8 %b) nounwind {
; CHECK-LABEL: xor:
; CHECK: xor.{{[bw]}} r14, r15
	%1 = xor i8 %a, %b
	ret i8 %1
}

