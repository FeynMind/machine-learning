��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2	"
adj_xbool( "
adj_ybool( "
grad_xbool( "
grad_ybool( 
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
*
Erf
x"T
y"T"
Ttype:
2
.
Identity

input"T
output"T"	
Ttype
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.18.02v2.18.0-rc2-4-g6550e4bd8028��
�
completeness/biasVarHandleOp*
_output_shapes
: *"

debug_namecompleteness/bias/*
dtype0*
shape:*"
shared_namecompleteness/bias
s
%completeness/bias/Read/ReadVariableOpReadVariableOpcompleteness/bias*
_output_shapes
:*
dtype0
�
layer_normalization_8/gammaVarHandleOp*
_output_shapes
: *,

debug_namelayer_normalization_8/gamma/*
dtype0*
shape:�*,
shared_namelayer_normalization_8/gamma
�
/layer_normalization_8/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_8/gamma*
_output_shapes	
:�*
dtype0
�
dense_3/biasVarHandleOp*
_output_shapes
: *

debug_namedense_3/bias/*
dtype0*
shape:�*
shared_namedense_3/bias
j
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes	
:�*
dtype0
�
layer_normalization_2/betaVarHandleOp*
_output_shapes
: *+

debug_namelayer_normalization_2/beta/*
dtype0*
shape:�*+
shared_namelayer_normalization_2/beta
�
.layer_normalization_2/beta/Read/ReadVariableOpReadVariableOplayer_normalization_2/beta*
_output_shapes	
:�*
dtype0
�
,multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *=

debug_name/-multi_head_attention/attention_output/kernel/*
dtype0*
shape:0�*=
shared_name.,multi_head_attention/attention_output/kernel
�
@multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp,multi_head_attention/attention_output/kernel*#
_output_shapes
:0�*
dtype0
�
multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *.

debug_name multi_head_attention/key/bias/*
dtype0*
shape
:0*.
shared_namemulti_head_attention/key/bias
�
1multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/key/bias*
_output_shapes

:0*
dtype0
�
multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *0

debug_name" multi_head_attention/query/bias/*
dtype0*
shape
:0*0
shared_name!multi_head_attention/query/bias
�
3multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/query/bias*
_output_shapes

:0*
dtype0
�
!multi_head_attention_1/key/kernelVarHandleOp*
_output_shapes
: *2

debug_name$"multi_head_attention_1/key/kernel/*
dtype0*
shape:�0*2
shared_name#!multi_head_attention_1/key/kernel
�
5multi_head_attention_1/key/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/key/kernel*#
_output_shapes
:�0*
dtype0
�
completeness/kernelVarHandleOp*
_output_shapes
: *$

debug_namecompleteness/kernel/*
dtype0*
shape:	�*$
shared_namecompleteness/kernel
|
'completeness/kernel/Read/ReadVariableOpReadVariableOpcompleteness/kernel*
_output_shapes
:	�*
dtype0
�
layer_normalization_7/gammaVarHandleOp*
_output_shapes
: *,

debug_namelayer_normalization_7/gamma/*
dtype0*
shape:�*,
shared_namelayer_normalization_7/gamma
�
/layer_normalization_7/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_7/gamma*
_output_shapes	
:�*
dtype0
�
layer_normalization_4/betaVarHandleOp*
_output_shapes
: *+

debug_namelayer_normalization_4/beta/*
dtype0*
shape:�*+
shared_namelayer_normalization_4/beta
�
.layer_normalization_4/beta/Read/ReadVariableOpReadVariableOplayer_normalization_4/beta*
_output_shapes	
:�*
dtype0
�
dense_3/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_3/kernel/*
dtype0*
shape:
��*
shared_namedense_3/kernel
s
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel* 
_output_shapes
:
��*
dtype0
�
layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *,

debug_namelayer_normalization_3/gamma/*
dtype0*
shape:�*,
shared_namelayer_normalization_3/gamma
�
/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_3/gamma*
_output_shapes	
:�*
dtype0
�
!multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *2

debug_name$"multi_head_attention/value/kernel/*
dtype0*
shape:�0*2
shared_name#!multi_head_attention/value/kernel
�
5multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention/value/kernel*#
_output_shapes
:�0*
dtype0
�
multi_head_attention_1/key/biasVarHandleOp*
_output_shapes
: *0

debug_name" multi_head_attention_1/key/bias/*
dtype0*
shape
:0*0
shared_name!multi_head_attention_1/key/bias
�
3multi_head_attention_1/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention_1/key/bias*
_output_shapes

:0*
dtype0
�
layer_normalization_6/betaVarHandleOp*
_output_shapes
: *+

debug_namelayer_normalization_6/beta/*
dtype0*
shape:�*+
shared_namelayer_normalization_6/beta
�
.layer_normalization_6/beta/Read/ReadVariableOpReadVariableOplayer_normalization_6/beta*
_output_shapes	
:�*
dtype0
�
layer_normalization_8/betaVarHandleOp*
_output_shapes
: *+

debug_namelayer_normalization_8/beta/*
dtype0*
shape:�*+
shared_namelayer_normalization_8/beta
�
.layer_normalization_8/beta/Read/ReadVariableOpReadVariableOplayer_normalization_8/beta*
_output_shapes	
:�*
dtype0
�
layer_normalization_5/gammaVarHandleOp*
_output_shapes
: *,

debug_namelayer_normalization_5/gamma/*
dtype0*
shape:�*,
shared_namelayer_normalization_5/gamma
�
/layer_normalization_5/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_5/gamma*
_output_shapes	
:�*
dtype0
�
dense_2/biasVarHandleOp*
_output_shapes
: *

debug_namedense_2/bias/*
dtype0*
shape:�*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:�*
dtype0
�

dense/biasVarHandleOp*
_output_shapes
: *

debug_namedense/bias/*
dtype0*
shape:�*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:�*
dtype0
�
multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *0

debug_name" multi_head_attention/value/bias/*
dtype0*
shape
:0*0
shared_name!multi_head_attention/value/bias
�
3multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/value/bias*
_output_shapes

:0*
dtype0
�
!multi_head_attention_1/value/biasVarHandleOp*
_output_shapes
: *2

debug_name$"multi_head_attention_1/value/bias/*
dtype0*
shape
:0*2
shared_name#!multi_head_attention_1/value/bias
�
5multi_head_attention_1/value/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/value/bias*
_output_shapes

:0*
dtype0
�
layer_normalization/gammaVarHandleOp*
_output_shapes
: **

debug_namelayer_normalization/gamma/*
dtype0*
shape:�**
shared_namelayer_normalization/gamma
�
-layer_normalization/gamma/Read/ReadVariableOpReadVariableOplayer_normalization/gamma*
_output_shapes	
:�*
dtype0
�
understanding/kernelVarHandleOp*
_output_shapes
: *%

debug_nameunderstanding/kernel/*
dtype0*
shape:	�*%
shared_nameunderstanding/kernel
~
(understanding/kernel/Read/ReadVariableOpReadVariableOpunderstanding/kernel*
_output_shapes
:	�*
dtype0
�
dense_6/biasVarHandleOp*
_output_shapes
: *

debug_namedense_6/bias/*
dtype0*
shape:�*
shared_namedense_6/bias
j
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes	
:�*
dtype0
�
dense_2/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_2/kernel/*
dtype0*
shape:
��*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
��*
dtype0
�
layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *,

debug_namelayer_normalization_2/gamma/*
dtype0*
shape:�*,
shared_namelayer_normalization_2/gamma
�
/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_2/gamma*
_output_shapes	
:�*
dtype0
�
*multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *;

debug_name-+multi_head_attention/attention_output/bias/*
dtype0*
shape:�*;
shared_name,*multi_head_attention/attention_output/bias
�
>multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp*multi_head_attention/attention_output/bias*
_output_shapes	
:�*
dtype0
�
,multi_head_attention_1/attention_output/biasVarHandleOp*
_output_shapes
: *=

debug_name/-multi_head_attention_1/attention_output/bias/*
dtype0*
shape:�*=
shared_name.,multi_head_attention_1/attention_output/bias
�
@multi_head_attention_1/attention_output/bias/Read/ReadVariableOpReadVariableOp,multi_head_attention_1/attention_output/bias*
_output_shapes	
:�*
dtype0
�
layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *,

debug_namelayer_normalization_1/gamma/*
dtype0*
shape:�*,
shared_namelayer_normalization_1/gamma
�
/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_1/gamma*
_output_shapes	
:�*
dtype0
�
dense_5/biasVarHandleOp*
_output_shapes
: *

debug_namedense_5/bias/*
dtype0*
shape:�*
shared_namedense_5/bias
j
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes	
:�*
dtype0
�
layer_normalization_5/betaVarHandleOp*
_output_shapes
: *+

debug_namelayer_normalization_5/beta/*
dtype0*
shape:�*+
shared_namelayer_normalization_5/beta
�
.layer_normalization_5/beta/Read/ReadVariableOpReadVariableOplayer_normalization_5/beta*
_output_shapes	
:�*
dtype0
�
dense_4/biasVarHandleOp*
_output_shapes
: *

debug_namedense_4/bias/*
dtype0*
shape:�*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:�*
dtype0
�
dense_6/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_6/kernel/*
dtype0*
shape:
��*
shared_namedense_6/kernel
s
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel* 
_output_shapes
:
��*
dtype0
�
layer_normalization_4/gammaVarHandleOp*
_output_shapes
: *,

debug_namelayer_normalization_4/gamma/*
dtype0*
shape:�*,
shared_namelayer_normalization_4/gamma
�
/layer_normalization_4/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_4/gamma*
_output_shapes	
:�*
dtype0
�
dense/kernelVarHandleOp*
_output_shapes
: *

debug_namedense/kernel/*
dtype0*
shape:
��*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
��*
dtype0
�
#multi_head_attention_1/query/kernelVarHandleOp*
_output_shapes
: *4

debug_name&$multi_head_attention_1/query/kernel/*
dtype0*
shape:�0*4
shared_name%#multi_head_attention_1/query/kernel
�
7multi_head_attention_1/query/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_1/query/kernel*#
_output_shapes
:�0*
dtype0
�
understanding/biasVarHandleOp*
_output_shapes
: *#

debug_nameunderstanding/bias/*
dtype0*
shape:*#
shared_nameunderstanding/bias
u
&understanding/bias/Read/ReadVariableOpReadVariableOpunderstanding/bias*
_output_shapes
:*
dtype0
�
layer_normalization_6/gammaVarHandleOp*
_output_shapes
: *,

debug_namelayer_normalization_6/gamma/*
dtype0*
shape:�*,
shared_namelayer_normalization_6/gamma
�
/layer_normalization_6/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_6/gamma*
_output_shapes	
:�*
dtype0
�
dense_5/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_5/kernel/*
dtype0*
shape:
��*
shared_namedense_5/kernel
s
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel* 
_output_shapes
:
��*
dtype0
�
dense_7/biasVarHandleOp*
_output_shapes
: *

debug_namedense_7/bias/*
dtype0*
shape:�*
shared_namedense_7/bias
j
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes	
:�*
dtype0
�
dense_4/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_4/kernel/*
dtype0*
shape:
��*
shared_namedense_4/kernel
s
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel* 
_output_shapes
:
��*
dtype0
�
!multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *2

debug_name$"multi_head_attention/query/kernel/*
dtype0*
shape:�0*2
shared_name#!multi_head_attention/query/kernel
�
5multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention/query/kernel*#
_output_shapes
:�0*
dtype0
�
layer_normalization_1/betaVarHandleOp*
_output_shapes
: *+

debug_namelayer_normalization_1/beta/*
dtype0*
shape:�*+
shared_namelayer_normalization_1/beta
�
.layer_normalization_1/beta/Read/ReadVariableOpReadVariableOplayer_normalization_1/beta*
_output_shapes	
:�*
dtype0
�
dense_7/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_7/kernel/*
dtype0*
shape:
��*
shared_namedense_7/kernel
s
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel* 
_output_shapes
:
��*
dtype0
�
layer_normalization_7/betaVarHandleOp*
_output_shapes
: *+

debug_namelayer_normalization_7/beta/*
dtype0*
shape:�*+
shared_namelayer_normalization_7/beta
�
.layer_normalization_7/beta/Read/ReadVariableOpReadVariableOplayer_normalization_7/beta*
_output_shapes	
:�*
dtype0
�
layer_normalization_3/betaVarHandleOp*
_output_shapes
: *+

debug_namelayer_normalization_3/beta/*
dtype0*
shape:�*+
shared_namelayer_normalization_3/beta
�
.layer_normalization_3/beta/Read/ReadVariableOpReadVariableOplayer_normalization_3/beta*
_output_shapes	
:�*
dtype0
�
dense_1/biasVarHandleOp*
_output_shapes
: *

debug_namedense_1/bias/*
dtype0*
shape:�*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:�*
dtype0
�
.multi_head_attention_1/attention_output/kernelVarHandleOp*
_output_shapes
: *?

debug_name1/multi_head_attention_1/attention_output/kernel/*
dtype0*
shape:0�*?
shared_name0.multi_head_attention_1/attention_output/kernel
�
Bmulti_head_attention_1/attention_output/kernel/Read/ReadVariableOpReadVariableOp.multi_head_attention_1/attention_output/kernel*#
_output_shapes
:0�*
dtype0
�
layer_normalization/betaVarHandleOp*
_output_shapes
: *)

debug_namelayer_normalization/beta/*
dtype0*
shape:�*)
shared_namelayer_normalization/beta
�
,layer_normalization/beta/Read/ReadVariableOpReadVariableOplayer_normalization/beta*
_output_shapes	
:�*
dtype0
�
dense_1/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_1/kernel/*
dtype0*
shape:
��*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
��*
dtype0
�
multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *0

debug_name" multi_head_attention/key/kernel/*
dtype0*
shape:�0*0
shared_name!multi_head_attention/key/kernel
�
3multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOpmulti_head_attention/key/kernel*#
_output_shapes
:�0*
dtype0
�
#multi_head_attention_1/value/kernelVarHandleOp*
_output_shapes
: *4

debug_name&$multi_head_attention_1/value/kernel/*
dtype0*
shape:�0*4
shared_name%#multi_head_attention_1/value/kernel
�
7multi_head_attention_1/value/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_1/value/kernel*#
_output_shapes
:�0*
dtype0
�
!multi_head_attention_1/query/biasVarHandleOp*
_output_shapes
: *2

debug_name$"multi_head_attention_1/query/bias/*
dtype0*
shape
:0*2
shared_name#!multi_head_attention_1/query/bias
�
5multi_head_attention_1/query/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/query/bias*
_output_shapes

:0*
dtype0
�
completeness/bias_1VarHandleOp*
_output_shapes
: *$

debug_namecompleteness/bias_1/*
dtype0*
shape:*$
shared_namecompleteness/bias_1
w
'completeness/bias_1/Read/ReadVariableOpReadVariableOpcompleteness/bias_1*
_output_shapes
:*
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOpcompleteness/bias_1*
_class
loc:@Variable*
_output_shapes
:*
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape:*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0
�
completeness/kernel_1VarHandleOp*
_output_shapes
: *&

debug_namecompleteness/kernel_1/*
dtype0*
shape:	�*&
shared_namecompleteness/kernel_1
�
)completeness/kernel_1/Read/ReadVariableOpReadVariableOpcompleteness/kernel_1*
_output_shapes
:	�*
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOpcompleteness/kernel_1*
_class
loc:@Variable_1*
_output_shapes
:	�*
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape:	�*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
j
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:	�*
dtype0
�
understanding/bias_1VarHandleOp*
_output_shapes
: *%

debug_nameunderstanding/bias_1/*
dtype0*
shape:*%
shared_nameunderstanding/bias_1
y
(understanding/bias_1/Read/ReadVariableOpReadVariableOpunderstanding/bias_1*
_output_shapes
:*
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOpunderstanding/bias_1*
_class
loc:@Variable_2*
_output_shapes
:*
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape:*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:*
dtype0
�
understanding/kernel_1VarHandleOp*
_output_shapes
: *'

debug_nameunderstanding/kernel_1/*
dtype0*
shape:	�*'
shared_nameunderstanding/kernel_1
�
*understanding/kernel_1/Read/ReadVariableOpReadVariableOpunderstanding/kernel_1*
_output_shapes
:	�*
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOpunderstanding/kernel_1*
_class
loc:@Variable_3*
_output_shapes
:	�*
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape:	�*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
j
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
:	�*
dtype0
�
%seed_generator_6/seed_generator_stateVarHandleOp*
_output_shapes
: *6

debug_name(&seed_generator_6/seed_generator_state/*
dtype0	*
shape:*6
shared_name'%seed_generator_6/seed_generator_state
�
9seed_generator_6/seed_generator_state/Read/ReadVariableOpReadVariableOp%seed_generator_6/seed_generator_state*
_output_shapes
:*
dtype0	
�
%Variable_4/Initializer/ReadVariableOpReadVariableOp%seed_generator_6/seed_generator_state*
_class
loc:@Variable_4*
_output_shapes
:*
dtype0	
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0	*
shape:*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0	
e
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
:*
dtype0	
�
%seed_generator_4/seed_generator_stateVarHandleOp*
_output_shapes
: *6

debug_name(&seed_generator_4/seed_generator_state/*
dtype0	*
shape:*6
shared_name'%seed_generator_4/seed_generator_state
�
9seed_generator_4/seed_generator_state/Read/ReadVariableOpReadVariableOp%seed_generator_4/seed_generator_state*
_output_shapes
:*
dtype0	
�
%Variable_5/Initializer/ReadVariableOpReadVariableOp%seed_generator_4/seed_generator_state*
_class
loc:@Variable_5*
_output_shapes
:*
dtype0	
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0	*
shape:*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0	
e
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes
:*
dtype0	
�
layer_normalization_8/beta_1VarHandleOp*
_output_shapes
: *-

debug_namelayer_normalization_8/beta_1/*
dtype0*
shape:�*-
shared_namelayer_normalization_8/beta_1
�
0layer_normalization_8/beta_1/Read/ReadVariableOpReadVariableOplayer_normalization_8/beta_1*
_output_shapes	
:�*
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOplayer_normalization_8/beta_1*
_class
loc:@Variable_6*
_output_shapes	
:�*
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape:�*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
f
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes	
:�*
dtype0
�
layer_normalization_8/gamma_1VarHandleOp*
_output_shapes
: *.

debug_name layer_normalization_8/gamma_1/*
dtype0*
shape:�*.
shared_namelayer_normalization_8/gamma_1
�
1layer_normalization_8/gamma_1/Read/ReadVariableOpReadVariableOplayer_normalization_8/gamma_1*
_output_shapes	
:�*
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOplayer_normalization_8/gamma_1*
_class
loc:@Variable_7*
_output_shapes	
:�*
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape:�*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
f
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes	
:�*
dtype0
�
layer_normalization_6/beta_1VarHandleOp*
_output_shapes
: *-

debug_namelayer_normalization_6/beta_1/*
dtype0*
shape:�*-
shared_namelayer_normalization_6/beta_1
�
0layer_normalization_6/beta_1/Read/ReadVariableOpReadVariableOplayer_normalization_6/beta_1*
_output_shapes	
:�*
dtype0
�
%Variable_8/Initializer/ReadVariableOpReadVariableOplayer_normalization_6/beta_1*
_class
loc:@Variable_8*
_output_shapes	
:�*
dtype0
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape:�*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0
f
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes	
:�*
dtype0
�
layer_normalization_6/gamma_1VarHandleOp*
_output_shapes
: *.

debug_name layer_normalization_6/gamma_1/*
dtype0*
shape:�*.
shared_namelayer_normalization_6/gamma_1
�
1layer_normalization_6/gamma_1/Read/ReadVariableOpReadVariableOplayer_normalization_6/gamma_1*
_output_shapes	
:�*
dtype0
�
%Variable_9/Initializer/ReadVariableOpReadVariableOplayer_normalization_6/gamma_1*
_class
loc:@Variable_9*
_output_shapes	
:�*
dtype0
�

Variable_9VarHandleOp*
_class
loc:@Variable_9*
_output_shapes
: *

debug_nameVariable_9/*
dtype0*
shape:�*
shared_name
Variable_9
e
+Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_9*
_output_shapes
: 
e
Variable_9/AssignAssignVariableOp
Variable_9%Variable_9/Initializer/ReadVariableOp*
dtype0
f
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*
_output_shapes	
:�*
dtype0
�
dense_7/bias_1VarHandleOp*
_output_shapes
: *

debug_namedense_7/bias_1/*
dtype0*
shape:�*
shared_namedense_7/bias_1
n
"dense_7/bias_1/Read/ReadVariableOpReadVariableOpdense_7/bias_1*
_output_shapes	
:�*
dtype0
�
&Variable_10/Initializer/ReadVariableOpReadVariableOpdense_7/bias_1*
_class
loc:@Variable_10*
_output_shapes	
:�*
dtype0
�
Variable_10VarHandleOp*
_class
loc:@Variable_10*
_output_shapes
: *

debug_nameVariable_10/*
dtype0*
shape:�*
shared_nameVariable_10
g
,Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_10*
_output_shapes
: 
h
Variable_10/AssignAssignVariableOpVariable_10&Variable_10/Initializer/ReadVariableOp*
dtype0
h
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*
_output_shapes	
:�*
dtype0
�
dense_7/kernel_1VarHandleOp*
_output_shapes
: *!

debug_namedense_7/kernel_1/*
dtype0*
shape:
��*!
shared_namedense_7/kernel_1
w
$dense_7/kernel_1/Read/ReadVariableOpReadVariableOpdense_7/kernel_1* 
_output_shapes
:
��*
dtype0
�
&Variable_11/Initializer/ReadVariableOpReadVariableOpdense_7/kernel_1*
_class
loc:@Variable_11* 
_output_shapes
:
��*
dtype0
�
Variable_11VarHandleOp*
_class
loc:@Variable_11*
_output_shapes
: *

debug_nameVariable_11/*
dtype0*
shape:
��*
shared_nameVariable_11
g
,Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_11*
_output_shapes
: 
h
Variable_11/AssignAssignVariableOpVariable_11&Variable_11/Initializer/ReadVariableOp*
dtype0
m
Variable_11/Read/ReadVariableOpReadVariableOpVariable_11* 
_output_shapes
:
��*
dtype0
�
dense_5/bias_1VarHandleOp*
_output_shapes
: *

debug_namedense_5/bias_1/*
dtype0*
shape:�*
shared_namedense_5/bias_1
n
"dense_5/bias_1/Read/ReadVariableOpReadVariableOpdense_5/bias_1*
_output_shapes	
:�*
dtype0
�
&Variable_12/Initializer/ReadVariableOpReadVariableOpdense_5/bias_1*
_class
loc:@Variable_12*
_output_shapes	
:�*
dtype0
�
Variable_12VarHandleOp*
_class
loc:@Variable_12*
_output_shapes
: *

debug_nameVariable_12/*
dtype0*
shape:�*
shared_nameVariable_12
g
,Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_12*
_output_shapes
: 
h
Variable_12/AssignAssignVariableOpVariable_12&Variable_12/Initializer/ReadVariableOp*
dtype0
h
Variable_12/Read/ReadVariableOpReadVariableOpVariable_12*
_output_shapes	
:�*
dtype0
�
dense_5/kernel_1VarHandleOp*
_output_shapes
: *!

debug_namedense_5/kernel_1/*
dtype0*
shape:
��*!
shared_namedense_5/kernel_1
w
$dense_5/kernel_1/Read/ReadVariableOpReadVariableOpdense_5/kernel_1* 
_output_shapes
:
��*
dtype0
�
&Variable_13/Initializer/ReadVariableOpReadVariableOpdense_5/kernel_1*
_class
loc:@Variable_13* 
_output_shapes
:
��*
dtype0
�
Variable_13VarHandleOp*
_class
loc:@Variable_13*
_output_shapes
: *

debug_nameVariable_13/*
dtype0*
shape:
��*
shared_nameVariable_13
g
,Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_13*
_output_shapes
: 
h
Variable_13/AssignAssignVariableOpVariable_13&Variable_13/Initializer/ReadVariableOp*
dtype0
m
Variable_13/Read/ReadVariableOpReadVariableOpVariable_13* 
_output_shapes
:
��*
dtype0
�
%seed_generator_5/seed_generator_stateVarHandleOp*
_output_shapes
: *6

debug_name(&seed_generator_5/seed_generator_state/*
dtype0	*
shape:*6
shared_name'%seed_generator_5/seed_generator_state
�
9seed_generator_5/seed_generator_state/Read/ReadVariableOpReadVariableOp%seed_generator_5/seed_generator_state*
_output_shapes
:*
dtype0	
�
&Variable_14/Initializer/ReadVariableOpReadVariableOp%seed_generator_5/seed_generator_state*
_class
loc:@Variable_14*
_output_shapes
:*
dtype0	
�
Variable_14VarHandleOp*
_class
loc:@Variable_14*
_output_shapes
: *

debug_nameVariable_14/*
dtype0	*
shape:*
shared_nameVariable_14
g
,Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_14*
_output_shapes
: 
h
Variable_14/AssignAssignVariableOpVariable_14&Variable_14/Initializer/ReadVariableOp*
dtype0	
g
Variable_14/Read/ReadVariableOpReadVariableOpVariable_14*
_output_shapes
:*
dtype0	
�
%seed_generator_3/seed_generator_stateVarHandleOp*
_output_shapes
: *6

debug_name(&seed_generator_3/seed_generator_state/*
dtype0	*
shape:*6
shared_name'%seed_generator_3/seed_generator_state
�
9seed_generator_3/seed_generator_state/Read/ReadVariableOpReadVariableOp%seed_generator_3/seed_generator_state*
_output_shapes
:*
dtype0	
�
&Variable_15/Initializer/ReadVariableOpReadVariableOp%seed_generator_3/seed_generator_state*
_class
loc:@Variable_15*
_output_shapes
:*
dtype0	
�
Variable_15VarHandleOp*
_class
loc:@Variable_15*
_output_shapes
: *

debug_nameVariable_15/*
dtype0	*
shape:*
shared_nameVariable_15
g
,Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_15*
_output_shapes
: 
h
Variable_15/AssignAssignVariableOpVariable_15&Variable_15/Initializer/ReadVariableOp*
dtype0	
g
Variable_15/Read/ReadVariableOpReadVariableOpVariable_15*
_output_shapes
:*
dtype0	
�
layer_normalization_7/beta_1VarHandleOp*
_output_shapes
: *-

debug_namelayer_normalization_7/beta_1/*
dtype0*
shape:�*-
shared_namelayer_normalization_7/beta_1
�
0layer_normalization_7/beta_1/Read/ReadVariableOpReadVariableOplayer_normalization_7/beta_1*
_output_shapes	
:�*
dtype0
�
&Variable_16/Initializer/ReadVariableOpReadVariableOplayer_normalization_7/beta_1*
_class
loc:@Variable_16*
_output_shapes	
:�*
dtype0
�
Variable_16VarHandleOp*
_class
loc:@Variable_16*
_output_shapes
: *

debug_nameVariable_16/*
dtype0*
shape:�*
shared_nameVariable_16
g
,Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_16*
_output_shapes
: 
h
Variable_16/AssignAssignVariableOpVariable_16&Variable_16/Initializer/ReadVariableOp*
dtype0
h
Variable_16/Read/ReadVariableOpReadVariableOpVariable_16*
_output_shapes	
:�*
dtype0
�
layer_normalization_7/gamma_1VarHandleOp*
_output_shapes
: *.

debug_name layer_normalization_7/gamma_1/*
dtype0*
shape:�*.
shared_namelayer_normalization_7/gamma_1
�
1layer_normalization_7/gamma_1/Read/ReadVariableOpReadVariableOplayer_normalization_7/gamma_1*
_output_shapes	
:�*
dtype0
�
&Variable_17/Initializer/ReadVariableOpReadVariableOplayer_normalization_7/gamma_1*
_class
loc:@Variable_17*
_output_shapes	
:�*
dtype0
�
Variable_17VarHandleOp*
_class
loc:@Variable_17*
_output_shapes
: *

debug_nameVariable_17/*
dtype0*
shape:�*
shared_nameVariable_17
g
,Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_17*
_output_shapes
: 
h
Variable_17/AssignAssignVariableOpVariable_17&Variable_17/Initializer/ReadVariableOp*
dtype0
h
Variable_17/Read/ReadVariableOpReadVariableOpVariable_17*
_output_shapes	
:�*
dtype0
�
layer_normalization_5/beta_1VarHandleOp*
_output_shapes
: *-

debug_namelayer_normalization_5/beta_1/*
dtype0*
shape:�*-
shared_namelayer_normalization_5/beta_1
�
0layer_normalization_5/beta_1/Read/ReadVariableOpReadVariableOplayer_normalization_5/beta_1*
_output_shapes	
:�*
dtype0
�
&Variable_18/Initializer/ReadVariableOpReadVariableOplayer_normalization_5/beta_1*
_class
loc:@Variable_18*
_output_shapes	
:�*
dtype0
�
Variable_18VarHandleOp*
_class
loc:@Variable_18*
_output_shapes
: *

debug_nameVariable_18/*
dtype0*
shape:�*
shared_nameVariable_18
g
,Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_18*
_output_shapes
: 
h
Variable_18/AssignAssignVariableOpVariable_18&Variable_18/Initializer/ReadVariableOp*
dtype0
h
Variable_18/Read/ReadVariableOpReadVariableOpVariable_18*
_output_shapes	
:�*
dtype0
�
layer_normalization_5/gamma_1VarHandleOp*
_output_shapes
: *.

debug_name layer_normalization_5/gamma_1/*
dtype0*
shape:�*.
shared_namelayer_normalization_5/gamma_1
�
1layer_normalization_5/gamma_1/Read/ReadVariableOpReadVariableOplayer_normalization_5/gamma_1*
_output_shapes	
:�*
dtype0
�
&Variable_19/Initializer/ReadVariableOpReadVariableOplayer_normalization_5/gamma_1*
_class
loc:@Variable_19*
_output_shapes	
:�*
dtype0
�
Variable_19VarHandleOp*
_class
loc:@Variable_19*
_output_shapes
: *

debug_nameVariable_19/*
dtype0*
shape:�*
shared_nameVariable_19
g
,Variable_19/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_19*
_output_shapes
: 
h
Variable_19/AssignAssignVariableOpVariable_19&Variable_19/Initializer/ReadVariableOp*
dtype0
h
Variable_19/Read/ReadVariableOpReadVariableOpVariable_19*
_output_shapes	
:�*
dtype0
�
dense_6/bias_1VarHandleOp*
_output_shapes
: *

debug_namedense_6/bias_1/*
dtype0*
shape:�*
shared_namedense_6/bias_1
n
"dense_6/bias_1/Read/ReadVariableOpReadVariableOpdense_6/bias_1*
_output_shapes	
:�*
dtype0
�
&Variable_20/Initializer/ReadVariableOpReadVariableOpdense_6/bias_1*
_class
loc:@Variable_20*
_output_shapes	
:�*
dtype0
�
Variable_20VarHandleOp*
_class
loc:@Variable_20*
_output_shapes
: *

debug_nameVariable_20/*
dtype0*
shape:�*
shared_nameVariable_20
g
,Variable_20/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_20*
_output_shapes
: 
h
Variable_20/AssignAssignVariableOpVariable_20&Variable_20/Initializer/ReadVariableOp*
dtype0
h
Variable_20/Read/ReadVariableOpReadVariableOpVariable_20*
_output_shapes	
:�*
dtype0
�
dense_6/kernel_1VarHandleOp*
_output_shapes
: *!

debug_namedense_6/kernel_1/*
dtype0*
shape:
��*!
shared_namedense_6/kernel_1
w
$dense_6/kernel_1/Read/ReadVariableOpReadVariableOpdense_6/kernel_1* 
_output_shapes
:
��*
dtype0
�
&Variable_21/Initializer/ReadVariableOpReadVariableOpdense_6/kernel_1*
_class
loc:@Variable_21* 
_output_shapes
:
��*
dtype0
�
Variable_21VarHandleOp*
_class
loc:@Variable_21*
_output_shapes
: *

debug_nameVariable_21/*
dtype0*
shape:
��*
shared_nameVariable_21
g
,Variable_21/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_21*
_output_shapes
: 
h
Variable_21/AssignAssignVariableOpVariable_21&Variable_21/Initializer/ReadVariableOp*
dtype0
m
Variable_21/Read/ReadVariableOpReadVariableOpVariable_21* 
_output_shapes
:
��*
dtype0
�
dense_4/bias_1VarHandleOp*
_output_shapes
: *

debug_namedense_4/bias_1/*
dtype0*
shape:�*
shared_namedense_4/bias_1
n
"dense_4/bias_1/Read/ReadVariableOpReadVariableOpdense_4/bias_1*
_output_shapes	
:�*
dtype0
�
&Variable_22/Initializer/ReadVariableOpReadVariableOpdense_4/bias_1*
_class
loc:@Variable_22*
_output_shapes	
:�*
dtype0
�
Variable_22VarHandleOp*
_class
loc:@Variable_22*
_output_shapes
: *

debug_nameVariable_22/*
dtype0*
shape:�*
shared_nameVariable_22
g
,Variable_22/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_22*
_output_shapes
: 
h
Variable_22/AssignAssignVariableOpVariable_22&Variable_22/Initializer/ReadVariableOp*
dtype0
h
Variable_22/Read/ReadVariableOpReadVariableOpVariable_22*
_output_shapes	
:�*
dtype0
�
dense_4/kernel_1VarHandleOp*
_output_shapes
: *!

debug_namedense_4/kernel_1/*
dtype0*
shape:
��*!
shared_namedense_4/kernel_1
w
$dense_4/kernel_1/Read/ReadVariableOpReadVariableOpdense_4/kernel_1* 
_output_shapes
:
��*
dtype0
�
&Variable_23/Initializer/ReadVariableOpReadVariableOpdense_4/kernel_1*
_class
loc:@Variable_23* 
_output_shapes
:
��*
dtype0
�
Variable_23VarHandleOp*
_class
loc:@Variable_23*
_output_shapes
: *

debug_nameVariable_23/*
dtype0*
shape:
��*
shared_nameVariable_23
g
,Variable_23/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_23*
_output_shapes
: 
h
Variable_23/AssignAssignVariableOpVariable_23&Variable_23/Initializer/ReadVariableOp*
dtype0
m
Variable_23/Read/ReadVariableOpReadVariableOpVariable_23* 
_output_shapes
:
��*
dtype0
�
%seed_generator_2/seed_generator_stateVarHandleOp*
_output_shapes
: *6

debug_name(&seed_generator_2/seed_generator_state/*
dtype0	*
shape:*6
shared_name'%seed_generator_2/seed_generator_state
�
9seed_generator_2/seed_generator_state/Read/ReadVariableOpReadVariableOp%seed_generator_2/seed_generator_state*
_output_shapes
:*
dtype0	
�
&Variable_24/Initializer/ReadVariableOpReadVariableOp%seed_generator_2/seed_generator_state*
_class
loc:@Variable_24*
_output_shapes
:*
dtype0	
�
Variable_24VarHandleOp*
_class
loc:@Variable_24*
_output_shapes
: *

debug_nameVariable_24/*
dtype0	*
shape:*
shared_nameVariable_24
g
,Variable_24/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_24*
_output_shapes
: 
h
Variable_24/AssignAssignVariableOpVariable_24&Variable_24/Initializer/ReadVariableOp*
dtype0	
g
Variable_24/Read/ReadVariableOpReadVariableOpVariable_24*
_output_shapes
:*
dtype0	
�
layer_normalization_4/beta_1VarHandleOp*
_output_shapes
: *-

debug_namelayer_normalization_4/beta_1/*
dtype0*
shape:�*-
shared_namelayer_normalization_4/beta_1
�
0layer_normalization_4/beta_1/Read/ReadVariableOpReadVariableOplayer_normalization_4/beta_1*
_output_shapes	
:�*
dtype0
�
&Variable_25/Initializer/ReadVariableOpReadVariableOplayer_normalization_4/beta_1*
_class
loc:@Variable_25*
_output_shapes	
:�*
dtype0
�
Variable_25VarHandleOp*
_class
loc:@Variable_25*
_output_shapes
: *

debug_nameVariable_25/*
dtype0*
shape:�*
shared_nameVariable_25
g
,Variable_25/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_25*
_output_shapes
: 
h
Variable_25/AssignAssignVariableOpVariable_25&Variable_25/Initializer/ReadVariableOp*
dtype0
h
Variable_25/Read/ReadVariableOpReadVariableOpVariable_25*
_output_shapes	
:�*
dtype0
�
layer_normalization_4/gamma_1VarHandleOp*
_output_shapes
: *.

debug_name layer_normalization_4/gamma_1/*
dtype0*
shape:�*.
shared_namelayer_normalization_4/gamma_1
�
1layer_normalization_4/gamma_1/Read/ReadVariableOpReadVariableOplayer_normalization_4/gamma_1*
_output_shapes	
:�*
dtype0
�
&Variable_26/Initializer/ReadVariableOpReadVariableOplayer_normalization_4/gamma_1*
_class
loc:@Variable_26*
_output_shapes	
:�*
dtype0
�
Variable_26VarHandleOp*
_class
loc:@Variable_26*
_output_shapes
: *

debug_nameVariable_26/*
dtype0*
shape:�*
shared_nameVariable_26
g
,Variable_26/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_26*
_output_shapes
: 
h
Variable_26/AssignAssignVariableOpVariable_26&Variable_26/Initializer/ReadVariableOp*
dtype0
h
Variable_26/Read/ReadVariableOpReadVariableOpVariable_26*
_output_shapes	
:�*
dtype0
�
dense_3/bias_1VarHandleOp*
_output_shapes
: *

debug_namedense_3/bias_1/*
dtype0*
shape:�*
shared_namedense_3/bias_1
n
"dense_3/bias_1/Read/ReadVariableOpReadVariableOpdense_3/bias_1*
_output_shapes	
:�*
dtype0
�
&Variable_27/Initializer/ReadVariableOpReadVariableOpdense_3/bias_1*
_class
loc:@Variable_27*
_output_shapes	
:�*
dtype0
�
Variable_27VarHandleOp*
_class
loc:@Variable_27*
_output_shapes
: *

debug_nameVariable_27/*
dtype0*
shape:�*
shared_nameVariable_27
g
,Variable_27/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_27*
_output_shapes
: 
h
Variable_27/AssignAssignVariableOpVariable_27&Variable_27/Initializer/ReadVariableOp*
dtype0
h
Variable_27/Read/ReadVariableOpReadVariableOpVariable_27*
_output_shapes	
:�*
dtype0
�
dense_3/kernel_1VarHandleOp*
_output_shapes
: *!

debug_namedense_3/kernel_1/*
dtype0*
shape:
��*!
shared_namedense_3/kernel_1
w
$dense_3/kernel_1/Read/ReadVariableOpReadVariableOpdense_3/kernel_1* 
_output_shapes
:
��*
dtype0
�
&Variable_28/Initializer/ReadVariableOpReadVariableOpdense_3/kernel_1*
_class
loc:@Variable_28* 
_output_shapes
:
��*
dtype0
�
Variable_28VarHandleOp*
_class
loc:@Variable_28*
_output_shapes
: *

debug_nameVariable_28/*
dtype0*
shape:
��*
shared_nameVariable_28
g
,Variable_28/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_28*
_output_shapes
: 
h
Variable_28/AssignAssignVariableOpVariable_28&Variable_28/Initializer/ReadVariableOp*
dtype0
m
Variable_28/Read/ReadVariableOpReadVariableOpVariable_28* 
_output_shapes
:
��*
dtype0
�
dense_2/bias_1VarHandleOp*
_output_shapes
: *

debug_namedense_2/bias_1/*
dtype0*
shape:�*
shared_namedense_2/bias_1
n
"dense_2/bias_1/Read/ReadVariableOpReadVariableOpdense_2/bias_1*
_output_shapes	
:�*
dtype0
�
&Variable_29/Initializer/ReadVariableOpReadVariableOpdense_2/bias_1*
_class
loc:@Variable_29*
_output_shapes	
:�*
dtype0
�
Variable_29VarHandleOp*
_class
loc:@Variable_29*
_output_shapes
: *

debug_nameVariable_29/*
dtype0*
shape:�*
shared_nameVariable_29
g
,Variable_29/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_29*
_output_shapes
: 
h
Variable_29/AssignAssignVariableOpVariable_29&Variable_29/Initializer/ReadVariableOp*
dtype0
h
Variable_29/Read/ReadVariableOpReadVariableOpVariable_29*
_output_shapes	
:�*
dtype0
�
dense_2/kernel_1VarHandleOp*
_output_shapes
: *!

debug_namedense_2/kernel_1/*
dtype0*
shape:
��*!
shared_namedense_2/kernel_1
w
$dense_2/kernel_1/Read/ReadVariableOpReadVariableOpdense_2/kernel_1* 
_output_shapes
:
��*
dtype0
�
&Variable_30/Initializer/ReadVariableOpReadVariableOpdense_2/kernel_1*
_class
loc:@Variable_30* 
_output_shapes
:
��*
dtype0
�
Variable_30VarHandleOp*
_class
loc:@Variable_30*
_output_shapes
: *

debug_nameVariable_30/*
dtype0*
shape:
��*
shared_nameVariable_30
g
,Variable_30/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_30*
_output_shapes
: 
h
Variable_30/AssignAssignVariableOpVariable_30&Variable_30/Initializer/ReadVariableOp*
dtype0
m
Variable_30/Read/ReadVariableOpReadVariableOpVariable_30* 
_output_shapes
:
��*
dtype0
�
%seed_generator_1/seed_generator_stateVarHandleOp*
_output_shapes
: *6

debug_name(&seed_generator_1/seed_generator_state/*
dtype0	*
shape:*6
shared_name'%seed_generator_1/seed_generator_state
�
9seed_generator_1/seed_generator_state/Read/ReadVariableOpReadVariableOp%seed_generator_1/seed_generator_state*
_output_shapes
:*
dtype0	
�
&Variable_31/Initializer/ReadVariableOpReadVariableOp%seed_generator_1/seed_generator_state*
_class
loc:@Variable_31*
_output_shapes
:*
dtype0	
�
Variable_31VarHandleOp*
_class
loc:@Variable_31*
_output_shapes
: *

debug_nameVariable_31/*
dtype0	*
shape:*
shared_nameVariable_31
g
,Variable_31/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_31*
_output_shapes
: 
h
Variable_31/AssignAssignVariableOpVariable_31&Variable_31/Initializer/ReadVariableOp*
dtype0	
g
Variable_31/Read/ReadVariableOpReadVariableOpVariable_31*
_output_shapes
:*
dtype0	
�
layer_normalization_3/beta_1VarHandleOp*
_output_shapes
: *-

debug_namelayer_normalization_3/beta_1/*
dtype0*
shape:�*-
shared_namelayer_normalization_3/beta_1
�
0layer_normalization_3/beta_1/Read/ReadVariableOpReadVariableOplayer_normalization_3/beta_1*
_output_shapes	
:�*
dtype0
�
&Variable_32/Initializer/ReadVariableOpReadVariableOplayer_normalization_3/beta_1*
_class
loc:@Variable_32*
_output_shapes	
:�*
dtype0
�
Variable_32VarHandleOp*
_class
loc:@Variable_32*
_output_shapes
: *

debug_nameVariable_32/*
dtype0*
shape:�*
shared_nameVariable_32
g
,Variable_32/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_32*
_output_shapes
: 
h
Variable_32/AssignAssignVariableOpVariable_32&Variable_32/Initializer/ReadVariableOp*
dtype0
h
Variable_32/Read/ReadVariableOpReadVariableOpVariable_32*
_output_shapes	
:�*
dtype0
�
layer_normalization_3/gamma_1VarHandleOp*
_output_shapes
: *.

debug_name layer_normalization_3/gamma_1/*
dtype0*
shape:�*.
shared_namelayer_normalization_3/gamma_1
�
1layer_normalization_3/gamma_1/Read/ReadVariableOpReadVariableOplayer_normalization_3/gamma_1*
_output_shapes	
:�*
dtype0
�
&Variable_33/Initializer/ReadVariableOpReadVariableOplayer_normalization_3/gamma_1*
_class
loc:@Variable_33*
_output_shapes	
:�*
dtype0
�
Variable_33VarHandleOp*
_class
loc:@Variable_33*
_output_shapes
: *

debug_nameVariable_33/*
dtype0*
shape:�*
shared_nameVariable_33
g
,Variable_33/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_33*
_output_shapes
: 
h
Variable_33/AssignAssignVariableOpVariable_33&Variable_33/Initializer/ReadVariableOp*
dtype0
h
Variable_33/Read/ReadVariableOpReadVariableOpVariable_33*
_output_shapes	
:�*
dtype0
�
dense_1/bias_1VarHandleOp*
_output_shapes
: *

debug_namedense_1/bias_1/*
dtype0*
shape:�*
shared_namedense_1/bias_1
n
"dense_1/bias_1/Read/ReadVariableOpReadVariableOpdense_1/bias_1*
_output_shapes	
:�*
dtype0
�
&Variable_34/Initializer/ReadVariableOpReadVariableOpdense_1/bias_1*
_class
loc:@Variable_34*
_output_shapes	
:�*
dtype0
�
Variable_34VarHandleOp*
_class
loc:@Variable_34*
_output_shapes
: *

debug_nameVariable_34/*
dtype0*
shape:�*
shared_nameVariable_34
g
,Variable_34/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_34*
_output_shapes
: 
h
Variable_34/AssignAssignVariableOpVariable_34&Variable_34/Initializer/ReadVariableOp*
dtype0
h
Variable_34/Read/ReadVariableOpReadVariableOpVariable_34*
_output_shapes	
:�*
dtype0
�
dense_1/kernel_1VarHandleOp*
_output_shapes
: *!

debug_namedense_1/kernel_1/*
dtype0*
shape:
��*!
shared_namedense_1/kernel_1
w
$dense_1/kernel_1/Read/ReadVariableOpReadVariableOpdense_1/kernel_1* 
_output_shapes
:
��*
dtype0
�
&Variable_35/Initializer/ReadVariableOpReadVariableOpdense_1/kernel_1*
_class
loc:@Variable_35* 
_output_shapes
:
��*
dtype0
�
Variable_35VarHandleOp*
_class
loc:@Variable_35*
_output_shapes
: *

debug_nameVariable_35/*
dtype0*
shape:
��*
shared_nameVariable_35
g
,Variable_35/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_35*
_output_shapes
: 
h
Variable_35/AssignAssignVariableOpVariable_35&Variable_35/Initializer/ReadVariableOp*
dtype0
m
Variable_35/Read/ReadVariableOpReadVariableOpVariable_35* 
_output_shapes
:
��*
dtype0
�
#seed_generator/seed_generator_stateVarHandleOp*
_output_shapes
: *4

debug_name&$seed_generator/seed_generator_state/*
dtype0	*
shape:*4
shared_name%#seed_generator/seed_generator_state
�
7seed_generator/seed_generator_state/Read/ReadVariableOpReadVariableOp#seed_generator/seed_generator_state*
_output_shapes
:*
dtype0	
�
&Variable_36/Initializer/ReadVariableOpReadVariableOp#seed_generator/seed_generator_state*
_class
loc:@Variable_36*
_output_shapes
:*
dtype0	
�
Variable_36VarHandleOp*
_class
loc:@Variable_36*
_output_shapes
: *

debug_nameVariable_36/*
dtype0	*
shape:*
shared_nameVariable_36
g
,Variable_36/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_36*
_output_shapes
: 
h
Variable_36/AssignAssignVariableOpVariable_36&Variable_36/Initializer/ReadVariableOp*
dtype0	
g
Variable_36/Read/ReadVariableOpReadVariableOpVariable_36*
_output_shapes
:*
dtype0	
�
layer_normalization_2/beta_1VarHandleOp*
_output_shapes
: *-

debug_namelayer_normalization_2/beta_1/*
dtype0*
shape:�*-
shared_namelayer_normalization_2/beta_1
�
0layer_normalization_2/beta_1/Read/ReadVariableOpReadVariableOplayer_normalization_2/beta_1*
_output_shapes	
:�*
dtype0
�
&Variable_37/Initializer/ReadVariableOpReadVariableOplayer_normalization_2/beta_1*
_class
loc:@Variable_37*
_output_shapes	
:�*
dtype0
�
Variable_37VarHandleOp*
_class
loc:@Variable_37*
_output_shapes
: *

debug_nameVariable_37/*
dtype0*
shape:�*
shared_nameVariable_37
g
,Variable_37/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_37*
_output_shapes
: 
h
Variable_37/AssignAssignVariableOpVariable_37&Variable_37/Initializer/ReadVariableOp*
dtype0
h
Variable_37/Read/ReadVariableOpReadVariableOpVariable_37*
_output_shapes	
:�*
dtype0
�
layer_normalization_2/gamma_1VarHandleOp*
_output_shapes
: *.

debug_name layer_normalization_2/gamma_1/*
dtype0*
shape:�*.
shared_namelayer_normalization_2/gamma_1
�
1layer_normalization_2/gamma_1/Read/ReadVariableOpReadVariableOplayer_normalization_2/gamma_1*
_output_shapes	
:�*
dtype0
�
&Variable_38/Initializer/ReadVariableOpReadVariableOplayer_normalization_2/gamma_1*
_class
loc:@Variable_38*
_output_shapes	
:�*
dtype0
�
Variable_38VarHandleOp*
_class
loc:@Variable_38*
_output_shapes
: *

debug_nameVariable_38/*
dtype0*
shape:�*
shared_nameVariable_38
g
,Variable_38/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_38*
_output_shapes
: 
h
Variable_38/AssignAssignVariableOpVariable_38&Variable_38/Initializer/ReadVariableOp*
dtype0
h
Variable_38/Read/ReadVariableOpReadVariableOpVariable_38*
_output_shapes	
:�*
dtype0
�
dense/bias_1VarHandleOp*
_output_shapes
: *

debug_namedense/bias_1/*
dtype0*
shape:�*
shared_namedense/bias_1
j
 dense/bias_1/Read/ReadVariableOpReadVariableOpdense/bias_1*
_output_shapes	
:�*
dtype0
�
&Variable_39/Initializer/ReadVariableOpReadVariableOpdense/bias_1*
_class
loc:@Variable_39*
_output_shapes	
:�*
dtype0
�
Variable_39VarHandleOp*
_class
loc:@Variable_39*
_output_shapes
: *

debug_nameVariable_39/*
dtype0*
shape:�*
shared_nameVariable_39
g
,Variable_39/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_39*
_output_shapes
: 
h
Variable_39/AssignAssignVariableOpVariable_39&Variable_39/Initializer/ReadVariableOp*
dtype0
h
Variable_39/Read/ReadVariableOpReadVariableOpVariable_39*
_output_shapes	
:�*
dtype0
�
dense/kernel_1VarHandleOp*
_output_shapes
: *

debug_namedense/kernel_1/*
dtype0*
shape:
��*
shared_namedense/kernel_1
s
"dense/kernel_1/Read/ReadVariableOpReadVariableOpdense/kernel_1* 
_output_shapes
:
��*
dtype0
�
&Variable_40/Initializer/ReadVariableOpReadVariableOpdense/kernel_1*
_class
loc:@Variable_40* 
_output_shapes
:
��*
dtype0
�
Variable_40VarHandleOp*
_class
loc:@Variable_40*
_output_shapes
: *

debug_nameVariable_40/*
dtype0*
shape:
��*
shared_nameVariable_40
g
,Variable_40/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_40*
_output_shapes
: 
h
Variable_40/AssignAssignVariableOpVariable_40&Variable_40/Initializer/ReadVariableOp*
dtype0
m
Variable_40/Read/ReadVariableOpReadVariableOpVariable_40* 
_output_shapes
:
��*
dtype0
�
.multi_head_attention_1/attention_output/bias_1VarHandleOp*
_output_shapes
: *?

debug_name1/multi_head_attention_1/attention_output/bias_1/*
dtype0*
shape:�*?
shared_name0.multi_head_attention_1/attention_output/bias_1
�
Bmulti_head_attention_1/attention_output/bias_1/Read/ReadVariableOpReadVariableOp.multi_head_attention_1/attention_output/bias_1*
_output_shapes	
:�*
dtype0
�
&Variable_41/Initializer/ReadVariableOpReadVariableOp.multi_head_attention_1/attention_output/bias_1*
_class
loc:@Variable_41*
_output_shapes	
:�*
dtype0
�
Variable_41VarHandleOp*
_class
loc:@Variable_41*
_output_shapes
: *

debug_nameVariable_41/*
dtype0*
shape:�*
shared_nameVariable_41
g
,Variable_41/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_41*
_output_shapes
: 
h
Variable_41/AssignAssignVariableOpVariable_41&Variable_41/Initializer/ReadVariableOp*
dtype0
h
Variable_41/Read/ReadVariableOpReadVariableOpVariable_41*
_output_shapes	
:�*
dtype0
�
0multi_head_attention_1/attention_output/kernel_1VarHandleOp*
_output_shapes
: *A

debug_name31multi_head_attention_1/attention_output/kernel_1/*
dtype0*
shape:0�*A
shared_name20multi_head_attention_1/attention_output/kernel_1
�
Dmulti_head_attention_1/attention_output/kernel_1/Read/ReadVariableOpReadVariableOp0multi_head_attention_1/attention_output/kernel_1*#
_output_shapes
:0�*
dtype0
�
&Variable_42/Initializer/ReadVariableOpReadVariableOp0multi_head_attention_1/attention_output/kernel_1*
_class
loc:@Variable_42*#
_output_shapes
:0�*
dtype0
�
Variable_42VarHandleOp*
_class
loc:@Variable_42*
_output_shapes
: *

debug_nameVariable_42/*
dtype0*
shape:0�*
shared_nameVariable_42
g
,Variable_42/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_42*
_output_shapes
: 
h
Variable_42/AssignAssignVariableOpVariable_42&Variable_42/Initializer/ReadVariableOp*
dtype0
p
Variable_42/Read/ReadVariableOpReadVariableOpVariable_42*#
_output_shapes
:0�*
dtype0
�
#multi_head_attention_1/value/bias_1VarHandleOp*
_output_shapes
: *4

debug_name&$multi_head_attention_1/value/bias_1/*
dtype0*
shape
:0*4
shared_name%#multi_head_attention_1/value/bias_1
�
7multi_head_attention_1/value/bias_1/Read/ReadVariableOpReadVariableOp#multi_head_attention_1/value/bias_1*
_output_shapes

:0*
dtype0
�
&Variable_43/Initializer/ReadVariableOpReadVariableOp#multi_head_attention_1/value/bias_1*
_class
loc:@Variable_43*
_output_shapes

:0*
dtype0
�
Variable_43VarHandleOp*
_class
loc:@Variable_43*
_output_shapes
: *

debug_nameVariable_43/*
dtype0*
shape
:0*
shared_nameVariable_43
g
,Variable_43/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_43*
_output_shapes
: 
h
Variable_43/AssignAssignVariableOpVariable_43&Variable_43/Initializer/ReadVariableOp*
dtype0
k
Variable_43/Read/ReadVariableOpReadVariableOpVariable_43*
_output_shapes

:0*
dtype0
�
%multi_head_attention_1/value/kernel_1VarHandleOp*
_output_shapes
: *6

debug_name(&multi_head_attention_1/value/kernel_1/*
dtype0*
shape:�0*6
shared_name'%multi_head_attention_1/value/kernel_1
�
9multi_head_attention_1/value/kernel_1/Read/ReadVariableOpReadVariableOp%multi_head_attention_1/value/kernel_1*#
_output_shapes
:�0*
dtype0
�
&Variable_44/Initializer/ReadVariableOpReadVariableOp%multi_head_attention_1/value/kernel_1*
_class
loc:@Variable_44*#
_output_shapes
:�0*
dtype0
�
Variable_44VarHandleOp*
_class
loc:@Variable_44*
_output_shapes
: *

debug_nameVariable_44/*
dtype0*
shape:�0*
shared_nameVariable_44
g
,Variable_44/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_44*
_output_shapes
: 
h
Variable_44/AssignAssignVariableOpVariable_44&Variable_44/Initializer/ReadVariableOp*
dtype0
p
Variable_44/Read/ReadVariableOpReadVariableOpVariable_44*#
_output_shapes
:�0*
dtype0
�
!multi_head_attention_1/key/bias_1VarHandleOp*
_output_shapes
: *2

debug_name$"multi_head_attention_1/key/bias_1/*
dtype0*
shape
:0*2
shared_name#!multi_head_attention_1/key/bias_1
�
5multi_head_attention_1/key/bias_1/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/key/bias_1*
_output_shapes

:0*
dtype0
�
&Variable_45/Initializer/ReadVariableOpReadVariableOp!multi_head_attention_1/key/bias_1*
_class
loc:@Variable_45*
_output_shapes

:0*
dtype0
�
Variable_45VarHandleOp*
_class
loc:@Variable_45*
_output_shapes
: *

debug_nameVariable_45/*
dtype0*
shape
:0*
shared_nameVariable_45
g
,Variable_45/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_45*
_output_shapes
: 
h
Variable_45/AssignAssignVariableOpVariable_45&Variable_45/Initializer/ReadVariableOp*
dtype0
k
Variable_45/Read/ReadVariableOpReadVariableOpVariable_45*
_output_shapes

:0*
dtype0
�
#multi_head_attention_1/key/kernel_1VarHandleOp*
_output_shapes
: *4

debug_name&$multi_head_attention_1/key/kernel_1/*
dtype0*
shape:�0*4
shared_name%#multi_head_attention_1/key/kernel_1
�
7multi_head_attention_1/key/kernel_1/Read/ReadVariableOpReadVariableOp#multi_head_attention_1/key/kernel_1*#
_output_shapes
:�0*
dtype0
�
&Variable_46/Initializer/ReadVariableOpReadVariableOp#multi_head_attention_1/key/kernel_1*
_class
loc:@Variable_46*#
_output_shapes
:�0*
dtype0
�
Variable_46VarHandleOp*
_class
loc:@Variable_46*
_output_shapes
: *

debug_nameVariable_46/*
dtype0*
shape:�0*
shared_nameVariable_46
g
,Variable_46/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_46*
_output_shapes
: 
h
Variable_46/AssignAssignVariableOpVariable_46&Variable_46/Initializer/ReadVariableOp*
dtype0
p
Variable_46/Read/ReadVariableOpReadVariableOpVariable_46*#
_output_shapes
:�0*
dtype0
�
#multi_head_attention_1/query/bias_1VarHandleOp*
_output_shapes
: *4

debug_name&$multi_head_attention_1/query/bias_1/*
dtype0*
shape
:0*4
shared_name%#multi_head_attention_1/query/bias_1
�
7multi_head_attention_1/query/bias_1/Read/ReadVariableOpReadVariableOp#multi_head_attention_1/query/bias_1*
_output_shapes

:0*
dtype0
�
&Variable_47/Initializer/ReadVariableOpReadVariableOp#multi_head_attention_1/query/bias_1*
_class
loc:@Variable_47*
_output_shapes

:0*
dtype0
�
Variable_47VarHandleOp*
_class
loc:@Variable_47*
_output_shapes
: *

debug_nameVariable_47/*
dtype0*
shape
:0*
shared_nameVariable_47
g
,Variable_47/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_47*
_output_shapes
: 
h
Variable_47/AssignAssignVariableOpVariable_47&Variable_47/Initializer/ReadVariableOp*
dtype0
k
Variable_47/Read/ReadVariableOpReadVariableOpVariable_47*
_output_shapes

:0*
dtype0
�
%multi_head_attention_1/query/kernel_1VarHandleOp*
_output_shapes
: *6

debug_name(&multi_head_attention_1/query/kernel_1/*
dtype0*
shape:�0*6
shared_name'%multi_head_attention_1/query/kernel_1
�
9multi_head_attention_1/query/kernel_1/Read/ReadVariableOpReadVariableOp%multi_head_attention_1/query/kernel_1*#
_output_shapes
:�0*
dtype0
�
&Variable_48/Initializer/ReadVariableOpReadVariableOp%multi_head_attention_1/query/kernel_1*
_class
loc:@Variable_48*#
_output_shapes
:�0*
dtype0
�
Variable_48VarHandleOp*
_class
loc:@Variable_48*
_output_shapes
: *

debug_nameVariable_48/*
dtype0*
shape:�0*
shared_nameVariable_48
g
,Variable_48/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_48*
_output_shapes
: 
h
Variable_48/AssignAssignVariableOpVariable_48&Variable_48/Initializer/ReadVariableOp*
dtype0
p
Variable_48/Read/ReadVariableOpReadVariableOpVariable_48*#
_output_shapes
:�0*
dtype0
�
,multi_head_attention/attention_output/bias_1VarHandleOp*
_output_shapes
: *=

debug_name/-multi_head_attention/attention_output/bias_1/*
dtype0*
shape:�*=
shared_name.,multi_head_attention/attention_output/bias_1
�
@multi_head_attention/attention_output/bias_1/Read/ReadVariableOpReadVariableOp,multi_head_attention/attention_output/bias_1*
_output_shapes	
:�*
dtype0
�
&Variable_49/Initializer/ReadVariableOpReadVariableOp,multi_head_attention/attention_output/bias_1*
_class
loc:@Variable_49*
_output_shapes	
:�*
dtype0
�
Variable_49VarHandleOp*
_class
loc:@Variable_49*
_output_shapes
: *

debug_nameVariable_49/*
dtype0*
shape:�*
shared_nameVariable_49
g
,Variable_49/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_49*
_output_shapes
: 
h
Variable_49/AssignAssignVariableOpVariable_49&Variable_49/Initializer/ReadVariableOp*
dtype0
h
Variable_49/Read/ReadVariableOpReadVariableOpVariable_49*
_output_shapes	
:�*
dtype0
�
.multi_head_attention/attention_output/kernel_1VarHandleOp*
_output_shapes
: *?

debug_name1/multi_head_attention/attention_output/kernel_1/*
dtype0*
shape:0�*?
shared_name0.multi_head_attention/attention_output/kernel_1
�
Bmulti_head_attention/attention_output/kernel_1/Read/ReadVariableOpReadVariableOp.multi_head_attention/attention_output/kernel_1*#
_output_shapes
:0�*
dtype0
�
&Variable_50/Initializer/ReadVariableOpReadVariableOp.multi_head_attention/attention_output/kernel_1*
_class
loc:@Variable_50*#
_output_shapes
:0�*
dtype0
�
Variable_50VarHandleOp*
_class
loc:@Variable_50*
_output_shapes
: *

debug_nameVariable_50/*
dtype0*
shape:0�*
shared_nameVariable_50
g
,Variable_50/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_50*
_output_shapes
: 
h
Variable_50/AssignAssignVariableOpVariable_50&Variable_50/Initializer/ReadVariableOp*
dtype0
p
Variable_50/Read/ReadVariableOpReadVariableOpVariable_50*#
_output_shapes
:0�*
dtype0
�
!multi_head_attention/value/bias_1VarHandleOp*
_output_shapes
: *2

debug_name$"multi_head_attention/value/bias_1/*
dtype0*
shape
:0*2
shared_name#!multi_head_attention/value/bias_1
�
5multi_head_attention/value/bias_1/Read/ReadVariableOpReadVariableOp!multi_head_attention/value/bias_1*
_output_shapes

:0*
dtype0
�
&Variable_51/Initializer/ReadVariableOpReadVariableOp!multi_head_attention/value/bias_1*
_class
loc:@Variable_51*
_output_shapes

:0*
dtype0
�
Variable_51VarHandleOp*
_class
loc:@Variable_51*
_output_shapes
: *

debug_nameVariable_51/*
dtype0*
shape
:0*
shared_nameVariable_51
g
,Variable_51/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_51*
_output_shapes
: 
h
Variable_51/AssignAssignVariableOpVariable_51&Variable_51/Initializer/ReadVariableOp*
dtype0
k
Variable_51/Read/ReadVariableOpReadVariableOpVariable_51*
_output_shapes

:0*
dtype0
�
#multi_head_attention/value/kernel_1VarHandleOp*
_output_shapes
: *4

debug_name&$multi_head_attention/value/kernel_1/*
dtype0*
shape:�0*4
shared_name%#multi_head_attention/value/kernel_1
�
7multi_head_attention/value/kernel_1/Read/ReadVariableOpReadVariableOp#multi_head_attention/value/kernel_1*#
_output_shapes
:�0*
dtype0
�
&Variable_52/Initializer/ReadVariableOpReadVariableOp#multi_head_attention/value/kernel_1*
_class
loc:@Variable_52*#
_output_shapes
:�0*
dtype0
�
Variable_52VarHandleOp*
_class
loc:@Variable_52*
_output_shapes
: *

debug_nameVariable_52/*
dtype0*
shape:�0*
shared_nameVariable_52
g
,Variable_52/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_52*
_output_shapes
: 
h
Variable_52/AssignAssignVariableOpVariable_52&Variable_52/Initializer/ReadVariableOp*
dtype0
p
Variable_52/Read/ReadVariableOpReadVariableOpVariable_52*#
_output_shapes
:�0*
dtype0
�
multi_head_attention/key/bias_1VarHandleOp*
_output_shapes
: *0

debug_name" multi_head_attention/key/bias_1/*
dtype0*
shape
:0*0
shared_name!multi_head_attention/key/bias_1
�
3multi_head_attention/key/bias_1/Read/ReadVariableOpReadVariableOpmulti_head_attention/key/bias_1*
_output_shapes

:0*
dtype0
�
&Variable_53/Initializer/ReadVariableOpReadVariableOpmulti_head_attention/key/bias_1*
_class
loc:@Variable_53*
_output_shapes

:0*
dtype0
�
Variable_53VarHandleOp*
_class
loc:@Variable_53*
_output_shapes
: *

debug_nameVariable_53/*
dtype0*
shape
:0*
shared_nameVariable_53
g
,Variable_53/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_53*
_output_shapes
: 
h
Variable_53/AssignAssignVariableOpVariable_53&Variable_53/Initializer/ReadVariableOp*
dtype0
k
Variable_53/Read/ReadVariableOpReadVariableOpVariable_53*
_output_shapes

:0*
dtype0
�
!multi_head_attention/key/kernel_1VarHandleOp*
_output_shapes
: *2

debug_name$"multi_head_attention/key/kernel_1/*
dtype0*
shape:�0*2
shared_name#!multi_head_attention/key/kernel_1
�
5multi_head_attention/key/kernel_1/Read/ReadVariableOpReadVariableOp!multi_head_attention/key/kernel_1*#
_output_shapes
:�0*
dtype0
�
&Variable_54/Initializer/ReadVariableOpReadVariableOp!multi_head_attention/key/kernel_1*
_class
loc:@Variable_54*#
_output_shapes
:�0*
dtype0
�
Variable_54VarHandleOp*
_class
loc:@Variable_54*
_output_shapes
: *

debug_nameVariable_54/*
dtype0*
shape:�0*
shared_nameVariable_54
g
,Variable_54/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_54*
_output_shapes
: 
h
Variable_54/AssignAssignVariableOpVariable_54&Variable_54/Initializer/ReadVariableOp*
dtype0
p
Variable_54/Read/ReadVariableOpReadVariableOpVariable_54*#
_output_shapes
:�0*
dtype0
�
!multi_head_attention/query/bias_1VarHandleOp*
_output_shapes
: *2

debug_name$"multi_head_attention/query/bias_1/*
dtype0*
shape
:0*2
shared_name#!multi_head_attention/query/bias_1
�
5multi_head_attention/query/bias_1/Read/ReadVariableOpReadVariableOp!multi_head_attention/query/bias_1*
_output_shapes

:0*
dtype0
�
&Variable_55/Initializer/ReadVariableOpReadVariableOp!multi_head_attention/query/bias_1*
_class
loc:@Variable_55*
_output_shapes

:0*
dtype0
�
Variable_55VarHandleOp*
_class
loc:@Variable_55*
_output_shapes
: *

debug_nameVariable_55/*
dtype0*
shape
:0*
shared_nameVariable_55
g
,Variable_55/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_55*
_output_shapes
: 
h
Variable_55/AssignAssignVariableOpVariable_55&Variable_55/Initializer/ReadVariableOp*
dtype0
k
Variable_55/Read/ReadVariableOpReadVariableOpVariable_55*
_output_shapes

:0*
dtype0
�
#multi_head_attention/query/kernel_1VarHandleOp*
_output_shapes
: *4

debug_name&$multi_head_attention/query/kernel_1/*
dtype0*
shape:�0*4
shared_name%#multi_head_attention/query/kernel_1
�
7multi_head_attention/query/kernel_1/Read/ReadVariableOpReadVariableOp#multi_head_attention/query/kernel_1*#
_output_shapes
:�0*
dtype0
�
&Variable_56/Initializer/ReadVariableOpReadVariableOp#multi_head_attention/query/kernel_1*
_class
loc:@Variable_56*#
_output_shapes
:�0*
dtype0
�
Variable_56VarHandleOp*
_class
loc:@Variable_56*
_output_shapes
: *

debug_nameVariable_56/*
dtype0*
shape:�0*
shared_nameVariable_56
g
,Variable_56/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_56*
_output_shapes
: 
h
Variable_56/AssignAssignVariableOpVariable_56&Variable_56/Initializer/ReadVariableOp*
dtype0
p
Variable_56/Read/ReadVariableOpReadVariableOpVariable_56*#
_output_shapes
:�0*
dtype0
�
layer_normalization_1/beta_1VarHandleOp*
_output_shapes
: *-

debug_namelayer_normalization_1/beta_1/*
dtype0*
shape:�*-
shared_namelayer_normalization_1/beta_1
�
0layer_normalization_1/beta_1/Read/ReadVariableOpReadVariableOplayer_normalization_1/beta_1*
_output_shapes	
:�*
dtype0
�
&Variable_57/Initializer/ReadVariableOpReadVariableOplayer_normalization_1/beta_1*
_class
loc:@Variable_57*
_output_shapes	
:�*
dtype0
�
Variable_57VarHandleOp*
_class
loc:@Variable_57*
_output_shapes
: *

debug_nameVariable_57/*
dtype0*
shape:�*
shared_nameVariable_57
g
,Variable_57/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_57*
_output_shapes
: 
h
Variable_57/AssignAssignVariableOpVariable_57&Variable_57/Initializer/ReadVariableOp*
dtype0
h
Variable_57/Read/ReadVariableOpReadVariableOpVariable_57*
_output_shapes	
:�*
dtype0
�
layer_normalization_1/gamma_1VarHandleOp*
_output_shapes
: *.

debug_name layer_normalization_1/gamma_1/*
dtype0*
shape:�*.
shared_namelayer_normalization_1/gamma_1
�
1layer_normalization_1/gamma_1/Read/ReadVariableOpReadVariableOplayer_normalization_1/gamma_1*
_output_shapes	
:�*
dtype0
�
&Variable_58/Initializer/ReadVariableOpReadVariableOplayer_normalization_1/gamma_1*
_class
loc:@Variable_58*
_output_shapes	
:�*
dtype0
�
Variable_58VarHandleOp*
_class
loc:@Variable_58*
_output_shapes
: *

debug_nameVariable_58/*
dtype0*
shape:�*
shared_nameVariable_58
g
,Variable_58/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_58*
_output_shapes
: 
h
Variable_58/AssignAssignVariableOpVariable_58&Variable_58/Initializer/ReadVariableOp*
dtype0
h
Variable_58/Read/ReadVariableOpReadVariableOpVariable_58*
_output_shapes	
:�*
dtype0
�
layer_normalization/beta_1VarHandleOp*
_output_shapes
: *+

debug_namelayer_normalization/beta_1/*
dtype0*
shape:�*+
shared_namelayer_normalization/beta_1
�
.layer_normalization/beta_1/Read/ReadVariableOpReadVariableOplayer_normalization/beta_1*
_output_shapes	
:�*
dtype0
�
&Variable_59/Initializer/ReadVariableOpReadVariableOplayer_normalization/beta_1*
_class
loc:@Variable_59*
_output_shapes	
:�*
dtype0
�
Variable_59VarHandleOp*
_class
loc:@Variable_59*
_output_shapes
: *

debug_nameVariable_59/*
dtype0*
shape:�*
shared_nameVariable_59
g
,Variable_59/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_59*
_output_shapes
: 
h
Variable_59/AssignAssignVariableOpVariable_59&Variable_59/Initializer/ReadVariableOp*
dtype0
h
Variable_59/Read/ReadVariableOpReadVariableOpVariable_59*
_output_shapes	
:�*
dtype0
�
layer_normalization/gamma_1VarHandleOp*
_output_shapes
: *,

debug_namelayer_normalization/gamma_1/*
dtype0*
shape:�*,
shared_namelayer_normalization/gamma_1
�
/layer_normalization/gamma_1/Read/ReadVariableOpReadVariableOplayer_normalization/gamma_1*
_output_shapes	
:�*
dtype0
�
&Variable_60/Initializer/ReadVariableOpReadVariableOplayer_normalization/gamma_1*
_class
loc:@Variable_60*
_output_shapes	
:�*
dtype0
�
Variable_60VarHandleOp*
_class
loc:@Variable_60*
_output_shapes
: *

debug_nameVariable_60/*
dtype0*
shape:�*
shared_nameVariable_60
g
,Variable_60/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_60*
_output_shapes
: 
h
Variable_60/AssignAssignVariableOpVariable_60&Variable_60/Initializer/ReadVariableOp*
dtype0
h
Variable_60/Read/ReadVariableOpReadVariableOpVariable_60*
_output_shapes	
:�*
dtype0
|
serve_explanation_inputPlaceholder*(
_output_shapes
:����������*
dtype0*
shape:����������
u
serve_text_inputPlaceholder*(
_output_shapes
:����������*
dtype0*
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserve_explanation_inputserve_text_inputlayer_normalization_1/gamma_1layer_normalization_1/beta_1layer_normalization/gamma_1layer_normalization/beta_1%multi_head_attention_1/query/kernel_1#multi_head_attention_1/query/bias_1#multi_head_attention_1/key/kernel_1!multi_head_attention_1/key/bias_1%multi_head_attention_1/value/kernel_1#multi_head_attention_1/value/bias_10multi_head_attention_1/attention_output/kernel_1.multi_head_attention_1/attention_output/bias_1#multi_head_attention/query/kernel_1!multi_head_attention/query/bias_1!multi_head_attention/key/kernel_1multi_head_attention/key/bias_1#multi_head_attention/value/kernel_1!multi_head_attention/value/bias_1.multi_head_attention/attention_output/kernel_1,multi_head_attention/attention_output/bias_1dense/kernel_1dense/bias_1layer_normalization_2/gamma_1layer_normalization_2/beta_1dense_1/kernel_1dense_1/bias_1layer_normalization_3/gamma_1layer_normalization_3/beta_1dense_2/kernel_1dense_2/bias_1dense_3/kernel_1dense_3/bias_1layer_normalization_4/gamma_1layer_normalization_4/beta_1dense_6/kernel_1dense_6/bias_1dense_4/kernel_1dense_4/bias_1layer_normalization_7/gamma_1layer_normalization_7/beta_1layer_normalization_5/gamma_1layer_normalization_5/beta_1dense_7/kernel_1dense_7/bias_1dense_5/kernel_1dense_5/bias_1layer_normalization_8/gamma_1layer_normalization_8/beta_1layer_normalization_6/gamma_1layer_normalization_6/beta_1completeness/kernel_1completeness/bias_1understanding/kernel_1understanding/bias_1*C
Tin<
:28*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*X
_read_only_resource_inputs:
86	
 !"#$%&'()*+,-./01234567*2
config_proto" 

CPU

GPU 2J 8� �J *6
f1R/
-__inference_signature_wrapper___call___138211
�
!serving_default_explanation_inputPlaceholder*(
_output_shapes
:����������*
dtype0*
shape:����������

serving_default_text_inputPlaceholder*(
_output_shapes
:����������*
dtype0*
shape:����������
�
StatefulPartitionedCall_1StatefulPartitionedCall!serving_default_explanation_inputserving_default_text_inputlayer_normalization_1/gamma_1layer_normalization_1/beta_1layer_normalization/gamma_1layer_normalization/beta_1%multi_head_attention_1/query/kernel_1#multi_head_attention_1/query/bias_1#multi_head_attention_1/key/kernel_1!multi_head_attention_1/key/bias_1%multi_head_attention_1/value/kernel_1#multi_head_attention_1/value/bias_10multi_head_attention_1/attention_output/kernel_1.multi_head_attention_1/attention_output/bias_1#multi_head_attention/query/kernel_1!multi_head_attention/query/bias_1!multi_head_attention/key/kernel_1multi_head_attention/key/bias_1#multi_head_attention/value/kernel_1!multi_head_attention/value/bias_1.multi_head_attention/attention_output/kernel_1,multi_head_attention/attention_output/bias_1dense/kernel_1dense/bias_1layer_normalization_2/gamma_1layer_normalization_2/beta_1dense_1/kernel_1dense_1/bias_1layer_normalization_3/gamma_1layer_normalization_3/beta_1dense_2/kernel_1dense_2/bias_1dense_3/kernel_1dense_3/bias_1layer_normalization_4/gamma_1layer_normalization_4/beta_1dense_6/kernel_1dense_6/bias_1dense_4/kernel_1dense_4/bias_1layer_normalization_7/gamma_1layer_normalization_7/beta_1layer_normalization_5/gamma_1layer_normalization_5/beta_1dense_7/kernel_1dense_7/bias_1dense_5/kernel_1dense_5/bias_1layer_normalization_8/gamma_1layer_normalization_8/beta_1layer_normalization_6/gamma_1layer_normalization_6/beta_1completeness/kernel_1completeness/bias_1understanding/kernel_1understanding/bias_1*C
Tin<
:28*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*X
_read_only_resource_inputs:
86	
 !"#$%&'()*+,-./01234567*2
config_proto" 

CPU

GPU 2J 8� �J *6
f1R/
-__inference_signature_wrapper___call___138327

NoOpNoOp
�[
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�[
value�[B�[ B�Z
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures*
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
 24
!25
"26
#27
$28
%29
&30
'31
(32
)33
*34
+35
,36
-37
.38
/39
040
141
242
343
444
545
646
747
848
949
:50
;51
<52
=53
>54
?55
@56
A57
B58
C59
D60*
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
!24
"25
#26
$27
&28
'29
(30
)31
*32
+33
-34
.35
/36
037
138
239
340
441
742
843
944
:45
;46
<47
=48
>49
A50
B51
C52
D53*
5
 0
%1
,2
53
64
?5
@6*
�
E0
F1
G2
H3
I4
J5
K6
L7
M8
N9
O10
P11
Q12
R13
S14
T15
U16
V17
W18
X19
Y20
Z21
[22
\23
]24
^25
_26
`27
a28
b29
c30
d31
e32
f33
g34
h35
i36
j37
k38
l39
m40
n41
o42
p43
q44
r45
s46
t47
u48
v49
w50
x51
y52
z53*
* 

{trace_0* 
"
	|serve
}serving_default* 
KE
VARIABLE_VALUEVariable_60&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_59&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_58&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_57&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_56&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_55&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_54&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_53&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_52&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_51&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_50'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_49'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_48'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_47'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_46'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_45'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_44'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_43'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_42'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_41'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_40'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_39'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_38'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_37'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_36'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_35'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_34'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_33'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_32'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_31'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_30'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_29'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_28'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_27'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_26'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_25'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_24'variables/36/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_23'variables/37/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_22'variables/38/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_21'variables/39/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_20'variables/40/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_19'variables/41/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_18'variables/42/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_17'variables/43/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_16'variables/44/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_15'variables/45/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_14'variables/46/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_13'variables/47/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_12'variables/48/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_11'variables/49/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_10'variables/50/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_9'variables/51/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_8'variables/52/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_7'variables/53/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_6'variables/54/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_5'variables/55/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_4'variables/56/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_3'variables/57/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_2'variables/58/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_1'variables/59/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEVariable'variables/60/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE#multi_head_attention_1/query/bias_1+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUE%multi_head_attention_1/value/kernel_1+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE!multi_head_attention/key/kernel_1+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEdense_1/kernel_1+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUElayer_normalization/beta_1+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE0multi_head_attention_1/attention_output/kernel_1+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEdense_1/bias_1+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUElayer_normalization_3/beta_1+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUElayer_normalization_7/beta_1+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEdense_7/kernel_1+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUElayer_normalization_1/beta_1,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE#multi_head_attention/query/kernel_1,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEdense_4/kernel_1,_all_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEdense_7/bias_1,_all_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEdense_5/kernel_1,_all_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUElayer_normalization_6/gamma_1,_all_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEunderstanding/bias_1,_all_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE%multi_head_attention_1/query/kernel_1,_all_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEdense/kernel_1,_all_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUElayer_normalization_4/gamma_1,_all_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEdense_6/kernel_1,_all_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEdense_4/bias_1,_all_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUElayer_normalization_5/beta_1,_all_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEdense_5/bias_1,_all_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUElayer_normalization_1/gamma_1,_all_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE.multi_head_attention_1/attention_output/bias_1,_all_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE,multi_head_attention/attention_output/bias_1,_all_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUElayer_normalization_2/gamma_1,_all_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEdense_2/kernel_1,_all_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEdense_6/bias_1,_all_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEunderstanding/kernel_1,_all_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUElayer_normalization/gamma_1,_all_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE#multi_head_attention_1/value/bias_1,_all_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE!multi_head_attention/value/bias_1,_all_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEdense/bias_1,_all_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEdense_2/bias_1,_all_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUElayer_normalization_5/gamma_1,_all_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUElayer_normalization_8/beta_1,_all_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUElayer_normalization_6/beta_1,_all_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE!multi_head_attention_1/key/bias_1,_all_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE#multi_head_attention/value/kernel_1,_all_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUElayer_normalization_3/gamma_1,_all_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEdense_3/kernel_1,_all_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUElayer_normalization_4/beta_1,_all_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUElayer_normalization_7/gamma_1,_all_variables/44/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEcompleteness/kernel_1,_all_variables/45/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE#multi_head_attention_1/key/kernel_1,_all_variables/46/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE!multi_head_attention/query/bias_1,_all_variables/47/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEmulti_head_attention/key/bias_1,_all_variables/48/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE.multi_head_attention/attention_output/kernel_1,_all_variables/49/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUElayer_normalization_2/beta_1,_all_variables/50/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEdense_3/bias_1,_all_variables/51/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUElayer_normalization_8/gamma_1,_all_variables/52/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEcompleteness/bias_1,_all_variables/53/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable_60Variable_59Variable_58Variable_57Variable_56Variable_55Variable_54Variable_53Variable_52Variable_51Variable_50Variable_49Variable_48Variable_47Variable_46Variable_45Variable_44Variable_43Variable_42Variable_41Variable_40Variable_39Variable_38Variable_37Variable_36Variable_35Variable_34Variable_33Variable_32Variable_31Variable_30Variable_29Variable_28Variable_27Variable_26Variable_25Variable_24Variable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable#multi_head_attention_1/query/bias_1%multi_head_attention_1/value/kernel_1!multi_head_attention/key/kernel_1dense_1/kernel_1layer_normalization/beta_10multi_head_attention_1/attention_output/kernel_1dense_1/bias_1layer_normalization_3/beta_1layer_normalization_7/beta_1dense_7/kernel_1layer_normalization_1/beta_1#multi_head_attention/query/kernel_1dense_4/kernel_1dense_7/bias_1dense_5/kernel_1layer_normalization_6/gamma_1understanding/bias_1%multi_head_attention_1/query/kernel_1dense/kernel_1layer_normalization_4/gamma_1dense_6/kernel_1dense_4/bias_1layer_normalization_5/beta_1dense_5/bias_1layer_normalization_1/gamma_1.multi_head_attention_1/attention_output/bias_1,multi_head_attention/attention_output/bias_1layer_normalization_2/gamma_1dense_2/kernel_1dense_6/bias_1understanding/kernel_1layer_normalization/gamma_1#multi_head_attention_1/value/bias_1!multi_head_attention/value/bias_1dense/bias_1dense_2/bias_1layer_normalization_5/gamma_1layer_normalization_8/beta_1layer_normalization_6/beta_1!multi_head_attention_1/key/bias_1#multi_head_attention/value/kernel_1layer_normalization_3/gamma_1dense_3/kernel_1layer_normalization_4/beta_1layer_normalization_7/gamma_1completeness/kernel_1#multi_head_attention_1/key/kernel_1!multi_head_attention/query/bias_1multi_head_attention/key/bias_1.multi_head_attention/attention_output/kernel_1layer_normalization_2/beta_1dense_3/bias_1layer_normalization_8/gamma_1completeness/bias_1Const*�
Tiny
w2u*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *(
f#R!
__inference__traced_save_139289
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable_60Variable_59Variable_58Variable_57Variable_56Variable_55Variable_54Variable_53Variable_52Variable_51Variable_50Variable_49Variable_48Variable_47Variable_46Variable_45Variable_44Variable_43Variable_42Variable_41Variable_40Variable_39Variable_38Variable_37Variable_36Variable_35Variable_34Variable_33Variable_32Variable_31Variable_30Variable_29Variable_28Variable_27Variable_26Variable_25Variable_24Variable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable#multi_head_attention_1/query/bias_1%multi_head_attention_1/value/kernel_1!multi_head_attention/key/kernel_1dense_1/kernel_1layer_normalization/beta_10multi_head_attention_1/attention_output/kernel_1dense_1/bias_1layer_normalization_3/beta_1layer_normalization_7/beta_1dense_7/kernel_1layer_normalization_1/beta_1#multi_head_attention/query/kernel_1dense_4/kernel_1dense_7/bias_1dense_5/kernel_1layer_normalization_6/gamma_1understanding/bias_1%multi_head_attention_1/query/kernel_1dense/kernel_1layer_normalization_4/gamma_1dense_6/kernel_1dense_4/bias_1layer_normalization_5/beta_1dense_5/bias_1layer_normalization_1/gamma_1.multi_head_attention_1/attention_output/bias_1,multi_head_attention/attention_output/bias_1layer_normalization_2/gamma_1dense_2/kernel_1dense_6/bias_1understanding/kernel_1layer_normalization/gamma_1#multi_head_attention_1/value/bias_1!multi_head_attention/value/bias_1dense/bias_1dense_2/bias_1layer_normalization_5/gamma_1layer_normalization_8/beta_1layer_normalization_6/beta_1!multi_head_attention_1/key/bias_1#multi_head_attention/value/kernel_1layer_normalization_3/gamma_1dense_3/kernel_1layer_normalization_4/beta_1layer_normalization_7/gamma_1completeness/kernel_1#multi_head_attention_1/key/kernel_1!multi_head_attention/query/bias_1multi_head_attention/key/bias_1.multi_head_attention/attention_output/kernel_1layer_normalization_2/beta_1dense_3/bias_1layer_normalization_8/gamma_1completeness/bias_1*
Tinx
v2t*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *+
f&R$
"__inference__traced_restore_139643��
ρ
�G
"__inference__traced_restore_139643
file_prefix+
assignvariableop_variable_60:	�-
assignvariableop_1_variable_59:	�-
assignvariableop_2_variable_58:	�-
assignvariableop_3_variable_57:	�5
assignvariableop_4_variable_56:�00
assignvariableop_5_variable_55:05
assignvariableop_6_variable_54:�00
assignvariableop_7_variable_53:05
assignvariableop_8_variable_52:�00
assignvariableop_9_variable_51:06
assignvariableop_10_variable_50:0�.
assignvariableop_11_variable_49:	�6
assignvariableop_12_variable_48:�01
assignvariableop_13_variable_47:06
assignvariableop_14_variable_46:�01
assignvariableop_15_variable_45:06
assignvariableop_16_variable_44:�01
assignvariableop_17_variable_43:06
assignvariableop_18_variable_42:0�.
assignvariableop_19_variable_41:	�3
assignvariableop_20_variable_40:
��.
assignvariableop_21_variable_39:	�.
assignvariableop_22_variable_38:	�.
assignvariableop_23_variable_37:	�-
assignvariableop_24_variable_36:	3
assignvariableop_25_variable_35:
��.
assignvariableop_26_variable_34:	�.
assignvariableop_27_variable_33:	�.
assignvariableop_28_variable_32:	�-
assignvariableop_29_variable_31:	3
assignvariableop_30_variable_30:
��.
assignvariableop_31_variable_29:	�3
assignvariableop_32_variable_28:
��.
assignvariableop_33_variable_27:	�.
assignvariableop_34_variable_26:	�.
assignvariableop_35_variable_25:	�-
assignvariableop_36_variable_24:	3
assignvariableop_37_variable_23:
��.
assignvariableop_38_variable_22:	�3
assignvariableop_39_variable_21:
��.
assignvariableop_40_variable_20:	�.
assignvariableop_41_variable_19:	�.
assignvariableop_42_variable_18:	�.
assignvariableop_43_variable_17:	�.
assignvariableop_44_variable_16:	�-
assignvariableop_45_variable_15:	-
assignvariableop_46_variable_14:	3
assignvariableop_47_variable_13:
��.
assignvariableop_48_variable_12:	�3
assignvariableop_49_variable_11:
��.
assignvariableop_50_variable_10:	�-
assignvariableop_51_variable_9:	�-
assignvariableop_52_variable_8:	�-
assignvariableop_53_variable_7:	�-
assignvariableop_54_variable_6:	�,
assignvariableop_55_variable_5:	,
assignvariableop_56_variable_4:	1
assignvariableop_57_variable_3:	�,
assignvariableop_58_variable_2:1
assignvariableop_59_variable_1:	�*
assignvariableop_60_variable:I
7assignvariableop_61_multi_head_attention_1_query_bias_1:0P
9assignvariableop_62_multi_head_attention_1_value_kernel_1:�0L
5assignvariableop_63_multi_head_attention_key_kernel_1:�08
$assignvariableop_64_dense_1_kernel_1:
��=
.assignvariableop_65_layer_normalization_beta_1:	�[
Dassignvariableop_66_multi_head_attention_1_attention_output_kernel_1:0�1
"assignvariableop_67_dense_1_bias_1:	�?
0assignvariableop_68_layer_normalization_3_beta_1:	�?
0assignvariableop_69_layer_normalization_7_beta_1:	�8
$assignvariableop_70_dense_7_kernel_1:
��?
0assignvariableop_71_layer_normalization_1_beta_1:	�N
7assignvariableop_72_multi_head_attention_query_kernel_1:�08
$assignvariableop_73_dense_4_kernel_1:
��1
"assignvariableop_74_dense_7_bias_1:	�8
$assignvariableop_75_dense_5_kernel_1:
��@
1assignvariableop_76_layer_normalization_6_gamma_1:	�6
(assignvariableop_77_understanding_bias_1:P
9assignvariableop_78_multi_head_attention_1_query_kernel_1:�06
"assignvariableop_79_dense_kernel_1:
��@
1assignvariableop_80_layer_normalization_4_gamma_1:	�8
$assignvariableop_81_dense_6_kernel_1:
��1
"assignvariableop_82_dense_4_bias_1:	�?
0assignvariableop_83_layer_normalization_5_beta_1:	�1
"assignvariableop_84_dense_5_bias_1:	�@
1assignvariableop_85_layer_normalization_1_gamma_1:	�Q
Bassignvariableop_86_multi_head_attention_1_attention_output_bias_1:	�O
@assignvariableop_87_multi_head_attention_attention_output_bias_1:	�@
1assignvariableop_88_layer_normalization_2_gamma_1:	�8
$assignvariableop_89_dense_2_kernel_1:
��1
"assignvariableop_90_dense_6_bias_1:	�=
*assignvariableop_91_understanding_kernel_1:	�>
/assignvariableop_92_layer_normalization_gamma_1:	�I
7assignvariableop_93_multi_head_attention_1_value_bias_1:0G
5assignvariableop_94_multi_head_attention_value_bias_1:0/
 assignvariableop_95_dense_bias_1:	�1
"assignvariableop_96_dense_2_bias_1:	�@
1assignvariableop_97_layer_normalization_5_gamma_1:	�?
0assignvariableop_98_layer_normalization_8_beta_1:	�?
0assignvariableop_99_layer_normalization_6_beta_1:	�H
6assignvariableop_100_multi_head_attention_1_key_bias_1:0O
8assignvariableop_101_multi_head_attention_value_kernel_1:�0A
2assignvariableop_102_layer_normalization_3_gamma_1:	�9
%assignvariableop_103_dense_3_kernel_1:
��@
1assignvariableop_104_layer_normalization_4_beta_1:	�A
2assignvariableop_105_layer_normalization_7_gamma_1:	�=
*assignvariableop_106_completeness_kernel_1:	�O
8assignvariableop_107_multi_head_attention_1_key_kernel_1:�0H
6assignvariableop_108_multi_head_attention_query_bias_1:0F
4assignvariableop_109_multi_head_attention_key_bias_1:0Z
Cassignvariableop_110_multi_head_attention_attention_output_kernel_1:0�@
1assignvariableop_111_layer_normalization_2_beta_1:	�2
#assignvariableop_112_dense_3_bias_1:	�A
2assignvariableop_113_layer_normalization_8_gamma_1:	�6
(assignvariableop_114_completeness_bias_1:
identity_116��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_100�AssignVariableOp_101�AssignVariableOp_102�AssignVariableOp_103�AssignVariableOp_104�AssignVariableOp_105�AssignVariableOp_106�AssignVariableOp_107�AssignVariableOp_108�AssignVariableOp_109�AssignVariableOp_11�AssignVariableOp_110�AssignVariableOp_111�AssignVariableOp_112�AssignVariableOp_113�AssignVariableOp_114�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_88�AssignVariableOp_89�AssignVariableOp_9�AssignVariableOp_90�AssignVariableOp_91�AssignVariableOp_92�AssignVariableOp_93�AssignVariableOp_94�AssignVariableOp_95�AssignVariableOp_96�AssignVariableOp_97�AssignVariableOp_98�AssignVariableOp_99�'
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:t*
dtype0*�'
value�'B�'tB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB'variables/46/.ATTRIBUTES/VARIABLE_VALUEB'variables/47/.ATTRIBUTES/VARIABLE_VALUEB'variables/48/.ATTRIBUTES/VARIABLE_VALUEB'variables/49/.ATTRIBUTES/VARIABLE_VALUEB'variables/50/.ATTRIBUTES/VARIABLE_VALUEB'variables/51/.ATTRIBUTES/VARIABLE_VALUEB'variables/52/.ATTRIBUTES/VARIABLE_VALUEB'variables/53/.ATTRIBUTES/VARIABLE_VALUEB'variables/54/.ATTRIBUTES/VARIABLE_VALUEB'variables/55/.ATTRIBUTES/VARIABLE_VALUEB'variables/56/.ATTRIBUTES/VARIABLE_VALUEB'variables/57/.ATTRIBUTES/VARIABLE_VALUEB'variables/58/.ATTRIBUTES/VARIABLE_VALUEB'variables/59/.ATTRIBUTES/VARIABLE_VALUEB'variables/60/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/12/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/13/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/14/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/15/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/16/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/17/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/18/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/19/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/20/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/21/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/22/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/23/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/24/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/25/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/26/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/27/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/28/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/29/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/30/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/31/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/32/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/33/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/34/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/35/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/36/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/37/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/38/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/39/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/40/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/41/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/42/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/43/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/44/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/45/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/46/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/47/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/48/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/49/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/50/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/51/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/52/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/53/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:t*
dtype0*�
value�B�tB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*�
dtypesx
v2t							[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_60Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_59Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_58Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_57Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_56Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_55Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_54Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_53Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_52Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_variable_51Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_variable_50Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_variable_49Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_variable_48Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_variable_47Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_variable_46Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_variable_45Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_variable_44Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_variable_43Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_variable_42Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_variable_41Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_variable_40Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_variable_39Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_variable_38Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_variable_37Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_variable_36Identity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_variable_35Identity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_variable_34Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_variable_33Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_variable_32Identity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_variable_31Identity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpassignvariableop_30_variable_30Identity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpassignvariableop_31_variable_29Identity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpassignvariableop_32_variable_28Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpassignvariableop_33_variable_27Identity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpassignvariableop_34_variable_26Identity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpassignvariableop_35_variable_25Identity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpassignvariableop_36_variable_24Identity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOpassignvariableop_37_variable_23Identity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpassignvariableop_38_variable_22Identity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpassignvariableop_39_variable_21Identity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpassignvariableop_40_variable_20Identity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpassignvariableop_41_variable_19Identity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpassignvariableop_42_variable_18Identity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOpassignvariableop_43_variable_17Identity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOpassignvariableop_44_variable_16Identity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_45AssignVariableOpassignvariableop_45_variable_15Identity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpassignvariableop_46_variable_14Identity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOpassignvariableop_47_variable_13Identity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOpassignvariableop_48_variable_12Identity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOpassignvariableop_49_variable_11Identity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOpassignvariableop_50_variable_10Identity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOpassignvariableop_51_variable_9Identity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOpassignvariableop_52_variable_8Identity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOpassignvariableop_53_variable_7Identity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOpassignvariableop_54_variable_6Identity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_55AssignVariableOpassignvariableop_55_variable_5Identity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_56AssignVariableOpassignvariableop_56_variable_4Identity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOpassignvariableop_57_variable_3Identity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOpassignvariableop_58_variable_2Identity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOpassignvariableop_59_variable_1Identity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOpassignvariableop_60_variableIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp7assignvariableop_61_multi_head_attention_1_query_bias_1Identity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp9assignvariableop_62_multi_head_attention_1_value_kernel_1Identity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp5assignvariableop_63_multi_head_attention_key_kernel_1Identity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp$assignvariableop_64_dense_1_kernel_1Identity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp.assignvariableop_65_layer_normalization_beta_1Identity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOpDassignvariableop_66_multi_head_attention_1_attention_output_kernel_1Identity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp"assignvariableop_67_dense_1_bias_1Identity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp0assignvariableop_68_layer_normalization_3_beta_1Identity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp0assignvariableop_69_layer_normalization_7_beta_1Identity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp$assignvariableop_70_dense_7_kernel_1Identity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp0assignvariableop_71_layer_normalization_1_beta_1Identity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp7assignvariableop_72_multi_head_attention_query_kernel_1Identity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp$assignvariableop_73_dense_4_kernel_1Identity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp"assignvariableop_74_dense_7_bias_1Identity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp$assignvariableop_75_dense_5_kernel_1Identity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp1assignvariableop_76_layer_normalization_6_gamma_1Identity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp(assignvariableop_77_understanding_bias_1Identity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOp9assignvariableop_78_multi_head_attention_1_query_kernel_1Identity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp"assignvariableop_79_dense_kernel_1Identity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOp1assignvariableop_80_layer_normalization_4_gamma_1Identity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOp$assignvariableop_81_dense_6_kernel_1Identity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOp"assignvariableop_82_dense_4_bias_1Identity_82:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOp0assignvariableop_83_layer_normalization_5_beta_1Identity_83:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOp"assignvariableop_84_dense_5_bias_1Identity_84:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOp1assignvariableop_85_layer_normalization_1_gamma_1Identity_85:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOpBassignvariableop_86_multi_head_attention_1_attention_output_bias_1Identity_86:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_87AssignVariableOp@assignvariableop_87_multi_head_attention_attention_output_bias_1Identity_87:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_88AssignVariableOp1assignvariableop_88_layer_normalization_2_gamma_1Identity_88:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_89AssignVariableOp$assignvariableop_89_dense_2_kernel_1Identity_89:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_90AssignVariableOp"assignvariableop_90_dense_6_bias_1Identity_90:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_91AssignVariableOp*assignvariableop_91_understanding_kernel_1Identity_91:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_92AssignVariableOp/assignvariableop_92_layer_normalization_gamma_1Identity_92:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_93AssignVariableOp7assignvariableop_93_multi_head_attention_1_value_bias_1Identity_93:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_94AssignVariableOp5assignvariableop_94_multi_head_attention_value_bias_1Identity_94:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_95AssignVariableOp assignvariableop_95_dense_bias_1Identity_95:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_96AssignVariableOp"assignvariableop_96_dense_2_bias_1Identity_96:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_97AssignVariableOp1assignvariableop_97_layer_normalization_5_gamma_1Identity_97:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_98AssignVariableOp0assignvariableop_98_layer_normalization_8_beta_1Identity_98:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_99AssignVariableOp0assignvariableop_99_layer_normalization_6_beta_1Identity_99:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_100AssignVariableOp6assignvariableop_100_multi_head_attention_1_key_bias_1Identity_100:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_101AssignVariableOp8assignvariableop_101_multi_head_attention_value_kernel_1Identity_101:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_102AssignVariableOp2assignvariableop_102_layer_normalization_3_gamma_1Identity_102:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_103AssignVariableOp%assignvariableop_103_dense_3_kernel_1Identity_103:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_104AssignVariableOp1assignvariableop_104_layer_normalization_4_beta_1Identity_104:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_105AssignVariableOp2assignvariableop_105_layer_normalization_7_gamma_1Identity_105:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_106AssignVariableOp*assignvariableop_106_completeness_kernel_1Identity_106:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_107AssignVariableOp8assignvariableop_107_multi_head_attention_1_key_kernel_1Identity_107:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_108AssignVariableOp6assignvariableop_108_multi_head_attention_query_bias_1Identity_108:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_109AssignVariableOp4assignvariableop_109_multi_head_attention_key_bias_1Identity_109:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_110AssignVariableOpCassignvariableop_110_multi_head_attention_attention_output_kernel_1Identity_110:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_111AssignVariableOp1assignvariableop_111_layer_normalization_2_beta_1Identity_111:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_112AssignVariableOp#assignvariableop_112_dense_3_bias_1Identity_112:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_113AssignVariableOp2assignvariableop_113_layer_normalization_8_gamma_1Identity_113:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_114AssignVariableOp(assignvariableop_114_completeness_bias_1Identity_114:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_115Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_116IdentityIdentity_115:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
_output_shapes
 "%
identity_116Identity_116:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_992(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:3s/
-
_user_specified_namecompleteness/bias_1:=r9
7
_user_specified_namelayer_normalization_8/gamma_1:.q*
(
_user_specified_namedense_3/bias_1:<p8
6
_user_specified_namelayer_normalization_2/beta_1:NoJ
H
_user_specified_name0.multi_head_attention/attention_output/kernel_1:?n;
9
_user_specified_name!multi_head_attention/key/bias_1:Am=
;
_user_specified_name#!multi_head_attention/query/bias_1:Cl?
=
_user_specified_name%#multi_head_attention_1/key/kernel_1:5k1
/
_user_specified_namecompleteness/kernel_1:=j9
7
_user_specified_namelayer_normalization_7/gamma_1:<i8
6
_user_specified_namelayer_normalization_4/beta_1:0h,
*
_user_specified_namedense_3/kernel_1:=g9
7
_user_specified_namelayer_normalization_3/gamma_1:Cf?
=
_user_specified_name%#multi_head_attention/value/kernel_1:Ae=
;
_user_specified_name#!multi_head_attention_1/key/bias_1:<d8
6
_user_specified_namelayer_normalization_6/beta_1:<c8
6
_user_specified_namelayer_normalization_8/beta_1:=b9
7
_user_specified_namelayer_normalization_5/gamma_1:.a*
(
_user_specified_namedense_2/bias_1:,`(
&
_user_specified_namedense/bias_1:A_=
;
_user_specified_name#!multi_head_attention/value/bias_1:C^?
=
_user_specified_name%#multi_head_attention_1/value/bias_1:;]7
5
_user_specified_namelayer_normalization/gamma_1:6\2
0
_user_specified_nameunderstanding/kernel_1:.[*
(
_user_specified_namedense_6/bias_1:0Z,
*
_user_specified_namedense_2/kernel_1:=Y9
7
_user_specified_namelayer_normalization_2/gamma_1:LXH
F
_user_specified_name.,multi_head_attention/attention_output/bias_1:NWJ
H
_user_specified_name0.multi_head_attention_1/attention_output/bias_1:=V9
7
_user_specified_namelayer_normalization_1/gamma_1:.U*
(
_user_specified_namedense_5/bias_1:<T8
6
_user_specified_namelayer_normalization_5/beta_1:.S*
(
_user_specified_namedense_4/bias_1:0R,
*
_user_specified_namedense_6/kernel_1:=Q9
7
_user_specified_namelayer_normalization_4/gamma_1:.P*
(
_user_specified_namedense/kernel_1:EOA
?
_user_specified_name'%multi_head_attention_1/query/kernel_1:4N0
.
_user_specified_nameunderstanding/bias_1:=M9
7
_user_specified_namelayer_normalization_6/gamma_1:0L,
*
_user_specified_namedense_5/kernel_1:.K*
(
_user_specified_namedense_7/bias_1:0J,
*
_user_specified_namedense_4/kernel_1:CI?
=
_user_specified_name%#multi_head_attention/query/kernel_1:<H8
6
_user_specified_namelayer_normalization_1/beta_1:0G,
*
_user_specified_namedense_7/kernel_1:<F8
6
_user_specified_namelayer_normalization_7/beta_1:<E8
6
_user_specified_namelayer_normalization_3/beta_1:.D*
(
_user_specified_namedense_1/bias_1:PCL
J
_user_specified_name20multi_head_attention_1/attention_output/kernel_1::B6
4
_user_specified_namelayer_normalization/beta_1:0A,
*
_user_specified_namedense_1/kernel_1:A@=
;
_user_specified_name#!multi_head_attention/key/kernel_1:E?A
?
_user_specified_name'%multi_head_attention_1/value/kernel_1:C>?
=
_user_specified_name%#multi_head_attention_1/query/bias_1:(=$
"
_user_specified_name
Variable:*<&
$
_user_specified_name
Variable_1:*;&
$
_user_specified_name
Variable_2:*:&
$
_user_specified_name
Variable_3:*9&
$
_user_specified_name
Variable_4:*8&
$
_user_specified_name
Variable_5:*7&
$
_user_specified_name
Variable_6:*6&
$
_user_specified_name
Variable_7:*5&
$
_user_specified_name
Variable_8:*4&
$
_user_specified_name
Variable_9:+3'
%
_user_specified_nameVariable_10:+2'
%
_user_specified_nameVariable_11:+1'
%
_user_specified_nameVariable_12:+0'
%
_user_specified_nameVariable_13:+/'
%
_user_specified_nameVariable_14:+.'
%
_user_specified_nameVariable_15:+-'
%
_user_specified_nameVariable_16:+,'
%
_user_specified_nameVariable_17:++'
%
_user_specified_nameVariable_18:+*'
%
_user_specified_nameVariable_19:+)'
%
_user_specified_nameVariable_20:+('
%
_user_specified_nameVariable_21:+''
%
_user_specified_nameVariable_22:+&'
%
_user_specified_nameVariable_23:+%'
%
_user_specified_nameVariable_24:+$'
%
_user_specified_nameVariable_25:+#'
%
_user_specified_nameVariable_26:+"'
%
_user_specified_nameVariable_27:+!'
%
_user_specified_nameVariable_28:+ '
%
_user_specified_nameVariable_29:+'
%
_user_specified_nameVariable_30:+'
%
_user_specified_nameVariable_31:+'
%
_user_specified_nameVariable_32:+'
%
_user_specified_nameVariable_33:+'
%
_user_specified_nameVariable_34:+'
%
_user_specified_nameVariable_35:+'
%
_user_specified_nameVariable_36:+'
%
_user_specified_nameVariable_37:+'
%
_user_specified_nameVariable_38:+'
%
_user_specified_nameVariable_39:+'
%
_user_specified_nameVariable_40:+'
%
_user_specified_nameVariable_41:+'
%
_user_specified_nameVariable_42:+'
%
_user_specified_nameVariable_43:+'
%
_user_specified_nameVariable_44:+'
%
_user_specified_nameVariable_45:+'
%
_user_specified_nameVariable_46:+'
%
_user_specified_nameVariable_47:+'
%
_user_specified_nameVariable_48:+'
%
_user_specified_nameVariable_49:+'
%
_user_specified_nameVariable_50:+
'
%
_user_specified_nameVariable_51:+	'
%
_user_specified_nameVariable_52:+'
%
_user_specified_nameVariable_53:+'
%
_user_specified_nameVariable_54:+'
%
_user_specified_nameVariable_55:+'
%
_user_specified_nameVariable_56:+'
%
_user_specified_nameVariable_57:+'
%
_user_specified_nameVariable_58:+'
%
_user_specified_nameVariable_59:+'
%
_user_specified_nameVariable_60:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
��
�i
__inference__traced_save_139289
file_prefix1
"read_disablecopyonread_variable_60:	�3
$read_1_disablecopyonread_variable_59:	�3
$read_2_disablecopyonread_variable_58:	�3
$read_3_disablecopyonread_variable_57:	�;
$read_4_disablecopyonread_variable_56:�06
$read_5_disablecopyonread_variable_55:0;
$read_6_disablecopyonread_variable_54:�06
$read_7_disablecopyonread_variable_53:0;
$read_8_disablecopyonread_variable_52:�06
$read_9_disablecopyonread_variable_51:0<
%read_10_disablecopyonread_variable_50:0�4
%read_11_disablecopyonread_variable_49:	�<
%read_12_disablecopyonread_variable_48:�07
%read_13_disablecopyonread_variable_47:0<
%read_14_disablecopyonread_variable_46:�07
%read_15_disablecopyonread_variable_45:0<
%read_16_disablecopyonread_variable_44:�07
%read_17_disablecopyonread_variable_43:0<
%read_18_disablecopyonread_variable_42:0�4
%read_19_disablecopyonread_variable_41:	�9
%read_20_disablecopyonread_variable_40:
��4
%read_21_disablecopyonread_variable_39:	�4
%read_22_disablecopyonread_variable_38:	�4
%read_23_disablecopyonread_variable_37:	�3
%read_24_disablecopyonread_variable_36:	9
%read_25_disablecopyonread_variable_35:
��4
%read_26_disablecopyonread_variable_34:	�4
%read_27_disablecopyonread_variable_33:	�4
%read_28_disablecopyonread_variable_32:	�3
%read_29_disablecopyonread_variable_31:	9
%read_30_disablecopyonread_variable_30:
��4
%read_31_disablecopyonread_variable_29:	�9
%read_32_disablecopyonread_variable_28:
��4
%read_33_disablecopyonread_variable_27:	�4
%read_34_disablecopyonread_variable_26:	�4
%read_35_disablecopyonread_variable_25:	�3
%read_36_disablecopyonread_variable_24:	9
%read_37_disablecopyonread_variable_23:
��4
%read_38_disablecopyonread_variable_22:	�9
%read_39_disablecopyonread_variable_21:
��4
%read_40_disablecopyonread_variable_20:	�4
%read_41_disablecopyonread_variable_19:	�4
%read_42_disablecopyonread_variable_18:	�4
%read_43_disablecopyonread_variable_17:	�4
%read_44_disablecopyonread_variable_16:	�3
%read_45_disablecopyonread_variable_15:	3
%read_46_disablecopyonread_variable_14:	9
%read_47_disablecopyonread_variable_13:
��4
%read_48_disablecopyonread_variable_12:	�9
%read_49_disablecopyonread_variable_11:
��4
%read_50_disablecopyonread_variable_10:	�3
$read_51_disablecopyonread_variable_9:	�3
$read_52_disablecopyonread_variable_8:	�3
$read_53_disablecopyonread_variable_7:	�3
$read_54_disablecopyonread_variable_6:	�2
$read_55_disablecopyonread_variable_5:	2
$read_56_disablecopyonread_variable_4:	7
$read_57_disablecopyonread_variable_3:	�2
$read_58_disablecopyonread_variable_2:7
$read_59_disablecopyonread_variable_1:	�0
"read_60_disablecopyonread_variable:O
=read_61_disablecopyonread_multi_head_attention_1_query_bias_1:0V
?read_62_disablecopyonread_multi_head_attention_1_value_kernel_1:�0R
;read_63_disablecopyonread_multi_head_attention_key_kernel_1:�0>
*read_64_disablecopyonread_dense_1_kernel_1:
��C
4read_65_disablecopyonread_layer_normalization_beta_1:	�a
Jread_66_disablecopyonread_multi_head_attention_1_attention_output_kernel_1:0�7
(read_67_disablecopyonread_dense_1_bias_1:	�E
6read_68_disablecopyonread_layer_normalization_3_beta_1:	�E
6read_69_disablecopyonread_layer_normalization_7_beta_1:	�>
*read_70_disablecopyonread_dense_7_kernel_1:
��E
6read_71_disablecopyonread_layer_normalization_1_beta_1:	�T
=read_72_disablecopyonread_multi_head_attention_query_kernel_1:�0>
*read_73_disablecopyonread_dense_4_kernel_1:
��7
(read_74_disablecopyonread_dense_7_bias_1:	�>
*read_75_disablecopyonread_dense_5_kernel_1:
��F
7read_76_disablecopyonread_layer_normalization_6_gamma_1:	�<
.read_77_disablecopyonread_understanding_bias_1:V
?read_78_disablecopyonread_multi_head_attention_1_query_kernel_1:�0<
(read_79_disablecopyonread_dense_kernel_1:
��F
7read_80_disablecopyonread_layer_normalization_4_gamma_1:	�>
*read_81_disablecopyonread_dense_6_kernel_1:
��7
(read_82_disablecopyonread_dense_4_bias_1:	�E
6read_83_disablecopyonread_layer_normalization_5_beta_1:	�7
(read_84_disablecopyonread_dense_5_bias_1:	�F
7read_85_disablecopyonread_layer_normalization_1_gamma_1:	�W
Hread_86_disablecopyonread_multi_head_attention_1_attention_output_bias_1:	�U
Fread_87_disablecopyonread_multi_head_attention_attention_output_bias_1:	�F
7read_88_disablecopyonread_layer_normalization_2_gamma_1:	�>
*read_89_disablecopyonread_dense_2_kernel_1:
��7
(read_90_disablecopyonread_dense_6_bias_1:	�C
0read_91_disablecopyonread_understanding_kernel_1:	�D
5read_92_disablecopyonread_layer_normalization_gamma_1:	�O
=read_93_disablecopyonread_multi_head_attention_1_value_bias_1:0M
;read_94_disablecopyonread_multi_head_attention_value_bias_1:05
&read_95_disablecopyonread_dense_bias_1:	�7
(read_96_disablecopyonread_dense_2_bias_1:	�F
7read_97_disablecopyonread_layer_normalization_5_gamma_1:	�E
6read_98_disablecopyonread_layer_normalization_8_beta_1:	�E
6read_99_disablecopyonread_layer_normalization_6_beta_1:	�N
<read_100_disablecopyonread_multi_head_attention_1_key_bias_1:0U
>read_101_disablecopyonread_multi_head_attention_value_kernel_1:�0G
8read_102_disablecopyonread_layer_normalization_3_gamma_1:	�?
+read_103_disablecopyonread_dense_3_kernel_1:
��F
7read_104_disablecopyonread_layer_normalization_4_beta_1:	�G
8read_105_disablecopyonread_layer_normalization_7_gamma_1:	�C
0read_106_disablecopyonread_completeness_kernel_1:	�U
>read_107_disablecopyonread_multi_head_attention_1_key_kernel_1:�0N
<read_108_disablecopyonread_multi_head_attention_query_bias_1:0L
:read_109_disablecopyonread_multi_head_attention_key_bias_1:0`
Iread_110_disablecopyonread_multi_head_attention_attention_output_kernel_1:0�F
7read_111_disablecopyonread_layer_normalization_2_beta_1:	�8
)read_112_disablecopyonread_dense_3_bias_1:	�G
8read_113_disablecopyonread_layer_normalization_8_gamma_1:	�<
.read_114_disablecopyonread_completeness_bias_1:
savev2_const
identity_231��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_100/DisableCopyOnRead�Read_100/ReadVariableOp�Read_101/DisableCopyOnRead�Read_101/ReadVariableOp�Read_102/DisableCopyOnRead�Read_102/ReadVariableOp�Read_103/DisableCopyOnRead�Read_103/ReadVariableOp�Read_104/DisableCopyOnRead�Read_104/ReadVariableOp�Read_105/DisableCopyOnRead�Read_105/ReadVariableOp�Read_106/DisableCopyOnRead�Read_106/ReadVariableOp�Read_107/DisableCopyOnRead�Read_107/ReadVariableOp�Read_108/DisableCopyOnRead�Read_108/ReadVariableOp�Read_109/DisableCopyOnRead�Read_109/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_110/DisableCopyOnRead�Read_110/ReadVariableOp�Read_111/DisableCopyOnRead�Read_111/ReadVariableOp�Read_112/DisableCopyOnRead�Read_112/ReadVariableOp�Read_113/DisableCopyOnRead�Read_113/ReadVariableOp�Read_114/DisableCopyOnRead�Read_114/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_68/DisableCopyOnRead�Read_68/ReadVariableOp�Read_69/DisableCopyOnRead�Read_69/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_70/DisableCopyOnRead�Read_70/ReadVariableOp�Read_71/DisableCopyOnRead�Read_71/ReadVariableOp�Read_72/DisableCopyOnRead�Read_72/ReadVariableOp�Read_73/DisableCopyOnRead�Read_73/ReadVariableOp�Read_74/DisableCopyOnRead�Read_74/ReadVariableOp�Read_75/DisableCopyOnRead�Read_75/ReadVariableOp�Read_76/DisableCopyOnRead�Read_76/ReadVariableOp�Read_77/DisableCopyOnRead�Read_77/ReadVariableOp�Read_78/DisableCopyOnRead�Read_78/ReadVariableOp�Read_79/DisableCopyOnRead�Read_79/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_80/DisableCopyOnRead�Read_80/ReadVariableOp�Read_81/DisableCopyOnRead�Read_81/ReadVariableOp�Read_82/DisableCopyOnRead�Read_82/ReadVariableOp�Read_83/DisableCopyOnRead�Read_83/ReadVariableOp�Read_84/DisableCopyOnRead�Read_84/ReadVariableOp�Read_85/DisableCopyOnRead�Read_85/ReadVariableOp�Read_86/DisableCopyOnRead�Read_86/ReadVariableOp�Read_87/DisableCopyOnRead�Read_87/ReadVariableOp�Read_88/DisableCopyOnRead�Read_88/ReadVariableOp�Read_89/DisableCopyOnRead�Read_89/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOp�Read_90/DisableCopyOnRead�Read_90/ReadVariableOp�Read_91/DisableCopyOnRead�Read_91/ReadVariableOp�Read_92/DisableCopyOnRead�Read_92/ReadVariableOp�Read_93/DisableCopyOnRead�Read_93/ReadVariableOp�Read_94/DisableCopyOnRead�Read_94/ReadVariableOp�Read_95/DisableCopyOnRead�Read_95/ReadVariableOp�Read_96/DisableCopyOnRead�Read_96/ReadVariableOp�Read_97/DisableCopyOnRead�Read_97/ReadVariableOp�Read_98/DisableCopyOnRead�Read_98/ReadVariableOp�Read_99/DisableCopyOnRead�Read_99/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: e
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_variable_60*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_variable_60^Read/DisableCopyOnRead*
_output_shapes	
:�*
dtype0W
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes	
:�^

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes	
:�i
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_variable_59*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_variable_59^Read_1/DisableCopyOnRead*
_output_shapes	
:�*
dtype0[

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:�`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:�i
Read_2/DisableCopyOnReadDisableCopyOnRead$read_2_disablecopyonread_variable_58*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp$read_2_disablecopyonread_variable_58^Read_2/DisableCopyOnRead*
_output_shapes	
:�*
dtype0[

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:�`

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes	
:�i
Read_3/DisableCopyOnReadDisableCopyOnRead$read_3_disablecopyonread_variable_57*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp$read_3_disablecopyonread_variable_57^Read_3/DisableCopyOnRead*
_output_shapes	
:�*
dtype0[

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:�`

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes	
:�i
Read_4/DisableCopyOnReadDisableCopyOnRead$read_4_disablecopyonread_variable_56*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp$read_4_disablecopyonread_variable_56^Read_4/DisableCopyOnRead*#
_output_shapes
:�0*
dtype0c

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*#
_output_shapes
:�0h

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*#
_output_shapes
:�0i
Read_5/DisableCopyOnReadDisableCopyOnRead$read_5_disablecopyonread_variable_55*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp$read_5_disablecopyonread_variable_55^Read_5/DisableCopyOnRead*
_output_shapes

:0*
dtype0_
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes

:0e
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes

:0i
Read_6/DisableCopyOnReadDisableCopyOnRead$read_6_disablecopyonread_variable_54*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp$read_6_disablecopyonread_variable_54^Read_6/DisableCopyOnRead*#
_output_shapes
:�0*
dtype0d
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*#
_output_shapes
:�0j
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*#
_output_shapes
:�0i
Read_7/DisableCopyOnReadDisableCopyOnRead$read_7_disablecopyonread_variable_53*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp$read_7_disablecopyonread_variable_53^Read_7/DisableCopyOnRead*
_output_shapes

:0*
dtype0_
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes

:0e
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes

:0i
Read_8/DisableCopyOnReadDisableCopyOnRead$read_8_disablecopyonread_variable_52*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp$read_8_disablecopyonread_variable_52^Read_8/DisableCopyOnRead*#
_output_shapes
:�0*
dtype0d
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*#
_output_shapes
:�0j
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*#
_output_shapes
:�0i
Read_9/DisableCopyOnReadDisableCopyOnRead$read_9_disablecopyonread_variable_51*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp$read_9_disablecopyonread_variable_51^Read_9/DisableCopyOnRead*
_output_shapes

:0*
dtype0_
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes

:0e
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes

:0k
Read_10/DisableCopyOnReadDisableCopyOnRead%read_10_disablecopyonread_variable_50*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp%read_10_disablecopyonread_variable_50^Read_10/DisableCopyOnRead*#
_output_shapes
:0�*
dtype0e
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0*#
_output_shapes
:0�j
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*#
_output_shapes
:0�k
Read_11/DisableCopyOnReadDisableCopyOnRead%read_11_disablecopyonread_variable_49*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp%read_11_disablecopyonread_variable_49^Read_11/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_22IdentityRead_11/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_12/DisableCopyOnReadDisableCopyOnRead%read_12_disablecopyonread_variable_48*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp%read_12_disablecopyonread_variable_48^Read_12/DisableCopyOnRead*#
_output_shapes
:�0*
dtype0e
Identity_24IdentityRead_12/ReadVariableOp:value:0*
T0*#
_output_shapes
:�0j
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*#
_output_shapes
:�0k
Read_13/DisableCopyOnReadDisableCopyOnRead%read_13_disablecopyonread_variable_47*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp%read_13_disablecopyonread_variable_47^Read_13/DisableCopyOnRead*
_output_shapes

:0*
dtype0`
Identity_26IdentityRead_13/ReadVariableOp:value:0*
T0*
_output_shapes

:0e
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes

:0k
Read_14/DisableCopyOnReadDisableCopyOnRead%read_14_disablecopyonread_variable_46*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp%read_14_disablecopyonread_variable_46^Read_14/DisableCopyOnRead*#
_output_shapes
:�0*
dtype0e
Identity_28IdentityRead_14/ReadVariableOp:value:0*
T0*#
_output_shapes
:�0j
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*#
_output_shapes
:�0k
Read_15/DisableCopyOnReadDisableCopyOnRead%read_15_disablecopyonread_variable_45*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp%read_15_disablecopyonread_variable_45^Read_15/DisableCopyOnRead*
_output_shapes

:0*
dtype0`
Identity_30IdentityRead_15/ReadVariableOp:value:0*
T0*
_output_shapes

:0e
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes

:0k
Read_16/DisableCopyOnReadDisableCopyOnRead%read_16_disablecopyonread_variable_44*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp%read_16_disablecopyonread_variable_44^Read_16/DisableCopyOnRead*#
_output_shapes
:�0*
dtype0e
Identity_32IdentityRead_16/ReadVariableOp:value:0*
T0*#
_output_shapes
:�0j
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*#
_output_shapes
:�0k
Read_17/DisableCopyOnReadDisableCopyOnRead%read_17_disablecopyonread_variable_43*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp%read_17_disablecopyonread_variable_43^Read_17/DisableCopyOnRead*
_output_shapes

:0*
dtype0`
Identity_34IdentityRead_17/ReadVariableOp:value:0*
T0*
_output_shapes

:0e
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes

:0k
Read_18/DisableCopyOnReadDisableCopyOnRead%read_18_disablecopyonread_variable_42*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp%read_18_disablecopyonread_variable_42^Read_18/DisableCopyOnRead*#
_output_shapes
:0�*
dtype0e
Identity_36IdentityRead_18/ReadVariableOp:value:0*
T0*#
_output_shapes
:0�j
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*#
_output_shapes
:0�k
Read_19/DisableCopyOnReadDisableCopyOnRead%read_19_disablecopyonread_variable_41*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp%read_19_disablecopyonread_variable_41^Read_19/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_38IdentityRead_19/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_20/DisableCopyOnReadDisableCopyOnRead%read_20_disablecopyonread_variable_40*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp%read_20_disablecopyonread_variable_40^Read_20/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0b
Identity_40IdentityRead_20/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��g
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��k
Read_21/DisableCopyOnReadDisableCopyOnRead%read_21_disablecopyonread_variable_39*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp%read_21_disablecopyonread_variable_39^Read_21/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_42IdentityRead_21/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_22/DisableCopyOnReadDisableCopyOnRead%read_22_disablecopyonread_variable_38*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp%read_22_disablecopyonread_variable_38^Read_22/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_44IdentityRead_22/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_23/DisableCopyOnReadDisableCopyOnRead%read_23_disablecopyonread_variable_37*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp%read_23_disablecopyonread_variable_37^Read_23/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_46IdentityRead_23/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_24/DisableCopyOnReadDisableCopyOnRead%read_24_disablecopyonread_variable_36*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp%read_24_disablecopyonread_variable_36^Read_24/DisableCopyOnRead*
_output_shapes
:*
dtype0	\
Identity_48IdentityRead_24/ReadVariableOp:value:0*
T0	*
_output_shapes
:a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0	*
_output_shapes
:k
Read_25/DisableCopyOnReadDisableCopyOnRead%read_25_disablecopyonread_variable_35*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp%read_25_disablecopyonread_variable_35^Read_25/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0b
Identity_50IdentityRead_25/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��g
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��k
Read_26/DisableCopyOnReadDisableCopyOnRead%read_26_disablecopyonread_variable_34*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp%read_26_disablecopyonread_variable_34^Read_26/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_52IdentityRead_26/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_27/DisableCopyOnReadDisableCopyOnRead%read_27_disablecopyonread_variable_33*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp%read_27_disablecopyonread_variable_33^Read_27/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_54IdentityRead_27/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_28/DisableCopyOnReadDisableCopyOnRead%read_28_disablecopyonread_variable_32*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp%read_28_disablecopyonread_variable_32^Read_28/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_56IdentityRead_28/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_29/DisableCopyOnReadDisableCopyOnRead%read_29_disablecopyonread_variable_31*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp%read_29_disablecopyonread_variable_31^Read_29/DisableCopyOnRead*
_output_shapes
:*
dtype0	\
Identity_58IdentityRead_29/ReadVariableOp:value:0*
T0	*
_output_shapes
:a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0	*
_output_shapes
:k
Read_30/DisableCopyOnReadDisableCopyOnRead%read_30_disablecopyonread_variable_30*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp%read_30_disablecopyonread_variable_30^Read_30/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0b
Identity_60IdentityRead_30/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��g
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��k
Read_31/DisableCopyOnReadDisableCopyOnRead%read_31_disablecopyonread_variable_29*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp%read_31_disablecopyonread_variable_29^Read_31/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_62IdentityRead_31/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_32/DisableCopyOnReadDisableCopyOnRead%read_32_disablecopyonread_variable_28*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp%read_32_disablecopyonread_variable_28^Read_32/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0b
Identity_64IdentityRead_32/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��g
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��k
Read_33/DisableCopyOnReadDisableCopyOnRead%read_33_disablecopyonread_variable_27*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp%read_33_disablecopyonread_variable_27^Read_33/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_66IdentityRead_33/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_34/DisableCopyOnReadDisableCopyOnRead%read_34_disablecopyonread_variable_26*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp%read_34_disablecopyonread_variable_26^Read_34/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_68IdentityRead_34/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_35/DisableCopyOnReadDisableCopyOnRead%read_35_disablecopyonread_variable_25*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp%read_35_disablecopyonread_variable_25^Read_35/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_70IdentityRead_35/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_36/DisableCopyOnReadDisableCopyOnRead%read_36_disablecopyonread_variable_24*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp%read_36_disablecopyonread_variable_24^Read_36/DisableCopyOnRead*
_output_shapes
:*
dtype0	\
Identity_72IdentityRead_36/ReadVariableOp:value:0*
T0	*
_output_shapes
:a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0	*
_output_shapes
:k
Read_37/DisableCopyOnReadDisableCopyOnRead%read_37_disablecopyonread_variable_23*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp%read_37_disablecopyonread_variable_23^Read_37/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0b
Identity_74IdentityRead_37/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��g
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��k
Read_38/DisableCopyOnReadDisableCopyOnRead%read_38_disablecopyonread_variable_22*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp%read_38_disablecopyonread_variable_22^Read_38/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_76IdentityRead_38/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_39/DisableCopyOnReadDisableCopyOnRead%read_39_disablecopyonread_variable_21*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp%read_39_disablecopyonread_variable_21^Read_39/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0b
Identity_78IdentityRead_39/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��g
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��k
Read_40/DisableCopyOnReadDisableCopyOnRead%read_40_disablecopyonread_variable_20*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp%read_40_disablecopyonread_variable_20^Read_40/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_80IdentityRead_40/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_41/DisableCopyOnReadDisableCopyOnRead%read_41_disablecopyonread_variable_19*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp%read_41_disablecopyonread_variable_19^Read_41/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_82IdentityRead_41/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_42/DisableCopyOnReadDisableCopyOnRead%read_42_disablecopyonread_variable_18*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp%read_42_disablecopyonread_variable_18^Read_42/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_84IdentityRead_42/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_43/DisableCopyOnReadDisableCopyOnRead%read_43_disablecopyonread_variable_17*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp%read_43_disablecopyonread_variable_17^Read_43/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_86IdentityRead_43/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_44/DisableCopyOnReadDisableCopyOnRead%read_44_disablecopyonread_variable_16*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp%read_44_disablecopyonread_variable_16^Read_44/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_88IdentityRead_44/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_45/DisableCopyOnReadDisableCopyOnRead%read_45_disablecopyonread_variable_15*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp%read_45_disablecopyonread_variable_15^Read_45/DisableCopyOnRead*
_output_shapes
:*
dtype0	\
Identity_90IdentityRead_45/ReadVariableOp:value:0*
T0	*
_output_shapes
:a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0	*
_output_shapes
:k
Read_46/DisableCopyOnReadDisableCopyOnRead%read_46_disablecopyonread_variable_14*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp%read_46_disablecopyonread_variable_14^Read_46/DisableCopyOnRead*
_output_shapes
:*
dtype0	\
Identity_92IdentityRead_46/ReadVariableOp:value:0*
T0	*
_output_shapes
:a
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0	*
_output_shapes
:k
Read_47/DisableCopyOnReadDisableCopyOnRead%read_47_disablecopyonread_variable_13*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp%read_47_disablecopyonread_variable_13^Read_47/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0b
Identity_94IdentityRead_47/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��g
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��k
Read_48/DisableCopyOnReadDisableCopyOnRead%read_48_disablecopyonread_variable_12*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp%read_48_disablecopyonread_variable_12^Read_48/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_96IdentityRead_48/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_49/DisableCopyOnReadDisableCopyOnRead%read_49_disablecopyonread_variable_11*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp%read_49_disablecopyonread_variable_11^Read_49/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0b
Identity_98IdentityRead_49/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��g
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��k
Read_50/DisableCopyOnReadDisableCopyOnRead%read_50_disablecopyonread_variable_10*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp%read_50_disablecopyonread_variable_10^Read_50/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_100IdentityRead_50/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_51/DisableCopyOnReadDisableCopyOnRead$read_51_disablecopyonread_variable_9*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp$read_51_disablecopyonread_variable_9^Read_51/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_102IdentityRead_51/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_52/DisableCopyOnReadDisableCopyOnRead$read_52_disablecopyonread_variable_8*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp$read_52_disablecopyonread_variable_8^Read_52/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_104IdentityRead_52/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_53/DisableCopyOnReadDisableCopyOnRead$read_53_disablecopyonread_variable_7*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp$read_53_disablecopyonread_variable_7^Read_53/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_106IdentityRead_53/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_54/DisableCopyOnReadDisableCopyOnRead$read_54_disablecopyonread_variable_6*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp$read_54_disablecopyonread_variable_6^Read_54/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_108IdentityRead_54/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_55/DisableCopyOnReadDisableCopyOnRead$read_55_disablecopyonread_variable_5*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp$read_55_disablecopyonread_variable_5^Read_55/DisableCopyOnRead*
_output_shapes
:*
dtype0	]
Identity_110IdentityRead_55/ReadVariableOp:value:0*
T0	*
_output_shapes
:c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0	*
_output_shapes
:j
Read_56/DisableCopyOnReadDisableCopyOnRead$read_56_disablecopyonread_variable_4*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp$read_56_disablecopyonread_variable_4^Read_56/DisableCopyOnRead*
_output_shapes
:*
dtype0	]
Identity_112IdentityRead_56/ReadVariableOp:value:0*
T0	*
_output_shapes
:c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0	*
_output_shapes
:j
Read_57/DisableCopyOnReadDisableCopyOnRead$read_57_disablecopyonread_variable_3*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp$read_57_disablecopyonread_variable_3^Read_57/DisableCopyOnRead*
_output_shapes
:	�*
dtype0b
Identity_114IdentityRead_57/ReadVariableOp:value:0*
T0*
_output_shapes
:	�h
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes
:	�j
Read_58/DisableCopyOnReadDisableCopyOnRead$read_58_disablecopyonread_variable_2*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp$read_58_disablecopyonread_variable_2^Read_58/DisableCopyOnRead*
_output_shapes
:*
dtype0]
Identity_116IdentityRead_58/ReadVariableOp:value:0*
T0*
_output_shapes
:c
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
:j
Read_59/DisableCopyOnReadDisableCopyOnRead$read_59_disablecopyonread_variable_1*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp$read_59_disablecopyonread_variable_1^Read_59/DisableCopyOnRead*
_output_shapes
:	�*
dtype0b
Identity_118IdentityRead_59/ReadVariableOp:value:0*
T0*
_output_shapes
:	�h
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Read_60/DisableCopyOnReadDisableCopyOnRead"read_60_disablecopyonread_variable*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp"read_60_disablecopyonread_variable^Read_60/DisableCopyOnRead*
_output_shapes
:*
dtype0]
Identity_120IdentityRead_60/ReadVariableOp:value:0*
T0*
_output_shapes
:c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_61/DisableCopyOnReadDisableCopyOnRead=read_61_disablecopyonread_multi_head_attention_1_query_bias_1*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp=read_61_disablecopyonread_multi_head_attention_1_query_bias_1^Read_61/DisableCopyOnRead*
_output_shapes

:0*
dtype0a
Identity_122IdentityRead_61/ReadVariableOp:value:0*
T0*
_output_shapes

:0g
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes

:0�
Read_62/DisableCopyOnReadDisableCopyOnRead?read_62_disablecopyonread_multi_head_attention_1_value_kernel_1*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp?read_62_disablecopyonread_multi_head_attention_1_value_kernel_1^Read_62/DisableCopyOnRead*#
_output_shapes
:�0*
dtype0f
Identity_124IdentityRead_62/ReadVariableOp:value:0*
T0*#
_output_shapes
:�0l
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*#
_output_shapes
:�0�
Read_63/DisableCopyOnReadDisableCopyOnRead;read_63_disablecopyonread_multi_head_attention_key_kernel_1*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp;read_63_disablecopyonread_multi_head_attention_key_kernel_1^Read_63/DisableCopyOnRead*#
_output_shapes
:�0*
dtype0f
Identity_126IdentityRead_63/ReadVariableOp:value:0*
T0*#
_output_shapes
:�0l
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*#
_output_shapes
:�0p
Read_64/DisableCopyOnReadDisableCopyOnRead*read_64_disablecopyonread_dense_1_kernel_1*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp*read_64_disablecopyonread_dense_1_kernel_1^Read_64/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0c
Identity_128IdentityRead_64/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��i
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��z
Read_65/DisableCopyOnReadDisableCopyOnRead4read_65_disablecopyonread_layer_normalization_beta_1*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp4read_65_disablecopyonread_layer_normalization_beta_1^Read_65/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_130IdentityRead_65/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_66/DisableCopyOnReadDisableCopyOnReadJread_66_disablecopyonread_multi_head_attention_1_attention_output_kernel_1*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOpJread_66_disablecopyonread_multi_head_attention_1_attention_output_kernel_1^Read_66/DisableCopyOnRead*#
_output_shapes
:0�*
dtype0f
Identity_132IdentityRead_66/ReadVariableOp:value:0*
T0*#
_output_shapes
:0�l
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*#
_output_shapes
:0�n
Read_67/DisableCopyOnReadDisableCopyOnRead(read_67_disablecopyonread_dense_1_bias_1*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp(read_67_disablecopyonread_dense_1_bias_1^Read_67/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_134IdentityRead_67/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes	
:�|
Read_68/DisableCopyOnReadDisableCopyOnRead6read_68_disablecopyonread_layer_normalization_3_beta_1*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp6read_68_disablecopyonread_layer_normalization_3_beta_1^Read_68/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_136IdentityRead_68/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes	
:�|
Read_69/DisableCopyOnReadDisableCopyOnRead6read_69_disablecopyonread_layer_normalization_7_beta_1*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp6read_69_disablecopyonread_layer_normalization_7_beta_1^Read_69/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_138IdentityRead_69/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes	
:�p
Read_70/DisableCopyOnReadDisableCopyOnRead*read_70_disablecopyonread_dense_7_kernel_1*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOp*read_70_disablecopyonread_dense_7_kernel_1^Read_70/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0c
Identity_140IdentityRead_70/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��i
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��|
Read_71/DisableCopyOnReadDisableCopyOnRead6read_71_disablecopyonread_layer_normalization_1_beta_1*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOp6read_71_disablecopyonread_layer_normalization_1_beta_1^Read_71/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_142IdentityRead_71/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_72/DisableCopyOnReadDisableCopyOnRead=read_72_disablecopyonread_multi_head_attention_query_kernel_1*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOp=read_72_disablecopyonread_multi_head_attention_query_kernel_1^Read_72/DisableCopyOnRead*#
_output_shapes
:�0*
dtype0f
Identity_144IdentityRead_72/ReadVariableOp:value:0*
T0*#
_output_shapes
:�0l
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*#
_output_shapes
:�0p
Read_73/DisableCopyOnReadDisableCopyOnRead*read_73_disablecopyonread_dense_4_kernel_1*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOp*read_73_disablecopyonread_dense_4_kernel_1^Read_73/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0c
Identity_146IdentityRead_73/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��i
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��n
Read_74/DisableCopyOnReadDisableCopyOnRead(read_74_disablecopyonread_dense_7_bias_1*
_output_shapes
 �
Read_74/ReadVariableOpReadVariableOp(read_74_disablecopyonread_dense_7_bias_1^Read_74/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_148IdentityRead_74/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*
_output_shapes	
:�p
Read_75/DisableCopyOnReadDisableCopyOnRead*read_75_disablecopyonread_dense_5_kernel_1*
_output_shapes
 �
Read_75/ReadVariableOpReadVariableOp*read_75_disablecopyonread_dense_5_kernel_1^Read_75/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0c
Identity_150IdentityRead_75/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��i
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��}
Read_76/DisableCopyOnReadDisableCopyOnRead7read_76_disablecopyonread_layer_normalization_6_gamma_1*
_output_shapes
 �
Read_76/ReadVariableOpReadVariableOp7read_76_disablecopyonread_layer_normalization_6_gamma_1^Read_76/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_152IdentityRead_76/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*
_output_shapes	
:�t
Read_77/DisableCopyOnReadDisableCopyOnRead.read_77_disablecopyonread_understanding_bias_1*
_output_shapes
 �
Read_77/ReadVariableOpReadVariableOp.read_77_disablecopyonread_understanding_bias_1^Read_77/DisableCopyOnRead*
_output_shapes
:*
dtype0]
Identity_154IdentityRead_77/ReadVariableOp:value:0*
T0*
_output_shapes
:c
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_78/DisableCopyOnReadDisableCopyOnRead?read_78_disablecopyonread_multi_head_attention_1_query_kernel_1*
_output_shapes
 �
Read_78/ReadVariableOpReadVariableOp?read_78_disablecopyonread_multi_head_attention_1_query_kernel_1^Read_78/DisableCopyOnRead*#
_output_shapes
:�0*
dtype0f
Identity_156IdentityRead_78/ReadVariableOp:value:0*
T0*#
_output_shapes
:�0l
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*#
_output_shapes
:�0n
Read_79/DisableCopyOnReadDisableCopyOnRead(read_79_disablecopyonread_dense_kernel_1*
_output_shapes
 �
Read_79/ReadVariableOpReadVariableOp(read_79_disablecopyonread_dense_kernel_1^Read_79/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0c
Identity_158IdentityRead_79/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��i
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��}
Read_80/DisableCopyOnReadDisableCopyOnRead7read_80_disablecopyonread_layer_normalization_4_gamma_1*
_output_shapes
 �
Read_80/ReadVariableOpReadVariableOp7read_80_disablecopyonread_layer_normalization_4_gamma_1^Read_80/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_160IdentityRead_80/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0*
_output_shapes	
:�p
Read_81/DisableCopyOnReadDisableCopyOnRead*read_81_disablecopyonread_dense_6_kernel_1*
_output_shapes
 �
Read_81/ReadVariableOpReadVariableOp*read_81_disablecopyonread_dense_6_kernel_1^Read_81/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0c
Identity_162IdentityRead_81/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��i
Identity_163IdentityIdentity_162:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��n
Read_82/DisableCopyOnReadDisableCopyOnRead(read_82_disablecopyonread_dense_4_bias_1*
_output_shapes
 �
Read_82/ReadVariableOpReadVariableOp(read_82_disablecopyonread_dense_4_bias_1^Read_82/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_164IdentityRead_82/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_165IdentityIdentity_164:output:0"/device:CPU:0*
T0*
_output_shapes	
:�|
Read_83/DisableCopyOnReadDisableCopyOnRead6read_83_disablecopyonread_layer_normalization_5_beta_1*
_output_shapes
 �
Read_83/ReadVariableOpReadVariableOp6read_83_disablecopyonread_layer_normalization_5_beta_1^Read_83/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_166IdentityRead_83/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_167IdentityIdentity_166:output:0"/device:CPU:0*
T0*
_output_shapes	
:�n
Read_84/DisableCopyOnReadDisableCopyOnRead(read_84_disablecopyonread_dense_5_bias_1*
_output_shapes
 �
Read_84/ReadVariableOpReadVariableOp(read_84_disablecopyonread_dense_5_bias_1^Read_84/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_168IdentityRead_84/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_169IdentityIdentity_168:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_85/DisableCopyOnReadDisableCopyOnRead7read_85_disablecopyonread_layer_normalization_1_gamma_1*
_output_shapes
 �
Read_85/ReadVariableOpReadVariableOp7read_85_disablecopyonread_layer_normalization_1_gamma_1^Read_85/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_170IdentityRead_85/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_171IdentityIdentity_170:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_86/DisableCopyOnReadDisableCopyOnReadHread_86_disablecopyonread_multi_head_attention_1_attention_output_bias_1*
_output_shapes
 �
Read_86/ReadVariableOpReadVariableOpHread_86_disablecopyonread_multi_head_attention_1_attention_output_bias_1^Read_86/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_172IdentityRead_86/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_173IdentityIdentity_172:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_87/DisableCopyOnReadDisableCopyOnReadFread_87_disablecopyonread_multi_head_attention_attention_output_bias_1*
_output_shapes
 �
Read_87/ReadVariableOpReadVariableOpFread_87_disablecopyonread_multi_head_attention_attention_output_bias_1^Read_87/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_174IdentityRead_87/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_175IdentityIdentity_174:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_88/DisableCopyOnReadDisableCopyOnRead7read_88_disablecopyonread_layer_normalization_2_gamma_1*
_output_shapes
 �
Read_88/ReadVariableOpReadVariableOp7read_88_disablecopyonread_layer_normalization_2_gamma_1^Read_88/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_176IdentityRead_88/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_177IdentityIdentity_176:output:0"/device:CPU:0*
T0*
_output_shapes	
:�p
Read_89/DisableCopyOnReadDisableCopyOnRead*read_89_disablecopyonread_dense_2_kernel_1*
_output_shapes
 �
Read_89/ReadVariableOpReadVariableOp*read_89_disablecopyonread_dense_2_kernel_1^Read_89/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0c
Identity_178IdentityRead_89/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��i
Identity_179IdentityIdentity_178:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��n
Read_90/DisableCopyOnReadDisableCopyOnRead(read_90_disablecopyonread_dense_6_bias_1*
_output_shapes
 �
Read_90/ReadVariableOpReadVariableOp(read_90_disablecopyonread_dense_6_bias_1^Read_90/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_180IdentityRead_90/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_181IdentityIdentity_180:output:0"/device:CPU:0*
T0*
_output_shapes	
:�v
Read_91/DisableCopyOnReadDisableCopyOnRead0read_91_disablecopyonread_understanding_kernel_1*
_output_shapes
 �
Read_91/ReadVariableOpReadVariableOp0read_91_disablecopyonread_understanding_kernel_1^Read_91/DisableCopyOnRead*
_output_shapes
:	�*
dtype0b
Identity_182IdentityRead_91/ReadVariableOp:value:0*
T0*
_output_shapes
:	�h
Identity_183IdentityIdentity_182:output:0"/device:CPU:0*
T0*
_output_shapes
:	�{
Read_92/DisableCopyOnReadDisableCopyOnRead5read_92_disablecopyonread_layer_normalization_gamma_1*
_output_shapes
 �
Read_92/ReadVariableOpReadVariableOp5read_92_disablecopyonread_layer_normalization_gamma_1^Read_92/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_184IdentityRead_92/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_185IdentityIdentity_184:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_93/DisableCopyOnReadDisableCopyOnRead=read_93_disablecopyonread_multi_head_attention_1_value_bias_1*
_output_shapes
 �
Read_93/ReadVariableOpReadVariableOp=read_93_disablecopyonread_multi_head_attention_1_value_bias_1^Read_93/DisableCopyOnRead*
_output_shapes

:0*
dtype0a
Identity_186IdentityRead_93/ReadVariableOp:value:0*
T0*
_output_shapes

:0g
Identity_187IdentityIdentity_186:output:0"/device:CPU:0*
T0*
_output_shapes

:0�
Read_94/DisableCopyOnReadDisableCopyOnRead;read_94_disablecopyonread_multi_head_attention_value_bias_1*
_output_shapes
 �
Read_94/ReadVariableOpReadVariableOp;read_94_disablecopyonread_multi_head_attention_value_bias_1^Read_94/DisableCopyOnRead*
_output_shapes

:0*
dtype0a
Identity_188IdentityRead_94/ReadVariableOp:value:0*
T0*
_output_shapes

:0g
Identity_189IdentityIdentity_188:output:0"/device:CPU:0*
T0*
_output_shapes

:0l
Read_95/DisableCopyOnReadDisableCopyOnRead&read_95_disablecopyonread_dense_bias_1*
_output_shapes
 �
Read_95/ReadVariableOpReadVariableOp&read_95_disablecopyonread_dense_bias_1^Read_95/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_190IdentityRead_95/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_191IdentityIdentity_190:output:0"/device:CPU:0*
T0*
_output_shapes	
:�n
Read_96/DisableCopyOnReadDisableCopyOnRead(read_96_disablecopyonread_dense_2_bias_1*
_output_shapes
 �
Read_96/ReadVariableOpReadVariableOp(read_96_disablecopyonread_dense_2_bias_1^Read_96/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_192IdentityRead_96/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_193IdentityIdentity_192:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_97/DisableCopyOnReadDisableCopyOnRead7read_97_disablecopyonread_layer_normalization_5_gamma_1*
_output_shapes
 �
Read_97/ReadVariableOpReadVariableOp7read_97_disablecopyonread_layer_normalization_5_gamma_1^Read_97/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_194IdentityRead_97/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_195IdentityIdentity_194:output:0"/device:CPU:0*
T0*
_output_shapes	
:�|
Read_98/DisableCopyOnReadDisableCopyOnRead6read_98_disablecopyonread_layer_normalization_8_beta_1*
_output_shapes
 �
Read_98/ReadVariableOpReadVariableOp6read_98_disablecopyonread_layer_normalization_8_beta_1^Read_98/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_196IdentityRead_98/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_197IdentityIdentity_196:output:0"/device:CPU:0*
T0*
_output_shapes	
:�|
Read_99/DisableCopyOnReadDisableCopyOnRead6read_99_disablecopyonread_layer_normalization_6_beta_1*
_output_shapes
 �
Read_99/ReadVariableOpReadVariableOp6read_99_disablecopyonread_layer_normalization_6_beta_1^Read_99/DisableCopyOnRead*
_output_shapes	
:�*
dtype0^
Identity_198IdentityRead_99/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_199IdentityIdentity_198:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_100/DisableCopyOnReadDisableCopyOnRead<read_100_disablecopyonread_multi_head_attention_1_key_bias_1*
_output_shapes
 �
Read_100/ReadVariableOpReadVariableOp<read_100_disablecopyonread_multi_head_attention_1_key_bias_1^Read_100/DisableCopyOnRead*
_output_shapes

:0*
dtype0b
Identity_200IdentityRead_100/ReadVariableOp:value:0*
T0*
_output_shapes

:0g
Identity_201IdentityIdentity_200:output:0"/device:CPU:0*
T0*
_output_shapes

:0�
Read_101/DisableCopyOnReadDisableCopyOnRead>read_101_disablecopyonread_multi_head_attention_value_kernel_1*
_output_shapes
 �
Read_101/ReadVariableOpReadVariableOp>read_101_disablecopyonread_multi_head_attention_value_kernel_1^Read_101/DisableCopyOnRead*#
_output_shapes
:�0*
dtype0g
Identity_202IdentityRead_101/ReadVariableOp:value:0*
T0*#
_output_shapes
:�0l
Identity_203IdentityIdentity_202:output:0"/device:CPU:0*
T0*#
_output_shapes
:�0
Read_102/DisableCopyOnReadDisableCopyOnRead8read_102_disablecopyonread_layer_normalization_3_gamma_1*
_output_shapes
 �
Read_102/ReadVariableOpReadVariableOp8read_102_disablecopyonread_layer_normalization_3_gamma_1^Read_102/DisableCopyOnRead*
_output_shapes	
:�*
dtype0_
Identity_204IdentityRead_102/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_205IdentityIdentity_204:output:0"/device:CPU:0*
T0*
_output_shapes	
:�r
Read_103/DisableCopyOnReadDisableCopyOnRead+read_103_disablecopyonread_dense_3_kernel_1*
_output_shapes
 �
Read_103/ReadVariableOpReadVariableOp+read_103_disablecopyonread_dense_3_kernel_1^Read_103/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0d
Identity_206IdentityRead_103/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��i
Identity_207IdentityIdentity_206:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��~
Read_104/DisableCopyOnReadDisableCopyOnRead7read_104_disablecopyonread_layer_normalization_4_beta_1*
_output_shapes
 �
Read_104/ReadVariableOpReadVariableOp7read_104_disablecopyonread_layer_normalization_4_beta_1^Read_104/DisableCopyOnRead*
_output_shapes	
:�*
dtype0_
Identity_208IdentityRead_104/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_209IdentityIdentity_208:output:0"/device:CPU:0*
T0*
_output_shapes	
:�
Read_105/DisableCopyOnReadDisableCopyOnRead8read_105_disablecopyonread_layer_normalization_7_gamma_1*
_output_shapes
 �
Read_105/ReadVariableOpReadVariableOp8read_105_disablecopyonread_layer_normalization_7_gamma_1^Read_105/DisableCopyOnRead*
_output_shapes	
:�*
dtype0_
Identity_210IdentityRead_105/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_211IdentityIdentity_210:output:0"/device:CPU:0*
T0*
_output_shapes	
:�w
Read_106/DisableCopyOnReadDisableCopyOnRead0read_106_disablecopyonread_completeness_kernel_1*
_output_shapes
 �
Read_106/ReadVariableOpReadVariableOp0read_106_disablecopyonread_completeness_kernel_1^Read_106/DisableCopyOnRead*
_output_shapes
:	�*
dtype0c
Identity_212IdentityRead_106/ReadVariableOp:value:0*
T0*
_output_shapes
:	�h
Identity_213IdentityIdentity_212:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_107/DisableCopyOnReadDisableCopyOnRead>read_107_disablecopyonread_multi_head_attention_1_key_kernel_1*
_output_shapes
 �
Read_107/ReadVariableOpReadVariableOp>read_107_disablecopyonread_multi_head_attention_1_key_kernel_1^Read_107/DisableCopyOnRead*#
_output_shapes
:�0*
dtype0g
Identity_214IdentityRead_107/ReadVariableOp:value:0*
T0*#
_output_shapes
:�0l
Identity_215IdentityIdentity_214:output:0"/device:CPU:0*
T0*#
_output_shapes
:�0�
Read_108/DisableCopyOnReadDisableCopyOnRead<read_108_disablecopyonread_multi_head_attention_query_bias_1*
_output_shapes
 �
Read_108/ReadVariableOpReadVariableOp<read_108_disablecopyonread_multi_head_attention_query_bias_1^Read_108/DisableCopyOnRead*
_output_shapes

:0*
dtype0b
Identity_216IdentityRead_108/ReadVariableOp:value:0*
T0*
_output_shapes

:0g
Identity_217IdentityIdentity_216:output:0"/device:CPU:0*
T0*
_output_shapes

:0�
Read_109/DisableCopyOnReadDisableCopyOnRead:read_109_disablecopyonread_multi_head_attention_key_bias_1*
_output_shapes
 �
Read_109/ReadVariableOpReadVariableOp:read_109_disablecopyonread_multi_head_attention_key_bias_1^Read_109/DisableCopyOnRead*
_output_shapes

:0*
dtype0b
Identity_218IdentityRead_109/ReadVariableOp:value:0*
T0*
_output_shapes

:0g
Identity_219IdentityIdentity_218:output:0"/device:CPU:0*
T0*
_output_shapes

:0�
Read_110/DisableCopyOnReadDisableCopyOnReadIread_110_disablecopyonread_multi_head_attention_attention_output_kernel_1*
_output_shapes
 �
Read_110/ReadVariableOpReadVariableOpIread_110_disablecopyonread_multi_head_attention_attention_output_kernel_1^Read_110/DisableCopyOnRead*#
_output_shapes
:0�*
dtype0g
Identity_220IdentityRead_110/ReadVariableOp:value:0*
T0*#
_output_shapes
:0�l
Identity_221IdentityIdentity_220:output:0"/device:CPU:0*
T0*#
_output_shapes
:0�~
Read_111/DisableCopyOnReadDisableCopyOnRead7read_111_disablecopyonread_layer_normalization_2_beta_1*
_output_shapes
 �
Read_111/ReadVariableOpReadVariableOp7read_111_disablecopyonread_layer_normalization_2_beta_1^Read_111/DisableCopyOnRead*
_output_shapes	
:�*
dtype0_
Identity_222IdentityRead_111/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_223IdentityIdentity_222:output:0"/device:CPU:0*
T0*
_output_shapes	
:�p
Read_112/DisableCopyOnReadDisableCopyOnRead)read_112_disablecopyonread_dense_3_bias_1*
_output_shapes
 �
Read_112/ReadVariableOpReadVariableOp)read_112_disablecopyonread_dense_3_bias_1^Read_112/DisableCopyOnRead*
_output_shapes	
:�*
dtype0_
Identity_224IdentityRead_112/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_225IdentityIdentity_224:output:0"/device:CPU:0*
T0*
_output_shapes	
:�
Read_113/DisableCopyOnReadDisableCopyOnRead8read_113_disablecopyonread_layer_normalization_8_gamma_1*
_output_shapes
 �
Read_113/ReadVariableOpReadVariableOp8read_113_disablecopyonread_layer_normalization_8_gamma_1^Read_113/DisableCopyOnRead*
_output_shapes	
:�*
dtype0_
Identity_226IdentityRead_113/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
Identity_227IdentityIdentity_226:output:0"/device:CPU:0*
T0*
_output_shapes	
:�u
Read_114/DisableCopyOnReadDisableCopyOnRead.read_114_disablecopyonread_completeness_bias_1*
_output_shapes
 �
Read_114/ReadVariableOpReadVariableOp.read_114_disablecopyonread_completeness_bias_1^Read_114/DisableCopyOnRead*
_output_shapes
:*
dtype0^
Identity_228IdentityRead_114/ReadVariableOp:value:0*
T0*
_output_shapes
:c
Identity_229IdentityIdentity_228:output:0"/device:CPU:0*
T0*
_output_shapes
:L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �'
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:t*
dtype0*�'
value�'B�'tB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB'variables/46/.ATTRIBUTES/VARIABLE_VALUEB'variables/47/.ATTRIBUTES/VARIABLE_VALUEB'variables/48/.ATTRIBUTES/VARIABLE_VALUEB'variables/49/.ATTRIBUTES/VARIABLE_VALUEB'variables/50/.ATTRIBUTES/VARIABLE_VALUEB'variables/51/.ATTRIBUTES/VARIABLE_VALUEB'variables/52/.ATTRIBUTES/VARIABLE_VALUEB'variables/53/.ATTRIBUTES/VARIABLE_VALUEB'variables/54/.ATTRIBUTES/VARIABLE_VALUEB'variables/55/.ATTRIBUTES/VARIABLE_VALUEB'variables/56/.ATTRIBUTES/VARIABLE_VALUEB'variables/57/.ATTRIBUTES/VARIABLE_VALUEB'variables/58/.ATTRIBUTES/VARIABLE_VALUEB'variables/59/.ATTRIBUTES/VARIABLE_VALUEB'variables/60/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/12/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/13/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/14/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/15/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/16/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/17/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/18/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/19/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/20/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/21/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/22/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/23/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/24/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/25/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/26/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/27/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/28/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/29/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/30/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/31/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/32/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/33/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/34/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/35/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/36/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/37/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/38/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/39/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/40/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/41/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/42/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/43/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/44/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/45/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/46/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/47/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/48/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/49/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/50/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/51/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/52/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/53/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:t*
dtype0*�
value�B�tB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0Identity_163:output:0Identity_165:output:0Identity_167:output:0Identity_169:output:0Identity_171:output:0Identity_173:output:0Identity_175:output:0Identity_177:output:0Identity_179:output:0Identity_181:output:0Identity_183:output:0Identity_185:output:0Identity_187:output:0Identity_189:output:0Identity_191:output:0Identity_193:output:0Identity_195:output:0Identity_197:output:0Identity_199:output:0Identity_201:output:0Identity_203:output:0Identity_205:output:0Identity_207:output:0Identity_209:output:0Identity_211:output:0Identity_213:output:0Identity_215:output:0Identity_217:output:0Identity_219:output:0Identity_221:output:0Identity_223:output:0Identity_225:output:0Identity_227:output:0Identity_229:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *�
dtypesx
v2t							�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_230Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_231IdentityIdentity_230:output:0^NoOp*
T0*
_output_shapes
: �0
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_100/DisableCopyOnRead^Read_100/ReadVariableOp^Read_101/DisableCopyOnRead^Read_101/ReadVariableOp^Read_102/DisableCopyOnRead^Read_102/ReadVariableOp^Read_103/DisableCopyOnRead^Read_103/ReadVariableOp^Read_104/DisableCopyOnRead^Read_104/ReadVariableOp^Read_105/DisableCopyOnRead^Read_105/ReadVariableOp^Read_106/DisableCopyOnRead^Read_106/ReadVariableOp^Read_107/DisableCopyOnRead^Read_107/ReadVariableOp^Read_108/DisableCopyOnRead^Read_108/ReadVariableOp^Read_109/DisableCopyOnRead^Read_109/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_110/DisableCopyOnRead^Read_110/ReadVariableOp^Read_111/DisableCopyOnRead^Read_111/ReadVariableOp^Read_112/DisableCopyOnRead^Read_112/ReadVariableOp^Read_113/DisableCopyOnRead^Read_113/ReadVariableOp^Read_114/DisableCopyOnRead^Read_114/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_81/DisableCopyOnRead^Read_81/ReadVariableOp^Read_82/DisableCopyOnRead^Read_82/ReadVariableOp^Read_83/DisableCopyOnRead^Read_83/ReadVariableOp^Read_84/DisableCopyOnRead^Read_84/ReadVariableOp^Read_85/DisableCopyOnRead^Read_85/ReadVariableOp^Read_86/DisableCopyOnRead^Read_86/ReadVariableOp^Read_87/DisableCopyOnRead^Read_87/ReadVariableOp^Read_88/DisableCopyOnRead^Read_88/ReadVariableOp^Read_89/DisableCopyOnRead^Read_89/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp^Read_90/DisableCopyOnRead^Read_90/ReadVariableOp^Read_91/DisableCopyOnRead^Read_91/ReadVariableOp^Read_92/DisableCopyOnRead^Read_92/ReadVariableOp^Read_93/DisableCopyOnRead^Read_93/ReadVariableOp^Read_94/DisableCopyOnRead^Read_94/ReadVariableOp^Read_95/DisableCopyOnRead^Read_95/ReadVariableOp^Read_96/DisableCopyOnRead^Read_96/ReadVariableOp^Read_97/DisableCopyOnRead^Read_97/ReadVariableOp^Read_98/DisableCopyOnRead^Read_98/ReadVariableOp^Read_99/DisableCopyOnRead^Read_99/ReadVariableOp*
_output_shapes
 "%
identity_231Identity_231:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp28
Read_100/DisableCopyOnReadRead_100/DisableCopyOnRead22
Read_100/ReadVariableOpRead_100/ReadVariableOp28
Read_101/DisableCopyOnReadRead_101/DisableCopyOnRead22
Read_101/ReadVariableOpRead_101/ReadVariableOp28
Read_102/DisableCopyOnReadRead_102/DisableCopyOnRead22
Read_102/ReadVariableOpRead_102/ReadVariableOp28
Read_103/DisableCopyOnReadRead_103/DisableCopyOnRead22
Read_103/ReadVariableOpRead_103/ReadVariableOp28
Read_104/DisableCopyOnReadRead_104/DisableCopyOnRead22
Read_104/ReadVariableOpRead_104/ReadVariableOp28
Read_105/DisableCopyOnReadRead_105/DisableCopyOnRead22
Read_105/ReadVariableOpRead_105/ReadVariableOp28
Read_106/DisableCopyOnReadRead_106/DisableCopyOnRead22
Read_106/ReadVariableOpRead_106/ReadVariableOp28
Read_107/DisableCopyOnReadRead_107/DisableCopyOnRead22
Read_107/ReadVariableOpRead_107/ReadVariableOp28
Read_108/DisableCopyOnReadRead_108/DisableCopyOnRead22
Read_108/ReadVariableOpRead_108/ReadVariableOp28
Read_109/DisableCopyOnReadRead_109/DisableCopyOnRead22
Read_109/ReadVariableOpRead_109/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp28
Read_110/DisableCopyOnReadRead_110/DisableCopyOnRead22
Read_110/ReadVariableOpRead_110/ReadVariableOp28
Read_111/DisableCopyOnReadRead_111/DisableCopyOnRead22
Read_111/ReadVariableOpRead_111/ReadVariableOp28
Read_112/DisableCopyOnReadRead_112/DisableCopyOnRead22
Read_112/ReadVariableOpRead_112/ReadVariableOp28
Read_113/DisableCopyOnReadRead_113/DisableCopyOnRead22
Read_113/ReadVariableOpRead_113/ReadVariableOp28
Read_114/DisableCopyOnReadRead_114/DisableCopyOnRead22
Read_114/ReadVariableOpRead_114/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp26
Read_81/DisableCopyOnReadRead_81/DisableCopyOnRead20
Read_81/ReadVariableOpRead_81/ReadVariableOp26
Read_82/DisableCopyOnReadRead_82/DisableCopyOnRead20
Read_82/ReadVariableOpRead_82/ReadVariableOp26
Read_83/DisableCopyOnReadRead_83/DisableCopyOnRead20
Read_83/ReadVariableOpRead_83/ReadVariableOp26
Read_84/DisableCopyOnReadRead_84/DisableCopyOnRead20
Read_84/ReadVariableOpRead_84/ReadVariableOp26
Read_85/DisableCopyOnReadRead_85/DisableCopyOnRead20
Read_85/ReadVariableOpRead_85/ReadVariableOp26
Read_86/DisableCopyOnReadRead_86/DisableCopyOnRead20
Read_86/ReadVariableOpRead_86/ReadVariableOp26
Read_87/DisableCopyOnReadRead_87/DisableCopyOnRead20
Read_87/ReadVariableOpRead_87/ReadVariableOp26
Read_88/DisableCopyOnReadRead_88/DisableCopyOnRead20
Read_88/ReadVariableOpRead_88/ReadVariableOp26
Read_89/DisableCopyOnReadRead_89/DisableCopyOnRead20
Read_89/ReadVariableOpRead_89/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp26
Read_90/DisableCopyOnReadRead_90/DisableCopyOnRead20
Read_90/ReadVariableOpRead_90/ReadVariableOp26
Read_91/DisableCopyOnReadRead_91/DisableCopyOnRead20
Read_91/ReadVariableOpRead_91/ReadVariableOp26
Read_92/DisableCopyOnReadRead_92/DisableCopyOnRead20
Read_92/ReadVariableOpRead_92/ReadVariableOp26
Read_93/DisableCopyOnReadRead_93/DisableCopyOnRead20
Read_93/ReadVariableOpRead_93/ReadVariableOp26
Read_94/DisableCopyOnReadRead_94/DisableCopyOnRead20
Read_94/ReadVariableOpRead_94/ReadVariableOp26
Read_95/DisableCopyOnReadRead_95/DisableCopyOnRead20
Read_95/ReadVariableOpRead_95/ReadVariableOp26
Read_96/DisableCopyOnReadRead_96/DisableCopyOnRead20
Read_96/ReadVariableOpRead_96/ReadVariableOp26
Read_97/DisableCopyOnReadRead_97/DisableCopyOnRead20
Read_97/ReadVariableOpRead_97/ReadVariableOp26
Read_98/DisableCopyOnReadRead_98/DisableCopyOnRead20
Read_98/ReadVariableOpRead_98/ReadVariableOp26
Read_99/DisableCopyOnReadRead_99/DisableCopyOnRead20
Read_99/ReadVariableOpRead_99/ReadVariableOp:=t9

_output_shapes
: 

_user_specified_nameConst:3s/
-
_user_specified_namecompleteness/bias_1:=r9
7
_user_specified_namelayer_normalization_8/gamma_1:.q*
(
_user_specified_namedense_3/bias_1:<p8
6
_user_specified_namelayer_normalization_2/beta_1:NoJ
H
_user_specified_name0.multi_head_attention/attention_output/kernel_1:?n;
9
_user_specified_name!multi_head_attention/key/bias_1:Am=
;
_user_specified_name#!multi_head_attention/query/bias_1:Cl?
=
_user_specified_name%#multi_head_attention_1/key/kernel_1:5k1
/
_user_specified_namecompleteness/kernel_1:=j9
7
_user_specified_namelayer_normalization_7/gamma_1:<i8
6
_user_specified_namelayer_normalization_4/beta_1:0h,
*
_user_specified_namedense_3/kernel_1:=g9
7
_user_specified_namelayer_normalization_3/gamma_1:Cf?
=
_user_specified_name%#multi_head_attention/value/kernel_1:Ae=
;
_user_specified_name#!multi_head_attention_1/key/bias_1:<d8
6
_user_specified_namelayer_normalization_6/beta_1:<c8
6
_user_specified_namelayer_normalization_8/beta_1:=b9
7
_user_specified_namelayer_normalization_5/gamma_1:.a*
(
_user_specified_namedense_2/bias_1:,`(
&
_user_specified_namedense/bias_1:A_=
;
_user_specified_name#!multi_head_attention/value/bias_1:C^?
=
_user_specified_name%#multi_head_attention_1/value/bias_1:;]7
5
_user_specified_namelayer_normalization/gamma_1:6\2
0
_user_specified_nameunderstanding/kernel_1:.[*
(
_user_specified_namedense_6/bias_1:0Z,
*
_user_specified_namedense_2/kernel_1:=Y9
7
_user_specified_namelayer_normalization_2/gamma_1:LXH
F
_user_specified_name.,multi_head_attention/attention_output/bias_1:NWJ
H
_user_specified_name0.multi_head_attention_1/attention_output/bias_1:=V9
7
_user_specified_namelayer_normalization_1/gamma_1:.U*
(
_user_specified_namedense_5/bias_1:<T8
6
_user_specified_namelayer_normalization_5/beta_1:.S*
(
_user_specified_namedense_4/bias_1:0R,
*
_user_specified_namedense_6/kernel_1:=Q9
7
_user_specified_namelayer_normalization_4/gamma_1:.P*
(
_user_specified_namedense/kernel_1:EOA
?
_user_specified_name'%multi_head_attention_1/query/kernel_1:4N0
.
_user_specified_nameunderstanding/bias_1:=M9
7
_user_specified_namelayer_normalization_6/gamma_1:0L,
*
_user_specified_namedense_5/kernel_1:.K*
(
_user_specified_namedense_7/bias_1:0J,
*
_user_specified_namedense_4/kernel_1:CI?
=
_user_specified_name%#multi_head_attention/query/kernel_1:<H8
6
_user_specified_namelayer_normalization_1/beta_1:0G,
*
_user_specified_namedense_7/kernel_1:<F8
6
_user_specified_namelayer_normalization_7/beta_1:<E8
6
_user_specified_namelayer_normalization_3/beta_1:.D*
(
_user_specified_namedense_1/bias_1:PCL
J
_user_specified_name20multi_head_attention_1/attention_output/kernel_1::B6
4
_user_specified_namelayer_normalization/beta_1:0A,
*
_user_specified_namedense_1/kernel_1:A@=
;
_user_specified_name#!multi_head_attention/key/kernel_1:E?A
?
_user_specified_name'%multi_head_attention_1/value/kernel_1:C>?
=
_user_specified_name%#multi_head_attention_1/query/bias_1:(=$
"
_user_specified_name
Variable:*<&
$
_user_specified_name
Variable_1:*;&
$
_user_specified_name
Variable_2:*:&
$
_user_specified_name
Variable_3:*9&
$
_user_specified_name
Variable_4:*8&
$
_user_specified_name
Variable_5:*7&
$
_user_specified_name
Variable_6:*6&
$
_user_specified_name
Variable_7:*5&
$
_user_specified_name
Variable_8:*4&
$
_user_specified_name
Variable_9:+3'
%
_user_specified_nameVariable_10:+2'
%
_user_specified_nameVariable_11:+1'
%
_user_specified_nameVariable_12:+0'
%
_user_specified_nameVariable_13:+/'
%
_user_specified_nameVariable_14:+.'
%
_user_specified_nameVariable_15:+-'
%
_user_specified_nameVariable_16:+,'
%
_user_specified_nameVariable_17:++'
%
_user_specified_nameVariable_18:+*'
%
_user_specified_nameVariable_19:+)'
%
_user_specified_nameVariable_20:+('
%
_user_specified_nameVariable_21:+''
%
_user_specified_nameVariable_22:+&'
%
_user_specified_nameVariable_23:+%'
%
_user_specified_nameVariable_24:+$'
%
_user_specified_nameVariable_25:+#'
%
_user_specified_nameVariable_26:+"'
%
_user_specified_nameVariable_27:+!'
%
_user_specified_nameVariable_28:+ '
%
_user_specified_nameVariable_29:+'
%
_user_specified_nameVariable_30:+'
%
_user_specified_nameVariable_31:+'
%
_user_specified_nameVariable_32:+'
%
_user_specified_nameVariable_33:+'
%
_user_specified_nameVariable_34:+'
%
_user_specified_nameVariable_35:+'
%
_user_specified_nameVariable_36:+'
%
_user_specified_nameVariable_37:+'
%
_user_specified_nameVariable_38:+'
%
_user_specified_nameVariable_39:+'
%
_user_specified_nameVariable_40:+'
%
_user_specified_nameVariable_41:+'
%
_user_specified_nameVariable_42:+'
%
_user_specified_nameVariable_43:+'
%
_user_specified_nameVariable_44:+'
%
_user_specified_nameVariable_45:+'
%
_user_specified_nameVariable_46:+'
%
_user_specified_nameVariable_47:+'
%
_user_specified_nameVariable_48:+'
%
_user_specified_nameVariable_49:+'
%
_user_specified_nameVariable_50:+
'
%
_user_specified_nameVariable_51:+	'
%
_user_specified_nameVariable_52:+'
%
_user_specified_nameVariable_53:+'
%
_user_specified_nameVariable_54:+'
%
_user_specified_nameVariable_55:+'
%
_user_specified_nameVariable_56:+'
%
_user_specified_nameVariable_57:+'
%
_user_specified_nameVariable_58:+'
%
_user_specified_nameVariable_59:+'
%
_user_specified_nameVariable_60:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�,
�
-__inference_signature_wrapper___call___138211
explanation_input

text_input
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	� 
	unknown_3:�0
	unknown_4:0 
	unknown_5:�0
	unknown_6:0 
	unknown_7:�0
	unknown_8:0 
	unknown_9:0�

unknown_10:	�!

unknown_11:�0

unknown_12:0!

unknown_13:�0

unknown_14:0!

unknown_15:�0

unknown_16:0!

unknown_17:0�

unknown_18:	�

unknown_19:
��

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:
��

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:
��

unknown_28:	�

unknown_29:
��

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:
��

unknown_34:	�

unknown_35:
��

unknown_36:	�

unknown_37:	�

unknown_38:	�

unknown_39:	�

unknown_40:	�

unknown_41:
��

unknown_42:	�

unknown_43:
��

unknown_44:	�

unknown_45:	�

unknown_46:	�

unknown_47:	�

unknown_48:	�

unknown_49:	�

unknown_50:

unknown_51:	�

unknown_52:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
text_inputexplanation_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52*C
Tin<
:28*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*X
_read_only_resource_inputs:
86	
 !"#$%&'()*+,-./01234567*2
config_proto" 

CPU

GPU 2J 8� �J *$
fR
__inference___call___138094o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&7"
 
_user_specified_name138205:&6"
 
_user_specified_name138203:&5"
 
_user_specified_name138201:&4"
 
_user_specified_name138199:&3"
 
_user_specified_name138197:&2"
 
_user_specified_name138195:&1"
 
_user_specified_name138193:&0"
 
_user_specified_name138191:&/"
 
_user_specified_name138189:&."
 
_user_specified_name138187:&-"
 
_user_specified_name138185:&,"
 
_user_specified_name138183:&+"
 
_user_specified_name138181:&*"
 
_user_specified_name138179:&)"
 
_user_specified_name138177:&("
 
_user_specified_name138175:&'"
 
_user_specified_name138173:&&"
 
_user_specified_name138171:&%"
 
_user_specified_name138169:&$"
 
_user_specified_name138167:&#"
 
_user_specified_name138165:&""
 
_user_specified_name138163:&!"
 
_user_specified_name138161:& "
 
_user_specified_name138159:&"
 
_user_specified_name138157:&"
 
_user_specified_name138155:&"
 
_user_specified_name138153:&"
 
_user_specified_name138151:&"
 
_user_specified_name138149:&"
 
_user_specified_name138147:&"
 
_user_specified_name138145:&"
 
_user_specified_name138143:&"
 
_user_specified_name138141:&"
 
_user_specified_name138139:&"
 
_user_specified_name138137:&"
 
_user_specified_name138135:&"
 
_user_specified_name138133:&"
 
_user_specified_name138131:&"
 
_user_specified_name138129:&"
 
_user_specified_name138127:&"
 
_user_specified_name138125:&"
 
_user_specified_name138123:&"
 
_user_specified_name138121:&"
 
_user_specified_name138119:&"
 
_user_specified_name138117:&
"
 
_user_specified_name138115:&	"
 
_user_specified_name138113:&"
 
_user_specified_name138111:&"
 
_user_specified_name138109:&"
 
_user_specified_name138107:&"
 
_user_specified_name138105:&"
 
_user_specified_name138103:&"
 
_user_specified_name138101:&"
 
_user_specified_name138099:TP
(
_output_shapes
:����������
$
_user_specified_name
text_input:[ W
(
_output_shapes
:����������
+
_user_specified_nameexplanation_input
��
�:
__inference___call___138094

text_input
explanation_inputS
Dfunctional_1_layer_normalization_1_1_reshape_readvariableop_resource:	�U
Ffunctional_1_layer_normalization_1_1_reshape_1_readvariableop_resource:	�Q
Bfunctional_1_layer_normalization_2_reshape_readvariableop_resource:	�S
Dfunctional_1_layer_normalization_2_reshape_1_readvariableop_resource:	�Y
Bfunctional_1_multi_head_attention_1_1_cast_readvariableop_resource:�0S
Afunctional_1_multi_head_attention_1_1_add_readvariableop_resource:0[
Dfunctional_1_multi_head_attention_1_1_cast_1_readvariableop_resource:�0U
Cfunctional_1_multi_head_attention_1_1_add_1_readvariableop_resource:0[
Dfunctional_1_multi_head_attention_1_1_cast_2_readvariableop_resource:�0U
Cfunctional_1_multi_head_attention_1_1_add_2_readvariableop_resource:0[
Dfunctional_1_multi_head_attention_1_1_cast_4_readvariableop_resource:0�R
Cfunctional_1_multi_head_attention_1_1_add_3_readvariableop_resource:	�W
@functional_1_multi_head_attention_2_cast_readvariableop_resource:�0Q
?functional_1_multi_head_attention_2_add_readvariableop_resource:0Y
Bfunctional_1_multi_head_attention_2_cast_1_readvariableop_resource:�0S
Afunctional_1_multi_head_attention_2_add_1_readvariableop_resource:0Y
Bfunctional_1_multi_head_attention_2_cast_2_readvariableop_resource:�0S
Afunctional_1_multi_head_attention_2_add_2_readvariableop_resource:0Y
Bfunctional_1_multi_head_attention_2_cast_4_readvariableop_resource:0�P
Afunctional_1_multi_head_attention_2_add_3_readvariableop_resource:	�E
1functional_1_dense_1_cast_readvariableop_resource:
��C
4functional_1_dense_1_biasadd_readvariableop_resource:	�S
Dfunctional_1_layer_normalization_2_2_reshape_readvariableop_resource:	�U
Ffunctional_1_layer_normalization_2_2_reshape_1_readvariableop_resource:	�G
3functional_1_dense_1_2_cast_readvariableop_resource:
��E
6functional_1_dense_1_2_biasadd_readvariableop_resource:	�S
Dfunctional_1_layer_normalization_3_1_reshape_readvariableop_resource:	�U
Ffunctional_1_layer_normalization_3_1_reshape_1_readvariableop_resource:	�G
3functional_1_dense_2_1_cast_readvariableop_resource:
��E
6functional_1_dense_2_1_biasadd_readvariableop_resource:	�G
3functional_1_dense_3_1_cast_readvariableop_resource:
��E
6functional_1_dense_3_1_biasadd_readvariableop_resource:	�S
Dfunctional_1_layer_normalization_4_1_reshape_readvariableop_resource:	�U
Ffunctional_1_layer_normalization_4_1_reshape_1_readvariableop_resource:	�G
3functional_1_dense_6_1_cast_readvariableop_resource:
��E
6functional_1_dense_6_1_biasadd_readvariableop_resource:	�G
3functional_1_dense_4_1_cast_readvariableop_resource:
��E
6functional_1_dense_4_1_biasadd_readvariableop_resource:	�S
Dfunctional_1_layer_normalization_7_1_reshape_readvariableop_resource:	�U
Ffunctional_1_layer_normalization_7_1_reshape_1_readvariableop_resource:	�S
Dfunctional_1_layer_normalization_5_1_reshape_readvariableop_resource:	�U
Ffunctional_1_layer_normalization_5_1_reshape_1_readvariableop_resource:	�G
3functional_1_dense_7_1_cast_readvariableop_resource:
��E
6functional_1_dense_7_1_biasadd_readvariableop_resource:	�G
3functional_1_dense_5_1_cast_readvariableop_resource:
��E
6functional_1_dense_5_1_biasadd_readvariableop_resource:	�S
Dfunctional_1_layer_normalization_8_1_reshape_readvariableop_resource:	�U
Ffunctional_1_layer_normalization_8_1_reshape_1_readvariableop_resource:	�S
Dfunctional_1_layer_normalization_6_1_reshape_readvariableop_resource:	�U
Ffunctional_1_layer_normalization_6_1_reshape_1_readvariableop_resource:	�K
8functional_1_completeness_1_cast_readvariableop_resource:	�I
;functional_1_completeness_1_biasadd_readvariableop_resource:L
9functional_1_understanding_1_cast_readvariableop_resource:	�J
<functional_1_understanding_1_biasadd_readvariableop_resource:
identity

identity_1��2functional_1/completeness_1/BiasAdd/ReadVariableOp�/functional_1/completeness_1/Cast/ReadVariableOp�+functional_1/dense_1/BiasAdd/ReadVariableOp�(functional_1/dense_1/Cast/ReadVariableOp�-functional_1/dense_1_2/BiasAdd/ReadVariableOp�*functional_1/dense_1_2/Cast/ReadVariableOp�-functional_1/dense_2_1/BiasAdd/ReadVariableOp�*functional_1/dense_2_1/Cast/ReadVariableOp�-functional_1/dense_3_1/BiasAdd/ReadVariableOp�*functional_1/dense_3_1/Cast/ReadVariableOp�-functional_1/dense_4_1/BiasAdd/ReadVariableOp�*functional_1/dense_4_1/Cast/ReadVariableOp�-functional_1/dense_5_1/BiasAdd/ReadVariableOp�*functional_1/dense_5_1/Cast/ReadVariableOp�-functional_1/dense_6_1/BiasAdd/ReadVariableOp�*functional_1/dense_6_1/Cast/ReadVariableOp�-functional_1/dense_7_1/BiasAdd/ReadVariableOp�*functional_1/dense_7_1/Cast/ReadVariableOp�;functional_1/layer_normalization_1_1/Reshape/ReadVariableOp�=functional_1/layer_normalization_1_1/Reshape_1/ReadVariableOp�9functional_1/layer_normalization_2/Reshape/ReadVariableOp�;functional_1/layer_normalization_2/Reshape_1/ReadVariableOp�;functional_1/layer_normalization_2_2/Reshape/ReadVariableOp�=functional_1/layer_normalization_2_2/Reshape_1/ReadVariableOp�;functional_1/layer_normalization_3_1/Reshape/ReadVariableOp�=functional_1/layer_normalization_3_1/Reshape_1/ReadVariableOp�;functional_1/layer_normalization_4_1/Reshape/ReadVariableOp�=functional_1/layer_normalization_4_1/Reshape_1/ReadVariableOp�;functional_1/layer_normalization_5_1/Reshape/ReadVariableOp�=functional_1/layer_normalization_5_1/Reshape_1/ReadVariableOp�;functional_1/layer_normalization_6_1/Reshape/ReadVariableOp�=functional_1/layer_normalization_6_1/Reshape_1/ReadVariableOp�;functional_1/layer_normalization_7_1/Reshape/ReadVariableOp�=functional_1/layer_normalization_7_1/Reshape_1/ReadVariableOp�;functional_1/layer_normalization_8_1/Reshape/ReadVariableOp�=functional_1/layer_normalization_8_1/Reshape_1/ReadVariableOp�9functional_1/multi_head_attention_1_1/Cast/ReadVariableOp�;functional_1/multi_head_attention_1_1/Cast_1/ReadVariableOp�;functional_1/multi_head_attention_1_1/Cast_2/ReadVariableOp�;functional_1/multi_head_attention_1_1/Cast_4/ReadVariableOp�8functional_1/multi_head_attention_1_1/add/ReadVariableOp�:functional_1/multi_head_attention_1_1/add_1/ReadVariableOp�:functional_1/multi_head_attention_1_1/add_2/ReadVariableOp�:functional_1/multi_head_attention_1_1/add_3/ReadVariableOp�7functional_1/multi_head_attention_2/Cast/ReadVariableOp�9functional_1/multi_head_attention_2/Cast_1/ReadVariableOp�9functional_1/multi_head_attention_2/Cast_2/ReadVariableOp�9functional_1/multi_head_attention_2/Cast_4/ReadVariableOp�6functional_1/multi_head_attention_2/add/ReadVariableOp�8functional_1/multi_head_attention_2/add_1/ReadVariableOp�8functional_1/multi_head_attention_2/add_2/ReadVariableOp�8functional_1/multi_head_attention_2/add_3/ReadVariableOp�3functional_1/understanding_1/BiasAdd/ReadVariableOp�0functional_1/understanding_1/Cast/ReadVariableOp�
Cfunctional_1/layer_normalization_1_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
1functional_1/layer_normalization_1_1/moments/meanMeanexplanation_inputLfunctional_1/layer_normalization_1_1/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
9functional_1/layer_normalization_1_1/moments/StopGradientStopGradient:functional_1/layer_normalization_1_1/moments/mean:output:0*
T0*'
_output_shapes
:����������
>functional_1/layer_normalization_1_1/moments/SquaredDifferenceSquaredDifferenceexplanation_inputBfunctional_1/layer_normalization_1_1/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
Gfunctional_1/layer_normalization_1_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
5functional_1/layer_normalization_1_1/moments/varianceMeanBfunctional_1/layer_normalization_1_1/moments/SquaredDifference:z:0Pfunctional_1/layer_normalization_1_1/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
;functional_1/layer_normalization_1_1/Reshape/ReadVariableOpReadVariableOpDfunctional_1_layer_normalization_1_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2functional_1/layer_normalization_1_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
,functional_1/layer_normalization_1_1/ReshapeReshapeCfunctional_1/layer_normalization_1_1/Reshape/ReadVariableOp:value:0;functional_1/layer_normalization_1_1/Reshape/shape:output:0*
T0*
_output_shapes
:	��
=functional_1/layer_normalization_1_1/Reshape_1/ReadVariableOpReadVariableOpFfunctional_1_layer_normalization_1_1_reshape_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
4functional_1/layer_normalization_1_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
.functional_1/layer_normalization_1_1/Reshape_1ReshapeEfunctional_1/layer_normalization_1_1/Reshape_1/ReadVariableOp:value:0=functional_1/layer_normalization_1_1/Reshape_1/shape:output:0*
T0*
_output_shapes
:	�o
*functional_1/layer_normalization_1_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
(functional_1/layer_normalization_1_1/addAddV2>functional_1/layer_normalization_1_1/moments/variance:output:03functional_1/layer_normalization_1_1/add/y:output:0*
T0*'
_output_shapes
:����������
*functional_1/layer_normalization_1_1/RsqrtRsqrt,functional_1/layer_normalization_1_1/add:z:0*
T0*'
_output_shapes
:����������
(functional_1/layer_normalization_1_1/mulMul.functional_1/layer_normalization_1_1/Rsqrt:y:05functional_1/layer_normalization_1_1/Reshape:output:0*
T0*(
_output_shapes
:�����������
(functional_1/layer_normalization_1_1/NegNeg:functional_1/layer_normalization_1_1/moments/mean:output:0*
T0*'
_output_shapes
:����������
*functional_1/layer_normalization_1_1/mul_1Mul,functional_1/layer_normalization_1_1/Neg:y:0,functional_1/layer_normalization_1_1/mul:z:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_1_1/add_1AddV2.functional_1/layer_normalization_1_1/mul_1:z:07functional_1/layer_normalization_1_1/Reshape_1:output:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_1_1/mul_2Mulexplanation_input,functional_1/layer_normalization_1_1/mul:z:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_1_1/add_2AddV2.functional_1/layer_normalization_1_1/mul_2:z:0.functional_1/layer_normalization_1_1/add_1:z:0*
T0*(
_output_shapes
:�����������
Afunctional_1/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
/functional_1/layer_normalization_2/moments/meanMean
text_inputJfunctional_1/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
7functional_1/layer_normalization_2/moments/StopGradientStopGradient8functional_1/layer_normalization_2/moments/mean:output:0*
T0*'
_output_shapes
:����������
<functional_1/layer_normalization_2/moments/SquaredDifferenceSquaredDifference
text_input@functional_1/layer_normalization_2/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
Efunctional_1/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
3functional_1/layer_normalization_2/moments/varianceMean@functional_1/layer_normalization_2/moments/SquaredDifference:z:0Nfunctional_1/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
9functional_1/layer_normalization_2/Reshape/ReadVariableOpReadVariableOpBfunctional_1_layer_normalization_2_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
0functional_1/layer_normalization_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
*functional_1/layer_normalization_2/ReshapeReshapeAfunctional_1/layer_normalization_2/Reshape/ReadVariableOp:value:09functional_1/layer_normalization_2/Reshape/shape:output:0*
T0*
_output_shapes
:	��
;functional_1/layer_normalization_2/Reshape_1/ReadVariableOpReadVariableOpDfunctional_1_layer_normalization_2_reshape_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2functional_1/layer_normalization_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
,functional_1/layer_normalization_2/Reshape_1ReshapeCfunctional_1/layer_normalization_2/Reshape_1/ReadVariableOp:value:0;functional_1/layer_normalization_2/Reshape_1/shape:output:0*
T0*
_output_shapes
:	�m
(functional_1/layer_normalization_2/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
&functional_1/layer_normalization_2/addAddV2<functional_1/layer_normalization_2/moments/variance:output:01functional_1/layer_normalization_2/add/y:output:0*
T0*'
_output_shapes
:����������
(functional_1/layer_normalization_2/RsqrtRsqrt*functional_1/layer_normalization_2/add:z:0*
T0*'
_output_shapes
:����������
&functional_1/layer_normalization_2/mulMul,functional_1/layer_normalization_2/Rsqrt:y:03functional_1/layer_normalization_2/Reshape:output:0*
T0*(
_output_shapes
:�����������
&functional_1/layer_normalization_2/NegNeg8functional_1/layer_normalization_2/moments/mean:output:0*
T0*'
_output_shapes
:����������
(functional_1/layer_normalization_2/mul_1Mul*functional_1/layer_normalization_2/Neg:y:0*functional_1/layer_normalization_2/mul:z:0*
T0*(
_output_shapes
:�����������
(functional_1/layer_normalization_2/add_1AddV2,functional_1/layer_normalization_2/mul_1:z:05functional_1/layer_normalization_2/Reshape_1:output:0*
T0*(
_output_shapes
:�����������
(functional_1/layer_normalization_2/mul_2Mul
text_input*functional_1/layer_normalization_2/mul:z:0*
T0*(
_output_shapes
:�����������
(functional_1/layer_normalization_2/add_2AddV2,functional_1/layer_normalization_2/mul_2:z:0,functional_1/layer_normalization_2/add_1:z:0*
T0*(
_output_shapes
:�����������
functional_1/reshape_1_1/ShapeShape.functional_1/layer_normalization_1_1/add_2:z:0*
T0*
_output_shapes
::��v
,functional_1/reshape_1_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.functional_1/reshape_1_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.functional_1/reshape_1_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&functional_1/reshape_1_1/strided_sliceStridedSlice'functional_1/reshape_1_1/Shape:output:05functional_1/reshape_1_1/strided_slice/stack:output:07functional_1/reshape_1_1/strided_slice/stack_1:output:07functional_1/reshape_1_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(functional_1/reshape_1_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :k
(functional_1/reshape_1_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :��
&functional_1/reshape_1_1/Reshape/shapePack/functional_1/reshape_1_1/strided_slice:output:01functional_1/reshape_1_1/Reshape/shape/1:output:01functional_1/reshape_1_1/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
 functional_1/reshape_1_1/ReshapeReshape.functional_1/layer_normalization_1_1/add_2:z:0/functional_1/reshape_1_1/Reshape/shape:output:0*
T0*,
_output_shapes
:�����������
functional_1/reshape_2/ShapeShape,functional_1/layer_normalization_2/add_2:z:0*
T0*
_output_shapes
::��t
*functional_1/reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,functional_1/reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,functional_1/reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$functional_1/reshape_2/strided_sliceStridedSlice%functional_1/reshape_2/Shape:output:03functional_1/reshape_2/strided_slice/stack:output:05functional_1/reshape_2/strided_slice/stack_1:output:05functional_1/reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&functional_1/reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :i
&functional_1/reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :��
$functional_1/reshape_2/Reshape/shapePack-functional_1/reshape_2/strided_slice:output:0/functional_1/reshape_2/Reshape/shape/1:output:0/functional_1/reshape_2/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
functional_1/reshape_2/ReshapeReshape,functional_1/layer_normalization_2/add_2:z:0-functional_1/reshape_2/Reshape/shape:output:0*
T0*,
_output_shapes
:�����������
9functional_1/multi_head_attention_1_1/Cast/ReadVariableOpReadVariableOpBfunctional_1_multi_head_attention_1_1_cast_readvariableop_resource*#
_output_shapes
:�0*
dtype0�
3functional_1/multi_head_attention_1_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�   �����
-functional_1/multi_head_attention_1_1/ReshapeReshapeAfunctional_1/multi_head_attention_1_1/Cast/ReadVariableOp:value:0<functional_1/multi_head_attention_1_1/Reshape/shape:output:0*
T0* 
_output_shapes
:
���
,functional_1/multi_head_attention_1_1/MatMulBatchMatMulV2)functional_1/reshape_1_1/Reshape:output:06functional_1/multi_head_attention_1_1/Reshape:output:0*
T0*,
_output_shapes
:�����������
5functional_1/multi_head_attention_1_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����      0   �
/functional_1/multi_head_attention_1_1/Reshape_1Reshape5functional_1/multi_head_attention_1_1/MatMul:output:0>functional_1/multi_head_attention_1_1/Reshape_1/shape:output:0*
T0*/
_output_shapes
:���������0�
8functional_1/multi_head_attention_1_1/add/ReadVariableOpReadVariableOpAfunctional_1_multi_head_attention_1_1_add_readvariableop_resource*
_output_shapes

:0*
dtype0�
)functional_1/multi_head_attention_1_1/addAddV28functional_1/multi_head_attention_1_1/Reshape_1:output:0@functional_1/multi_head_attention_1_1/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0�
;functional_1/multi_head_attention_1_1/Cast_1/ReadVariableOpReadVariableOpDfunctional_1_multi_head_attention_1_1_cast_1_readvariableop_resource*#
_output_shapes
:�0*
dtype0�
5functional_1/multi_head_attention_1_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"�   �����
/functional_1/multi_head_attention_1_1/Reshape_2ReshapeCfunctional_1/multi_head_attention_1_1/Cast_1/ReadVariableOp:value:0>functional_1/multi_head_attention_1_1/Reshape_2/shape:output:0*
T0* 
_output_shapes
:
���
.functional_1/multi_head_attention_1_1/MatMul_1BatchMatMulV2)functional_1/reshape_1_1/Reshape:output:08functional_1/multi_head_attention_1_1/Reshape_2:output:0*
T0*,
_output_shapes
:�����������
5functional_1/multi_head_attention_1_1/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����      0   �
/functional_1/multi_head_attention_1_1/Reshape_3Reshape7functional_1/multi_head_attention_1_1/MatMul_1:output:0>functional_1/multi_head_attention_1_1/Reshape_3/shape:output:0*
T0*/
_output_shapes
:���������0�
:functional_1/multi_head_attention_1_1/add_1/ReadVariableOpReadVariableOpCfunctional_1_multi_head_attention_1_1_add_1_readvariableop_resource*
_output_shapes

:0*
dtype0�
+functional_1/multi_head_attention_1_1/add_1AddV28functional_1/multi_head_attention_1_1/Reshape_3:output:0Bfunctional_1/multi_head_attention_1_1/add_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0�
;functional_1/multi_head_attention_1_1/Cast_2/ReadVariableOpReadVariableOpDfunctional_1_multi_head_attention_1_1_cast_2_readvariableop_resource*#
_output_shapes
:�0*
dtype0�
5functional_1/multi_head_attention_1_1/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"�   �����
/functional_1/multi_head_attention_1_1/Reshape_4ReshapeCfunctional_1/multi_head_attention_1_1/Cast_2/ReadVariableOp:value:0>functional_1/multi_head_attention_1_1/Reshape_4/shape:output:0*
T0* 
_output_shapes
:
���
.functional_1/multi_head_attention_1_1/MatMul_2BatchMatMulV2)functional_1/reshape_1_1/Reshape:output:08functional_1/multi_head_attention_1_1/Reshape_4:output:0*
T0*,
_output_shapes
:�����������
5functional_1/multi_head_attention_1_1/Reshape_5/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����      0   �
/functional_1/multi_head_attention_1_1/Reshape_5Reshape7functional_1/multi_head_attention_1_1/MatMul_2:output:0>functional_1/multi_head_attention_1_1/Reshape_5/shape:output:0*
T0*/
_output_shapes
:���������0�
:functional_1/multi_head_attention_1_1/add_2/ReadVariableOpReadVariableOpCfunctional_1_multi_head_attention_1_1_add_2_readvariableop_resource*
_output_shapes

:0*
dtype0�
+functional_1/multi_head_attention_1_1/add_2AddV28functional_1/multi_head_attention_1_1/Reshape_5:output:0Bfunctional_1/multi_head_attention_1_1/add_2/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0�
+functional_1/multi_head_attention_1_1/ShapeShape/functional_1/multi_head_attention_1_1/add_1:z:0*
T0*
_output_shapes
::���
9functional_1/multi_head_attention_1_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
;functional_1/multi_head_attention_1_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
;functional_1/multi_head_attention_1_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3functional_1/multi_head_attention_1_1/strided_sliceStridedSlice4functional_1/multi_head_attention_1_1/Shape:output:0Bfunctional_1/multi_head_attention_1_1/strided_slice/stack:output:0Dfunctional_1/multi_head_attention_1_1/strided_slice/stack_1:output:0Dfunctional_1/multi_head_attention_1_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
3functional_1/multi_head_attention_1_1/einsum/EinsumEinsum-functional_1/multi_head_attention_1_1/add:z:0/functional_1/multi_head_attention_1_1/add_1:z:0*
N*
T0*/
_output_shapes
:���������*
equationBTNH,BSNH->BNTSs
.functional_1/multi_head_attention_1_1/Cast_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *:�>�
)functional_1/multi_head_attention_1_1/MulMul<functional_1/multi_head_attention_1_1/einsum/Einsum:output:07functional_1/multi_head_attention_1_1/Cast_3/x:output:0*
T0*/
_output_shapes
:����������
-functional_1/multi_head_attention_1_1/SoftmaxSoftmax-functional_1/multi_head_attention_1_1/Mul:z:0*
T0*/
_output_shapes
:����������
5functional_1/multi_head_attention_1_1/einsum_1/EinsumEinsum7functional_1/multi_head_attention_1_1/Softmax:softmax:0/functional_1/multi_head_attention_1_1/add_2:z:0*
N*
T0*/
_output_shapes
:���������0*
equationBNTS,BSNH->BTNH�
;functional_1/multi_head_attention_1_1/Cast_4/ReadVariableOpReadVariableOpDfunctional_1_multi_head_attention_1_1_cast_4_readvariableop_resource*#
_output_shapes
:0�*
dtype0�
5functional_1/multi_head_attention_1_1/Reshape_6/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����   �   �
/functional_1/multi_head_attention_1_1/Reshape_6Reshape>functional_1/multi_head_attention_1_1/einsum_1/Einsum:output:0>functional_1/multi_head_attention_1_1/Reshape_6/shape:output:0*
T0*,
_output_shapes
:�����������
5functional_1/multi_head_attention_1_1/Reshape_7/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
/functional_1/multi_head_attention_1_1/Reshape_7ReshapeCfunctional_1/multi_head_attention_1_1/Cast_4/ReadVariableOp:value:0>functional_1/multi_head_attention_1_1/Reshape_7/shape:output:0*
T0* 
_output_shapes
:
���
.functional_1/multi_head_attention_1_1/MatMul_3BatchMatMulV28functional_1/multi_head_attention_1_1/Reshape_6:output:08functional_1/multi_head_attention_1_1/Reshape_7:output:0*
T0*,
_output_shapes
:�����������
:functional_1/multi_head_attention_1_1/add_3/ReadVariableOpReadVariableOpCfunctional_1_multi_head_attention_1_1_add_3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+functional_1/multi_head_attention_1_1/add_3AddV27functional_1/multi_head_attention_1_1/MatMul_3:output:0Bfunctional_1/multi_head_attention_1_1/add_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
7functional_1/multi_head_attention_2/Cast/ReadVariableOpReadVariableOp@functional_1_multi_head_attention_2_cast_readvariableop_resource*#
_output_shapes
:�0*
dtype0�
1functional_1/multi_head_attention_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�   �����
+functional_1/multi_head_attention_2/ReshapeReshape?functional_1/multi_head_attention_2/Cast/ReadVariableOp:value:0:functional_1/multi_head_attention_2/Reshape/shape:output:0*
T0* 
_output_shapes
:
���
*functional_1/multi_head_attention_2/MatMulBatchMatMulV2'functional_1/reshape_2/Reshape:output:04functional_1/multi_head_attention_2/Reshape:output:0*
T0*,
_output_shapes
:�����������
3functional_1/multi_head_attention_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����      0   �
-functional_1/multi_head_attention_2/Reshape_1Reshape3functional_1/multi_head_attention_2/MatMul:output:0<functional_1/multi_head_attention_2/Reshape_1/shape:output:0*
T0*/
_output_shapes
:���������0�
6functional_1/multi_head_attention_2/add/ReadVariableOpReadVariableOp?functional_1_multi_head_attention_2_add_readvariableop_resource*
_output_shapes

:0*
dtype0�
'functional_1/multi_head_attention_2/addAddV26functional_1/multi_head_attention_2/Reshape_1:output:0>functional_1/multi_head_attention_2/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0�
9functional_1/multi_head_attention_2/Cast_1/ReadVariableOpReadVariableOpBfunctional_1_multi_head_attention_2_cast_1_readvariableop_resource*#
_output_shapes
:�0*
dtype0�
3functional_1/multi_head_attention_2/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"�   �����
-functional_1/multi_head_attention_2/Reshape_2ReshapeAfunctional_1/multi_head_attention_2/Cast_1/ReadVariableOp:value:0<functional_1/multi_head_attention_2/Reshape_2/shape:output:0*
T0* 
_output_shapes
:
���
,functional_1/multi_head_attention_2/MatMul_1BatchMatMulV2'functional_1/reshape_2/Reshape:output:06functional_1/multi_head_attention_2/Reshape_2:output:0*
T0*,
_output_shapes
:�����������
3functional_1/multi_head_attention_2/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����      0   �
-functional_1/multi_head_attention_2/Reshape_3Reshape5functional_1/multi_head_attention_2/MatMul_1:output:0<functional_1/multi_head_attention_2/Reshape_3/shape:output:0*
T0*/
_output_shapes
:���������0�
8functional_1/multi_head_attention_2/add_1/ReadVariableOpReadVariableOpAfunctional_1_multi_head_attention_2_add_1_readvariableop_resource*
_output_shapes

:0*
dtype0�
)functional_1/multi_head_attention_2/add_1AddV26functional_1/multi_head_attention_2/Reshape_3:output:0@functional_1/multi_head_attention_2/add_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0�
9functional_1/multi_head_attention_2/Cast_2/ReadVariableOpReadVariableOpBfunctional_1_multi_head_attention_2_cast_2_readvariableop_resource*#
_output_shapes
:�0*
dtype0�
3functional_1/multi_head_attention_2/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"�   �����
-functional_1/multi_head_attention_2/Reshape_4ReshapeAfunctional_1/multi_head_attention_2/Cast_2/ReadVariableOp:value:0<functional_1/multi_head_attention_2/Reshape_4/shape:output:0*
T0* 
_output_shapes
:
���
,functional_1/multi_head_attention_2/MatMul_2BatchMatMulV2'functional_1/reshape_2/Reshape:output:06functional_1/multi_head_attention_2/Reshape_4:output:0*
T0*,
_output_shapes
:�����������
3functional_1/multi_head_attention_2/Reshape_5/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����      0   �
-functional_1/multi_head_attention_2/Reshape_5Reshape5functional_1/multi_head_attention_2/MatMul_2:output:0<functional_1/multi_head_attention_2/Reshape_5/shape:output:0*
T0*/
_output_shapes
:���������0�
8functional_1/multi_head_attention_2/add_2/ReadVariableOpReadVariableOpAfunctional_1_multi_head_attention_2_add_2_readvariableop_resource*
_output_shapes

:0*
dtype0�
)functional_1/multi_head_attention_2/add_2AddV26functional_1/multi_head_attention_2/Reshape_5:output:0@functional_1/multi_head_attention_2/add_2/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������0�
)functional_1/multi_head_attention_2/ShapeShape-functional_1/multi_head_attention_2/add_1:z:0*
T0*
_output_shapes
::���
7functional_1/multi_head_attention_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
9functional_1/multi_head_attention_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
9functional_1/multi_head_attention_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1functional_1/multi_head_attention_2/strided_sliceStridedSlice2functional_1/multi_head_attention_2/Shape:output:0@functional_1/multi_head_attention_2/strided_slice/stack:output:0Bfunctional_1/multi_head_attention_2/strided_slice/stack_1:output:0Bfunctional_1/multi_head_attention_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
1functional_1/multi_head_attention_2/einsum/EinsumEinsum+functional_1/multi_head_attention_2/add:z:0-functional_1/multi_head_attention_2/add_1:z:0*
N*
T0*/
_output_shapes
:���������*
equationBTNH,BSNH->BNTSq
,functional_1/multi_head_attention_2/Cast_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *:�>�
'functional_1/multi_head_attention_2/MulMul:functional_1/multi_head_attention_2/einsum/Einsum:output:05functional_1/multi_head_attention_2/Cast_3/x:output:0*
T0*/
_output_shapes
:����������
+functional_1/multi_head_attention_2/SoftmaxSoftmax+functional_1/multi_head_attention_2/Mul:z:0*
T0*/
_output_shapes
:����������
3functional_1/multi_head_attention_2/einsum_1/EinsumEinsum5functional_1/multi_head_attention_2/Softmax:softmax:0-functional_1/multi_head_attention_2/add_2:z:0*
N*
T0*/
_output_shapes
:���������0*
equationBNTS,BSNH->BTNH�
9functional_1/multi_head_attention_2/Cast_4/ReadVariableOpReadVariableOpBfunctional_1_multi_head_attention_2_cast_4_readvariableop_resource*#
_output_shapes
:0�*
dtype0�
3functional_1/multi_head_attention_2/Reshape_6/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����   �   �
-functional_1/multi_head_attention_2/Reshape_6Reshape<functional_1/multi_head_attention_2/einsum_1/Einsum:output:0<functional_1/multi_head_attention_2/Reshape_6/shape:output:0*
T0*,
_output_shapes
:�����������
3functional_1/multi_head_attention_2/Reshape_7/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
-functional_1/multi_head_attention_2/Reshape_7ReshapeAfunctional_1/multi_head_attention_2/Cast_4/ReadVariableOp:value:0<functional_1/multi_head_attention_2/Reshape_7/shape:output:0*
T0* 
_output_shapes
:
���
,functional_1/multi_head_attention_2/MatMul_3BatchMatMulV26functional_1/multi_head_attention_2/Reshape_6:output:06functional_1/multi_head_attention_2/Reshape_7:output:0*
T0*,
_output_shapes
:�����������
8functional_1/multi_head_attention_2/add_3/ReadVariableOpReadVariableOpAfunctional_1_multi_head_attention_2_add_3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)functional_1/multi_head_attention_2/add_3AddV25functional_1/multi_head_attention_2/MatMul_3:output:0@functional_1/multi_head_attention_2/add_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������u
$functional_1/flatten_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
functional_1/flatten_1/ReshapeReshape-functional_1/multi_head_attention_2/add_3:z:0-functional_1/flatten_1/Reshape/shape:output:0*
T0*(
_output_shapes
:����������w
&functional_1/flatten_1_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
 functional_1/flatten_1_2/ReshapeReshape/functional_1/multi_head_attention_1_1/add_3:z:0/functional_1/flatten_1_2/Reshape/shape:output:0*
T0*(
_output_shapes
:����������q
&functional_1/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
!functional_1/concatenate_1/concatConcatV2'functional_1/flatten_1/Reshape:output:0)functional_1/flatten_1_2/Reshape:output:0/functional_1/concatenate_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
(functional_1/dense_1/Cast/ReadVariableOpReadVariableOp1functional_1_dense_1_cast_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
functional_1/dense_1/MatMulMatMul*functional_1/concatenate_1/concat:output:00functional_1/dense_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+functional_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4functional_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
functional_1/dense_1/BiasAddBiasAdd%functional_1/dense_1/MatMul:product:03functional_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Cfunctional_1/layer_normalization_2_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
1functional_1/layer_normalization_2_2/moments/meanMean%functional_1/dense_1/BiasAdd:output:0Lfunctional_1/layer_normalization_2_2/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
9functional_1/layer_normalization_2_2/moments/StopGradientStopGradient:functional_1/layer_normalization_2_2/moments/mean:output:0*
T0*'
_output_shapes
:����������
>functional_1/layer_normalization_2_2/moments/SquaredDifferenceSquaredDifference%functional_1/dense_1/BiasAdd:output:0Bfunctional_1/layer_normalization_2_2/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
Gfunctional_1/layer_normalization_2_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
5functional_1/layer_normalization_2_2/moments/varianceMeanBfunctional_1/layer_normalization_2_2/moments/SquaredDifference:z:0Pfunctional_1/layer_normalization_2_2/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
;functional_1/layer_normalization_2_2/Reshape/ReadVariableOpReadVariableOpDfunctional_1_layer_normalization_2_2_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2functional_1/layer_normalization_2_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
,functional_1/layer_normalization_2_2/ReshapeReshapeCfunctional_1/layer_normalization_2_2/Reshape/ReadVariableOp:value:0;functional_1/layer_normalization_2_2/Reshape/shape:output:0*
T0*
_output_shapes
:	��
=functional_1/layer_normalization_2_2/Reshape_1/ReadVariableOpReadVariableOpFfunctional_1_layer_normalization_2_2_reshape_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
4functional_1/layer_normalization_2_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
.functional_1/layer_normalization_2_2/Reshape_1ReshapeEfunctional_1/layer_normalization_2_2/Reshape_1/ReadVariableOp:value:0=functional_1/layer_normalization_2_2/Reshape_1/shape:output:0*
T0*
_output_shapes
:	�o
*functional_1/layer_normalization_2_2/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
(functional_1/layer_normalization_2_2/addAddV2>functional_1/layer_normalization_2_2/moments/variance:output:03functional_1/layer_normalization_2_2/add/y:output:0*
T0*'
_output_shapes
:����������
*functional_1/layer_normalization_2_2/RsqrtRsqrt,functional_1/layer_normalization_2_2/add:z:0*
T0*'
_output_shapes
:����������
(functional_1/layer_normalization_2_2/mulMul.functional_1/layer_normalization_2_2/Rsqrt:y:05functional_1/layer_normalization_2_2/Reshape:output:0*
T0*(
_output_shapes
:�����������
(functional_1/layer_normalization_2_2/NegNeg:functional_1/layer_normalization_2_2/moments/mean:output:0*
T0*'
_output_shapes
:����������
*functional_1/layer_normalization_2_2/mul_1Mul,functional_1/layer_normalization_2_2/Neg:y:0,functional_1/layer_normalization_2_2/mul:z:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_2_2/add_1AddV2.functional_1/layer_normalization_2_2/mul_1:z:07functional_1/layer_normalization_2_2/Reshape_1:output:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_2_2/mul_2Mul%functional_1/dense_1/BiasAdd:output:0,functional_1/layer_normalization_2_2/mul:z:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_2_2/add_2AddV2.functional_1/layer_normalization_2_2/mul_2:z:0.functional_1/layer_normalization_2_2/add_1:z:0*
T0*(
_output_shapes
:����������\
functional_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
functional_1/Gelu/mulMul functional_1/Gelu/mul/x:output:0.functional_1/layer_normalization_2_2/add_2:z:0*
T0*(
_output_shapes
:����������]
functional_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
functional_1/Gelu/truedivRealDiv.functional_1/layer_normalization_2_2/add_2:z:0!functional_1/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:����������n
functional_1/Gelu/ErfErffunctional_1/Gelu/truediv:z:0*
T0*(
_output_shapes
:����������\
functional_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
functional_1/Gelu/addAddV2 functional_1/Gelu/add/x:output:0functional_1/Gelu/Erf:y:0*
T0*(
_output_shapes
:�����������
functional_1/Gelu/mul_1Mulfunctional_1/Gelu/mul:z:0functional_1/Gelu/add:z:0*
T0*(
_output_shapes
:�����������
*functional_1/dense_1_2/Cast/ReadVariableOpReadVariableOp3functional_1_dense_1_2_cast_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
functional_1/dense_1_2/MatMulMatMulfunctional_1/Gelu/mul_1:z:02functional_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-functional_1/dense_1_2/BiasAdd/ReadVariableOpReadVariableOp6functional_1_dense_1_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
functional_1/dense_1_2/BiasAddBiasAdd'functional_1/dense_1_2/MatMul:product:05functional_1/dense_1_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Cfunctional_1/layer_normalization_3_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
1functional_1/layer_normalization_3_1/moments/meanMean'functional_1/dense_1_2/BiasAdd:output:0Lfunctional_1/layer_normalization_3_1/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
9functional_1/layer_normalization_3_1/moments/StopGradientStopGradient:functional_1/layer_normalization_3_1/moments/mean:output:0*
T0*'
_output_shapes
:����������
>functional_1/layer_normalization_3_1/moments/SquaredDifferenceSquaredDifference'functional_1/dense_1_2/BiasAdd:output:0Bfunctional_1/layer_normalization_3_1/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
Gfunctional_1/layer_normalization_3_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
5functional_1/layer_normalization_3_1/moments/varianceMeanBfunctional_1/layer_normalization_3_1/moments/SquaredDifference:z:0Pfunctional_1/layer_normalization_3_1/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
;functional_1/layer_normalization_3_1/Reshape/ReadVariableOpReadVariableOpDfunctional_1_layer_normalization_3_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2functional_1/layer_normalization_3_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
,functional_1/layer_normalization_3_1/ReshapeReshapeCfunctional_1/layer_normalization_3_1/Reshape/ReadVariableOp:value:0;functional_1/layer_normalization_3_1/Reshape/shape:output:0*
T0*
_output_shapes
:	��
=functional_1/layer_normalization_3_1/Reshape_1/ReadVariableOpReadVariableOpFfunctional_1_layer_normalization_3_1_reshape_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
4functional_1/layer_normalization_3_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
.functional_1/layer_normalization_3_1/Reshape_1ReshapeEfunctional_1/layer_normalization_3_1/Reshape_1/ReadVariableOp:value:0=functional_1/layer_normalization_3_1/Reshape_1/shape:output:0*
T0*
_output_shapes
:	�o
*functional_1/layer_normalization_3_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
(functional_1/layer_normalization_3_1/addAddV2>functional_1/layer_normalization_3_1/moments/variance:output:03functional_1/layer_normalization_3_1/add/y:output:0*
T0*'
_output_shapes
:����������
*functional_1/layer_normalization_3_1/RsqrtRsqrt,functional_1/layer_normalization_3_1/add:z:0*
T0*'
_output_shapes
:����������
(functional_1/layer_normalization_3_1/mulMul.functional_1/layer_normalization_3_1/Rsqrt:y:05functional_1/layer_normalization_3_1/Reshape:output:0*
T0*(
_output_shapes
:�����������
(functional_1/layer_normalization_3_1/NegNeg:functional_1/layer_normalization_3_1/moments/mean:output:0*
T0*'
_output_shapes
:����������
*functional_1/layer_normalization_3_1/mul_1Mul,functional_1/layer_normalization_3_1/Neg:y:0,functional_1/layer_normalization_3_1/mul:z:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_3_1/add_1AddV2.functional_1/layer_normalization_3_1/mul_1:z:07functional_1/layer_normalization_3_1/Reshape_1:output:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_3_1/mul_2Mul'functional_1/dense_1_2/BiasAdd:output:0,functional_1/layer_normalization_3_1/mul:z:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_3_1/add_2AddV2.functional_1/layer_normalization_3_1/mul_2:z:0.functional_1/layer_normalization_3_1/add_1:z:0*
T0*(
_output_shapes
:����������^
functional_1/Gelu_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
functional_1/Gelu_1/mulMul"functional_1/Gelu_1/mul/x:output:0.functional_1/layer_normalization_3_1/add_2:z:0*
T0*(
_output_shapes
:����������_
functional_1/Gelu_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
functional_1/Gelu_1/truedivRealDiv.functional_1/layer_normalization_3_1/add_2:z:0#functional_1/Gelu_1/Cast/x:output:0*
T0*(
_output_shapes
:����������r
functional_1/Gelu_1/ErfErffunctional_1/Gelu_1/truediv:z:0*
T0*(
_output_shapes
:����������^
functional_1/Gelu_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
functional_1/Gelu_1/addAddV2"functional_1/Gelu_1/add/x:output:0functional_1/Gelu_1/Erf:y:0*
T0*(
_output_shapes
:�����������
functional_1/Gelu_1/mul_1Mulfunctional_1/Gelu_1/mul:z:0functional_1/Gelu_1/add:z:0*
T0*(
_output_shapes
:�����������
*functional_1/dense_2_1/Cast/ReadVariableOpReadVariableOp3functional_1_dense_2_1_cast_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
functional_1/dense_2_1/MatMulMatMul*functional_1/concatenate_1/concat:output:02functional_1/dense_2_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-functional_1/dense_2_1/BiasAdd/ReadVariableOpReadVariableOp6functional_1_dense_2_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
functional_1/dense_2_1/BiasAddBiasAdd'functional_1/dense_2_1/MatMul:product:05functional_1/dense_2_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
functional_1/add_1/AddAddV2functional_1/Gelu_1/mul_1:z:0'functional_1/dense_2_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
*functional_1/dense_3_1/Cast/ReadVariableOpReadVariableOp3functional_1_dense_3_1_cast_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
functional_1/dense_3_1/MatMulMatMulfunctional_1/add_1/Add:z:02functional_1/dense_3_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-functional_1/dense_3_1/BiasAdd/ReadVariableOpReadVariableOp6functional_1_dense_3_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
functional_1/dense_3_1/BiasAddBiasAdd'functional_1/dense_3_1/MatMul:product:05functional_1/dense_3_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Cfunctional_1/layer_normalization_4_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
1functional_1/layer_normalization_4_1/moments/meanMean'functional_1/dense_3_1/BiasAdd:output:0Lfunctional_1/layer_normalization_4_1/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
9functional_1/layer_normalization_4_1/moments/StopGradientStopGradient:functional_1/layer_normalization_4_1/moments/mean:output:0*
T0*'
_output_shapes
:����������
>functional_1/layer_normalization_4_1/moments/SquaredDifferenceSquaredDifference'functional_1/dense_3_1/BiasAdd:output:0Bfunctional_1/layer_normalization_4_1/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
Gfunctional_1/layer_normalization_4_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
5functional_1/layer_normalization_4_1/moments/varianceMeanBfunctional_1/layer_normalization_4_1/moments/SquaredDifference:z:0Pfunctional_1/layer_normalization_4_1/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
;functional_1/layer_normalization_4_1/Reshape/ReadVariableOpReadVariableOpDfunctional_1_layer_normalization_4_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2functional_1/layer_normalization_4_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   �  �
,functional_1/layer_normalization_4_1/ReshapeReshapeCfunctional_1/layer_normalization_4_1/Reshape/ReadVariableOp:value:0;functional_1/layer_normalization_4_1/Reshape/shape:output:0*
T0*
_output_shapes
:	��
=functional_1/layer_normalization_4_1/Reshape_1/ReadVariableOpReadVariableOpFfunctional_1_layer_normalization_4_1_reshape_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
4functional_1/layer_normalization_4_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   �  �
.functional_1/layer_normalization_4_1/Reshape_1ReshapeEfunctional_1/layer_normalization_4_1/Reshape_1/ReadVariableOp:value:0=functional_1/layer_normalization_4_1/Reshape_1/shape:output:0*
T0*
_output_shapes
:	�o
*functional_1/layer_normalization_4_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
(functional_1/layer_normalization_4_1/addAddV2>functional_1/layer_normalization_4_1/moments/variance:output:03functional_1/layer_normalization_4_1/add/y:output:0*
T0*'
_output_shapes
:����������
*functional_1/layer_normalization_4_1/RsqrtRsqrt,functional_1/layer_normalization_4_1/add:z:0*
T0*'
_output_shapes
:����������
(functional_1/layer_normalization_4_1/mulMul.functional_1/layer_normalization_4_1/Rsqrt:y:05functional_1/layer_normalization_4_1/Reshape:output:0*
T0*(
_output_shapes
:�����������
(functional_1/layer_normalization_4_1/NegNeg:functional_1/layer_normalization_4_1/moments/mean:output:0*
T0*'
_output_shapes
:����������
*functional_1/layer_normalization_4_1/mul_1Mul,functional_1/layer_normalization_4_1/Neg:y:0,functional_1/layer_normalization_4_1/mul:z:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_4_1/add_1AddV2.functional_1/layer_normalization_4_1/mul_1:z:07functional_1/layer_normalization_4_1/Reshape_1:output:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_4_1/mul_2Mul'functional_1/dense_3_1/BiasAdd:output:0,functional_1/layer_normalization_4_1/mul:z:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_4_1/add_2AddV2.functional_1/layer_normalization_4_1/mul_2:z:0.functional_1/layer_normalization_4_1/add_1:z:0*
T0*(
_output_shapes
:����������^
functional_1/Gelu_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
functional_1/Gelu_2/mulMul"functional_1/Gelu_2/mul/x:output:0.functional_1/layer_normalization_4_1/add_2:z:0*
T0*(
_output_shapes
:����������_
functional_1/Gelu_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
functional_1/Gelu_2/truedivRealDiv.functional_1/layer_normalization_4_1/add_2:z:0#functional_1/Gelu_2/Cast/x:output:0*
T0*(
_output_shapes
:����������r
functional_1/Gelu_2/ErfErffunctional_1/Gelu_2/truediv:z:0*
T0*(
_output_shapes
:����������^
functional_1/Gelu_2/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
functional_1/Gelu_2/addAddV2"functional_1/Gelu_2/add/x:output:0functional_1/Gelu_2/Erf:y:0*
T0*(
_output_shapes
:�����������
functional_1/Gelu_2/mul_1Mulfunctional_1/Gelu_2/mul:z:0functional_1/Gelu_2/add:z:0*
T0*(
_output_shapes
:�����������
*functional_1/dense_6_1/Cast/ReadVariableOpReadVariableOp3functional_1_dense_6_1_cast_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
functional_1/dense_6_1/MatMulMatMulfunctional_1/Gelu_2/mul_1:z:02functional_1/dense_6_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-functional_1/dense_6_1/BiasAdd/ReadVariableOpReadVariableOp6functional_1_dense_6_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
functional_1/dense_6_1/BiasAddBiasAdd'functional_1/dense_6_1/MatMul:product:05functional_1/dense_6_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������f
!functional_1/dense_6_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
functional_1/dense_6_1/Gelu/mulMul*functional_1/dense_6_1/Gelu/mul/x:output:0'functional_1/dense_6_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������g
"functional_1/dense_6_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
#functional_1/dense_6_1/Gelu/truedivRealDiv'functional_1/dense_6_1/BiasAdd:output:0+functional_1/dense_6_1/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:�����������
functional_1/dense_6_1/Gelu/ErfErf'functional_1/dense_6_1/Gelu/truediv:z:0*
T0*(
_output_shapes
:����������f
!functional_1/dense_6_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
functional_1/dense_6_1/Gelu/addAddV2*functional_1/dense_6_1/Gelu/add/x:output:0#functional_1/dense_6_1/Gelu/Erf:y:0*
T0*(
_output_shapes
:�����������
!functional_1/dense_6_1/Gelu/mul_1Mul#functional_1/dense_6_1/Gelu/mul:z:0#functional_1/dense_6_1/Gelu/add:z:0*
T0*(
_output_shapes
:�����������
*functional_1/dense_4_1/Cast/ReadVariableOpReadVariableOp3functional_1_dense_4_1_cast_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
functional_1/dense_4_1/MatMulMatMulfunctional_1/Gelu_2/mul_1:z:02functional_1/dense_4_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-functional_1/dense_4_1/BiasAdd/ReadVariableOpReadVariableOp6functional_1_dense_4_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
functional_1/dense_4_1/BiasAddBiasAdd'functional_1/dense_4_1/MatMul:product:05functional_1/dense_4_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������f
!functional_1/dense_4_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
functional_1/dense_4_1/Gelu/mulMul*functional_1/dense_4_1/Gelu/mul/x:output:0'functional_1/dense_4_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������g
"functional_1/dense_4_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
#functional_1/dense_4_1/Gelu/truedivRealDiv'functional_1/dense_4_1/BiasAdd:output:0+functional_1/dense_4_1/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:�����������
functional_1/dense_4_1/Gelu/ErfErf'functional_1/dense_4_1/Gelu/truediv:z:0*
T0*(
_output_shapes
:����������f
!functional_1/dense_4_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
functional_1/dense_4_1/Gelu/addAddV2*functional_1/dense_4_1/Gelu/add/x:output:0#functional_1/dense_4_1/Gelu/Erf:y:0*
T0*(
_output_shapes
:�����������
!functional_1/dense_4_1/Gelu/mul_1Mul#functional_1/dense_4_1/Gelu/mul:z:0#functional_1/dense_4_1/Gelu/add:z:0*
T0*(
_output_shapes
:�����������
Cfunctional_1/layer_normalization_7_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
1functional_1/layer_normalization_7_1/moments/meanMean%functional_1/dense_6_1/Gelu/mul_1:z:0Lfunctional_1/layer_normalization_7_1/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
9functional_1/layer_normalization_7_1/moments/StopGradientStopGradient:functional_1/layer_normalization_7_1/moments/mean:output:0*
T0*'
_output_shapes
:����������
>functional_1/layer_normalization_7_1/moments/SquaredDifferenceSquaredDifference%functional_1/dense_6_1/Gelu/mul_1:z:0Bfunctional_1/layer_normalization_7_1/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
Gfunctional_1/layer_normalization_7_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
5functional_1/layer_normalization_7_1/moments/varianceMeanBfunctional_1/layer_normalization_7_1/moments/SquaredDifference:z:0Pfunctional_1/layer_normalization_7_1/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
;functional_1/layer_normalization_7_1/Reshape/ReadVariableOpReadVariableOpDfunctional_1_layer_normalization_7_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2functional_1/layer_normalization_7_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
,functional_1/layer_normalization_7_1/ReshapeReshapeCfunctional_1/layer_normalization_7_1/Reshape/ReadVariableOp:value:0;functional_1/layer_normalization_7_1/Reshape/shape:output:0*
T0*
_output_shapes
:	��
=functional_1/layer_normalization_7_1/Reshape_1/ReadVariableOpReadVariableOpFfunctional_1_layer_normalization_7_1_reshape_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
4functional_1/layer_normalization_7_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
.functional_1/layer_normalization_7_1/Reshape_1ReshapeEfunctional_1/layer_normalization_7_1/Reshape_1/ReadVariableOp:value:0=functional_1/layer_normalization_7_1/Reshape_1/shape:output:0*
T0*
_output_shapes
:	�o
*functional_1/layer_normalization_7_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
(functional_1/layer_normalization_7_1/addAddV2>functional_1/layer_normalization_7_1/moments/variance:output:03functional_1/layer_normalization_7_1/add/y:output:0*
T0*'
_output_shapes
:����������
*functional_1/layer_normalization_7_1/RsqrtRsqrt,functional_1/layer_normalization_7_1/add:z:0*
T0*'
_output_shapes
:����������
(functional_1/layer_normalization_7_1/mulMul.functional_1/layer_normalization_7_1/Rsqrt:y:05functional_1/layer_normalization_7_1/Reshape:output:0*
T0*(
_output_shapes
:�����������
(functional_1/layer_normalization_7_1/NegNeg:functional_1/layer_normalization_7_1/moments/mean:output:0*
T0*'
_output_shapes
:����������
*functional_1/layer_normalization_7_1/mul_1Mul,functional_1/layer_normalization_7_1/Neg:y:0,functional_1/layer_normalization_7_1/mul:z:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_7_1/add_1AddV2.functional_1/layer_normalization_7_1/mul_1:z:07functional_1/layer_normalization_7_1/Reshape_1:output:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_7_1/mul_2Mul%functional_1/dense_6_1/Gelu/mul_1:z:0,functional_1/layer_normalization_7_1/mul:z:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_7_1/add_2AddV2.functional_1/layer_normalization_7_1/mul_2:z:0.functional_1/layer_normalization_7_1/add_1:z:0*
T0*(
_output_shapes
:�����������
Cfunctional_1/layer_normalization_5_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
1functional_1/layer_normalization_5_1/moments/meanMean%functional_1/dense_4_1/Gelu/mul_1:z:0Lfunctional_1/layer_normalization_5_1/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
9functional_1/layer_normalization_5_1/moments/StopGradientStopGradient:functional_1/layer_normalization_5_1/moments/mean:output:0*
T0*'
_output_shapes
:����������
>functional_1/layer_normalization_5_1/moments/SquaredDifferenceSquaredDifference%functional_1/dense_4_1/Gelu/mul_1:z:0Bfunctional_1/layer_normalization_5_1/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
Gfunctional_1/layer_normalization_5_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
5functional_1/layer_normalization_5_1/moments/varianceMeanBfunctional_1/layer_normalization_5_1/moments/SquaredDifference:z:0Pfunctional_1/layer_normalization_5_1/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
;functional_1/layer_normalization_5_1/Reshape/ReadVariableOpReadVariableOpDfunctional_1_layer_normalization_5_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2functional_1/layer_normalization_5_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
,functional_1/layer_normalization_5_1/ReshapeReshapeCfunctional_1/layer_normalization_5_1/Reshape/ReadVariableOp:value:0;functional_1/layer_normalization_5_1/Reshape/shape:output:0*
T0*
_output_shapes
:	��
=functional_1/layer_normalization_5_1/Reshape_1/ReadVariableOpReadVariableOpFfunctional_1_layer_normalization_5_1_reshape_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
4functional_1/layer_normalization_5_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
.functional_1/layer_normalization_5_1/Reshape_1ReshapeEfunctional_1/layer_normalization_5_1/Reshape_1/ReadVariableOp:value:0=functional_1/layer_normalization_5_1/Reshape_1/shape:output:0*
T0*
_output_shapes
:	�o
*functional_1/layer_normalization_5_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
(functional_1/layer_normalization_5_1/addAddV2>functional_1/layer_normalization_5_1/moments/variance:output:03functional_1/layer_normalization_5_1/add/y:output:0*
T0*'
_output_shapes
:����������
*functional_1/layer_normalization_5_1/RsqrtRsqrt,functional_1/layer_normalization_5_1/add:z:0*
T0*'
_output_shapes
:����������
(functional_1/layer_normalization_5_1/mulMul.functional_1/layer_normalization_5_1/Rsqrt:y:05functional_1/layer_normalization_5_1/Reshape:output:0*
T0*(
_output_shapes
:�����������
(functional_1/layer_normalization_5_1/NegNeg:functional_1/layer_normalization_5_1/moments/mean:output:0*
T0*'
_output_shapes
:����������
*functional_1/layer_normalization_5_1/mul_1Mul,functional_1/layer_normalization_5_1/Neg:y:0,functional_1/layer_normalization_5_1/mul:z:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_5_1/add_1AddV2.functional_1/layer_normalization_5_1/mul_1:z:07functional_1/layer_normalization_5_1/Reshape_1:output:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_5_1/mul_2Mul%functional_1/dense_4_1/Gelu/mul_1:z:0,functional_1/layer_normalization_5_1/mul:z:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_5_1/add_2AddV2.functional_1/layer_normalization_5_1/mul_2:z:0.functional_1/layer_normalization_5_1/add_1:z:0*
T0*(
_output_shapes
:�����������
*functional_1/dense_7_1/Cast/ReadVariableOpReadVariableOp3functional_1_dense_7_1_cast_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
functional_1/dense_7_1/MatMulMatMul.functional_1/layer_normalization_7_1/add_2:z:02functional_1/dense_7_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-functional_1/dense_7_1/BiasAdd/ReadVariableOpReadVariableOp6functional_1_dense_7_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
functional_1/dense_7_1/BiasAddBiasAdd'functional_1/dense_7_1/MatMul:product:05functional_1/dense_7_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������f
!functional_1/dense_7_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
functional_1/dense_7_1/Gelu/mulMul*functional_1/dense_7_1/Gelu/mul/x:output:0'functional_1/dense_7_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������g
"functional_1/dense_7_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
#functional_1/dense_7_1/Gelu/truedivRealDiv'functional_1/dense_7_1/BiasAdd:output:0+functional_1/dense_7_1/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:�����������
functional_1/dense_7_1/Gelu/ErfErf'functional_1/dense_7_1/Gelu/truediv:z:0*
T0*(
_output_shapes
:����������f
!functional_1/dense_7_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
functional_1/dense_7_1/Gelu/addAddV2*functional_1/dense_7_1/Gelu/add/x:output:0#functional_1/dense_7_1/Gelu/Erf:y:0*
T0*(
_output_shapes
:�����������
!functional_1/dense_7_1/Gelu/mul_1Mul#functional_1/dense_7_1/Gelu/mul:z:0#functional_1/dense_7_1/Gelu/add:z:0*
T0*(
_output_shapes
:�����������
*functional_1/dense_5_1/Cast/ReadVariableOpReadVariableOp3functional_1_dense_5_1_cast_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
functional_1/dense_5_1/MatMulMatMul.functional_1/layer_normalization_5_1/add_2:z:02functional_1/dense_5_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-functional_1/dense_5_1/BiasAdd/ReadVariableOpReadVariableOp6functional_1_dense_5_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
functional_1/dense_5_1/BiasAddBiasAdd'functional_1/dense_5_1/MatMul:product:05functional_1/dense_5_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������f
!functional_1/dense_5_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
functional_1/dense_5_1/Gelu/mulMul*functional_1/dense_5_1/Gelu/mul/x:output:0'functional_1/dense_5_1/BiasAdd:output:0*
T0*(
_output_shapes
:����������g
"functional_1/dense_5_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
#functional_1/dense_5_1/Gelu/truedivRealDiv'functional_1/dense_5_1/BiasAdd:output:0+functional_1/dense_5_1/Gelu/Cast/x:output:0*
T0*(
_output_shapes
:�����������
functional_1/dense_5_1/Gelu/ErfErf'functional_1/dense_5_1/Gelu/truediv:z:0*
T0*(
_output_shapes
:����������f
!functional_1/dense_5_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
functional_1/dense_5_1/Gelu/addAddV2*functional_1/dense_5_1/Gelu/add/x:output:0#functional_1/dense_5_1/Gelu/Erf:y:0*
T0*(
_output_shapes
:�����������
!functional_1/dense_5_1/Gelu/mul_1Mul#functional_1/dense_5_1/Gelu/mul:z:0#functional_1/dense_5_1/Gelu/add:z:0*
T0*(
_output_shapes
:�����������
Cfunctional_1/layer_normalization_8_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
1functional_1/layer_normalization_8_1/moments/meanMean%functional_1/dense_7_1/Gelu/mul_1:z:0Lfunctional_1/layer_normalization_8_1/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
9functional_1/layer_normalization_8_1/moments/StopGradientStopGradient:functional_1/layer_normalization_8_1/moments/mean:output:0*
T0*'
_output_shapes
:����������
>functional_1/layer_normalization_8_1/moments/SquaredDifferenceSquaredDifference%functional_1/dense_7_1/Gelu/mul_1:z:0Bfunctional_1/layer_normalization_8_1/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
Gfunctional_1/layer_normalization_8_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
5functional_1/layer_normalization_8_1/moments/varianceMeanBfunctional_1/layer_normalization_8_1/moments/SquaredDifference:z:0Pfunctional_1/layer_normalization_8_1/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
;functional_1/layer_normalization_8_1/Reshape/ReadVariableOpReadVariableOpDfunctional_1_layer_normalization_8_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2functional_1/layer_normalization_8_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
,functional_1/layer_normalization_8_1/ReshapeReshapeCfunctional_1/layer_normalization_8_1/Reshape/ReadVariableOp:value:0;functional_1/layer_normalization_8_1/Reshape/shape:output:0*
T0*
_output_shapes
:	��
=functional_1/layer_normalization_8_1/Reshape_1/ReadVariableOpReadVariableOpFfunctional_1_layer_normalization_8_1_reshape_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
4functional_1/layer_normalization_8_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
.functional_1/layer_normalization_8_1/Reshape_1ReshapeEfunctional_1/layer_normalization_8_1/Reshape_1/ReadVariableOp:value:0=functional_1/layer_normalization_8_1/Reshape_1/shape:output:0*
T0*
_output_shapes
:	�o
*functional_1/layer_normalization_8_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
(functional_1/layer_normalization_8_1/addAddV2>functional_1/layer_normalization_8_1/moments/variance:output:03functional_1/layer_normalization_8_1/add/y:output:0*
T0*'
_output_shapes
:����������
*functional_1/layer_normalization_8_1/RsqrtRsqrt,functional_1/layer_normalization_8_1/add:z:0*
T0*'
_output_shapes
:����������
(functional_1/layer_normalization_8_1/mulMul.functional_1/layer_normalization_8_1/Rsqrt:y:05functional_1/layer_normalization_8_1/Reshape:output:0*
T0*(
_output_shapes
:�����������
(functional_1/layer_normalization_8_1/NegNeg:functional_1/layer_normalization_8_1/moments/mean:output:0*
T0*'
_output_shapes
:����������
*functional_1/layer_normalization_8_1/mul_1Mul,functional_1/layer_normalization_8_1/Neg:y:0,functional_1/layer_normalization_8_1/mul:z:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_8_1/add_1AddV2.functional_1/layer_normalization_8_1/mul_1:z:07functional_1/layer_normalization_8_1/Reshape_1:output:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_8_1/mul_2Mul%functional_1/dense_7_1/Gelu/mul_1:z:0,functional_1/layer_normalization_8_1/mul:z:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_8_1/add_2AddV2.functional_1/layer_normalization_8_1/mul_2:z:0.functional_1/layer_normalization_8_1/add_1:z:0*
T0*(
_output_shapes
:�����������
Cfunctional_1/layer_normalization_6_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
1functional_1/layer_normalization_6_1/moments/meanMean%functional_1/dense_5_1/Gelu/mul_1:z:0Lfunctional_1/layer_normalization_6_1/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
9functional_1/layer_normalization_6_1/moments/StopGradientStopGradient:functional_1/layer_normalization_6_1/moments/mean:output:0*
T0*'
_output_shapes
:����������
>functional_1/layer_normalization_6_1/moments/SquaredDifferenceSquaredDifference%functional_1/dense_5_1/Gelu/mul_1:z:0Bfunctional_1/layer_normalization_6_1/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
Gfunctional_1/layer_normalization_6_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
����������
5functional_1/layer_normalization_6_1/moments/varianceMeanBfunctional_1/layer_normalization_6_1/moments/SquaredDifference:z:0Pfunctional_1/layer_normalization_6_1/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
;functional_1/layer_normalization_6_1/Reshape/ReadVariableOpReadVariableOpDfunctional_1_layer_normalization_6_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2functional_1/layer_normalization_6_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
,functional_1/layer_normalization_6_1/ReshapeReshapeCfunctional_1/layer_normalization_6_1/Reshape/ReadVariableOp:value:0;functional_1/layer_normalization_6_1/Reshape/shape:output:0*
T0*
_output_shapes
:	��
=functional_1/layer_normalization_6_1/Reshape_1/ReadVariableOpReadVariableOpFfunctional_1_layer_normalization_6_1_reshape_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
4functional_1/layer_normalization_6_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   �
.functional_1/layer_normalization_6_1/Reshape_1ReshapeEfunctional_1/layer_normalization_6_1/Reshape_1/ReadVariableOp:value:0=functional_1/layer_normalization_6_1/Reshape_1/shape:output:0*
T0*
_output_shapes
:	�o
*functional_1/layer_normalization_6_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
(functional_1/layer_normalization_6_1/addAddV2>functional_1/layer_normalization_6_1/moments/variance:output:03functional_1/layer_normalization_6_1/add/y:output:0*
T0*'
_output_shapes
:����������
*functional_1/layer_normalization_6_1/RsqrtRsqrt,functional_1/layer_normalization_6_1/add:z:0*
T0*'
_output_shapes
:����������
(functional_1/layer_normalization_6_1/mulMul.functional_1/layer_normalization_6_1/Rsqrt:y:05functional_1/layer_normalization_6_1/Reshape:output:0*
T0*(
_output_shapes
:�����������
(functional_1/layer_normalization_6_1/NegNeg:functional_1/layer_normalization_6_1/moments/mean:output:0*
T0*'
_output_shapes
:����������
*functional_1/layer_normalization_6_1/mul_1Mul,functional_1/layer_normalization_6_1/Neg:y:0,functional_1/layer_normalization_6_1/mul:z:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_6_1/add_1AddV2.functional_1/layer_normalization_6_1/mul_1:z:07functional_1/layer_normalization_6_1/Reshape_1:output:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_6_1/mul_2Mul%functional_1/dense_5_1/Gelu/mul_1:z:0,functional_1/layer_normalization_6_1/mul:z:0*
T0*(
_output_shapes
:�����������
*functional_1/layer_normalization_6_1/add_2AddV2.functional_1/layer_normalization_6_1/mul_2:z:0.functional_1/layer_normalization_6_1/add_1:z:0*
T0*(
_output_shapes
:�����������
/functional_1/completeness_1/Cast/ReadVariableOpReadVariableOp8functional_1_completeness_1_cast_readvariableop_resource*
_output_shapes
:	�*
dtype0�
"functional_1/completeness_1/MatMulMatMul.functional_1/layer_normalization_8_1/add_2:z:07functional_1/completeness_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2functional_1/completeness_1/BiasAdd/ReadVariableOpReadVariableOp;functional_1_completeness_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
#functional_1/completeness_1/BiasAddBiasAdd,functional_1/completeness_1/MatMul:product:0:functional_1/completeness_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
#functional_1/completeness_1/SoftmaxSoftmax,functional_1/completeness_1/BiasAdd:output:0*
T0*'
_output_shapes
:����������
0functional_1/understanding_1/Cast/ReadVariableOpReadVariableOp9functional_1_understanding_1_cast_readvariableop_resource*
_output_shapes
:	�*
dtype0�
#functional_1/understanding_1/MatMulMatMul.functional_1/layer_normalization_6_1/add_2:z:08functional_1/understanding_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3functional_1/understanding_1/BiasAdd/ReadVariableOpReadVariableOp<functional_1_understanding_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
$functional_1/understanding_1/BiasAddBiasAdd-functional_1/understanding_1/MatMul:product:0;functional_1/understanding_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$functional_1/understanding_1/SoftmaxSoftmax-functional_1/understanding_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������}
IdentityIdentity.functional_1/understanding_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������~

Identity_1Identity-functional_1/completeness_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp3^functional_1/completeness_1/BiasAdd/ReadVariableOp0^functional_1/completeness_1/Cast/ReadVariableOp,^functional_1/dense_1/BiasAdd/ReadVariableOp)^functional_1/dense_1/Cast/ReadVariableOp.^functional_1/dense_1_2/BiasAdd/ReadVariableOp+^functional_1/dense_1_2/Cast/ReadVariableOp.^functional_1/dense_2_1/BiasAdd/ReadVariableOp+^functional_1/dense_2_1/Cast/ReadVariableOp.^functional_1/dense_3_1/BiasAdd/ReadVariableOp+^functional_1/dense_3_1/Cast/ReadVariableOp.^functional_1/dense_4_1/BiasAdd/ReadVariableOp+^functional_1/dense_4_1/Cast/ReadVariableOp.^functional_1/dense_5_1/BiasAdd/ReadVariableOp+^functional_1/dense_5_1/Cast/ReadVariableOp.^functional_1/dense_6_1/BiasAdd/ReadVariableOp+^functional_1/dense_6_1/Cast/ReadVariableOp.^functional_1/dense_7_1/BiasAdd/ReadVariableOp+^functional_1/dense_7_1/Cast/ReadVariableOp<^functional_1/layer_normalization_1_1/Reshape/ReadVariableOp>^functional_1/layer_normalization_1_1/Reshape_1/ReadVariableOp:^functional_1/layer_normalization_2/Reshape/ReadVariableOp<^functional_1/layer_normalization_2/Reshape_1/ReadVariableOp<^functional_1/layer_normalization_2_2/Reshape/ReadVariableOp>^functional_1/layer_normalization_2_2/Reshape_1/ReadVariableOp<^functional_1/layer_normalization_3_1/Reshape/ReadVariableOp>^functional_1/layer_normalization_3_1/Reshape_1/ReadVariableOp<^functional_1/layer_normalization_4_1/Reshape/ReadVariableOp>^functional_1/layer_normalization_4_1/Reshape_1/ReadVariableOp<^functional_1/layer_normalization_5_1/Reshape/ReadVariableOp>^functional_1/layer_normalization_5_1/Reshape_1/ReadVariableOp<^functional_1/layer_normalization_6_1/Reshape/ReadVariableOp>^functional_1/layer_normalization_6_1/Reshape_1/ReadVariableOp<^functional_1/layer_normalization_7_1/Reshape/ReadVariableOp>^functional_1/layer_normalization_7_1/Reshape_1/ReadVariableOp<^functional_1/layer_normalization_8_1/Reshape/ReadVariableOp>^functional_1/layer_normalization_8_1/Reshape_1/ReadVariableOp:^functional_1/multi_head_attention_1_1/Cast/ReadVariableOp<^functional_1/multi_head_attention_1_1/Cast_1/ReadVariableOp<^functional_1/multi_head_attention_1_1/Cast_2/ReadVariableOp<^functional_1/multi_head_attention_1_1/Cast_4/ReadVariableOp9^functional_1/multi_head_attention_1_1/add/ReadVariableOp;^functional_1/multi_head_attention_1_1/add_1/ReadVariableOp;^functional_1/multi_head_attention_1_1/add_2/ReadVariableOp;^functional_1/multi_head_attention_1_1/add_3/ReadVariableOp8^functional_1/multi_head_attention_2/Cast/ReadVariableOp:^functional_1/multi_head_attention_2/Cast_1/ReadVariableOp:^functional_1/multi_head_attention_2/Cast_2/ReadVariableOp:^functional_1/multi_head_attention_2/Cast_4/ReadVariableOp7^functional_1/multi_head_attention_2/add/ReadVariableOp9^functional_1/multi_head_attention_2/add_1/ReadVariableOp9^functional_1/multi_head_attention_2/add_2/ReadVariableOp9^functional_1/multi_head_attention_2/add_3/ReadVariableOp4^functional_1/understanding_1/BiasAdd/ReadVariableOp1^functional_1/understanding_1/Cast/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2h
2functional_1/completeness_1/BiasAdd/ReadVariableOp2functional_1/completeness_1/BiasAdd/ReadVariableOp2b
/functional_1/completeness_1/Cast/ReadVariableOp/functional_1/completeness_1/Cast/ReadVariableOp2Z
+functional_1/dense_1/BiasAdd/ReadVariableOp+functional_1/dense_1/BiasAdd/ReadVariableOp2T
(functional_1/dense_1/Cast/ReadVariableOp(functional_1/dense_1/Cast/ReadVariableOp2^
-functional_1/dense_1_2/BiasAdd/ReadVariableOp-functional_1/dense_1_2/BiasAdd/ReadVariableOp2X
*functional_1/dense_1_2/Cast/ReadVariableOp*functional_1/dense_1_2/Cast/ReadVariableOp2^
-functional_1/dense_2_1/BiasAdd/ReadVariableOp-functional_1/dense_2_1/BiasAdd/ReadVariableOp2X
*functional_1/dense_2_1/Cast/ReadVariableOp*functional_1/dense_2_1/Cast/ReadVariableOp2^
-functional_1/dense_3_1/BiasAdd/ReadVariableOp-functional_1/dense_3_1/BiasAdd/ReadVariableOp2X
*functional_1/dense_3_1/Cast/ReadVariableOp*functional_1/dense_3_1/Cast/ReadVariableOp2^
-functional_1/dense_4_1/BiasAdd/ReadVariableOp-functional_1/dense_4_1/BiasAdd/ReadVariableOp2X
*functional_1/dense_4_1/Cast/ReadVariableOp*functional_1/dense_4_1/Cast/ReadVariableOp2^
-functional_1/dense_5_1/BiasAdd/ReadVariableOp-functional_1/dense_5_1/BiasAdd/ReadVariableOp2X
*functional_1/dense_5_1/Cast/ReadVariableOp*functional_1/dense_5_1/Cast/ReadVariableOp2^
-functional_1/dense_6_1/BiasAdd/ReadVariableOp-functional_1/dense_6_1/BiasAdd/ReadVariableOp2X
*functional_1/dense_6_1/Cast/ReadVariableOp*functional_1/dense_6_1/Cast/ReadVariableOp2^
-functional_1/dense_7_1/BiasAdd/ReadVariableOp-functional_1/dense_7_1/BiasAdd/ReadVariableOp2X
*functional_1/dense_7_1/Cast/ReadVariableOp*functional_1/dense_7_1/Cast/ReadVariableOp2z
;functional_1/layer_normalization_1_1/Reshape/ReadVariableOp;functional_1/layer_normalization_1_1/Reshape/ReadVariableOp2~
=functional_1/layer_normalization_1_1/Reshape_1/ReadVariableOp=functional_1/layer_normalization_1_1/Reshape_1/ReadVariableOp2v
9functional_1/layer_normalization_2/Reshape/ReadVariableOp9functional_1/layer_normalization_2/Reshape/ReadVariableOp2z
;functional_1/layer_normalization_2/Reshape_1/ReadVariableOp;functional_1/layer_normalization_2/Reshape_1/ReadVariableOp2z
;functional_1/layer_normalization_2_2/Reshape/ReadVariableOp;functional_1/layer_normalization_2_2/Reshape/ReadVariableOp2~
=functional_1/layer_normalization_2_2/Reshape_1/ReadVariableOp=functional_1/layer_normalization_2_2/Reshape_1/ReadVariableOp2z
;functional_1/layer_normalization_3_1/Reshape/ReadVariableOp;functional_1/layer_normalization_3_1/Reshape/ReadVariableOp2~
=functional_1/layer_normalization_3_1/Reshape_1/ReadVariableOp=functional_1/layer_normalization_3_1/Reshape_1/ReadVariableOp2z
;functional_1/layer_normalization_4_1/Reshape/ReadVariableOp;functional_1/layer_normalization_4_1/Reshape/ReadVariableOp2~
=functional_1/layer_normalization_4_1/Reshape_1/ReadVariableOp=functional_1/layer_normalization_4_1/Reshape_1/ReadVariableOp2z
;functional_1/layer_normalization_5_1/Reshape/ReadVariableOp;functional_1/layer_normalization_5_1/Reshape/ReadVariableOp2~
=functional_1/layer_normalization_5_1/Reshape_1/ReadVariableOp=functional_1/layer_normalization_5_1/Reshape_1/ReadVariableOp2z
;functional_1/layer_normalization_6_1/Reshape/ReadVariableOp;functional_1/layer_normalization_6_1/Reshape/ReadVariableOp2~
=functional_1/layer_normalization_6_1/Reshape_1/ReadVariableOp=functional_1/layer_normalization_6_1/Reshape_1/ReadVariableOp2z
;functional_1/layer_normalization_7_1/Reshape/ReadVariableOp;functional_1/layer_normalization_7_1/Reshape/ReadVariableOp2~
=functional_1/layer_normalization_7_1/Reshape_1/ReadVariableOp=functional_1/layer_normalization_7_1/Reshape_1/ReadVariableOp2z
;functional_1/layer_normalization_8_1/Reshape/ReadVariableOp;functional_1/layer_normalization_8_1/Reshape/ReadVariableOp2~
=functional_1/layer_normalization_8_1/Reshape_1/ReadVariableOp=functional_1/layer_normalization_8_1/Reshape_1/ReadVariableOp2v
9functional_1/multi_head_attention_1_1/Cast/ReadVariableOp9functional_1/multi_head_attention_1_1/Cast/ReadVariableOp2z
;functional_1/multi_head_attention_1_1/Cast_1/ReadVariableOp;functional_1/multi_head_attention_1_1/Cast_1/ReadVariableOp2z
;functional_1/multi_head_attention_1_1/Cast_2/ReadVariableOp;functional_1/multi_head_attention_1_1/Cast_2/ReadVariableOp2z
;functional_1/multi_head_attention_1_1/Cast_4/ReadVariableOp;functional_1/multi_head_attention_1_1/Cast_4/ReadVariableOp2t
8functional_1/multi_head_attention_1_1/add/ReadVariableOp8functional_1/multi_head_attention_1_1/add/ReadVariableOp2x
:functional_1/multi_head_attention_1_1/add_1/ReadVariableOp:functional_1/multi_head_attention_1_1/add_1/ReadVariableOp2x
:functional_1/multi_head_attention_1_1/add_2/ReadVariableOp:functional_1/multi_head_attention_1_1/add_2/ReadVariableOp2x
:functional_1/multi_head_attention_1_1/add_3/ReadVariableOp:functional_1/multi_head_attention_1_1/add_3/ReadVariableOp2r
7functional_1/multi_head_attention_2/Cast/ReadVariableOp7functional_1/multi_head_attention_2/Cast/ReadVariableOp2v
9functional_1/multi_head_attention_2/Cast_1/ReadVariableOp9functional_1/multi_head_attention_2/Cast_1/ReadVariableOp2v
9functional_1/multi_head_attention_2/Cast_2/ReadVariableOp9functional_1/multi_head_attention_2/Cast_2/ReadVariableOp2v
9functional_1/multi_head_attention_2/Cast_4/ReadVariableOp9functional_1/multi_head_attention_2/Cast_4/ReadVariableOp2p
6functional_1/multi_head_attention_2/add/ReadVariableOp6functional_1/multi_head_attention_2/add/ReadVariableOp2t
8functional_1/multi_head_attention_2/add_1/ReadVariableOp8functional_1/multi_head_attention_2/add_1/ReadVariableOp2t
8functional_1/multi_head_attention_2/add_2/ReadVariableOp8functional_1/multi_head_attention_2/add_2/ReadVariableOp2t
8functional_1/multi_head_attention_2/add_3/ReadVariableOp8functional_1/multi_head_attention_2/add_3/ReadVariableOp2j
3functional_1/understanding_1/BiasAdd/ReadVariableOp3functional_1/understanding_1/BiasAdd/ReadVariableOp2d
0functional_1/understanding_1/Cast/ReadVariableOp0functional_1/understanding_1/Cast/ReadVariableOp:(7$
"
_user_specified_name
resource:(6$
"
_user_specified_name
resource:(5$
"
_user_specified_name
resource:(4$
"
_user_specified_name
resource:(3$
"
_user_specified_name
resource:(2$
"
_user_specified_name
resource:(1$
"
_user_specified_name
resource:(0$
"
_user_specified_name
resource:(/$
"
_user_specified_name
resource:(.$
"
_user_specified_name
resource:(-$
"
_user_specified_name
resource:(,$
"
_user_specified_name
resource:(+$
"
_user_specified_name
resource:(*$
"
_user_specified_name
resource:()$
"
_user_specified_name
resource:(($
"
_user_specified_name
resource:('$
"
_user_specified_name
resource:(&$
"
_user_specified_name
resource:(%$
"
_user_specified_name
resource:($$
"
_user_specified_name
resource:(#$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:[W
(
_output_shapes
:����������
+
_user_specified_nameexplanation_input:T P
(
_output_shapes
:����������
$
_user_specified_name
text_input
�,
�
-__inference_signature_wrapper___call___138327
explanation_input

text_input
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	� 
	unknown_3:�0
	unknown_4:0 
	unknown_5:�0
	unknown_6:0 
	unknown_7:�0
	unknown_8:0 
	unknown_9:0�

unknown_10:	�!

unknown_11:�0

unknown_12:0!

unknown_13:�0

unknown_14:0!

unknown_15:�0

unknown_16:0!

unknown_17:0�

unknown_18:	�

unknown_19:
��

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:
��

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:
��

unknown_28:	�

unknown_29:
��

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:
��

unknown_34:	�

unknown_35:
��

unknown_36:	�

unknown_37:	�

unknown_38:	�

unknown_39:	�

unknown_40:	�

unknown_41:
��

unknown_42:	�

unknown_43:
��

unknown_44:	�

unknown_45:	�

unknown_46:	�

unknown_47:	�

unknown_48:	�

unknown_49:	�

unknown_50:

unknown_51:	�

unknown_52:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
text_inputexplanation_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52*C
Tin<
:28*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*X
_read_only_resource_inputs:
86	
 !"#$%&'()*+,-./01234567*2
config_proto" 

CPU

GPU 2J 8� �J *$
fR
__inference___call___138094o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&7"
 
_user_specified_name138321:&6"
 
_user_specified_name138319:&5"
 
_user_specified_name138317:&4"
 
_user_specified_name138315:&3"
 
_user_specified_name138313:&2"
 
_user_specified_name138311:&1"
 
_user_specified_name138309:&0"
 
_user_specified_name138307:&/"
 
_user_specified_name138305:&."
 
_user_specified_name138303:&-"
 
_user_specified_name138301:&,"
 
_user_specified_name138299:&+"
 
_user_specified_name138297:&*"
 
_user_specified_name138295:&)"
 
_user_specified_name138293:&("
 
_user_specified_name138291:&'"
 
_user_specified_name138289:&&"
 
_user_specified_name138287:&%"
 
_user_specified_name138285:&$"
 
_user_specified_name138283:&#"
 
_user_specified_name138281:&""
 
_user_specified_name138279:&!"
 
_user_specified_name138277:& "
 
_user_specified_name138275:&"
 
_user_specified_name138273:&"
 
_user_specified_name138271:&"
 
_user_specified_name138269:&"
 
_user_specified_name138267:&"
 
_user_specified_name138265:&"
 
_user_specified_name138263:&"
 
_user_specified_name138261:&"
 
_user_specified_name138259:&"
 
_user_specified_name138257:&"
 
_user_specified_name138255:&"
 
_user_specified_name138253:&"
 
_user_specified_name138251:&"
 
_user_specified_name138249:&"
 
_user_specified_name138247:&"
 
_user_specified_name138245:&"
 
_user_specified_name138243:&"
 
_user_specified_name138241:&"
 
_user_specified_name138239:&"
 
_user_specified_name138237:&"
 
_user_specified_name138235:&"
 
_user_specified_name138233:&
"
 
_user_specified_name138231:&	"
 
_user_specified_name138229:&"
 
_user_specified_name138227:&"
 
_user_specified_name138225:&"
 
_user_specified_name138223:&"
 
_user_specified_name138221:&"
 
_user_specified_name138219:&"
 
_user_specified_name138217:&"
 
_user_specified_name138215:TP
(
_output_shapes
:����������
$
_user_specified_name
text_input:[ W
(
_output_shapes
:����������
+
_user_specified_nameexplanation_input"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serve�
F
explanation_input1
serve_explanation_input:0����������
8

text_input*
serve_text_input:0����������<
output_00
StatefulPartitionedCall:0���������<
output_10
StatefulPartitionedCall:1���������tensorflow/serving/predict*�
serving_default�
P
explanation_input;
#serving_default_explanation_input:0����������
B

text_input4
serving_default_text_input:0����������>
output_02
StatefulPartitionedCall_1:0���������>
output_12
StatefulPartitionedCall_1:1���������tensorflow/serving/predict:�G
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures"
_generic_user_object
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
 24
!25
"26
#27
$28
%29
&30
'31
(32
)33
*34
+35
,36
-37
.38
/39
040
141
242
343
444
545
646
747
848
949
:50
;51
<52
=53
>54
?55
@56
A57
B58
C59
D60"
trackable_list_wrapper
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
!24
"25
#26
$27
&28
'29
(30
)31
*32
+33
-34
.35
/36
037
138
239
340
441
742
843
944
:45
;46
<47
=48
>49
A50
B51
C52
D53"
trackable_list_wrapper
Q
 0
%1
,2
53
64
?5
@6"
trackable_list_wrapper
�
E0
F1
G2
H3
I4
J5
K6
L7
M8
N9
O10
P11
Q12
R13
S14
T15
U16
V17
W18
X19
Y20
Z21
[22
\23
]24
^25
_26
`27
a28
b29
c30
d31
e32
f33
g34
h35
i36
j37
k38
l39
m40
n41
o42
p43
q44
r45
s46
t47
u48
v49
w50
x51
y52
z53"
trackable_list_wrapper
 "
trackable_list_wrapper
�
{trace_02�
__inference___call___138094�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *]�Z
X�U
%�"

text_input����������
,�)
explanation_input����������z{trace_0
7
	|serve
}serving_default"
signature_map
*:(�(2layer_normalization/gamma
):'�(2layer_normalization/beta
,:*�(2layer_normalization_1/gamma
+:)�(2layer_normalization_1/beta
::8�0(2!multi_head_attention/query/kernel
3:10(2multi_head_attention/query/bias
8:6�0(2multi_head_attention/key/kernel
1:/0(2multi_head_attention/key/bias
::8�0(2!multi_head_attention/value/kernel
3:10(2multi_head_attention/value/bias
E:C0�(2,multi_head_attention/attention_output/kernel
;:9�(2*multi_head_attention/attention_output/bias
<::�0(2#multi_head_attention_1/query/kernel
5:30(2!multi_head_attention_1/query/bias
::8�0(2!multi_head_attention_1/key/kernel
3:10(2multi_head_attention_1/key/bias
<::�0(2#multi_head_attention_1/value/kernel
5:30(2!multi_head_attention_1/value/bias
G:E0�(2.multi_head_attention_1/attention_output/kernel
=:;�(2,multi_head_attention_1/attention_output/bias
": 
��(2dense/kernel
:�(2
dense/bias
,:*�(2layer_normalization_2/gamma
+:)�(2layer_normalization_2/beta
1:/	(2#seed_generator/seed_generator_state
$:"
��(2dense_1/kernel
:�(2dense_1/bias
,:*�(2layer_normalization_3/gamma
+:)�(2layer_normalization_3/beta
3:1	(2%seed_generator_1/seed_generator_state
$:"
��(2dense_2/kernel
:�(2dense_2/bias
$:"
��(2dense_3/kernel
:�(2dense_3/bias
,:*�(2layer_normalization_4/gamma
+:)�(2layer_normalization_4/beta
3:1	(2%seed_generator_2/seed_generator_state
$:"
��(2dense_4/kernel
:�(2dense_4/bias
$:"
��(2dense_6/kernel
:�(2dense_6/bias
,:*�(2layer_normalization_5/gamma
+:)�(2layer_normalization_5/beta
,:*�(2layer_normalization_7/gamma
+:)�(2layer_normalization_7/beta
3:1	(2%seed_generator_3/seed_generator_state
3:1	(2%seed_generator_5/seed_generator_state
$:"
��(2dense_5/kernel
:�(2dense_5/bias
$:"
��(2dense_7/kernel
:�(2dense_7/bias
,:*�(2layer_normalization_6/gamma
+:)�(2layer_normalization_6/beta
,:*�(2layer_normalization_8/gamma
+:)�(2layer_normalization_8/beta
3:1	(2%seed_generator_4/seed_generator_state
3:1	(2%seed_generator_6/seed_generator_state
):'	�(2understanding/kernel
": (2understanding/bias
(:&	�(2completeness/kernel
!:(2completeness/bias
5:30(2!multi_head_attention_1/query/bias
<::�0(2#multi_head_attention_1/value/kernel
8:6�0(2multi_head_attention/key/kernel
$:"
��(2dense_1/kernel
):'�(2layer_normalization/beta
G:E0�(2.multi_head_attention_1/attention_output/kernel
:�(2dense_1/bias
+:)�(2layer_normalization_3/beta
+:)�(2layer_normalization_7/beta
$:"
��(2dense_7/kernel
+:)�(2layer_normalization_1/beta
::8�0(2!multi_head_attention/query/kernel
$:"
��(2dense_4/kernel
:�(2dense_7/bias
$:"
��(2dense_5/kernel
,:*�(2layer_normalization_6/gamma
": (2understanding/bias
<::�0(2#multi_head_attention_1/query/kernel
": 
��(2dense/kernel
,:*�(2layer_normalization_4/gamma
$:"
��(2dense_6/kernel
:�(2dense_4/bias
+:)�(2layer_normalization_5/beta
:�(2dense_5/bias
,:*�(2layer_normalization_1/gamma
=:;�(2,multi_head_attention_1/attention_output/bias
;:9�(2*multi_head_attention/attention_output/bias
,:*�(2layer_normalization_2/gamma
$:"
��(2dense_2/kernel
:�(2dense_6/bias
):'	�(2understanding/kernel
*:(�(2layer_normalization/gamma
5:30(2!multi_head_attention_1/value/bias
3:10(2multi_head_attention/value/bias
:�(2
dense/bias
:�(2dense_2/bias
,:*�(2layer_normalization_5/gamma
+:)�(2layer_normalization_8/beta
+:)�(2layer_normalization_6/beta
3:10(2multi_head_attention_1/key/bias
::8�0(2!multi_head_attention/value/kernel
,:*�(2layer_normalization_3/gamma
$:"
��(2dense_3/kernel
+:)�(2layer_normalization_4/beta
,:*�(2layer_normalization_7/gamma
(:&	�(2completeness/kernel
::8�0(2!multi_head_attention_1/key/kernel
3:10(2multi_head_attention/query/bias
1:/0(2multi_head_attention/key/bias
E:C0�(2,multi_head_attention/attention_output/kernel
+:)�(2layer_normalization_2/beta
:�(2dense_3/bias
,:*�(2layer_normalization_8/gamma
!:(2completeness/bias
�B�
__inference___call___138094
text_inputexplanation_input"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
-__inference_signature_wrapper___call___138211explanation_input
text_input"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 4

kwonlyargs&�#
jexplanation_input
j
text_input
kwonlydefaults
 
annotations� *
 
�B�
-__inference_signature_wrapper___call___138327explanation_input
text_input"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 4

kwonlyargs&�#
jexplanation_input
j
text_input
kwonlydefaults
 
annotations� *
 �
__inference___call___138094�6
	!"#$&'()*+/0-.34129:78=>;<CDABg�d
]�Z
X�U
%�"

text_input����������
,�)
explanation_input����������
� "K�H
"�
tensor_0���������
"�
tensor_1����������
-__inference_signature_wrapper___call___138211�6
	!"#$&'()*+/0-.34129:78=>;<CDAB���
� 
{�x
A
explanation_input,�)
explanation_input����������
3

text_input%�"

text_input����������"c�`
.
output_0"�
output_0���������
.
output_1"�
output_1����������
-__inference_signature_wrapper___call___138327�6
	!"#$&'()*+/0-.34129:78=>;<CDAB���
� 
{�x
A
explanation_input,�)
explanation_input����������
3

text_input%�"

text_input����������"c�`
.
output_0"�
output_0���������
.
output_1"�
output_1���������