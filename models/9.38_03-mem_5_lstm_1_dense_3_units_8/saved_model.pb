Ѓќ6
хє
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
┴
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
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
Ш
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ф
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleіжelement_dtype"
element_dtypetype"

shape_typetype:
2	
џ
TensorListReserve
element_shape"
shape_type
num_elements#
handleіжelement_dtype"
element_dtypetype"

shape_typetype:
2	
ѕ
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ
ћ
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
ѕ"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28█б3
z
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_15/kernel
s
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
_output_shapes

:*
dtype0
r
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_15/bias
k
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes
:*
dtype0
z
dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_16/kernel
s
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*
_output_shapes

:*
dtype0
r
dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_16/bias
k
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes
:*
dtype0
z
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_17/kernel
s
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
_output_shapes

:*
dtype0
r
dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_17/bias
k
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes
:*
dtype0
z
dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_18/kernel
s
#dense_18/kernel/Read/ReadVariableOpReadVariableOpdense_18/kernel*
_output_shapes

:*
dtype0
r
dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_18/bias
k
!dense_18/bias/Read/ReadVariableOpReadVariableOpdense_18/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
њ
lstm_18/lstm_cell_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *,
shared_namelstm_18/lstm_cell_18/kernel
І
/lstm_18/lstm_cell_18/kernel/Read/ReadVariableOpReadVariableOplstm_18/lstm_cell_18/kernel*
_output_shapes

: *
dtype0
д
%lstm_18/lstm_cell_18/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *6
shared_name'%lstm_18/lstm_cell_18/recurrent_kernel
Ъ
9lstm_18/lstm_cell_18/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_18/lstm_cell_18/recurrent_kernel*
_output_shapes

: *
dtype0
і
lstm_18/lstm_cell_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namelstm_18/lstm_cell_18/bias
Ѓ
-lstm_18/lstm_cell_18/bias/Read/ReadVariableOpReadVariableOplstm_18/lstm_cell_18/bias*
_output_shapes
: *
dtype0
њ
lstm_19/lstm_cell_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *,
shared_namelstm_19/lstm_cell_19/kernel
І
/lstm_19/lstm_cell_19/kernel/Read/ReadVariableOpReadVariableOplstm_19/lstm_cell_19/kernel*
_output_shapes

: *
dtype0
д
%lstm_19/lstm_cell_19/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *6
shared_name'%lstm_19/lstm_cell_19/recurrent_kernel
Ъ
9lstm_19/lstm_cell_19/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_19/lstm_cell_19/recurrent_kernel*
_output_shapes

: *
dtype0
і
lstm_19/lstm_cell_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namelstm_19/lstm_cell_19/bias
Ѓ
-lstm_19/lstm_cell_19/bias/Read/ReadVariableOpReadVariableOplstm_19/lstm_cell_19/bias*
_output_shapes
: *
dtype0
њ
lstm_20/lstm_cell_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *,
shared_namelstm_20/lstm_cell_20/kernel
І
/lstm_20/lstm_cell_20/kernel/Read/ReadVariableOpReadVariableOplstm_20/lstm_cell_20/kernel*
_output_shapes

: *
dtype0
д
%lstm_20/lstm_cell_20/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *6
shared_name'%lstm_20/lstm_cell_20/recurrent_kernel
Ъ
9lstm_20/lstm_cell_20/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_20/lstm_cell_20/recurrent_kernel*
_output_shapes

: *
dtype0
і
lstm_20/lstm_cell_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namelstm_20/lstm_cell_20/bias
Ѓ
-lstm_20/lstm_cell_20/bias/Read/ReadVariableOpReadVariableOplstm_20/lstm_cell_20/bias*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
ѕ
Adam/dense_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_15/kernel/m
Ђ
*Adam/dense_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/m*
_output_shapes

:*
dtype0
ђ
Adam/dense_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_15/bias/m
y
(Adam/dense_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/m*
_output_shapes
:*
dtype0
ѕ
Adam/dense_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_16/kernel/m
Ђ
*Adam/dense_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_16/kernel/m*
_output_shapes

:*
dtype0
ђ
Adam/dense_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_16/bias/m
y
(Adam/dense_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_16/bias/m*
_output_shapes
:*
dtype0
ѕ
Adam/dense_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_17/kernel/m
Ђ
*Adam/dense_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/m*
_output_shapes

:*
dtype0
ђ
Adam/dense_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_17/bias/m
y
(Adam/dense_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/m*
_output_shapes
:*
dtype0
ѕ
Adam/dense_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_18/kernel/m
Ђ
*Adam/dense_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_18/kernel/m*
_output_shapes

:*
dtype0
ђ
Adam/dense_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_18/bias/m
y
(Adam/dense_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_18/bias/m*
_output_shapes
:*
dtype0
а
"Adam/lstm_18/lstm_cell_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *3
shared_name$"Adam/lstm_18/lstm_cell_18/kernel/m
Ў
6Adam/lstm_18/lstm_cell_18/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_18/lstm_cell_18/kernel/m*
_output_shapes

: *
dtype0
┤
,Adam/lstm_18/lstm_cell_18/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *=
shared_name.,Adam/lstm_18/lstm_cell_18/recurrent_kernel/m
Г
@Adam/lstm_18/lstm_cell_18/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_18/lstm_cell_18/recurrent_kernel/m*
_output_shapes

: *
dtype0
ў
 Adam/lstm_18/lstm_cell_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_18/lstm_cell_18/bias/m
Љ
4Adam/lstm_18/lstm_cell_18/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_18/lstm_cell_18/bias/m*
_output_shapes
: *
dtype0
а
"Adam/lstm_19/lstm_cell_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *3
shared_name$"Adam/lstm_19/lstm_cell_19/kernel/m
Ў
6Adam/lstm_19/lstm_cell_19/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_19/lstm_cell_19/kernel/m*
_output_shapes

: *
dtype0
┤
,Adam/lstm_19/lstm_cell_19/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *=
shared_name.,Adam/lstm_19/lstm_cell_19/recurrent_kernel/m
Г
@Adam/lstm_19/lstm_cell_19/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_19/lstm_cell_19/recurrent_kernel/m*
_output_shapes

: *
dtype0
ў
 Adam/lstm_19/lstm_cell_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_19/lstm_cell_19/bias/m
Љ
4Adam/lstm_19/lstm_cell_19/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_19/lstm_cell_19/bias/m*
_output_shapes
: *
dtype0
а
"Adam/lstm_20/lstm_cell_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *3
shared_name$"Adam/lstm_20/lstm_cell_20/kernel/m
Ў
6Adam/lstm_20/lstm_cell_20/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_20/lstm_cell_20/kernel/m*
_output_shapes

: *
dtype0
┤
,Adam/lstm_20/lstm_cell_20/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *=
shared_name.,Adam/lstm_20/lstm_cell_20/recurrent_kernel/m
Г
@Adam/lstm_20/lstm_cell_20/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_20/lstm_cell_20/recurrent_kernel/m*
_output_shapes

: *
dtype0
ў
 Adam/lstm_20/lstm_cell_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_20/lstm_cell_20/bias/m
Љ
4Adam/lstm_20/lstm_cell_20/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_20/lstm_cell_20/bias/m*
_output_shapes
: *
dtype0
ѕ
Adam/dense_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_15/kernel/v
Ђ
*Adam/dense_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/v*
_output_shapes

:*
dtype0
ђ
Adam/dense_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_15/bias/v
y
(Adam/dense_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/v*
_output_shapes
:*
dtype0
ѕ
Adam/dense_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_16/kernel/v
Ђ
*Adam/dense_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_16/kernel/v*
_output_shapes

:*
dtype0
ђ
Adam/dense_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_16/bias/v
y
(Adam/dense_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_16/bias/v*
_output_shapes
:*
dtype0
ѕ
Adam/dense_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_17/kernel/v
Ђ
*Adam/dense_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/v*
_output_shapes

:*
dtype0
ђ
Adam/dense_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_17/bias/v
y
(Adam/dense_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/v*
_output_shapes
:*
dtype0
ѕ
Adam/dense_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_18/kernel/v
Ђ
*Adam/dense_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_18/kernel/v*
_output_shapes

:*
dtype0
ђ
Adam/dense_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_18/bias/v
y
(Adam/dense_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_18/bias/v*
_output_shapes
:*
dtype0
а
"Adam/lstm_18/lstm_cell_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *3
shared_name$"Adam/lstm_18/lstm_cell_18/kernel/v
Ў
6Adam/lstm_18/lstm_cell_18/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_18/lstm_cell_18/kernel/v*
_output_shapes

: *
dtype0
┤
,Adam/lstm_18/lstm_cell_18/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *=
shared_name.,Adam/lstm_18/lstm_cell_18/recurrent_kernel/v
Г
@Adam/lstm_18/lstm_cell_18/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_18/lstm_cell_18/recurrent_kernel/v*
_output_shapes

: *
dtype0
ў
 Adam/lstm_18/lstm_cell_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_18/lstm_cell_18/bias/v
Љ
4Adam/lstm_18/lstm_cell_18/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_18/lstm_cell_18/bias/v*
_output_shapes
: *
dtype0
а
"Adam/lstm_19/lstm_cell_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *3
shared_name$"Adam/lstm_19/lstm_cell_19/kernel/v
Ў
6Adam/lstm_19/lstm_cell_19/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_19/lstm_cell_19/kernel/v*
_output_shapes

: *
dtype0
┤
,Adam/lstm_19/lstm_cell_19/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *=
shared_name.,Adam/lstm_19/lstm_cell_19/recurrent_kernel/v
Г
@Adam/lstm_19/lstm_cell_19/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_19/lstm_cell_19/recurrent_kernel/v*
_output_shapes

: *
dtype0
ў
 Adam/lstm_19/lstm_cell_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_19/lstm_cell_19/bias/v
Љ
4Adam/lstm_19/lstm_cell_19/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_19/lstm_cell_19/bias/v*
_output_shapes
: *
dtype0
а
"Adam/lstm_20/lstm_cell_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *3
shared_name$"Adam/lstm_20/lstm_cell_20/kernel/v
Ў
6Adam/lstm_20/lstm_cell_20/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_20/lstm_cell_20/kernel/v*
_output_shapes

: *
dtype0
┤
,Adam/lstm_20/lstm_cell_20/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *=
shared_name.,Adam/lstm_20/lstm_cell_20/recurrent_kernel/v
Г
@Adam/lstm_20/lstm_cell_20/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_20/lstm_cell_20/recurrent_kernel/v*
_output_shapes

: *
dtype0
ў
 Adam/lstm_20/lstm_cell_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_20/lstm_cell_20/bias/v
Љ
4Adam/lstm_20/lstm_cell_20/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_20/lstm_cell_20/bias/v*
_output_shapes
: *
dtype0

NoOpNoOp
ъj
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*┘i
value¤iB╠i B┼i
М
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer-11
layer_with_weights-6
layer-12
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
 	variables
!trainable_variables
"regularization_losses
#	keras_api
R
$	variables
%trainable_variables
&regularization_losses
'	keras_api
l
(cell
)
state_spec
*	variables
+trainable_variables
,regularization_losses
-	keras_api
R
.	variables
/trainable_variables
0regularization_losses
1	keras_api
h

2kernel
3bias
4	variables
5trainable_variables
6regularization_losses
7	keras_api
R
8	variables
9trainable_variables
:regularization_losses
;	keras_api
h

<kernel
=bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
R
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
h

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
R
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
h

Pkernel
Qbias
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
ћ
Viter

Wbeta_1

Xbeta_2
	Ydecay
Zlearning_rate2mо3mО<mп=m┘Fm┌Gm█Pm▄QmП[mя\m▀]mЯ^mр_mР`mсamСbmтcmТ2vу3vУ<vж=vЖFvвGvВPvьQvЬ[v№\v­]vы^vЫ_vз`vЗavшbvШcvэ
~
[0
\1
]2
^3
_4
`5
a6
b7
c8
29
310
<11
=12
F13
G14
P15
Q16
~
[0
\1
]2
^3
_4
`5
a6
b7
c8
29
310
<11
=12
F13
G14
P15
Q16
 
Г
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
 
ј
i
state_size

[kernel
\recurrent_kernel
]bias
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
 

[0
\1
]2

[0
\1
]2
 
╣

nstates
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
Г
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
	variables
trainable_variables
regularization_losses
ј
y
state_size

^kernel
_recurrent_kernel
`bias
z	variables
{trainable_variables
|regularization_losses
}	keras_api
 

^0
_1
`2

^0
_1
`2
 
й

~states
non_trainable_variables
ђlayers
Ђmetrics
 ѓlayer_regularization_losses
Ѓlayer_metrics
 	variables
!trainable_variables
"regularization_losses
 
 
 
▓
ёnon_trainable_variables
Ёlayers
єmetrics
 Єlayer_regularization_losses
ѕlayer_metrics
$	variables
%trainable_variables
&regularization_losses
Њ
Ѕ
state_size

akernel
brecurrent_kernel
cbias
і	variables
Іtrainable_variables
їregularization_losses
Ї	keras_api
 

a0
b1
c2

a0
b1
c2
 
┐
јstates
Јnon_trainable_variables
љlayers
Љmetrics
 њlayer_regularization_losses
Њlayer_metrics
*	variables
+trainable_variables
,regularization_losses
 
 
 
▓
ћnon_trainable_variables
Ћlayers
ќmetrics
 Ќlayer_regularization_losses
ўlayer_metrics
.	variables
/trainable_variables
0regularization_losses
[Y
VARIABLE_VALUEdense_15/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_15/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

20
31

20
31
 
▓
Ўnon_trainable_variables
џlayers
Џmetrics
 юlayer_regularization_losses
Юlayer_metrics
4	variables
5trainable_variables
6regularization_losses
 
 
 
▓
ъnon_trainable_variables
Ъlayers
аmetrics
 Аlayer_regularization_losses
бlayer_metrics
8	variables
9trainable_variables
:regularization_losses
[Y
VARIABLE_VALUEdense_16/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_16/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

<0
=1

<0
=1
 
▓
Бnon_trainable_variables
цlayers
Цmetrics
 дlayer_regularization_losses
Дlayer_metrics
>	variables
?trainable_variables
@regularization_losses
 
 
 
▓
еnon_trainable_variables
Еlayers
фmetrics
 Фlayer_regularization_losses
гlayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
[Y
VARIABLE_VALUEdense_17/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_17/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

F0
G1

F0
G1
 
▓
Гnon_trainable_variables
«layers
»metrics
 ░layer_regularization_losses
▒layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
 
 
 
▓
▓non_trainable_variables
│layers
┤metrics
 хlayer_regularization_losses
Хlayer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
[Y
VARIABLE_VALUEdense_18/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_18/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

P0
Q1

P0
Q1
 
▓
иnon_trainable_variables
Иlayers
╣metrics
 ║layer_regularization_losses
╗layer_metrics
R	variables
Strainable_variables
Tregularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_18/lstm_cell_18/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_18/lstm_cell_18/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_18/lstm_cell_18/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_19/lstm_cell_19/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_19/lstm_cell_19/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_19/lstm_cell_19/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_20/lstm_cell_20/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_20/lstm_cell_20/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_20/lstm_cell_20/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
 
^
0
1
2
3
4
5
6
7
	8

9
10
11
12

╝0
й1
 
 
 

[0
\1
]2

[0
\1
]2
 
▓
Йnon_trainable_variables
┐layers
└metrics
 ┴layer_regularization_losses
┬layer_metrics
j	variables
ktrainable_variables
lregularization_losses
 
 

0
 
 
 
 
 
 
 
 
 

^0
_1
`2

^0
_1
`2
 
▓
├non_trainable_variables
─layers
┼metrics
 кlayer_regularization_losses
Кlayer_metrics
z	variables
{trainable_variables
|regularization_losses
 
 

0
 
 
 
 
 
 
 
 
 

a0
b1
c2

a0
b1
c2
 
х
╚non_trainable_variables
╔layers
╩metrics
 ╦layer_regularization_losses
╠layer_metrics
і	variables
Іtrainable_variables
їregularization_losses
 
 

(0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

═total

╬count
¤	variables
л	keras_api
I

Лtotal

мcount
М
_fn_kwargs
н	variables
Н	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

═0
╬1

¤	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Л0
м1

н	variables
~|
VARIABLE_VALUEAdam/dense_15/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_15/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_16/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_16/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_17/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_17/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_18/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_18/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_18/lstm_cell_18/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ёѓ
VARIABLE_VALUE,Adam/lstm_18/lstm_cell_18/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_18/lstm_cell_18/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_19/lstm_cell_19/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ёѓ
VARIABLE_VALUE,Adam/lstm_19/lstm_cell_19/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_19/lstm_cell_19/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_20/lstm_cell_20/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ёѓ
VARIABLE_VALUE,Adam/lstm_20/lstm_cell_20/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_20/lstm_cell_20/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_15/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_15/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_16/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_16/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_17/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_17/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_18/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_18/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_18/lstm_cell_18/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ёѓ
VARIABLE_VALUE,Adam/lstm_18/lstm_cell_18/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_18/lstm_cell_18/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_19/lstm_cell_19/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ёѓ
VARIABLE_VALUE,Adam/lstm_19/lstm_cell_19/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_19/lstm_cell_19/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_20/lstm_cell_20/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ёѓ
VARIABLE_VALUE,Adam/lstm_20/lstm_cell_20/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_20/lstm_cell_20/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ѕ
serving_default_lstm_18_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
Щ
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_18_inputlstm_18/lstm_cell_18/kernel%lstm_18/lstm_cell_18/recurrent_kernellstm_18/lstm_cell_18/biaslstm_19/lstm_cell_19/kernel%lstm_19/lstm_cell_19/recurrent_kernellstm_19/lstm_cell_19/biaslstm_20/lstm_cell_20/kernel%lstm_20/lstm_cell_20/recurrent_kernellstm_20/lstm_cell_20/biasdense_15/kerneldense_15/biasdense_16/kerneldense_16/biasdense_17/kerneldense_17/biasdense_18/kerneldense_18/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *3
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *-
f(R&
$__inference_signature_wrapper_620246
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
┤
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOp!dense_16/bias/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOp#dense_18/kernel/Read/ReadVariableOp!dense_18/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_18/lstm_cell_18/kernel/Read/ReadVariableOp9lstm_18/lstm_cell_18/recurrent_kernel/Read/ReadVariableOp-lstm_18/lstm_cell_18/bias/Read/ReadVariableOp/lstm_19/lstm_cell_19/kernel/Read/ReadVariableOp9lstm_19/lstm_cell_19/recurrent_kernel/Read/ReadVariableOp-lstm_19/lstm_cell_19/bias/Read/ReadVariableOp/lstm_20/lstm_cell_20/kernel/Read/ReadVariableOp9lstm_20/lstm_cell_20/recurrent_kernel/Read/ReadVariableOp-lstm_20/lstm_cell_20/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_15/kernel/m/Read/ReadVariableOp(Adam/dense_15/bias/m/Read/ReadVariableOp*Adam/dense_16/kernel/m/Read/ReadVariableOp(Adam/dense_16/bias/m/Read/ReadVariableOp*Adam/dense_17/kernel/m/Read/ReadVariableOp(Adam/dense_17/bias/m/Read/ReadVariableOp*Adam/dense_18/kernel/m/Read/ReadVariableOp(Adam/dense_18/bias/m/Read/ReadVariableOp6Adam/lstm_18/lstm_cell_18/kernel/m/Read/ReadVariableOp@Adam/lstm_18/lstm_cell_18/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_18/lstm_cell_18/bias/m/Read/ReadVariableOp6Adam/lstm_19/lstm_cell_19/kernel/m/Read/ReadVariableOp@Adam/lstm_19/lstm_cell_19/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_19/lstm_cell_19/bias/m/Read/ReadVariableOp6Adam/lstm_20/lstm_cell_20/kernel/m/Read/ReadVariableOp@Adam/lstm_20/lstm_cell_20/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_20/lstm_cell_20/bias/m/Read/ReadVariableOp*Adam/dense_15/kernel/v/Read/ReadVariableOp(Adam/dense_15/bias/v/Read/ReadVariableOp*Adam/dense_16/kernel/v/Read/ReadVariableOp(Adam/dense_16/bias/v/Read/ReadVariableOp*Adam/dense_17/kernel/v/Read/ReadVariableOp(Adam/dense_17/bias/v/Read/ReadVariableOp*Adam/dense_18/kernel/v/Read/ReadVariableOp(Adam/dense_18/bias/v/Read/ReadVariableOp6Adam/lstm_18/lstm_cell_18/kernel/v/Read/ReadVariableOp@Adam/lstm_18/lstm_cell_18/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_18/lstm_cell_18/bias/v/Read/ReadVariableOp6Adam/lstm_19/lstm_cell_19/kernel/v/Read/ReadVariableOp@Adam/lstm_19/lstm_cell_19/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_19/lstm_cell_19/bias/v/Read/ReadVariableOp6Adam/lstm_20/lstm_cell_20/kernel/v/Read/ReadVariableOp@Adam/lstm_20/lstm_cell_20/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_20/lstm_cell_20/bias/v/Read/ReadVariableOpConst*I
TinB
@2>	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *(
f#R!
__inference__traced_save_623860
 
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_15/kerneldense_15/biasdense_16/kerneldense_16/biasdense_17/kerneldense_17/biasdense_18/kerneldense_18/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_18/lstm_cell_18/kernel%lstm_18/lstm_cell_18/recurrent_kernellstm_18/lstm_cell_18/biaslstm_19/lstm_cell_19/kernel%lstm_19/lstm_cell_19/recurrent_kernellstm_19/lstm_cell_19/biaslstm_20/lstm_cell_20/kernel%lstm_20/lstm_cell_20/recurrent_kernellstm_20/lstm_cell_20/biastotalcounttotal_1count_1Adam/dense_15/kernel/mAdam/dense_15/bias/mAdam/dense_16/kernel/mAdam/dense_16/bias/mAdam/dense_17/kernel/mAdam/dense_17/bias/mAdam/dense_18/kernel/mAdam/dense_18/bias/m"Adam/lstm_18/lstm_cell_18/kernel/m,Adam/lstm_18/lstm_cell_18/recurrent_kernel/m Adam/lstm_18/lstm_cell_18/bias/m"Adam/lstm_19/lstm_cell_19/kernel/m,Adam/lstm_19/lstm_cell_19/recurrent_kernel/m Adam/lstm_19/lstm_cell_19/bias/m"Adam/lstm_20/lstm_cell_20/kernel/m,Adam/lstm_20/lstm_cell_20/recurrent_kernel/m Adam/lstm_20/lstm_cell_20/bias/mAdam/dense_15/kernel/vAdam/dense_15/bias/vAdam/dense_16/kernel/vAdam/dense_16/bias/vAdam/dense_17/kernel/vAdam/dense_17/bias/vAdam/dense_18/kernel/vAdam/dense_18/bias/v"Adam/lstm_18/lstm_cell_18/kernel/v,Adam/lstm_18/lstm_cell_18/recurrent_kernel/v Adam/lstm_18/lstm_cell_18/bias/v"Adam/lstm_19/lstm_cell_19/kernel/v,Adam/lstm_19/lstm_cell_19/recurrent_kernel/v Adam/lstm_19/lstm_cell_19/bias/v"Adam/lstm_20/lstm_cell_20/kernel/v,Adam/lstm_20/lstm_cell_20/recurrent_kernel/v Adam/lstm_20/lstm_cell_20/bias/v*H
TinA
?2=*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *+
f&R$
"__inference__traced_restore_624050┼ѕ1
њ8
ѓ
C__inference_lstm_19_layer_call_and_return_conditional_losses_618293

inputs%
lstm_cell_19_618211: %
lstm_cell_19_618213: !
lstm_cell_19_618215: 
identityѕб$lstm_cell_19/StatefulPartitionedCallбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЭ
$lstm_cell_19/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_19_618211lstm_cell_19_618213lstm_cell_19_618215*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_618165n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_19_618211lstm_cell_19_618213lstm_cell_19_618215*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_618224*
condR
while_cond_618223*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  u
NoOpNoOp%^lstm_cell_19/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_19/StatefulPartitionedCall$lstm_cell_19/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
ћ

e
F__inference_dropout_27_layer_call_and_return_conditional_losses_621917

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:         C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:љ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=ф
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:         s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:         m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:         ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ЯP
в
&sequential_6_lstm_20_while_body_617487F
Bsequential_6_lstm_20_while_sequential_6_lstm_20_while_loop_counterL
Hsequential_6_lstm_20_while_sequential_6_lstm_20_while_maximum_iterations*
&sequential_6_lstm_20_while_placeholder,
(sequential_6_lstm_20_while_placeholder_1,
(sequential_6_lstm_20_while_placeholder_2,
(sequential_6_lstm_20_while_placeholder_3E
Asequential_6_lstm_20_while_sequential_6_lstm_20_strided_slice_1_0Ђ
}sequential_6_lstm_20_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_20_tensorarrayunstack_tensorlistfromtensor_0Z
Hsequential_6_lstm_20_while_lstm_cell_20_matmul_readvariableop_resource_0: \
Jsequential_6_lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource_0: W
Isequential_6_lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource_0: '
#sequential_6_lstm_20_while_identity)
%sequential_6_lstm_20_while_identity_1)
%sequential_6_lstm_20_while_identity_2)
%sequential_6_lstm_20_while_identity_3)
%sequential_6_lstm_20_while_identity_4)
%sequential_6_lstm_20_while_identity_5C
?sequential_6_lstm_20_while_sequential_6_lstm_20_strided_slice_1
{sequential_6_lstm_20_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_20_tensorarrayunstack_tensorlistfromtensorX
Fsequential_6_lstm_20_while_lstm_cell_20_matmul_readvariableop_resource: Z
Hsequential_6_lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource: U
Gsequential_6_lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource: ѕб>sequential_6/lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOpб=sequential_6/lstm_20/while/lstm_cell_20/MatMul/ReadVariableOpб?sequential_6/lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOpЮ
Lsequential_6/lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ј
>sequential_6/lstm_20/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_6_lstm_20_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_20_tensorarrayunstack_tensorlistfromtensor_0&sequential_6_lstm_20_while_placeholderUsequential_6/lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0к
=sequential_6/lstm_20/while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOpHsequential_6_lstm_20_while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Э
.sequential_6/lstm_20/while/lstm_cell_20/MatMulMatMulEsequential_6/lstm_20/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_6/lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╩
?sequential_6/lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOpJsequential_6_lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0▀
0sequential_6/lstm_20/while/lstm_cell_20/MatMul_1MatMul(sequential_6_lstm_20_while_placeholder_2Gsequential_6/lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ▄
+sequential_6/lstm_20/while/lstm_cell_20/addAddV28sequential_6/lstm_20/while/lstm_cell_20/MatMul:product:0:sequential_6/lstm_20/while/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:          ─
>sequential_6/lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOpIsequential_6_lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0т
/sequential_6/lstm_20/while/lstm_cell_20/BiasAddBiasAdd/sequential_6/lstm_20/while/lstm_cell_20/add:z:0Fsequential_6/lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          y
7sequential_6/lstm_20/while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :«
-sequential_6/lstm_20/while/lstm_cell_20/splitSplit@sequential_6/lstm_20/while/lstm_cell_20/split/split_dim:output:08sequential_6/lstm_20/while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitц
/sequential_6/lstm_20/while/lstm_cell_20/SigmoidSigmoid6sequential_6/lstm_20/while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:         д
1sequential_6/lstm_20/while/lstm_cell_20/Sigmoid_1Sigmoid6sequential_6/lstm_20/while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:         ┼
+sequential_6/lstm_20/while/lstm_cell_20/mulMul5sequential_6/lstm_20/while/lstm_cell_20/Sigmoid_1:y:0(sequential_6_lstm_20_while_placeholder_3*
T0*'
_output_shapes
:         ъ
,sequential_6/lstm_20/while/lstm_cell_20/ReluRelu6sequential_6/lstm_20/while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:         О
-sequential_6/lstm_20/while/lstm_cell_20/mul_1Mul3sequential_6/lstm_20/while/lstm_cell_20/Sigmoid:y:0:sequential_6/lstm_20/while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:         ╠
-sequential_6/lstm_20/while/lstm_cell_20/add_1AddV2/sequential_6/lstm_20/while/lstm_cell_20/mul:z:01sequential_6/lstm_20/while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:         д
1sequential_6/lstm_20/while/lstm_cell_20/Sigmoid_2Sigmoid6sequential_6/lstm_20/while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:         Џ
.sequential_6/lstm_20/while/lstm_cell_20/Relu_1Relu1sequential_6/lstm_20/while/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:         █
-sequential_6/lstm_20/while/lstm_cell_20/mul_2Mul5sequential_6/lstm_20/while/lstm_cell_20/Sigmoid_2:y:0<sequential_6/lstm_20/while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:         Ў
?sequential_6/lstm_20/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_6_lstm_20_while_placeholder_1&sequential_6_lstm_20_while_placeholder1sequential_6/lstm_20/while/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмb
 sequential_6/lstm_20/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Џ
sequential_6/lstm_20/while/addAddV2&sequential_6_lstm_20_while_placeholder)sequential_6/lstm_20/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_6/lstm_20/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :╗
 sequential_6/lstm_20/while/add_1AddV2Bsequential_6_lstm_20_while_sequential_6_lstm_20_while_loop_counter+sequential_6/lstm_20/while/add_1/y:output:0*
T0*
_output_shapes
: ў
#sequential_6/lstm_20/while/IdentityIdentity$sequential_6/lstm_20/while/add_1:z:0 ^sequential_6/lstm_20/while/NoOp*
T0*
_output_shapes
: Й
%sequential_6/lstm_20/while/Identity_1IdentityHsequential_6_lstm_20_while_sequential_6_lstm_20_while_maximum_iterations ^sequential_6/lstm_20/while/NoOp*
T0*
_output_shapes
: ў
%sequential_6/lstm_20/while/Identity_2Identity"sequential_6/lstm_20/while/add:z:0 ^sequential_6/lstm_20/while/NoOp*
T0*
_output_shapes
: ┼
%sequential_6/lstm_20/while/Identity_3IdentityOsequential_6/lstm_20/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_6/lstm_20/while/NoOp*
T0*
_output_shapes
: И
%sequential_6/lstm_20/while/Identity_4Identity1sequential_6/lstm_20/while/lstm_cell_20/mul_2:z:0 ^sequential_6/lstm_20/while/NoOp*
T0*'
_output_shapes
:         И
%sequential_6/lstm_20/while/Identity_5Identity1sequential_6/lstm_20/while/lstm_cell_20/add_1:z:0 ^sequential_6/lstm_20/while/NoOp*
T0*'
_output_shapes
:         ц
sequential_6/lstm_20/while/NoOpNoOp?^sequential_6/lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp>^sequential_6/lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp@^sequential_6/lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_6_lstm_20_while_identity,sequential_6/lstm_20/while/Identity:output:0"W
%sequential_6_lstm_20_while_identity_1.sequential_6/lstm_20/while/Identity_1:output:0"W
%sequential_6_lstm_20_while_identity_2.sequential_6/lstm_20/while/Identity_2:output:0"W
%sequential_6_lstm_20_while_identity_3.sequential_6/lstm_20/while/Identity_3:output:0"W
%sequential_6_lstm_20_while_identity_4.sequential_6/lstm_20/while/Identity_4:output:0"W
%sequential_6_lstm_20_while_identity_5.sequential_6/lstm_20/while/Identity_5:output:0"ћ
Gsequential_6_lstm_20_while_lstm_cell_20_biasadd_readvariableop_resourceIsequential_6_lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource_0"ќ
Hsequential_6_lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resourceJsequential_6_lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource_0"њ
Fsequential_6_lstm_20_while_lstm_cell_20_matmul_readvariableop_resourceHsequential_6_lstm_20_while_lstm_cell_20_matmul_readvariableop_resource_0"ё
?sequential_6_lstm_20_while_sequential_6_lstm_20_strided_slice_1Asequential_6_lstm_20_while_sequential_6_lstm_20_strided_slice_1_0"Ч
{sequential_6_lstm_20_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_20_tensorarrayunstack_tensorlistfromtensor}sequential_6_lstm_20_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_20_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2ђ
>sequential_6/lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp>sequential_6/lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp2~
=sequential_6/lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp=sequential_6/lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp2ѓ
?sequential_6/lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp?sequential_6/lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
ї7
Є
H__inference_sequential_6_layer_call_and_return_conditional_losses_619219

inputs 
lstm_18_618802:  
lstm_18_618804: 
lstm_18_618806:  
lstm_19_618959:  
lstm_19_618961: 
lstm_19_618963:  
lstm_20_619116:  
lstm_20_619118: 
lstm_20_619120: !
dense_15_619142:
dense_15_619144:!
dense_16_619166:
dense_16_619168:!
dense_17_619190:
dense_17_619192:!
dense_18_619213:
dense_18_619215:
identityѕб dense_15/StatefulPartitionedCallб dense_16/StatefulPartitionedCallб dense_17/StatefulPartitionedCallб dense_18/StatefulPartitionedCallбlstm_18/StatefulPartitionedCallбlstm_19/StatefulPartitionedCallбlstm_20/StatefulPartitionedCallЁ
lstm_18/StatefulPartitionedCallStatefulPartitionedCallinputslstm_18_618802lstm_18_618804lstm_18_618806*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_18_layer_call_and_return_conditional_losses_618801т
dropout_27/PartitionedCallPartitionedCall(lstm_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_618814б
lstm_19/StatefulPartitionedCallStatefulPartitionedCall#dropout_27/PartitionedCall:output:0lstm_19_618959lstm_19_618961lstm_19_618963*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_19_layer_call_and_return_conditional_losses_618958т
dropout_28/PartitionedCallPartitionedCall(lstm_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_618971ъ
lstm_20/StatefulPartitionedCallStatefulPartitionedCall#dropout_28/PartitionedCall:output:0lstm_20_619116lstm_20_619118lstm_20_619120*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_619115р
dropout_29/PartitionedCallPartitionedCall(lstm_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_619128љ
 dense_15/StatefulPartitionedCallStatefulPartitionedCall#dropout_29/PartitionedCall:output:0dense_15_619142dense_15_619144*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_619141Р
dropout_30/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_619152љ
 dense_16/StatefulPartitionedCallStatefulPartitionedCall#dropout_30/PartitionedCall:output:0dense_16_619166dense_16_619168*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_619165Р
dropout_31/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_31_layer_call_and_return_conditional_losses_619176љ
 dense_17/StatefulPartitionedCallStatefulPartitionedCall#dropout_31/PartitionedCall:output:0dense_17_619190dense_17_619192*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_619189Р
dropout_32/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_32_layer_call_and_return_conditional_losses_619200љ
 dense_18/StatefulPartitionedCallStatefulPartitionedCall#dropout_32/PartitionedCall:output:0dense_18_619213dense_18_619215*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_619212x
IdentityIdentity)dense_18/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         И
NoOpNoOp!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall ^lstm_18/StatefulPartitionedCall ^lstm_19/StatefulPartitionedCall ^lstm_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2B
lstm_18/StatefulPartitionedCalllstm_18/StatefulPartitionedCall2B
lstm_19/StatefulPartitionedCalllstm_19/StatefulPartitionedCall2B
lstm_20/StatefulPartitionedCalllstm_20/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ќ

с
lstm_18_while_cond_620836,
(lstm_18_while_lstm_18_while_loop_counter2
.lstm_18_while_lstm_18_while_maximum_iterations
lstm_18_while_placeholder
lstm_18_while_placeholder_1
lstm_18_while_placeholder_2
lstm_18_while_placeholder_3.
*lstm_18_while_less_lstm_18_strided_slice_1D
@lstm_18_while_lstm_18_while_cond_620836___redundant_placeholder0D
@lstm_18_while_lstm_18_while_cond_620836___redundant_placeholder1D
@lstm_18_while_lstm_18_while_cond_620836___redundant_placeholder2D
@lstm_18_while_lstm_18_while_cond_620836___redundant_placeholder3
lstm_18_while_identity
ѓ
lstm_18/while/LessLesslstm_18_while_placeholder*lstm_18_while_less_lstm_18_strided_slice_1*
T0*
_output_shapes
: [
lstm_18/while/IdentityIdentitylstm_18/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_18_while_identitylstm_18/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
 7
╩
while_body_622449
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_19_matmul_readvariableop_resource_0: G
5while_lstm_cell_19_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_19_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_19_matmul_readvariableop_resource: E
3while_lstm_cell_19_matmul_1_readvariableop_resource: @
2while_lstm_cell_19_biasadd_readvariableop_resource: ѕб)while/lstm_cell_19/BiasAdd/ReadVariableOpб(while/lstm_cell_19/MatMul/ReadVariableOpб*while/lstm_cell_19/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ю
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╣
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          а
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0а
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:          џ
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0д
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:         є
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         t
while/lstm_cell_19/ReluRelu!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:         ў
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0%while/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:         Ї
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:         |
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:         q
while/lstm_cell_19/Relu_1Reluwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:         ю
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_2:y:0'while/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:         ┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         y
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         л

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
З	
e
F__inference_dropout_30_layer_call_and_return_conditional_losses_619352

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ќ

с
lstm_19_while_cond_620522,
(lstm_19_while_lstm_19_while_loop_counter2
.lstm_19_while_lstm_19_while_maximum_iterations
lstm_19_while_placeholder
lstm_19_while_placeholder_1
lstm_19_while_placeholder_2
lstm_19_while_placeholder_3.
*lstm_19_while_less_lstm_19_strided_slice_1D
@lstm_19_while_lstm_19_while_cond_620522___redundant_placeholder0D
@lstm_19_while_lstm_19_while_cond_620522___redundant_placeholder1D
@lstm_19_while_lstm_19_while_cond_620522___redundant_placeholder2D
@lstm_19_while_lstm_19_while_cond_620522___redundant_placeholder3
lstm_19_while_identity
ѓ
lstm_19/while/LessLesslstm_19_while_placeholder*lstm_19_while_less_lstm_19_strided_slice_1*
T0*
_output_shapes
: [
lstm_19/while/IdentityIdentitylstm_19/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_19_while_identitylstm_19/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
 7
╩
while_body_622306
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_19_matmul_readvariableop_resource_0: G
5while_lstm_cell_19_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_19_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_19_matmul_readvariableop_resource: E
3while_lstm_cell_19_matmul_1_readvariableop_resource: @
2while_lstm_cell_19_biasadd_readvariableop_resource: ѕб)while/lstm_cell_19/BiasAdd/ReadVariableOpб(while/lstm_cell_19/MatMul/ReadVariableOpб*while/lstm_cell_19/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ю
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╣
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          а
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0а
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:          џ
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0д
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:         є
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         t
while/lstm_cell_19/ReluRelu!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:         ў
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0%while/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:         Ї
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:         |
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:         q
while/lstm_cell_19/Relu_1Reluwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:         ю
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_2:y:0'while/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:         ┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         y
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         л

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
х
├
while_cond_621662
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_621662___redundant_placeholder04
0while_while_cond_621662___redundant_placeholder14
0while_while_cond_621662___redundant_placeholder24
0while_while_cond_621662___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ЎJ
ў
C__inference_lstm_18_layer_call_and_return_conditional_losses_618801

inputs=
+lstm_cell_18_matmul_readvariableop_resource: ?
-lstm_cell_18_matmul_1_readvariableop_resource: :
,lstm_cell_18_biasadd_readvariableop_resource: 
identityѕб#lstm_cell_18/BiasAdd/ReadVariableOpб"lstm_cell_18/MatMul/ReadVariableOpб$lstm_cell_18/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskј
"lstm_cell_18/MatMul/ReadVariableOpReadVariableOp+lstm_cell_18_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
lstm_cell_18/MatMulMatMulstrided_slice_2:output:0*lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          њ
$lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell_18/MatMul_1MatMulzeros:output:0,lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          І
lstm_cell_18/addAddV2lstm_cell_18/MatMul:product:0lstm_cell_18/MatMul_1:product:0*
T0*'
_output_shapes
:          ї
#lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ћ
lstm_cell_18/BiasAddBiasAddlstm_cell_18/add:z:0+lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ^
lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_18/splitSplit%lstm_cell_18/split/split_dim:output:0lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitn
lstm_cell_18/SigmoidSigmoidlstm_cell_18/split:output:0*
T0*'
_output_shapes
:         p
lstm_cell_18/Sigmoid_1Sigmoidlstm_cell_18/split:output:1*
T0*'
_output_shapes
:         w
lstm_cell_18/mulMullstm_cell_18/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         h
lstm_cell_18/ReluRelulstm_cell_18/split:output:2*
T0*'
_output_shapes
:         є
lstm_cell_18/mul_1Mullstm_cell_18/Sigmoid:y:0lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:         {
lstm_cell_18/add_1AddV2lstm_cell_18/mul:z:0lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:         p
lstm_cell_18/Sigmoid_2Sigmoidlstm_cell_18/split:output:3*
T0*'
_output_shapes
:         e
lstm_cell_18/Relu_1Relulstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:         і
lstm_cell_18/mul_2Mullstm_cell_18/Sigmoid_2:y:0!lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_18_matmul_readvariableop_resource-lstm_cell_18_matmul_1_readvariableop_resource,lstm_cell_18_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_618717*
condR
while_cond_618716*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         └
NoOpNoOp$^lstm_cell_18/BiasAdd/ReadVariableOp#^lstm_cell_18/MatMul/ReadVariableOp%^lstm_cell_18/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2J
#lstm_cell_18/BiasAdd/ReadVariableOp#lstm_cell_18/BiasAdd/ReadVariableOp2H
"lstm_cell_18/MatMul/ReadVariableOp"lstm_cell_18/MatMul/ReadVariableOp2L
$lstm_cell_18/MatMul_1/ReadVariableOp$lstm_cell_18/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
х
├
while_cond_619835
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_619835___redundant_placeholder04
0while_while_cond_619835___redundant_placeholder14
0while_while_cond_619835___redundant_placeholder24
0while_while_cond_619835___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
╦
Ђ
H__inference_lstm_cell_18_layer_call_and_return_conditional_losses_617815

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates
ЎJ
ў
C__inference_lstm_19_layer_call_and_return_conditional_losses_619732

inputs=
+lstm_cell_19_matmul_readvariableop_resource: ?
-lstm_cell_19_matmul_1_readvariableop_resource: :
,lstm_cell_19_biasadd_readvariableop_resource: 
identityѕб#lstm_cell_19/BiasAdd/ReadVariableOpб"lstm_cell_19/MatMul/ReadVariableOpб$lstm_cell_19/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskј
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          њ
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          І
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:          ї
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ћ
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ^
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitn
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:         p
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:         w
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         h
lstm_cell_19/ReluRelulstm_cell_19/split:output:2*
T0*'
_output_shapes
:         є
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:         {
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:         p
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:         e
lstm_cell_19/Relu_1Relulstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:         і
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_2:y:0!lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_619648*
condR
while_cond_619647*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         └
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ОJ
џ
C__inference_lstm_19_layer_call_and_return_conditional_losses_622104
inputs_0=
+lstm_cell_19_matmul_readvariableop_resource: ?
-lstm_cell_19_matmul_1_readvariableop_resource: :
,lstm_cell_19_biasadd_readvariableop_resource: 
identityѕб#lstm_cell_19/BiasAdd/ReadVariableOpб"lstm_cell_19/MatMul/ReadVariableOpб$lstm_cell_19/MatMul_1/ReadVariableOpбwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskј
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          њ
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          І
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:          ї
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ћ
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ^
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitn
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:         p
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:         w
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         h
lstm_cell_19/ReluRelulstm_cell_19/split:output:2*
T0*'
_output_shapes
:         є
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:         {
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:         p
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:         e
lstm_cell_19/Relu_1Relulstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:         і
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_2:y:0!lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_622020*
condR
while_cond_622019*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  └
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
хн
╩
!__inference__wrapped_model_617602
lstm_18_inputR
@sequential_6_lstm_18_lstm_cell_18_matmul_readvariableop_resource: T
Bsequential_6_lstm_18_lstm_cell_18_matmul_1_readvariableop_resource: O
Asequential_6_lstm_18_lstm_cell_18_biasadd_readvariableop_resource: R
@sequential_6_lstm_19_lstm_cell_19_matmul_readvariableop_resource: T
Bsequential_6_lstm_19_lstm_cell_19_matmul_1_readvariableop_resource: O
Asequential_6_lstm_19_lstm_cell_19_biasadd_readvariableop_resource: R
@sequential_6_lstm_20_lstm_cell_20_matmul_readvariableop_resource: T
Bsequential_6_lstm_20_lstm_cell_20_matmul_1_readvariableop_resource: O
Asequential_6_lstm_20_lstm_cell_20_biasadd_readvariableop_resource: F
4sequential_6_dense_15_matmul_readvariableop_resource:C
5sequential_6_dense_15_biasadd_readvariableop_resource:F
4sequential_6_dense_16_matmul_readvariableop_resource:C
5sequential_6_dense_16_biasadd_readvariableop_resource:F
4sequential_6_dense_17_matmul_readvariableop_resource:C
5sequential_6_dense_17_biasadd_readvariableop_resource:F
4sequential_6_dense_18_matmul_readvariableop_resource:C
5sequential_6_dense_18_biasadd_readvariableop_resource:
identityѕб,sequential_6/dense_15/BiasAdd/ReadVariableOpб+sequential_6/dense_15/MatMul/ReadVariableOpб,sequential_6/dense_16/BiasAdd/ReadVariableOpб+sequential_6/dense_16/MatMul/ReadVariableOpб,sequential_6/dense_17/BiasAdd/ReadVariableOpб+sequential_6/dense_17/MatMul/ReadVariableOpб,sequential_6/dense_18/BiasAdd/ReadVariableOpб+sequential_6/dense_18/MatMul/ReadVariableOpб8sequential_6/lstm_18/lstm_cell_18/BiasAdd/ReadVariableOpб7sequential_6/lstm_18/lstm_cell_18/MatMul/ReadVariableOpб9sequential_6/lstm_18/lstm_cell_18/MatMul_1/ReadVariableOpбsequential_6/lstm_18/whileб8sequential_6/lstm_19/lstm_cell_19/BiasAdd/ReadVariableOpб7sequential_6/lstm_19/lstm_cell_19/MatMul/ReadVariableOpб9sequential_6/lstm_19/lstm_cell_19/MatMul_1/ReadVariableOpбsequential_6/lstm_19/whileб8sequential_6/lstm_20/lstm_cell_20/BiasAdd/ReadVariableOpб7sequential_6/lstm_20/lstm_cell_20/MatMul/ReadVariableOpб9sequential_6/lstm_20/lstm_cell_20/MatMul_1/ReadVariableOpбsequential_6/lstm_20/whileW
sequential_6/lstm_18/ShapeShapelstm_18_input*
T0*
_output_shapes
:r
(sequential_6/lstm_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_6/lstm_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_6/lstm_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:║
"sequential_6/lstm_18/strided_sliceStridedSlice#sequential_6/lstm_18/Shape:output:01sequential_6/lstm_18/strided_slice/stack:output:03sequential_6/lstm_18/strided_slice/stack_1:output:03sequential_6/lstm_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_6/lstm_18/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :▓
!sequential_6/lstm_18/zeros/packedPack+sequential_6/lstm_18/strided_slice:output:0,sequential_6/lstm_18/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_6/lstm_18/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ф
sequential_6/lstm_18/zerosFill*sequential_6/lstm_18/zeros/packed:output:0)sequential_6/lstm_18/zeros/Const:output:0*
T0*'
_output_shapes
:         g
%sequential_6/lstm_18/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Х
#sequential_6/lstm_18/zeros_1/packedPack+sequential_6/lstm_18/strided_slice:output:0.sequential_6/lstm_18/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_6/lstm_18/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_6/lstm_18/zeros_1Fill,sequential_6/lstm_18/zeros_1/packed:output:0+sequential_6/lstm_18/zeros_1/Const:output:0*
T0*'
_output_shapes
:         x
#sequential_6/lstm_18/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ъ
sequential_6/lstm_18/transpose	Transposelstm_18_input,sequential_6/lstm_18/transpose/perm:output:0*
T0*+
_output_shapes
:         n
sequential_6/lstm_18/Shape_1Shape"sequential_6/lstm_18/transpose:y:0*
T0*
_output_shapes
:t
*sequential_6/lstm_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_6/lstm_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_6/lstm_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_6/lstm_18/strided_slice_1StridedSlice%sequential_6/lstm_18/Shape_1:output:03sequential_6/lstm_18/strided_slice_1/stack:output:05sequential_6/lstm_18/strided_slice_1/stack_1:output:05sequential_6/lstm_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_6/lstm_18/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         з
"sequential_6/lstm_18/TensorArrayV2TensorListReserve9sequential_6/lstm_18/TensorArrayV2/element_shape:output:0-sequential_6/lstm_18/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЏ
Jsequential_6/lstm_18/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ъ
<sequential_6/lstm_18/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_6/lstm_18/transpose:y:0Ssequential_6/lstm_18/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмt
*sequential_6/lstm_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_6/lstm_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_6/lstm_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:м
$sequential_6/lstm_18/strided_slice_2StridedSlice"sequential_6/lstm_18/transpose:y:03sequential_6/lstm_18/strided_slice_2/stack:output:05sequential_6/lstm_18/strided_slice_2/stack_1:output:05sequential_6/lstm_18/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskИ
7sequential_6/lstm_18/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp@sequential_6_lstm_18_lstm_cell_18_matmul_readvariableop_resource*
_output_shapes

: *
dtype0н
(sequential_6/lstm_18/lstm_cell_18/MatMulMatMul-sequential_6/lstm_18/strided_slice_2:output:0?sequential_6/lstm_18/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╝
9sequential_6/lstm_18/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOpBsequential_6_lstm_18_lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0╬
*sequential_6/lstm_18/lstm_cell_18/MatMul_1MatMul#sequential_6/lstm_18/zeros:output:0Asequential_6/lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╩
%sequential_6/lstm_18/lstm_cell_18/addAddV22sequential_6/lstm_18/lstm_cell_18/MatMul:product:04sequential_6/lstm_18/lstm_cell_18/MatMul_1:product:0*
T0*'
_output_shapes
:          Х
8sequential_6/lstm_18/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOpAsequential_6_lstm_18_lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0М
)sequential_6/lstm_18/lstm_cell_18/BiasAddBiasAdd)sequential_6/lstm_18/lstm_cell_18/add:z:0@sequential_6/lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          s
1sequential_6/lstm_18/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ю
'sequential_6/lstm_18/lstm_cell_18/splitSplit:sequential_6/lstm_18/lstm_cell_18/split/split_dim:output:02sequential_6/lstm_18/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitў
)sequential_6/lstm_18/lstm_cell_18/SigmoidSigmoid0sequential_6/lstm_18/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:         џ
+sequential_6/lstm_18/lstm_cell_18/Sigmoid_1Sigmoid0sequential_6/lstm_18/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:         Х
%sequential_6/lstm_18/lstm_cell_18/mulMul/sequential_6/lstm_18/lstm_cell_18/Sigmoid_1:y:0%sequential_6/lstm_18/zeros_1:output:0*
T0*'
_output_shapes
:         њ
&sequential_6/lstm_18/lstm_cell_18/ReluRelu0sequential_6/lstm_18/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:         ┼
'sequential_6/lstm_18/lstm_cell_18/mul_1Mul-sequential_6/lstm_18/lstm_cell_18/Sigmoid:y:04sequential_6/lstm_18/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:         ║
'sequential_6/lstm_18/lstm_cell_18/add_1AddV2)sequential_6/lstm_18/lstm_cell_18/mul:z:0+sequential_6/lstm_18/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:         џ
+sequential_6/lstm_18/lstm_cell_18/Sigmoid_2Sigmoid0sequential_6/lstm_18/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:         Ј
(sequential_6/lstm_18/lstm_cell_18/Relu_1Relu+sequential_6/lstm_18/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:         ╔
'sequential_6/lstm_18/lstm_cell_18/mul_2Mul/sequential_6/lstm_18/lstm_cell_18/Sigmoid_2:y:06sequential_6/lstm_18/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:         Ѓ
2sequential_6/lstm_18/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       э
$sequential_6/lstm_18/TensorArrayV2_1TensorListReserve;sequential_6/lstm_18/TensorArrayV2_1/element_shape:output:0-sequential_6/lstm_18/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм[
sequential_6/lstm_18/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_6/lstm_18/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         i
'sequential_6/lstm_18/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : е
sequential_6/lstm_18/whileWhile0sequential_6/lstm_18/while/loop_counter:output:06sequential_6/lstm_18/while/maximum_iterations:output:0"sequential_6/lstm_18/time:output:0-sequential_6/lstm_18/TensorArrayV2_1:handle:0#sequential_6/lstm_18/zeros:output:0%sequential_6/lstm_18/zeros_1:output:0-sequential_6/lstm_18/strided_slice_1:output:0Lsequential_6/lstm_18/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_6_lstm_18_lstm_cell_18_matmul_readvariableop_resourceBsequential_6_lstm_18_lstm_cell_18_matmul_1_readvariableop_resourceAsequential_6_lstm_18_lstm_cell_18_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_6_lstm_18_while_body_617207*2
cond*R(
&sequential_6_lstm_18_while_cond_617206*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations ќ
Esequential_6/lstm_18/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ђ
7sequential_6/lstm_18/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_6/lstm_18/while:output:3Nsequential_6/lstm_18/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0}
*sequential_6/lstm_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         v
,sequential_6/lstm_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_6/lstm_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:­
$sequential_6/lstm_18/strided_slice_3StridedSlice@sequential_6/lstm_18/TensorArrayV2Stack/TensorListStack:tensor:03sequential_6/lstm_18/strided_slice_3/stack:output:05sequential_6/lstm_18/strided_slice_3/stack_1:output:05sequential_6/lstm_18/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskz
%sequential_6/lstm_18/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Н
 sequential_6/lstm_18/transpose_1	Transpose@sequential_6/lstm_18/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_6/lstm_18/transpose_1/perm:output:0*
T0*+
_output_shapes
:         p
sequential_6/lstm_18/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ѕ
 sequential_6/dropout_27/IdentityIdentity$sequential_6/lstm_18/transpose_1:y:0*
T0*+
_output_shapes
:         s
sequential_6/lstm_19/ShapeShape)sequential_6/dropout_27/Identity:output:0*
T0*
_output_shapes
:r
(sequential_6/lstm_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_6/lstm_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_6/lstm_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:║
"sequential_6/lstm_19/strided_sliceStridedSlice#sequential_6/lstm_19/Shape:output:01sequential_6/lstm_19/strided_slice/stack:output:03sequential_6/lstm_19/strided_slice/stack_1:output:03sequential_6/lstm_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_6/lstm_19/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :▓
!sequential_6/lstm_19/zeros/packedPack+sequential_6/lstm_19/strided_slice:output:0,sequential_6/lstm_19/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_6/lstm_19/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ф
sequential_6/lstm_19/zerosFill*sequential_6/lstm_19/zeros/packed:output:0)sequential_6/lstm_19/zeros/Const:output:0*
T0*'
_output_shapes
:         g
%sequential_6/lstm_19/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Х
#sequential_6/lstm_19/zeros_1/packedPack+sequential_6/lstm_19/strided_slice:output:0.sequential_6/lstm_19/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_6/lstm_19/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_6/lstm_19/zeros_1Fill,sequential_6/lstm_19/zeros_1/packed:output:0+sequential_6/lstm_19/zeros_1/Const:output:0*
T0*'
_output_shapes
:         x
#sequential_6/lstm_19/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ║
sequential_6/lstm_19/transpose	Transpose)sequential_6/dropout_27/Identity:output:0,sequential_6/lstm_19/transpose/perm:output:0*
T0*+
_output_shapes
:         n
sequential_6/lstm_19/Shape_1Shape"sequential_6/lstm_19/transpose:y:0*
T0*
_output_shapes
:t
*sequential_6/lstm_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_6/lstm_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_6/lstm_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_6/lstm_19/strided_slice_1StridedSlice%sequential_6/lstm_19/Shape_1:output:03sequential_6/lstm_19/strided_slice_1/stack:output:05sequential_6/lstm_19/strided_slice_1/stack_1:output:05sequential_6/lstm_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_6/lstm_19/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         з
"sequential_6/lstm_19/TensorArrayV2TensorListReserve9sequential_6/lstm_19/TensorArrayV2/element_shape:output:0-sequential_6/lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЏ
Jsequential_6/lstm_19/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ъ
<sequential_6/lstm_19/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_6/lstm_19/transpose:y:0Ssequential_6/lstm_19/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмt
*sequential_6/lstm_19/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_6/lstm_19/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_6/lstm_19/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:м
$sequential_6/lstm_19/strided_slice_2StridedSlice"sequential_6/lstm_19/transpose:y:03sequential_6/lstm_19/strided_slice_2/stack:output:05sequential_6/lstm_19/strided_slice_2/stack_1:output:05sequential_6/lstm_19/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskИ
7sequential_6/lstm_19/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp@sequential_6_lstm_19_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes

: *
dtype0н
(sequential_6/lstm_19/lstm_cell_19/MatMulMatMul-sequential_6/lstm_19/strided_slice_2:output:0?sequential_6/lstm_19/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╝
9sequential_6/lstm_19/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpBsequential_6_lstm_19_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0╬
*sequential_6/lstm_19/lstm_cell_19/MatMul_1MatMul#sequential_6/lstm_19/zeros:output:0Asequential_6/lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╩
%sequential_6/lstm_19/lstm_cell_19/addAddV22sequential_6/lstm_19/lstm_cell_19/MatMul:product:04sequential_6/lstm_19/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:          Х
8sequential_6/lstm_19/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOpAsequential_6_lstm_19_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0М
)sequential_6/lstm_19/lstm_cell_19/BiasAddBiasAdd)sequential_6/lstm_19/lstm_cell_19/add:z:0@sequential_6/lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          s
1sequential_6/lstm_19/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ю
'sequential_6/lstm_19/lstm_cell_19/splitSplit:sequential_6/lstm_19/lstm_cell_19/split/split_dim:output:02sequential_6/lstm_19/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitў
)sequential_6/lstm_19/lstm_cell_19/SigmoidSigmoid0sequential_6/lstm_19/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:         џ
+sequential_6/lstm_19/lstm_cell_19/Sigmoid_1Sigmoid0sequential_6/lstm_19/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:         Х
%sequential_6/lstm_19/lstm_cell_19/mulMul/sequential_6/lstm_19/lstm_cell_19/Sigmoid_1:y:0%sequential_6/lstm_19/zeros_1:output:0*
T0*'
_output_shapes
:         њ
&sequential_6/lstm_19/lstm_cell_19/ReluRelu0sequential_6/lstm_19/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:         ┼
'sequential_6/lstm_19/lstm_cell_19/mul_1Mul-sequential_6/lstm_19/lstm_cell_19/Sigmoid:y:04sequential_6/lstm_19/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:         ║
'sequential_6/lstm_19/lstm_cell_19/add_1AddV2)sequential_6/lstm_19/lstm_cell_19/mul:z:0+sequential_6/lstm_19/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:         џ
+sequential_6/lstm_19/lstm_cell_19/Sigmoid_2Sigmoid0sequential_6/lstm_19/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:         Ј
(sequential_6/lstm_19/lstm_cell_19/Relu_1Relu+sequential_6/lstm_19/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:         ╔
'sequential_6/lstm_19/lstm_cell_19/mul_2Mul/sequential_6/lstm_19/lstm_cell_19/Sigmoid_2:y:06sequential_6/lstm_19/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:         Ѓ
2sequential_6/lstm_19/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       э
$sequential_6/lstm_19/TensorArrayV2_1TensorListReserve;sequential_6/lstm_19/TensorArrayV2_1/element_shape:output:0-sequential_6/lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм[
sequential_6/lstm_19/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_6/lstm_19/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         i
'sequential_6/lstm_19/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : е
sequential_6/lstm_19/whileWhile0sequential_6/lstm_19/while/loop_counter:output:06sequential_6/lstm_19/while/maximum_iterations:output:0"sequential_6/lstm_19/time:output:0-sequential_6/lstm_19/TensorArrayV2_1:handle:0#sequential_6/lstm_19/zeros:output:0%sequential_6/lstm_19/zeros_1:output:0-sequential_6/lstm_19/strided_slice_1:output:0Lsequential_6/lstm_19/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_6_lstm_19_lstm_cell_19_matmul_readvariableop_resourceBsequential_6_lstm_19_lstm_cell_19_matmul_1_readvariableop_resourceAsequential_6_lstm_19_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_6_lstm_19_while_body_617347*2
cond*R(
&sequential_6_lstm_19_while_cond_617346*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations ќ
Esequential_6/lstm_19/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ђ
7sequential_6/lstm_19/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_6/lstm_19/while:output:3Nsequential_6/lstm_19/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0}
*sequential_6/lstm_19/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         v
,sequential_6/lstm_19/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_6/lstm_19/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:­
$sequential_6/lstm_19/strided_slice_3StridedSlice@sequential_6/lstm_19/TensorArrayV2Stack/TensorListStack:tensor:03sequential_6/lstm_19/strided_slice_3/stack:output:05sequential_6/lstm_19/strided_slice_3/stack_1:output:05sequential_6/lstm_19/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskz
%sequential_6/lstm_19/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Н
 sequential_6/lstm_19/transpose_1	Transpose@sequential_6/lstm_19/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_6/lstm_19/transpose_1/perm:output:0*
T0*+
_output_shapes
:         p
sequential_6/lstm_19/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ѕ
 sequential_6/dropout_28/IdentityIdentity$sequential_6/lstm_19/transpose_1:y:0*
T0*+
_output_shapes
:         s
sequential_6/lstm_20/ShapeShape)sequential_6/dropout_28/Identity:output:0*
T0*
_output_shapes
:r
(sequential_6/lstm_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_6/lstm_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_6/lstm_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:║
"sequential_6/lstm_20/strided_sliceStridedSlice#sequential_6/lstm_20/Shape:output:01sequential_6/lstm_20/strided_slice/stack:output:03sequential_6/lstm_20/strided_slice/stack_1:output:03sequential_6/lstm_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_6/lstm_20/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :▓
!sequential_6/lstm_20/zeros/packedPack+sequential_6/lstm_20/strided_slice:output:0,sequential_6/lstm_20/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_6/lstm_20/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ф
sequential_6/lstm_20/zerosFill*sequential_6/lstm_20/zeros/packed:output:0)sequential_6/lstm_20/zeros/Const:output:0*
T0*'
_output_shapes
:         g
%sequential_6/lstm_20/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Х
#sequential_6/lstm_20/zeros_1/packedPack+sequential_6/lstm_20/strided_slice:output:0.sequential_6/lstm_20/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_6/lstm_20/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_6/lstm_20/zeros_1Fill,sequential_6/lstm_20/zeros_1/packed:output:0+sequential_6/lstm_20/zeros_1/Const:output:0*
T0*'
_output_shapes
:         x
#sequential_6/lstm_20/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ║
sequential_6/lstm_20/transpose	Transpose)sequential_6/dropout_28/Identity:output:0,sequential_6/lstm_20/transpose/perm:output:0*
T0*+
_output_shapes
:         n
sequential_6/lstm_20/Shape_1Shape"sequential_6/lstm_20/transpose:y:0*
T0*
_output_shapes
:t
*sequential_6/lstm_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_6/lstm_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_6/lstm_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_6/lstm_20/strided_slice_1StridedSlice%sequential_6/lstm_20/Shape_1:output:03sequential_6/lstm_20/strided_slice_1/stack:output:05sequential_6/lstm_20/strided_slice_1/stack_1:output:05sequential_6/lstm_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_6/lstm_20/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         з
"sequential_6/lstm_20/TensorArrayV2TensorListReserve9sequential_6/lstm_20/TensorArrayV2/element_shape:output:0-sequential_6/lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЏ
Jsequential_6/lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ъ
<sequential_6/lstm_20/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_6/lstm_20/transpose:y:0Ssequential_6/lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмt
*sequential_6/lstm_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_6/lstm_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_6/lstm_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:м
$sequential_6/lstm_20/strided_slice_2StridedSlice"sequential_6/lstm_20/transpose:y:03sequential_6/lstm_20/strided_slice_2/stack:output:05sequential_6/lstm_20/strided_slice_2/stack_1:output:05sequential_6/lstm_20/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskИ
7sequential_6/lstm_20/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp@sequential_6_lstm_20_lstm_cell_20_matmul_readvariableop_resource*
_output_shapes

: *
dtype0н
(sequential_6/lstm_20/lstm_cell_20/MatMulMatMul-sequential_6/lstm_20/strided_slice_2:output:0?sequential_6/lstm_20/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╝
9sequential_6/lstm_20/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOpBsequential_6_lstm_20_lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0╬
*sequential_6/lstm_20/lstm_cell_20/MatMul_1MatMul#sequential_6/lstm_20/zeros:output:0Asequential_6/lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╩
%sequential_6/lstm_20/lstm_cell_20/addAddV22sequential_6/lstm_20/lstm_cell_20/MatMul:product:04sequential_6/lstm_20/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:          Х
8sequential_6/lstm_20/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOpAsequential_6_lstm_20_lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0М
)sequential_6/lstm_20/lstm_cell_20/BiasAddBiasAdd)sequential_6/lstm_20/lstm_cell_20/add:z:0@sequential_6/lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          s
1sequential_6/lstm_20/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ю
'sequential_6/lstm_20/lstm_cell_20/splitSplit:sequential_6/lstm_20/lstm_cell_20/split/split_dim:output:02sequential_6/lstm_20/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitў
)sequential_6/lstm_20/lstm_cell_20/SigmoidSigmoid0sequential_6/lstm_20/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:         џ
+sequential_6/lstm_20/lstm_cell_20/Sigmoid_1Sigmoid0sequential_6/lstm_20/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:         Х
%sequential_6/lstm_20/lstm_cell_20/mulMul/sequential_6/lstm_20/lstm_cell_20/Sigmoid_1:y:0%sequential_6/lstm_20/zeros_1:output:0*
T0*'
_output_shapes
:         њ
&sequential_6/lstm_20/lstm_cell_20/ReluRelu0sequential_6/lstm_20/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:         ┼
'sequential_6/lstm_20/lstm_cell_20/mul_1Mul-sequential_6/lstm_20/lstm_cell_20/Sigmoid:y:04sequential_6/lstm_20/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:         ║
'sequential_6/lstm_20/lstm_cell_20/add_1AddV2)sequential_6/lstm_20/lstm_cell_20/mul:z:0+sequential_6/lstm_20/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:         џ
+sequential_6/lstm_20/lstm_cell_20/Sigmoid_2Sigmoid0sequential_6/lstm_20/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:         Ј
(sequential_6/lstm_20/lstm_cell_20/Relu_1Relu+sequential_6/lstm_20/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:         ╔
'sequential_6/lstm_20/lstm_cell_20/mul_2Mul/sequential_6/lstm_20/lstm_cell_20/Sigmoid_2:y:06sequential_6/lstm_20/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:         Ѓ
2sequential_6/lstm_20/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       э
$sequential_6/lstm_20/TensorArrayV2_1TensorListReserve;sequential_6/lstm_20/TensorArrayV2_1/element_shape:output:0-sequential_6/lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм[
sequential_6/lstm_20/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_6/lstm_20/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         i
'sequential_6/lstm_20/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : е
sequential_6/lstm_20/whileWhile0sequential_6/lstm_20/while/loop_counter:output:06sequential_6/lstm_20/while/maximum_iterations:output:0"sequential_6/lstm_20/time:output:0-sequential_6/lstm_20/TensorArrayV2_1:handle:0#sequential_6/lstm_20/zeros:output:0%sequential_6/lstm_20/zeros_1:output:0-sequential_6/lstm_20/strided_slice_1:output:0Lsequential_6/lstm_20/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_6_lstm_20_lstm_cell_20_matmul_readvariableop_resourceBsequential_6_lstm_20_lstm_cell_20_matmul_1_readvariableop_resourceAsequential_6_lstm_20_lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_6_lstm_20_while_body_617487*2
cond*R(
&sequential_6_lstm_20_while_cond_617486*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations ќ
Esequential_6/lstm_20/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ђ
7sequential_6/lstm_20/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_6/lstm_20/while:output:3Nsequential_6/lstm_20/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0}
*sequential_6/lstm_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         v
,sequential_6/lstm_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_6/lstm_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:­
$sequential_6/lstm_20/strided_slice_3StridedSlice@sequential_6/lstm_20/TensorArrayV2Stack/TensorListStack:tensor:03sequential_6/lstm_20/strided_slice_3/stack:output:05sequential_6/lstm_20/strided_slice_3/stack_1:output:05sequential_6/lstm_20/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskz
%sequential_6/lstm_20/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Н
 sequential_6/lstm_20/transpose_1	Transpose@sequential_6/lstm_20/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_6/lstm_20/transpose_1/perm:output:0*
T0*+
_output_shapes
:         p
sequential_6/lstm_20/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ї
 sequential_6/dropout_29/IdentityIdentity-sequential_6/lstm_20/strided_slice_3:output:0*
T0*'
_output_shapes
:         а
+sequential_6/dense_15/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_15_matmul_readvariableop_resource*
_output_shapes

:*
dtype0И
sequential_6/dense_15/MatMulMatMul)sequential_6/dropout_29/Identity:output:03sequential_6/dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ъ
,sequential_6/dense_15/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
sequential_6/dense_15/BiasAddBiasAdd&sequential_6/dense_15/MatMul:product:04sequential_6/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         |
sequential_6/dense_15/ReluRelu&sequential_6/dense_15/BiasAdd:output:0*
T0*'
_output_shapes
:         ѕ
 sequential_6/dropout_30/IdentityIdentity(sequential_6/dense_15/Relu:activations:0*
T0*'
_output_shapes
:         а
+sequential_6/dense_16/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_16_matmul_readvariableop_resource*
_output_shapes

:*
dtype0И
sequential_6/dense_16/MatMulMatMul)sequential_6/dropout_30/Identity:output:03sequential_6/dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ъ
,sequential_6/dense_16/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
sequential_6/dense_16/BiasAddBiasAdd&sequential_6/dense_16/MatMul:product:04sequential_6/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         |
sequential_6/dense_16/ReluRelu&sequential_6/dense_16/BiasAdd:output:0*
T0*'
_output_shapes
:         ѕ
 sequential_6/dropout_31/IdentityIdentity(sequential_6/dense_16/Relu:activations:0*
T0*'
_output_shapes
:         а
+sequential_6/dense_17/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype0И
sequential_6/dense_17/MatMulMatMul)sequential_6/dropout_31/Identity:output:03sequential_6/dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ъ
,sequential_6/dense_17/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
sequential_6/dense_17/BiasAddBiasAdd&sequential_6/dense_17/MatMul:product:04sequential_6/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         |
sequential_6/dense_17/ReluRelu&sequential_6/dense_17/BiasAdd:output:0*
T0*'
_output_shapes
:         ѕ
 sequential_6/dropout_32/IdentityIdentity(sequential_6/dense_17/Relu:activations:0*
T0*'
_output_shapes
:         а
+sequential_6/dense_18/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_18_matmul_readvariableop_resource*
_output_shapes

:*
dtype0И
sequential_6/dense_18/MatMulMatMul)sequential_6/dropout_32/Identity:output:03sequential_6/dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ъ
,sequential_6/dense_18/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
sequential_6/dense_18/BiasAddBiasAdd&sequential_6/dense_18/MatMul:product:04sequential_6/dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         u
IdentityIdentity&sequential_6/dense_18/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ц
NoOpNoOp-^sequential_6/dense_15/BiasAdd/ReadVariableOp,^sequential_6/dense_15/MatMul/ReadVariableOp-^sequential_6/dense_16/BiasAdd/ReadVariableOp,^sequential_6/dense_16/MatMul/ReadVariableOp-^sequential_6/dense_17/BiasAdd/ReadVariableOp,^sequential_6/dense_17/MatMul/ReadVariableOp-^sequential_6/dense_18/BiasAdd/ReadVariableOp,^sequential_6/dense_18/MatMul/ReadVariableOp9^sequential_6/lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp8^sequential_6/lstm_18/lstm_cell_18/MatMul/ReadVariableOp:^sequential_6/lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp^sequential_6/lstm_18/while9^sequential_6/lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp8^sequential_6/lstm_19/lstm_cell_19/MatMul/ReadVariableOp:^sequential_6/lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp^sequential_6/lstm_19/while9^sequential_6/lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp8^sequential_6/lstm_20/lstm_cell_20/MatMul/ReadVariableOp:^sequential_6/lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp^sequential_6/lstm_20/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 2\
,sequential_6/dense_15/BiasAdd/ReadVariableOp,sequential_6/dense_15/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_15/MatMul/ReadVariableOp+sequential_6/dense_15/MatMul/ReadVariableOp2\
,sequential_6/dense_16/BiasAdd/ReadVariableOp,sequential_6/dense_16/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_16/MatMul/ReadVariableOp+sequential_6/dense_16/MatMul/ReadVariableOp2\
,sequential_6/dense_17/BiasAdd/ReadVariableOp,sequential_6/dense_17/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_17/MatMul/ReadVariableOp+sequential_6/dense_17/MatMul/ReadVariableOp2\
,sequential_6/dense_18/BiasAdd/ReadVariableOp,sequential_6/dense_18/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_18/MatMul/ReadVariableOp+sequential_6/dense_18/MatMul/ReadVariableOp2t
8sequential_6/lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp8sequential_6/lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp2r
7sequential_6/lstm_18/lstm_cell_18/MatMul/ReadVariableOp7sequential_6/lstm_18/lstm_cell_18/MatMul/ReadVariableOp2v
9sequential_6/lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp9sequential_6/lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp28
sequential_6/lstm_18/whilesequential_6/lstm_18/while2t
8sequential_6/lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp8sequential_6/lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp2r
7sequential_6/lstm_19/lstm_cell_19/MatMul/ReadVariableOp7sequential_6/lstm_19/lstm_cell_19/MatMul/ReadVariableOp2v
9sequential_6/lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp9sequential_6/lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp28
sequential_6/lstm_19/whilesequential_6/lstm_19/while2t
8sequential_6/lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp8sequential_6/lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp2r
7sequential_6/lstm_20/lstm_cell_20/MatMul/ReadVariableOp7sequential_6/lstm_20/lstm_cell_20/MatMul/ReadVariableOp2v
9sequential_6/lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp9sequential_6/lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp28
sequential_6/lstm_20/whilesequential_6/lstm_20/while:Z V
+
_output_shapes
:         
'
_user_specified_namelstm_18_input
ќx
┌
__inference__traced_save_623860
file_prefix.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop.
*savev2_dense_16_kernel_read_readvariableop,
(savev2_dense_16_bias_read_readvariableop.
*savev2_dense_17_kernel_read_readvariableop,
(savev2_dense_17_bias_read_readvariableop.
*savev2_dense_18_kernel_read_readvariableop,
(savev2_dense_18_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_18_lstm_cell_18_kernel_read_readvariableopD
@savev2_lstm_18_lstm_cell_18_recurrent_kernel_read_readvariableop8
4savev2_lstm_18_lstm_cell_18_bias_read_readvariableop:
6savev2_lstm_19_lstm_cell_19_kernel_read_readvariableopD
@savev2_lstm_19_lstm_cell_19_recurrent_kernel_read_readvariableop8
4savev2_lstm_19_lstm_cell_19_bias_read_readvariableop:
6savev2_lstm_20_lstm_cell_20_kernel_read_readvariableopD
@savev2_lstm_20_lstm_cell_20_recurrent_kernel_read_readvariableop8
4savev2_lstm_20_lstm_cell_20_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_15_kernel_m_read_readvariableop3
/savev2_adam_dense_15_bias_m_read_readvariableop5
1savev2_adam_dense_16_kernel_m_read_readvariableop3
/savev2_adam_dense_16_bias_m_read_readvariableop5
1savev2_adam_dense_17_kernel_m_read_readvariableop3
/savev2_adam_dense_17_bias_m_read_readvariableop5
1savev2_adam_dense_18_kernel_m_read_readvariableop3
/savev2_adam_dense_18_bias_m_read_readvariableopA
=savev2_adam_lstm_18_lstm_cell_18_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_18_lstm_cell_18_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_18_lstm_cell_18_bias_m_read_readvariableopA
=savev2_adam_lstm_19_lstm_cell_19_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_19_lstm_cell_19_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_19_lstm_cell_19_bias_m_read_readvariableopA
=savev2_adam_lstm_20_lstm_cell_20_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_20_lstm_cell_20_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_20_lstm_cell_20_bias_m_read_readvariableop5
1savev2_adam_dense_15_kernel_v_read_readvariableop3
/savev2_adam_dense_15_bias_v_read_readvariableop5
1savev2_adam_dense_16_kernel_v_read_readvariableop3
/savev2_adam_dense_16_bias_v_read_readvariableop5
1savev2_adam_dense_17_kernel_v_read_readvariableop3
/savev2_adam_dense_17_bias_v_read_readvariableop5
1savev2_adam_dense_18_kernel_v_read_readvariableop3
/savev2_adam_dense_18_bias_v_read_readvariableopA
=savev2_adam_lstm_18_lstm_cell_18_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_18_lstm_cell_18_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_18_lstm_cell_18_bias_v_read_readvariableopA
=savev2_adam_lstm_19_lstm_cell_19_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_19_lstm_cell_19_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_19_lstm_cell_19_bias_v_read_readvariableopA
=savev2_adam_lstm_20_lstm_cell_20_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_20_lstm_cell_20_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_20_lstm_cell_20_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
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
_temp/partЂ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ▀
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*ѕ
value■Bч=B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЖ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*Ј
valueЁBѓ=B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ж
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop*savev2_dense_16_kernel_read_readvariableop(savev2_dense_16_bias_read_readvariableop*savev2_dense_17_kernel_read_readvariableop(savev2_dense_17_bias_read_readvariableop*savev2_dense_18_kernel_read_readvariableop(savev2_dense_18_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_18_lstm_cell_18_kernel_read_readvariableop@savev2_lstm_18_lstm_cell_18_recurrent_kernel_read_readvariableop4savev2_lstm_18_lstm_cell_18_bias_read_readvariableop6savev2_lstm_19_lstm_cell_19_kernel_read_readvariableop@savev2_lstm_19_lstm_cell_19_recurrent_kernel_read_readvariableop4savev2_lstm_19_lstm_cell_19_bias_read_readvariableop6savev2_lstm_20_lstm_cell_20_kernel_read_readvariableop@savev2_lstm_20_lstm_cell_20_recurrent_kernel_read_readvariableop4savev2_lstm_20_lstm_cell_20_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_15_kernel_m_read_readvariableop/savev2_adam_dense_15_bias_m_read_readvariableop1savev2_adam_dense_16_kernel_m_read_readvariableop/savev2_adam_dense_16_bias_m_read_readvariableop1savev2_adam_dense_17_kernel_m_read_readvariableop/savev2_adam_dense_17_bias_m_read_readvariableop1savev2_adam_dense_18_kernel_m_read_readvariableop/savev2_adam_dense_18_bias_m_read_readvariableop=savev2_adam_lstm_18_lstm_cell_18_kernel_m_read_readvariableopGsavev2_adam_lstm_18_lstm_cell_18_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_18_lstm_cell_18_bias_m_read_readvariableop=savev2_adam_lstm_19_lstm_cell_19_kernel_m_read_readvariableopGsavev2_adam_lstm_19_lstm_cell_19_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_19_lstm_cell_19_bias_m_read_readvariableop=savev2_adam_lstm_20_lstm_cell_20_kernel_m_read_readvariableopGsavev2_adam_lstm_20_lstm_cell_20_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_20_lstm_cell_20_bias_m_read_readvariableop1savev2_adam_dense_15_kernel_v_read_readvariableop/savev2_adam_dense_15_bias_v_read_readvariableop1savev2_adam_dense_16_kernel_v_read_readvariableop/savev2_adam_dense_16_bias_v_read_readvariableop1savev2_adam_dense_17_kernel_v_read_readvariableop/savev2_adam_dense_17_bias_v_read_readvariableop1savev2_adam_dense_18_kernel_v_read_readvariableop/savev2_adam_dense_18_bias_v_read_readvariableop=savev2_adam_lstm_18_lstm_cell_18_kernel_v_read_readvariableopGsavev2_adam_lstm_18_lstm_cell_18_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_18_lstm_cell_18_bias_v_read_readvariableop=savev2_adam_lstm_19_lstm_cell_19_kernel_v_read_readvariableopGsavev2_adam_lstm_19_lstm_cell_19_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_19_lstm_cell_19_bias_v_read_readvariableop=savev2_adam_lstm_20_lstm_cell_20_kernel_v_read_readvariableopGsavev2_adam_lstm_20_lstm_cell_20_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_20_lstm_cell_20_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *K
dtypesA
?2=	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Н
_input_shapes├
└: ::::::::: : : : : : : : : : : : : : : : : : ::::::::: : : : : : : : : ::::::::: : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::  

_output_shapes
::$! 

_output_shapes

:: "

_output_shapes
::$# 

_output_shapes

: :$$ 

_output_shapes

: : %

_output_shapes
: :$& 

_output_shapes

: :$' 

_output_shapes

: : (

_output_shapes
: :$) 

_output_shapes

: :$* 

_output_shapes

: : +

_output_shapes
: :$, 

_output_shapes

:: -

_output_shapes
::$. 

_output_shapes

:: /

_output_shapes
::$0 

_output_shapes

:: 1

_output_shapes
::$2 

_output_shapes

:: 3

_output_shapes
::$4 

_output_shapes

: :$5 

_output_shapes

: : 6

_output_shapes
: :$7 

_output_shapes

: :$8 

_output_shapes

: : 9

_output_shapes
: :$: 

_output_shapes

: :$; 

_output_shapes

: : <

_output_shapes
: :=

_output_shapes
: 
 
▓
(__inference_lstm_19_layer_call_fn_621961

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_19_layer_call_and_return_conditional_losses_619732s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
э
▓
(__inference_lstm_20_layer_call_fn_622593

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_619115o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ц
G
+__inference_dropout_32_layer_call_fn_623322

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_32_layer_call_and_return_conditional_losses_619200`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
х
├
while_cond_619459
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_619459___redundant_placeholder04
0while_while_cond_619459___redundant_placeholder14
0while_while_cond_619459___redundant_placeholder24
0while_while_cond_619459___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
х
├
while_cond_622019
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_622019___redundant_placeholder04
0while_while_cond_622019___redundant_placeholder14
0while_while_cond_622019___redundant_placeholder24
0while_while_cond_622019___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ъJ
ў
C__inference_lstm_20_layer_call_and_return_conditional_losses_623176

inputs=
+lstm_cell_20_matmul_readvariableop_resource: ?
-lstm_cell_20_matmul_1_readvariableop_resource: :
,lstm_cell_20_biasadd_readvariableop_resource: 
identityѕб#lstm_cell_20/BiasAdd/ReadVariableOpб"lstm_cell_20/MatMul/ReadVariableOpб$lstm_cell_20/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskј
"lstm_cell_20/MatMul/ReadVariableOpReadVariableOp+lstm_cell_20_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0*lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          њ
$lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell_20/MatMul_1MatMulzeros:output:0,lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          І
lstm_cell_20/addAddV2lstm_cell_20/MatMul:product:0lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:          ї
#lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ћ
lstm_cell_20/BiasAddBiasAddlstm_cell_20/add:z:0+lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitn
lstm_cell_20/SigmoidSigmoidlstm_cell_20/split:output:0*
T0*'
_output_shapes
:         p
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/split:output:1*
T0*'
_output_shapes
:         w
lstm_cell_20/mulMullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         h
lstm_cell_20/ReluRelulstm_cell_20/split:output:2*
T0*'
_output_shapes
:         є
lstm_cell_20/mul_1Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:         {
lstm_cell_20/add_1AddV2lstm_cell_20/mul:z:0lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:         p
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/split:output:3*
T0*'
_output_shapes
:         e
lstm_cell_20/Relu_1Relulstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:         і
lstm_cell_20/mul_2Mullstm_cell_20/Sigmoid_2:y:0!lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_20_matmul_readvariableop_resource-lstm_cell_20_matmul_1_readvariableop_resource,lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_623092*
condR
while_cond_623091*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         └
NoOpNoOp$^lstm_cell_20/BiasAdd/ReadVariableOp#^lstm_cell_20/MatMul/ReadVariableOp%^lstm_cell_20/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2J
#lstm_cell_20/BiasAdd/ReadVariableOp#lstm_cell_20/BiasAdd/ReadVariableOp2H
"lstm_cell_20/MatMul/ReadVariableOp"lstm_cell_20/MatMul/ReadVariableOp2L
$lstm_cell_20/MatMul_1/ReadVariableOp$lstm_cell_20/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
в
з
-__inference_lstm_cell_20_layer_call_fn_623576

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ѕбStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_618369o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
 7
╩
while_body_618717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_18_matmul_readvariableop_resource_0: G
5while_lstm_cell_18_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_18_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_18_matmul_readvariableop_resource: E
3while_lstm_cell_18_matmul_1_readvariableop_resource: @
2while_lstm_cell_18_biasadd_readvariableop_resource: ѕб)while/lstm_cell_18/BiasAdd/ReadVariableOpб(while/lstm_cell_18/MatMul/ReadVariableOpб*while/lstm_cell_18/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ю
(while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_18_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╣
while/lstm_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          а
*while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0а
while/lstm_cell_18/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_18/addAddV2#while/lstm_cell_18/MatMul:product:0%while/lstm_cell_18/MatMul_1:product:0*
T0*'
_output_shapes
:          џ
)while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0д
while/lstm_cell_18/BiasAddBiasAddwhile/lstm_cell_18/add:z:01while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_18/splitSplit+while/lstm_cell_18/split/split_dim:output:0#while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
while/lstm_cell_18/SigmoidSigmoid!while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell_18/Sigmoid_1Sigmoid!while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:         є
while/lstm_cell_18/mulMul while/lstm_cell_18/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         t
while/lstm_cell_18/ReluRelu!while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:         ў
while/lstm_cell_18/mul_1Mulwhile/lstm_cell_18/Sigmoid:y:0%while/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:         Ї
while/lstm_cell_18/add_1AddV2while/lstm_cell_18/mul:z:0while/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:         |
while/lstm_cell_18/Sigmoid_2Sigmoid!while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:         q
while/lstm_cell_18/Relu_1Reluwhile/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:         ю
while/lstm_cell_18/mul_2Mul while/lstm_cell_18/Sigmoid_2:y:0'while/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:         ┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_18/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_18/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         y
while/Identity_5Identitywhile/lstm_cell_18/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         л

while/NoOpNoOp*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_18_biasadd_readvariableop_resource4while_lstm_cell_18_biasadd_readvariableop_resource_0"l
3while_lstm_cell_18_matmul_1_readvariableop_resource5while_lstm_cell_18_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_18_matmul_readvariableop_resource3while_lstm_cell_18_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_18/BiasAdd/ReadVariableOp)while/lstm_cell_18/BiasAdd/ReadVariableOp2T
(while/lstm_cell_18/MatMul/ReadVariableOp(while/lstm_cell_18/MatMul/ReadVariableOp2X
*while/lstm_cell_18/MatMul_1/ReadVariableOp*while/lstm_cell_18/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
х
├
while_cond_622305
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_622305___redundant_placeholder04
0while_while_cond_622305___redundant_placeholder14
0while_while_cond_622305___redundant_placeholder24
0while_while_cond_622305___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
 7
╩
while_body_621806
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_18_matmul_readvariableop_resource_0: G
5while_lstm_cell_18_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_18_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_18_matmul_readvariableop_resource: E
3while_lstm_cell_18_matmul_1_readvariableop_resource: @
2while_lstm_cell_18_biasadd_readvariableop_resource: ѕб)while/lstm_cell_18/BiasAdd/ReadVariableOpб(while/lstm_cell_18/MatMul/ReadVariableOpб*while/lstm_cell_18/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ю
(while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_18_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╣
while/lstm_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          а
*while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0а
while/lstm_cell_18/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_18/addAddV2#while/lstm_cell_18/MatMul:product:0%while/lstm_cell_18/MatMul_1:product:0*
T0*'
_output_shapes
:          џ
)while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0д
while/lstm_cell_18/BiasAddBiasAddwhile/lstm_cell_18/add:z:01while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_18/splitSplit+while/lstm_cell_18/split/split_dim:output:0#while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
while/lstm_cell_18/SigmoidSigmoid!while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell_18/Sigmoid_1Sigmoid!while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:         є
while/lstm_cell_18/mulMul while/lstm_cell_18/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         t
while/lstm_cell_18/ReluRelu!while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:         ў
while/lstm_cell_18/mul_1Mulwhile/lstm_cell_18/Sigmoid:y:0%while/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:         Ї
while/lstm_cell_18/add_1AddV2while/lstm_cell_18/mul:z:0while/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:         |
while/lstm_cell_18/Sigmoid_2Sigmoid!while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:         q
while/lstm_cell_18/Relu_1Reluwhile/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:         ю
while/lstm_cell_18/mul_2Mul while/lstm_cell_18/Sigmoid_2:y:0'while/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:         ┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_18/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_18/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         y
while/Identity_5Identitywhile/lstm_cell_18/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         л

while/NoOpNoOp*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_18_biasadd_readvariableop_resource4while_lstm_cell_18_biasadd_readvariableop_resource_0"l
3while_lstm_cell_18_matmul_1_readvariableop_resource5while_lstm_cell_18_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_18_matmul_readvariableop_resource3while_lstm_cell_18_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_18/BiasAdd/ReadVariableOp)while/lstm_cell_18/BiasAdd/ReadVariableOp2T
(while/lstm_cell_18/MatMul/ReadVariableOp(while/lstm_cell_18/MatMul/ReadVariableOp2X
*while/lstm_cell_18/MatMul_1/ReadVariableOp*while/lstm_cell_18/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
М
Ѓ
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_623625

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
в
з
-__inference_lstm_cell_19_layer_call_fn_623495

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ѕбStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_618165o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
в
з
-__inference_lstm_cell_20_layer_call_fn_623593

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ѕбStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_618515o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
є
d
+__inference_dropout_28_layer_call_fn_622543

inputs
identityѕбStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_619573s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ц
G
+__inference_dropout_31_layer_call_fn_623275

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_31_layer_call_and_return_conditional_losses_619176`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
х
├
while_cond_617682
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_617682___redundant_placeholder04
0while_while_cond_617682___redundant_placeholder14
0while_while_cond_617682___redundant_placeholder24
0while_while_cond_617682___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
 7
╩
while_body_621377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_18_matmul_readvariableop_resource_0: G
5while_lstm_cell_18_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_18_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_18_matmul_readvariableop_resource: E
3while_lstm_cell_18_matmul_1_readvariableop_resource: @
2while_lstm_cell_18_biasadd_readvariableop_resource: ѕб)while/lstm_cell_18/BiasAdd/ReadVariableOpб(while/lstm_cell_18/MatMul/ReadVariableOpб*while/lstm_cell_18/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ю
(while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_18_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╣
while/lstm_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          а
*while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0а
while/lstm_cell_18/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_18/addAddV2#while/lstm_cell_18/MatMul:product:0%while/lstm_cell_18/MatMul_1:product:0*
T0*'
_output_shapes
:          џ
)while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0д
while/lstm_cell_18/BiasAddBiasAddwhile/lstm_cell_18/add:z:01while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_18/splitSplit+while/lstm_cell_18/split/split_dim:output:0#while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
while/lstm_cell_18/SigmoidSigmoid!while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell_18/Sigmoid_1Sigmoid!while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:         є
while/lstm_cell_18/mulMul while/lstm_cell_18/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         t
while/lstm_cell_18/ReluRelu!while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:         ў
while/lstm_cell_18/mul_1Mulwhile/lstm_cell_18/Sigmoid:y:0%while/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:         Ї
while/lstm_cell_18/add_1AddV2while/lstm_cell_18/mul:z:0while/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:         |
while/lstm_cell_18/Sigmoid_2Sigmoid!while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:         q
while/lstm_cell_18/Relu_1Reluwhile/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:         ю
while/lstm_cell_18/mul_2Mul while/lstm_cell_18/Sigmoid_2:y:0'while/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:         ┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_18/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_18/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         y
while/Identity_5Identitywhile/lstm_cell_18/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         л

while/NoOpNoOp*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_18_biasadd_readvariableop_resource4while_lstm_cell_18_biasadd_readvariableop_resource_0"l
3while_lstm_cell_18_matmul_1_readvariableop_resource5while_lstm_cell_18_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_18_matmul_readvariableop_resource3while_lstm_cell_18_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_18/BiasAdd/ReadVariableOp)while/lstm_cell_18/BiasAdd/ReadVariableOp2T
(while/lstm_cell_18/MatMul/ReadVariableOp(while/lstm_cell_18/MatMul/ReadVariableOp2X
*while/lstm_cell_18/MatMul_1/ReadVariableOp*while/lstm_cell_18/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
П
╗
-__inference_sequential_6_layer_call_fn_620324

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:
identityѕбStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *3
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_6_layer_call_and_return_conditional_losses_620021o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ъJ
ў
C__inference_lstm_20_layer_call_and_return_conditional_losses_619115

inputs=
+lstm_cell_20_matmul_readvariableop_resource: ?
-lstm_cell_20_matmul_1_readvariableop_resource: :
,lstm_cell_20_biasadd_readvariableop_resource: 
identityѕб#lstm_cell_20/BiasAdd/ReadVariableOpб"lstm_cell_20/MatMul/ReadVariableOpб$lstm_cell_20/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskј
"lstm_cell_20/MatMul/ReadVariableOpReadVariableOp+lstm_cell_20_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0*lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          њ
$lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell_20/MatMul_1MatMulzeros:output:0,lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          І
lstm_cell_20/addAddV2lstm_cell_20/MatMul:product:0lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:          ї
#lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ћ
lstm_cell_20/BiasAddBiasAddlstm_cell_20/add:z:0+lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitn
lstm_cell_20/SigmoidSigmoidlstm_cell_20/split:output:0*
T0*'
_output_shapes
:         p
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/split:output:1*
T0*'
_output_shapes
:         w
lstm_cell_20/mulMullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         h
lstm_cell_20/ReluRelulstm_cell_20/split:output:2*
T0*'
_output_shapes
:         є
lstm_cell_20/mul_1Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:         {
lstm_cell_20/add_1AddV2lstm_cell_20/mul:z:0lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:         p
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/split:output:3*
T0*'
_output_shapes
:         e
lstm_cell_20/Relu_1Relulstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:         і
lstm_cell_20/mul_2Mullstm_cell_20/Sigmoid_2:y:0!lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_20_matmul_readvariableop_resource-lstm_cell_20_matmul_1_readvariableop_resource,lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_619031*
condR
while_cond_619030*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         └
NoOpNoOp$^lstm_cell_20/BiasAdd/ReadVariableOp#^lstm_cell_20/MatMul/ReadVariableOp%^lstm_cell_20/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2J
#lstm_cell_20/BiasAdd/ReadVariableOp#lstm_cell_20/BiasAdd/ReadVariableOp2H
"lstm_cell_20/MatMul/ReadVariableOp"lstm_cell_20/MatMul/ReadVariableOp2L
$lstm_cell_20/MatMul_1/ReadVariableOp$lstm_cell_20/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ж
d
F__inference_dropout_27_layer_call_and_return_conditional_losses_618814

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:         _

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ОJ
џ
C__inference_lstm_18_layer_call_and_return_conditional_losses_621604
inputs_0=
+lstm_cell_18_matmul_readvariableop_resource: ?
-lstm_cell_18_matmul_1_readvariableop_resource: :
,lstm_cell_18_biasadd_readvariableop_resource: 
identityѕб#lstm_cell_18/BiasAdd/ReadVariableOpб"lstm_cell_18/MatMul/ReadVariableOpб$lstm_cell_18/MatMul_1/ReadVariableOpбwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskј
"lstm_cell_18/MatMul/ReadVariableOpReadVariableOp+lstm_cell_18_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
lstm_cell_18/MatMulMatMulstrided_slice_2:output:0*lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          њ
$lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell_18/MatMul_1MatMulzeros:output:0,lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          І
lstm_cell_18/addAddV2lstm_cell_18/MatMul:product:0lstm_cell_18/MatMul_1:product:0*
T0*'
_output_shapes
:          ї
#lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ћ
lstm_cell_18/BiasAddBiasAddlstm_cell_18/add:z:0+lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ^
lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_18/splitSplit%lstm_cell_18/split/split_dim:output:0lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitn
lstm_cell_18/SigmoidSigmoidlstm_cell_18/split:output:0*
T0*'
_output_shapes
:         p
lstm_cell_18/Sigmoid_1Sigmoidlstm_cell_18/split:output:1*
T0*'
_output_shapes
:         w
lstm_cell_18/mulMullstm_cell_18/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         h
lstm_cell_18/ReluRelulstm_cell_18/split:output:2*
T0*'
_output_shapes
:         є
lstm_cell_18/mul_1Mullstm_cell_18/Sigmoid:y:0lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:         {
lstm_cell_18/add_1AddV2lstm_cell_18/mul:z:0lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:         p
lstm_cell_18/Sigmoid_2Sigmoidlstm_cell_18/split:output:3*
T0*'
_output_shapes
:         e
lstm_cell_18/Relu_1Relulstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:         і
lstm_cell_18/mul_2Mullstm_cell_18/Sigmoid_2:y:0!lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_18_matmul_readvariableop_resource-lstm_cell_18_matmul_1_readvariableop_resource,lstm_cell_18_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_621520*
condR
while_cond_621519*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  └
NoOpNoOp$^lstm_cell_18/BiasAdd/ReadVariableOp#^lstm_cell_18/MatMul/ReadVariableOp%^lstm_cell_18/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2J
#lstm_cell_18/BiasAdd/ReadVariableOp#lstm_cell_18/BiasAdd/ReadVariableOp2H
"lstm_cell_18/MatMul/ReadVariableOp"lstm_cell_18/MatMul/ReadVariableOp2L
$lstm_cell_18/MatMul_1/ReadVariableOp$lstm_cell_18/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
њ8
ѓ
C__inference_lstm_18_layer_call_and_return_conditional_losses_617752

inputs%
lstm_cell_18_617670: %
lstm_cell_18_617672: !
lstm_cell_18_617674: 
identityѕб$lstm_cell_18/StatefulPartitionedCallбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЭ
$lstm_cell_18/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_18_617670lstm_cell_18_617672lstm_cell_18_617674*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_lstm_cell_18_layer_call_and_return_conditional_losses_617669n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_18_617670lstm_cell_18_617672lstm_cell_18_617674*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_617683*
condR
while_cond_617682*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  u
NoOpNoOp%^lstm_cell_18/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_18/StatefulPartitionedCall$lstm_cell_18/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
 
▓
(__inference_lstm_19_layer_call_fn_621950

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_19_layer_call_and_return_conditional_losses_618958s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ј8
ѓ
C__inference_lstm_20_layer_call_and_return_conditional_losses_618643

inputs%
lstm_cell_20_618561: %
lstm_cell_20_618563: !
lstm_cell_20_618565: 
identityѕб$lstm_cell_20/StatefulPartitionedCallбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЭ
$lstm_cell_20/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_20_618561lstm_cell_20_618563lstm_cell_20_618565*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_618515n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_20_618561lstm_cell_20_618563lstm_cell_20_618565*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_618574*
condR
while_cond_618573*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         u
NoOpNoOp%^lstm_cell_20/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_20/StatefulPartitionedCall$lstm_cell_20/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
Ы
┬
-__inference_sequential_6_layer_call_fn_620097
lstm_18_input
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:
identityѕбStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCalllstm_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *3
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_6_layer_call_and_return_conditional_losses_620021o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:         
'
_user_specified_namelstm_18_input
 7
╩
while_body_619460
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_20_matmul_readvariableop_resource_0: G
5while_lstm_cell_20_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_20_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_20_matmul_readvariableop_resource: E
3while_lstm_cell_20_matmul_1_readvariableop_resource: @
2while_lstm_cell_20_biasadd_readvariableop_resource: ѕб)while/lstm_cell_20/BiasAdd/ReadVariableOpб(while/lstm_cell_20/MatMul/ReadVariableOpб*while/lstm_cell_20/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ю
(while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╣
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          а
*while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0а
while/lstm_cell_20/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_20/addAddV2#while/lstm_cell_20/MatMul:product:0%while/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:          џ
)while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0д
while/lstm_cell_20/BiasAddBiasAddwhile/lstm_cell_20/add:z:01while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0#while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
while/lstm_cell_20/SigmoidSigmoid!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell_20/Sigmoid_1Sigmoid!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:         є
while/lstm_cell_20/mulMul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         t
while/lstm_cell_20/ReluRelu!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:         ў
while/lstm_cell_20/mul_1Mulwhile/lstm_cell_20/Sigmoid:y:0%while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:         Ї
while/lstm_cell_20/add_1AddV2while/lstm_cell_20/mul:z:0while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:         |
while/lstm_cell_20/Sigmoid_2Sigmoid!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:         q
while/lstm_cell_20/Relu_1Reluwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:         ю
while/lstm_cell_20/mul_2Mul while/lstm_cell_20/Sigmoid_2:y:0'while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:         ┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_20/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         y
while/Identity_5Identitywhile/lstm_cell_20/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         л

while/NoOpNoOp*^while/lstm_cell_20/BiasAdd/ReadVariableOp)^while/lstm_cell_20/MatMul/ReadVariableOp+^while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_20_biasadd_readvariableop_resource4while_lstm_cell_20_biasadd_readvariableop_resource_0"l
3while_lstm_cell_20_matmul_1_readvariableop_resource5while_lstm_cell_20_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_20_matmul_readvariableop_resource3while_lstm_cell_20_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_20/BiasAdd/ReadVariableOp)while/lstm_cell_20/BiasAdd/ReadVariableOp2T
(while/lstm_cell_20/MatMul/ReadVariableOp(while/lstm_cell_20/MatMul/ReadVariableOp2X
*while/lstm_cell_20/MatMul_1/ReadVariableOp*while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
╦
Ђ
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_618515

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates
ќ

с
lstm_20_while_cond_620662,
(lstm_20_while_lstm_20_while_loop_counter2
.lstm_20_while_lstm_20_while_maximum_iterations
lstm_20_while_placeholder
lstm_20_while_placeholder_1
lstm_20_while_placeholder_2
lstm_20_while_placeholder_3.
*lstm_20_while_less_lstm_20_strided_slice_1D
@lstm_20_while_lstm_20_while_cond_620662___redundant_placeholder0D
@lstm_20_while_lstm_20_while_cond_620662___redundant_placeholder1D
@lstm_20_while_lstm_20_while_cond_620662___redundant_placeholder2D
@lstm_20_while_lstm_20_while_cond_620662___redundant_placeholder3
lstm_20_while_identity
ѓ
lstm_20/while/LessLesslstm_20_while_placeholder*lstm_20_while_less_lstm_20_strided_slice_1*
T0*
_output_shapes
: [
lstm_20/while/IdentityIdentitylstm_20/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_20_while_identitylstm_20/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
в
з
-__inference_lstm_cell_18_layer_call_fn_623380

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ѕбStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_lstm_cell_18_layer_call_and_return_conditional_losses_617669o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
Е
┤
(__inference_lstm_19_layer_call_fn_621928
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_19_layer_call_and_return_conditional_losses_618102|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
 7
╩
while_body_622806
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_20_matmul_readvariableop_resource_0: G
5while_lstm_cell_20_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_20_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_20_matmul_readvariableop_resource: E
3while_lstm_cell_20_matmul_1_readvariableop_resource: @
2while_lstm_cell_20_biasadd_readvariableop_resource: ѕб)while/lstm_cell_20/BiasAdd/ReadVariableOpб(while/lstm_cell_20/MatMul/ReadVariableOpб*while/lstm_cell_20/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ю
(while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╣
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          а
*while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0а
while/lstm_cell_20/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_20/addAddV2#while/lstm_cell_20/MatMul:product:0%while/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:          џ
)while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0д
while/lstm_cell_20/BiasAddBiasAddwhile/lstm_cell_20/add:z:01while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0#while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
while/lstm_cell_20/SigmoidSigmoid!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell_20/Sigmoid_1Sigmoid!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:         є
while/lstm_cell_20/mulMul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         t
while/lstm_cell_20/ReluRelu!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:         ў
while/lstm_cell_20/mul_1Mulwhile/lstm_cell_20/Sigmoid:y:0%while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:         Ї
while/lstm_cell_20/add_1AddV2while/lstm_cell_20/mul:z:0while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:         |
while/lstm_cell_20/Sigmoid_2Sigmoid!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:         q
while/lstm_cell_20/Relu_1Reluwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:         ю
while/lstm_cell_20/mul_2Mul while/lstm_cell_20/Sigmoid_2:y:0'while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:         ┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_20/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         y
while/Identity_5Identitywhile/lstm_cell_20/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         л

while/NoOpNoOp*^while/lstm_cell_20/BiasAdd/ReadVariableOp)^while/lstm_cell_20/MatMul/ReadVariableOp+^while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_20_biasadd_readvariableop_resource4while_lstm_cell_20_biasadd_readvariableop_resource_0"l
3while_lstm_cell_20_matmul_1_readvariableop_resource5while_lstm_cell_20_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_20_matmul_readvariableop_resource3while_lstm_cell_20_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_20/BiasAdd/ReadVariableOp)while/lstm_cell_20/BiasAdd/ReadVariableOp2T
(while/lstm_cell_20/MatMul/ReadVariableOp(while/lstm_cell_20/MatMul/ReadVariableOp2X
*while/lstm_cell_20/MatMul_1/ReadVariableOp*while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
ќ

с
lstm_18_while_cond_620382,
(lstm_18_while_lstm_18_while_loop_counter2
.lstm_18_while_lstm_18_while_maximum_iterations
lstm_18_while_placeholder
lstm_18_while_placeholder_1
lstm_18_while_placeholder_2
lstm_18_while_placeholder_3.
*lstm_18_while_less_lstm_18_strided_slice_1D
@lstm_18_while_lstm_18_while_cond_620382___redundant_placeholder0D
@lstm_18_while_lstm_18_while_cond_620382___redundant_placeholder1D
@lstm_18_while_lstm_18_while_cond_620382___redundant_placeholder2D
@lstm_18_while_lstm_18_while_cond_620382___redundant_placeholder3
lstm_18_while_identity
ѓ
lstm_18/while/LessLesslstm_18_while_placeholder*lstm_18_while_less_lstm_18_strided_slice_1*
T0*
_output_shapes
: [
lstm_18/while/IdentityIdentitylstm_18/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_18_while_identitylstm_18/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
њ8
ѓ
C__inference_lstm_19_layer_call_and_return_conditional_losses_618102

inputs%
lstm_cell_19_618020: %
lstm_cell_19_618022: !
lstm_cell_19_618024: 
identityѕб$lstm_cell_19/StatefulPartitionedCallбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЭ
$lstm_cell_19/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_19_618020lstm_cell_19_618022lstm_cell_19_618024*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_618019n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_19_618020lstm_cell_19_618022lstm_cell_19_618024*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_618033*
condR
while_cond_618032*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  u
NoOpNoOp%^lstm_cell_19/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_19/StatefulPartitionedCall$lstm_cell_19/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
с"
П
while_body_618383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_20_618407_0: -
while_lstm_cell_20_618409_0: )
while_lstm_cell_20_618411_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_20_618407: +
while_lstm_cell_20_618409: '
while_lstm_cell_20_618411: ѕб*while/lstm_cell_20/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Х
*while/lstm_cell_20/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_20_618407_0while_lstm_cell_20_618409_0while_lstm_cell_20_618411_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_618369▄
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_20/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: љ
while/Identity_4Identity3while/lstm_cell_20/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         љ
while/Identity_5Identity3while/lstm_cell_20/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         y

while/NoOpNoOp+^while/lstm_cell_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_20_618407while_lstm_cell_20_618407_0"8
while_lstm_cell_20_618409while_lstm_cell_20_618409_0"8
while_lstm_cell_20_618411while_lstm_cell_20_618411_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2X
*while/lstm_cell_20/StatefulPartitionedCall*while/lstm_cell_20/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
М
Ѓ
H__inference_lstm_cell_18_layer_call_and_return_conditional_losses_623461

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
х
├
while_cond_622448
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_622448___redundant_placeholder04
0while_while_cond_622448___redundant_placeholder14
0while_while_cond_622448___redundant_placeholder24
0while_while_cond_622448___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ц
G
+__inference_dropout_30_layer_call_fn_623228

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_619152`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
х
├
while_cond_618223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_618223___redundant_placeholder04
0while_while_cond_618223___redundant_placeholder14
0while_while_cond_618223___redundant_placeholder24
0while_while_cond_618223___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
МJ
џ
C__inference_lstm_20_layer_call_and_return_conditional_losses_622890
inputs_0=
+lstm_cell_20_matmul_readvariableop_resource: ?
-lstm_cell_20_matmul_1_readvariableop_resource: :
,lstm_cell_20_biasadd_readvariableop_resource: 
identityѕб#lstm_cell_20/BiasAdd/ReadVariableOpб"lstm_cell_20/MatMul/ReadVariableOpб$lstm_cell_20/MatMul_1/ReadVariableOpбwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskј
"lstm_cell_20/MatMul/ReadVariableOpReadVariableOp+lstm_cell_20_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0*lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          њ
$lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell_20/MatMul_1MatMulzeros:output:0,lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          І
lstm_cell_20/addAddV2lstm_cell_20/MatMul:product:0lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:          ї
#lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ћ
lstm_cell_20/BiasAddBiasAddlstm_cell_20/add:z:0+lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitn
lstm_cell_20/SigmoidSigmoidlstm_cell_20/split:output:0*
T0*'
_output_shapes
:         p
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/split:output:1*
T0*'
_output_shapes
:         w
lstm_cell_20/mulMullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         h
lstm_cell_20/ReluRelulstm_cell_20/split:output:2*
T0*'
_output_shapes
:         є
lstm_cell_20/mul_1Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:         {
lstm_cell_20/add_1AddV2lstm_cell_20/mul:z:0lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:         p
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/split:output:3*
T0*'
_output_shapes
:         e
lstm_cell_20/Relu_1Relulstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:         і
lstm_cell_20/mul_2Mullstm_cell_20/Sigmoid_2:y:0!lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_20_matmul_readvariableop_resource-lstm_cell_20_matmul_1_readvariableop_resource,lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_622806*
condR
while_cond_622805*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         └
NoOpNoOp$^lstm_cell_20/BiasAdd/ReadVariableOp#^lstm_cell_20/MatMul/ReadVariableOp%^lstm_cell_20/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2J
#lstm_cell_20/BiasAdd/ReadVariableOp#lstm_cell_20/BiasAdd/ReadVariableOp2H
"lstm_cell_20/MatMul/ReadVariableOp"lstm_cell_20/MatMul/ReadVariableOp2L
$lstm_cell_20/MatMul_1/ReadVariableOp$lstm_cell_20/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
┘
d
F__inference_dropout_29_layer_call_and_return_conditional_losses_623191

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
х
├
while_cond_622662
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_622662___redundant_placeholder04
0while_while_cond_622662___redundant_placeholder14
0while_while_cond_622662___redundant_placeholder24
0while_while_cond_622662___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
┘
d
F__inference_dropout_32_layer_call_and_return_conditional_losses_619200

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╦
Ђ
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_618019

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates
 
▓
(__inference_lstm_18_layer_call_fn_621318

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_18_layer_call_and_return_conditional_losses_619920s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ЎJ
ў
C__inference_lstm_19_layer_call_and_return_conditional_losses_622533

inputs=
+lstm_cell_19_matmul_readvariableop_resource: ?
-lstm_cell_19_matmul_1_readvariableop_resource: :
,lstm_cell_19_biasadd_readvariableop_resource: 
identityѕб#lstm_cell_19/BiasAdd/ReadVariableOpб"lstm_cell_19/MatMul/ReadVariableOpб$lstm_cell_19/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskј
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          њ
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          І
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:          ї
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ћ
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ^
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitn
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:         p
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:         w
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         h
lstm_cell_19/ReluRelulstm_cell_19/split:output:2*
T0*'
_output_shapes
:         є
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:         {
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:         p
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:         e
lstm_cell_19/Relu_1Relulstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:         і
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_2:y:0!lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_622449*
condR
while_cond_622448*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         └
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
З	
e
F__inference_dropout_31_layer_call_and_return_conditional_losses_619319

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
 
▓
(__inference_lstm_18_layer_call_fn_621307

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_18_layer_call_and_return_conditional_losses_618801s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ѓ
у
&sequential_6_lstm_20_while_cond_617486F
Bsequential_6_lstm_20_while_sequential_6_lstm_20_while_loop_counterL
Hsequential_6_lstm_20_while_sequential_6_lstm_20_while_maximum_iterations*
&sequential_6_lstm_20_while_placeholder,
(sequential_6_lstm_20_while_placeholder_1,
(sequential_6_lstm_20_while_placeholder_2,
(sequential_6_lstm_20_while_placeholder_3H
Dsequential_6_lstm_20_while_less_sequential_6_lstm_20_strided_slice_1^
Zsequential_6_lstm_20_while_sequential_6_lstm_20_while_cond_617486___redundant_placeholder0^
Zsequential_6_lstm_20_while_sequential_6_lstm_20_while_cond_617486___redundant_placeholder1^
Zsequential_6_lstm_20_while_sequential_6_lstm_20_while_cond_617486___redundant_placeholder2^
Zsequential_6_lstm_20_while_sequential_6_lstm_20_while_cond_617486___redundant_placeholder3'
#sequential_6_lstm_20_while_identity
Х
sequential_6/lstm_20/while/LessLess&sequential_6_lstm_20_while_placeholderDsequential_6_lstm_20_while_less_sequential_6_lstm_20_strided_slice_1*
T0*
_output_shapes
: u
#sequential_6/lstm_20/while/IdentityIdentity#sequential_6/lstm_20/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_6_lstm_20_while_identity,sequential_6/lstm_20/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
я╚
Ѕ
H__inference_sequential_6_layer_call_and_return_conditional_losses_621274

inputsE
3lstm_18_lstm_cell_18_matmul_readvariableop_resource: G
5lstm_18_lstm_cell_18_matmul_1_readvariableop_resource: B
4lstm_18_lstm_cell_18_biasadd_readvariableop_resource: E
3lstm_19_lstm_cell_19_matmul_readvariableop_resource: G
5lstm_19_lstm_cell_19_matmul_1_readvariableop_resource: B
4lstm_19_lstm_cell_19_biasadd_readvariableop_resource: E
3lstm_20_lstm_cell_20_matmul_readvariableop_resource: G
5lstm_20_lstm_cell_20_matmul_1_readvariableop_resource: B
4lstm_20_lstm_cell_20_biasadd_readvariableop_resource: 9
'dense_15_matmul_readvariableop_resource:6
(dense_15_biasadd_readvariableop_resource:9
'dense_16_matmul_readvariableop_resource:6
(dense_16_biasadd_readvariableop_resource:9
'dense_17_matmul_readvariableop_resource:6
(dense_17_biasadd_readvariableop_resource:9
'dense_18_matmul_readvariableop_resource:6
(dense_18_biasadd_readvariableop_resource:
identityѕбdense_15/BiasAdd/ReadVariableOpбdense_15/MatMul/ReadVariableOpбdense_16/BiasAdd/ReadVariableOpбdense_16/MatMul/ReadVariableOpбdense_17/BiasAdd/ReadVariableOpбdense_17/MatMul/ReadVariableOpбdense_18/BiasAdd/ReadVariableOpбdense_18/MatMul/ReadVariableOpб+lstm_18/lstm_cell_18/BiasAdd/ReadVariableOpб*lstm_18/lstm_cell_18/MatMul/ReadVariableOpб,lstm_18/lstm_cell_18/MatMul_1/ReadVariableOpбlstm_18/whileб+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOpб*lstm_19/lstm_cell_19/MatMul/ReadVariableOpб,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOpбlstm_19/whileб+lstm_20/lstm_cell_20/BiasAdd/ReadVariableOpб*lstm_20/lstm_cell_20/MatMul/ReadVariableOpб,lstm_20/lstm_cell_20/MatMul_1/ReadVariableOpбlstm_20/whileC
lstm_18/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_18/strided_sliceStridedSlicelstm_18/Shape:output:0$lstm_18/strided_slice/stack:output:0&lstm_18/strided_slice/stack_1:output:0&lstm_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_18/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :І
lstm_18/zeros/packedPacklstm_18/strided_slice:output:0lstm_18/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_18/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ё
lstm_18/zerosFilllstm_18/zeros/packed:output:0lstm_18/zeros/Const:output:0*
T0*'
_output_shapes
:         Z
lstm_18/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ј
lstm_18/zeros_1/packedPacklstm_18/strided_slice:output:0!lstm_18/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_18/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    і
lstm_18/zeros_1Filllstm_18/zeros_1/packed:output:0lstm_18/zeros_1/Const:output:0*
T0*'
_output_shapes
:         k
lstm_18/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_18/transpose	Transposeinputslstm_18/transpose/perm:output:0*
T0*+
_output_shapes
:         T
lstm_18/Shape_1Shapelstm_18/transpose:y:0*
T0*
_output_shapes
:g
lstm_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
lstm_18/strided_slice_1StridedSlicelstm_18/Shape_1:output:0&lstm_18/strided_slice_1/stack:output:0(lstm_18/strided_slice_1/stack_1:output:0(lstm_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_18/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╠
lstm_18/TensorArrayV2TensorListReserve,lstm_18/TensorArrayV2/element_shape:output:0 lstm_18/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмј
=lstm_18/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Э
/lstm_18/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_18/transpose:y:0Flstm_18/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмg
lstm_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Љ
lstm_18/strided_slice_2StridedSlicelstm_18/transpose:y:0&lstm_18/strided_slice_2/stack:output:0(lstm_18/strided_slice_2/stack_1:output:0(lstm_18/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskъ
*lstm_18/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3lstm_18_lstm_cell_18_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Г
lstm_18/lstm_cell_18/MatMulMatMul lstm_18/strided_slice_2:output:02lstm_18/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          б
,lstm_18/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5lstm_18_lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Д
lstm_18/lstm_cell_18/MatMul_1MatMullstm_18/zeros:output:04lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Б
lstm_18/lstm_cell_18/addAddV2%lstm_18/lstm_cell_18/MatMul:product:0'lstm_18/lstm_cell_18/MatMul_1:product:0*
T0*'
_output_shapes
:          ю
+lstm_18/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4lstm_18_lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0г
lstm_18/lstm_cell_18/BiasAddBiasAddlstm_18/lstm_cell_18/add:z:03lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          f
$lstm_18/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
lstm_18/lstm_cell_18/splitSplit-lstm_18/lstm_cell_18/split/split_dim:output:0%lstm_18/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_split~
lstm_18/lstm_cell_18/SigmoidSigmoid#lstm_18/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:         ђ
lstm_18/lstm_cell_18/Sigmoid_1Sigmoid#lstm_18/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:         Ј
lstm_18/lstm_cell_18/mulMul"lstm_18/lstm_cell_18/Sigmoid_1:y:0lstm_18/zeros_1:output:0*
T0*'
_output_shapes
:         x
lstm_18/lstm_cell_18/ReluRelu#lstm_18/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:         ъ
lstm_18/lstm_cell_18/mul_1Mul lstm_18/lstm_cell_18/Sigmoid:y:0'lstm_18/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:         Њ
lstm_18/lstm_cell_18/add_1AddV2lstm_18/lstm_cell_18/mul:z:0lstm_18/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:         ђ
lstm_18/lstm_cell_18/Sigmoid_2Sigmoid#lstm_18/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:         u
lstm_18/lstm_cell_18/Relu_1Relulstm_18/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:         б
lstm_18/lstm_cell_18/mul_2Mul"lstm_18/lstm_cell_18/Sigmoid_2:y:0)lstm_18/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:         v
%lstm_18/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       л
lstm_18/TensorArrayV2_1TensorListReserve.lstm_18/TensorArrayV2_1/element_shape:output:0 lstm_18/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмN
lstm_18/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_18/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         \
lstm_18/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ы
lstm_18/whileWhile#lstm_18/while/loop_counter:output:0)lstm_18/while/maximum_iterations:output:0lstm_18/time:output:0 lstm_18/TensorArrayV2_1:handle:0lstm_18/zeros:output:0lstm_18/zeros_1:output:0 lstm_18/strided_slice_1:output:0?lstm_18/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_18_lstm_cell_18_matmul_readvariableop_resource5lstm_18_lstm_cell_18_matmul_1_readvariableop_resource4lstm_18_lstm_cell_18_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_18_while_body_620837*%
condR
lstm_18_while_cond_620836*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ѕ
8lstm_18/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┌
*lstm_18/TensorArrayV2Stack/TensorListStackTensorListStacklstm_18/while:output:3Alstm_18/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0p
lstm_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         i
lstm_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
lstm_18/strided_slice_3StridedSlice3lstm_18/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_18/strided_slice_3/stack:output:0(lstm_18/strided_slice_3/stack_1:output:0(lstm_18/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskm
lstm_18/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
lstm_18/transpose_1	Transpose3lstm_18/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_18/transpose_1/perm:output:0*
T0*+
_output_shapes
:         c
lstm_18/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_27/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?Ј
dropout_27/dropout/MulMullstm_18/transpose_1:y:0!dropout_27/dropout/Const:output:0*
T0*+
_output_shapes
:         _
dropout_27/dropout/ShapeShapelstm_18/transpose_1:y:0*
T0*
_output_shapes
:д
/dropout_27/dropout/random_uniform/RandomUniformRandomUniform!dropout_27/dropout/Shape:output:0*
T0*+
_output_shapes
:         *
dtype0f
!dropout_27/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╦
dropout_27/dropout/GreaterEqualGreaterEqual8dropout_27/dropout/random_uniform/RandomUniform:output:0*dropout_27/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:         Ѕ
dropout_27/dropout/CastCast#dropout_27/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:         ј
dropout_27/dropout/Mul_1Muldropout_27/dropout/Mul:z:0dropout_27/dropout/Cast:y:0*
T0*+
_output_shapes
:         Y
lstm_19/ShapeShapedropout_27/dropout/Mul_1:z:0*
T0*
_output_shapes
:e
lstm_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_19/strided_sliceStridedSlicelstm_19/Shape:output:0$lstm_19/strided_slice/stack:output:0&lstm_19/strided_slice/stack_1:output:0&lstm_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_19/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :І
lstm_19/zeros/packedPacklstm_19/strided_slice:output:0lstm_19/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_19/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ё
lstm_19/zerosFilllstm_19/zeros/packed:output:0lstm_19/zeros/Const:output:0*
T0*'
_output_shapes
:         Z
lstm_19/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ј
lstm_19/zeros_1/packedPacklstm_19/strided_slice:output:0!lstm_19/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_19/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    і
lstm_19/zeros_1Filllstm_19/zeros_1/packed:output:0lstm_19/zeros_1/Const:output:0*
T0*'
_output_shapes
:         k
lstm_19/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Њ
lstm_19/transpose	Transposedropout_27/dropout/Mul_1:z:0lstm_19/transpose/perm:output:0*
T0*+
_output_shapes
:         T
lstm_19/Shape_1Shapelstm_19/transpose:y:0*
T0*
_output_shapes
:g
lstm_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
lstm_19/strided_slice_1StridedSlicelstm_19/Shape_1:output:0&lstm_19/strided_slice_1/stack:output:0(lstm_19/strided_slice_1/stack_1:output:0(lstm_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_19/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╠
lstm_19/TensorArrayV2TensorListReserve,lstm_19/TensorArrayV2/element_shape:output:0 lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмј
=lstm_19/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Э
/lstm_19/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_19/transpose:y:0Flstm_19/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмg
lstm_19/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_19/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_19/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Љ
lstm_19/strided_slice_2StridedSlicelstm_19/transpose:y:0&lstm_19/strided_slice_2/stack:output:0(lstm_19/strided_slice_2/stack_1:output:0(lstm_19/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskъ
*lstm_19/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3lstm_19_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Г
lstm_19/lstm_cell_19/MatMulMatMul lstm_19/strided_slice_2:output:02lstm_19/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          б
,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5lstm_19_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Д
lstm_19/lstm_cell_19/MatMul_1MatMullstm_19/zeros:output:04lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Б
lstm_19/lstm_cell_19/addAddV2%lstm_19/lstm_cell_19/MatMul:product:0'lstm_19/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:          ю
+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4lstm_19_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0г
lstm_19/lstm_cell_19/BiasAddBiasAddlstm_19/lstm_cell_19/add:z:03lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          f
$lstm_19/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
lstm_19/lstm_cell_19/splitSplit-lstm_19/lstm_cell_19/split/split_dim:output:0%lstm_19/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_split~
lstm_19/lstm_cell_19/SigmoidSigmoid#lstm_19/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:         ђ
lstm_19/lstm_cell_19/Sigmoid_1Sigmoid#lstm_19/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:         Ј
lstm_19/lstm_cell_19/mulMul"lstm_19/lstm_cell_19/Sigmoid_1:y:0lstm_19/zeros_1:output:0*
T0*'
_output_shapes
:         x
lstm_19/lstm_cell_19/ReluRelu#lstm_19/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:         ъ
lstm_19/lstm_cell_19/mul_1Mul lstm_19/lstm_cell_19/Sigmoid:y:0'lstm_19/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:         Њ
lstm_19/lstm_cell_19/add_1AddV2lstm_19/lstm_cell_19/mul:z:0lstm_19/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:         ђ
lstm_19/lstm_cell_19/Sigmoid_2Sigmoid#lstm_19/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:         u
lstm_19/lstm_cell_19/Relu_1Relulstm_19/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:         б
lstm_19/lstm_cell_19/mul_2Mul"lstm_19/lstm_cell_19/Sigmoid_2:y:0)lstm_19/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:         v
%lstm_19/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       л
lstm_19/TensorArrayV2_1TensorListReserve.lstm_19/TensorArrayV2_1/element_shape:output:0 lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмN
lstm_19/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_19/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         \
lstm_19/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ы
lstm_19/whileWhile#lstm_19/while/loop_counter:output:0)lstm_19/while/maximum_iterations:output:0lstm_19/time:output:0 lstm_19/TensorArrayV2_1:handle:0lstm_19/zeros:output:0lstm_19/zeros_1:output:0 lstm_19/strided_slice_1:output:0?lstm_19/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_19_lstm_cell_19_matmul_readvariableop_resource5lstm_19_lstm_cell_19_matmul_1_readvariableop_resource4lstm_19_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_19_while_body_620984*%
condR
lstm_19_while_cond_620983*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ѕ
8lstm_19/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┌
*lstm_19/TensorArrayV2Stack/TensorListStackTensorListStacklstm_19/while:output:3Alstm_19/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0p
lstm_19/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         i
lstm_19/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_19/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
lstm_19/strided_slice_3StridedSlice3lstm_19/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_19/strided_slice_3/stack:output:0(lstm_19/strided_slice_3/stack_1:output:0(lstm_19/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskm
lstm_19/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
lstm_19/transpose_1	Transpose3lstm_19/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_19/transpose_1/perm:output:0*
T0*+
_output_shapes
:         c
lstm_19/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_28/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?Ј
dropout_28/dropout/MulMullstm_19/transpose_1:y:0!dropout_28/dropout/Const:output:0*
T0*+
_output_shapes
:         _
dropout_28/dropout/ShapeShapelstm_19/transpose_1:y:0*
T0*
_output_shapes
:д
/dropout_28/dropout/random_uniform/RandomUniformRandomUniform!dropout_28/dropout/Shape:output:0*
T0*+
_output_shapes
:         *
dtype0f
!dropout_28/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╦
dropout_28/dropout/GreaterEqualGreaterEqual8dropout_28/dropout/random_uniform/RandomUniform:output:0*dropout_28/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:         Ѕ
dropout_28/dropout/CastCast#dropout_28/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:         ј
dropout_28/dropout/Mul_1Muldropout_28/dropout/Mul:z:0dropout_28/dropout/Cast:y:0*
T0*+
_output_shapes
:         Y
lstm_20/ShapeShapedropout_28/dropout/Mul_1:z:0*
T0*
_output_shapes
:e
lstm_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_20/strided_sliceStridedSlicelstm_20/Shape:output:0$lstm_20/strided_slice/stack:output:0&lstm_20/strided_slice/stack_1:output:0&lstm_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_20/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :І
lstm_20/zeros/packedPacklstm_20/strided_slice:output:0lstm_20/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_20/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ё
lstm_20/zerosFilllstm_20/zeros/packed:output:0lstm_20/zeros/Const:output:0*
T0*'
_output_shapes
:         Z
lstm_20/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ј
lstm_20/zeros_1/packedPacklstm_20/strided_slice:output:0!lstm_20/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_20/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    і
lstm_20/zeros_1Filllstm_20/zeros_1/packed:output:0lstm_20/zeros_1/Const:output:0*
T0*'
_output_shapes
:         k
lstm_20/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Њ
lstm_20/transpose	Transposedropout_28/dropout/Mul_1:z:0lstm_20/transpose/perm:output:0*
T0*+
_output_shapes
:         T
lstm_20/Shape_1Shapelstm_20/transpose:y:0*
T0*
_output_shapes
:g
lstm_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
lstm_20/strided_slice_1StridedSlicelstm_20/Shape_1:output:0&lstm_20/strided_slice_1/stack:output:0(lstm_20/strided_slice_1/stack_1:output:0(lstm_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_20/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╠
lstm_20/TensorArrayV2TensorListReserve,lstm_20/TensorArrayV2/element_shape:output:0 lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмј
=lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Э
/lstm_20/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_20/transpose:y:0Flstm_20/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмg
lstm_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Љ
lstm_20/strided_slice_2StridedSlicelstm_20/transpose:y:0&lstm_20/strided_slice_2/stack:output:0(lstm_20/strided_slice_2/stack_1:output:0(lstm_20/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskъ
*lstm_20/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3lstm_20_lstm_cell_20_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Г
lstm_20/lstm_cell_20/MatMulMatMul lstm_20/strided_slice_2:output:02lstm_20/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          б
,lstm_20/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5lstm_20_lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Д
lstm_20/lstm_cell_20/MatMul_1MatMullstm_20/zeros:output:04lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Б
lstm_20/lstm_cell_20/addAddV2%lstm_20/lstm_cell_20/MatMul:product:0'lstm_20/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:          ю
+lstm_20/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4lstm_20_lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0г
lstm_20/lstm_cell_20/BiasAddBiasAddlstm_20/lstm_cell_20/add:z:03lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          f
$lstm_20/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
lstm_20/lstm_cell_20/splitSplit-lstm_20/lstm_cell_20/split/split_dim:output:0%lstm_20/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_split~
lstm_20/lstm_cell_20/SigmoidSigmoid#lstm_20/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:         ђ
lstm_20/lstm_cell_20/Sigmoid_1Sigmoid#lstm_20/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:         Ј
lstm_20/lstm_cell_20/mulMul"lstm_20/lstm_cell_20/Sigmoid_1:y:0lstm_20/zeros_1:output:0*
T0*'
_output_shapes
:         x
lstm_20/lstm_cell_20/ReluRelu#lstm_20/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:         ъ
lstm_20/lstm_cell_20/mul_1Mul lstm_20/lstm_cell_20/Sigmoid:y:0'lstm_20/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:         Њ
lstm_20/lstm_cell_20/add_1AddV2lstm_20/lstm_cell_20/mul:z:0lstm_20/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:         ђ
lstm_20/lstm_cell_20/Sigmoid_2Sigmoid#lstm_20/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:         u
lstm_20/lstm_cell_20/Relu_1Relulstm_20/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:         б
lstm_20/lstm_cell_20/mul_2Mul"lstm_20/lstm_cell_20/Sigmoid_2:y:0)lstm_20/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:         v
%lstm_20/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       л
lstm_20/TensorArrayV2_1TensorListReserve.lstm_20/TensorArrayV2_1/element_shape:output:0 lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмN
lstm_20/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_20/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         \
lstm_20/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ы
lstm_20/whileWhile#lstm_20/while/loop_counter:output:0)lstm_20/while/maximum_iterations:output:0lstm_20/time:output:0 lstm_20/TensorArrayV2_1:handle:0lstm_20/zeros:output:0lstm_20/zeros_1:output:0 lstm_20/strided_slice_1:output:0?lstm_20/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_20_lstm_cell_20_matmul_readvariableop_resource5lstm_20_lstm_cell_20_matmul_1_readvariableop_resource4lstm_20_lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_20_while_body_621131*%
condR
lstm_20_while_cond_621130*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ѕ
8lstm_20/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┌
*lstm_20/TensorArrayV2Stack/TensorListStackTensorListStacklstm_20/while:output:3Alstm_20/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0p
lstm_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         i
lstm_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
lstm_20/strided_slice_3StridedSlice3lstm_20/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_20/strided_slice_3/stack:output:0(lstm_20/strided_slice_3/stack_1:output:0(lstm_20/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskm
lstm_20/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
lstm_20/transpose_1	Transpose3lstm_20/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_20/transpose_1/perm:output:0*
T0*+
_output_shapes
:         c
lstm_20/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_29/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?ћ
dropout_29/dropout/MulMul lstm_20/strided_slice_3:output:0!dropout_29/dropout/Const:output:0*
T0*'
_output_shapes
:         h
dropout_29/dropout/ShapeShape lstm_20/strided_slice_3:output:0*
T0*
_output_shapes
:б
/dropout_29/dropout/random_uniform/RandomUniformRandomUniform!dropout_29/dropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0f
!dropout_29/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=К
dropout_29/dropout/GreaterEqualGreaterEqual8dropout_29/dropout/random_uniform/RandomUniform:output:0*dropout_29/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         Ё
dropout_29/dropout/CastCast#dropout_29/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         і
dropout_29/dropout/Mul_1Muldropout_29/dropout/Mul:z:0dropout_29/dropout/Cast:y:0*
T0*'
_output_shapes
:         є
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Љ
dense_15/MatMulMatMuldropout_29/dropout/Mul_1:z:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*'
_output_shapes
:         ]
dropout_30/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?Ј
dropout_30/dropout/MulMuldense_15/Relu:activations:0!dropout_30/dropout/Const:output:0*
T0*'
_output_shapes
:         c
dropout_30/dropout/ShapeShapedense_15/Relu:activations:0*
T0*
_output_shapes
:б
/dropout_30/dropout/random_uniform/RandomUniformRandomUniform!dropout_30/dropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0f
!dropout_30/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=К
dropout_30/dropout/GreaterEqualGreaterEqual8dropout_30/dropout/random_uniform/RandomUniform:output:0*dropout_30/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         Ё
dropout_30/dropout/CastCast#dropout_30/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         і
dropout_30/dropout/Mul_1Muldropout_30/dropout/Mul:z:0dropout_30/dropout/Cast:y:0*
T0*'
_output_shapes
:         є
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Љ
dense_16/MatMulMatMuldropout_30/dropout/Mul_1:z:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*'
_output_shapes
:         ]
dropout_31/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?Ј
dropout_31/dropout/MulMuldense_16/Relu:activations:0!dropout_31/dropout/Const:output:0*
T0*'
_output_shapes
:         c
dropout_31/dropout/ShapeShapedense_16/Relu:activations:0*
T0*
_output_shapes
:б
/dropout_31/dropout/random_uniform/RandomUniformRandomUniform!dropout_31/dropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0f
!dropout_31/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=К
dropout_31/dropout/GreaterEqualGreaterEqual8dropout_31/dropout/random_uniform/RandomUniform:output:0*dropout_31/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         Ё
dropout_31/dropout/CastCast#dropout_31/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         і
dropout_31/dropout/Mul_1Muldropout_31/dropout/Mul:z:0dropout_31/dropout/Cast:y:0*
T0*'
_output_shapes
:         є
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Љ
dense_17/MatMulMatMuldropout_31/dropout/Mul_1:z:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense_17/ReluReludense_17/BiasAdd:output:0*
T0*'
_output_shapes
:         ]
dropout_32/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?Ј
dropout_32/dropout/MulMuldense_17/Relu:activations:0!dropout_32/dropout/Const:output:0*
T0*'
_output_shapes
:         c
dropout_32/dropout/ShapeShapedense_17/Relu:activations:0*
T0*
_output_shapes
:б
/dropout_32/dropout/random_uniform/RandomUniformRandomUniform!dropout_32/dropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0f
!dropout_32/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=К
dropout_32/dropout/GreaterEqualGreaterEqual8dropout_32/dropout/random_uniform/RandomUniform:output:0*dropout_32/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         Ё
dropout_32/dropout/CastCast#dropout_32/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         і
dropout_32/dropout/Mul_1Muldropout_32/dropout/Mul:z:0dropout_32/dropout/Cast:y:0*
T0*'
_output_shapes
:         є
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Љ
dense_18/MatMulMatMuldropout_32/dropout/Mul_1:z:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_18/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         а
NoOpNoOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp,^lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp+^lstm_18/lstm_cell_18/MatMul/ReadVariableOp-^lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp^lstm_18/while,^lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp+^lstm_19/lstm_cell_19/MatMul/ReadVariableOp-^lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp^lstm_19/while,^lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp+^lstm_20/lstm_cell_20/MatMul/ReadVariableOp-^lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp^lstm_20/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2Z
+lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp+lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp2X
*lstm_18/lstm_cell_18/MatMul/ReadVariableOp*lstm_18/lstm_cell_18/MatMul/ReadVariableOp2\
,lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp,lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp2
lstm_18/whilelstm_18/while2Z
+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp2X
*lstm_19/lstm_cell_19/MatMul/ReadVariableOp*lstm_19/lstm_cell_19/MatMul/ReadVariableOp2\
,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp2
lstm_19/whilelstm_19/while2Z
+lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp+lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp2X
*lstm_20/lstm_cell_20/MatMul/ReadVariableOp*lstm_20/lstm_cell_20/MatMul/ReadVariableOp2\
,lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp,lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp2
lstm_20/whilelstm_20/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ќ

с
lstm_20_while_cond_621130,
(lstm_20_while_lstm_20_while_loop_counter2
.lstm_20_while_lstm_20_while_maximum_iterations
lstm_20_while_placeholder
lstm_20_while_placeholder_1
lstm_20_while_placeholder_2
lstm_20_while_placeholder_3.
*lstm_20_while_less_lstm_20_strided_slice_1D
@lstm_20_while_lstm_20_while_cond_621130___redundant_placeholder0D
@lstm_20_while_lstm_20_while_cond_621130___redundant_placeholder1D
@lstm_20_while_lstm_20_while_cond_621130___redundant_placeholder2D
@lstm_20_while_lstm_20_while_cond_621130___redundant_placeholder3
lstm_20_while_identity
ѓ
lstm_20/while/LessLesslstm_20_while_placeholder*lstm_20_while_less_lstm_20_strided_slice_1*
T0*
_output_shapes
: [
lstm_20/while/IdentityIdentitylstm_20/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_20_while_identitylstm_20/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
Ш
d
+__inference_dropout_29_layer_call_fn_623186

inputs
identityѕбStatefulPartitionedCall─
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_619385o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
х
├
while_cond_623091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_623091___redundant_placeholder04
0while_while_cond_623091___redundant_placeholder14
0while_while_cond_623091___redundant_placeholder24
0while_while_cond_623091___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
┼
ќ
)__inference_dense_16_layer_call_fn_623259

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_619165o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┼
ќ
)__inference_dense_18_layer_call_fn_623353

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_619212o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
х
├
while_cond_621376
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_621376___redundant_placeholder04
0while_while_cond_621376___redundant_placeholder14
0while_while_cond_621376___redundant_placeholder24
0while_while_cond_621376___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ћ

e
F__inference_dropout_28_layer_call_and_return_conditional_losses_619573

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:         C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:љ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=ф
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:         s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:         m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:         ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
М
Ѓ
H__inference_lstm_cell_18_layer_call_and_return_conditional_losses_623429

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
Џ

ш
D__inference_dense_15_layer_call_and_return_conditional_losses_619141

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┘
d
F__inference_dropout_30_layer_call_and_return_conditional_losses_623238

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
с"
П
while_body_617874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_18_617898_0: -
while_lstm_cell_18_617900_0: )
while_lstm_cell_18_617902_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_18_617898: +
while_lstm_cell_18_617900: '
while_lstm_cell_18_617902: ѕб*while/lstm_cell_18/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Х
*while/lstm_cell_18/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_18_617898_0while_lstm_cell_18_617900_0while_lstm_cell_18_617902_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_lstm_cell_18_layer_call_and_return_conditional_losses_617815▄
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_18/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: љ
while/Identity_4Identity3while/lstm_cell_18/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         љ
while/Identity_5Identity3while/lstm_cell_18/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         y

while/NoOpNoOp+^while/lstm_cell_18/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_18_617898while_lstm_cell_18_617898_0"8
while_lstm_cell_18_617900while_lstm_cell_18_617900_0"8
while_lstm_cell_18_617902while_lstm_cell_18_617902_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2X
*while/lstm_cell_18/StatefulPartitionedCall*while/lstm_cell_18/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
х
├
while_cond_622948
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_622948___redundant_placeholder04
0while_while_cond_622948___redundant_placeholder14
0while_while_cond_622948___redundant_placeholder24
0while_while_cond_622948___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
х
├
while_cond_619030
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_619030___redundant_placeholder04
0while_while_cond_619030___redundant_placeholder14
0while_while_cond_619030___redundant_placeholder24
0while_while_cond_619030___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ѓ
у
&sequential_6_lstm_18_while_cond_617206F
Bsequential_6_lstm_18_while_sequential_6_lstm_18_while_loop_counterL
Hsequential_6_lstm_18_while_sequential_6_lstm_18_while_maximum_iterations*
&sequential_6_lstm_18_while_placeholder,
(sequential_6_lstm_18_while_placeholder_1,
(sequential_6_lstm_18_while_placeholder_2,
(sequential_6_lstm_18_while_placeholder_3H
Dsequential_6_lstm_18_while_less_sequential_6_lstm_18_strided_slice_1^
Zsequential_6_lstm_18_while_sequential_6_lstm_18_while_cond_617206___redundant_placeholder0^
Zsequential_6_lstm_18_while_sequential_6_lstm_18_while_cond_617206___redundant_placeholder1^
Zsequential_6_lstm_18_while_sequential_6_lstm_18_while_cond_617206___redundant_placeholder2^
Zsequential_6_lstm_18_while_sequential_6_lstm_18_while_cond_617206___redundant_placeholder3'
#sequential_6_lstm_18_while_identity
Х
sequential_6/lstm_18/while/LessLess&sequential_6_lstm_18_while_placeholderDsequential_6_lstm_18_while_less_sequential_6_lstm_18_strided_slice_1*
T0*
_output_shapes
: u
#sequential_6/lstm_18/while/IdentityIdentity#sequential_6/lstm_18/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_6_lstm_18_while_identity,sequential_6/lstm_18/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
 7
╩
while_body_619836
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_18_matmul_readvariableop_resource_0: G
5while_lstm_cell_18_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_18_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_18_matmul_readvariableop_resource: E
3while_lstm_cell_18_matmul_1_readvariableop_resource: @
2while_lstm_cell_18_biasadd_readvariableop_resource: ѕб)while/lstm_cell_18/BiasAdd/ReadVariableOpб(while/lstm_cell_18/MatMul/ReadVariableOpб*while/lstm_cell_18/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ю
(while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_18_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╣
while/lstm_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          а
*while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0а
while/lstm_cell_18/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_18/addAddV2#while/lstm_cell_18/MatMul:product:0%while/lstm_cell_18/MatMul_1:product:0*
T0*'
_output_shapes
:          џ
)while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0д
while/lstm_cell_18/BiasAddBiasAddwhile/lstm_cell_18/add:z:01while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_18/splitSplit+while/lstm_cell_18/split/split_dim:output:0#while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
while/lstm_cell_18/SigmoidSigmoid!while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell_18/Sigmoid_1Sigmoid!while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:         є
while/lstm_cell_18/mulMul while/lstm_cell_18/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         t
while/lstm_cell_18/ReluRelu!while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:         ў
while/lstm_cell_18/mul_1Mulwhile/lstm_cell_18/Sigmoid:y:0%while/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:         Ї
while/lstm_cell_18/add_1AddV2while/lstm_cell_18/mul:z:0while/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:         |
while/lstm_cell_18/Sigmoid_2Sigmoid!while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:         q
while/lstm_cell_18/Relu_1Reluwhile/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:         ю
while/lstm_cell_18/mul_2Mul while/lstm_cell_18/Sigmoid_2:y:0'while/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:         ┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_18/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_18/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         y
while/Identity_5Identitywhile/lstm_cell_18/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         л

while/NoOpNoOp*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_18_biasadd_readvariableop_resource4while_lstm_cell_18_biasadd_readvariableop_resource_0"l
3while_lstm_cell_18_matmul_1_readvariableop_resource5while_lstm_cell_18_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_18_matmul_readvariableop_resource3while_lstm_cell_18_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_18/BiasAdd/ReadVariableOp)while/lstm_cell_18/BiasAdd/ReadVariableOp2T
(while/lstm_cell_18/MatMul/ReadVariableOp(while/lstm_cell_18/MatMul/ReadVariableOp2X
*while/lstm_cell_18/MatMul_1/ReadVariableOp*while/lstm_cell_18/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
 7
╩
while_body_622663
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_20_matmul_readvariableop_resource_0: G
5while_lstm_cell_20_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_20_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_20_matmul_readvariableop_resource: E
3while_lstm_cell_20_matmul_1_readvariableop_resource: @
2while_lstm_cell_20_biasadd_readvariableop_resource: ѕб)while/lstm_cell_20/BiasAdd/ReadVariableOpб(while/lstm_cell_20/MatMul/ReadVariableOpб*while/lstm_cell_20/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ю
(while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╣
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          а
*while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0а
while/lstm_cell_20/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_20/addAddV2#while/lstm_cell_20/MatMul:product:0%while/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:          џ
)while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0д
while/lstm_cell_20/BiasAddBiasAddwhile/lstm_cell_20/add:z:01while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0#while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
while/lstm_cell_20/SigmoidSigmoid!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell_20/Sigmoid_1Sigmoid!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:         є
while/lstm_cell_20/mulMul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         t
while/lstm_cell_20/ReluRelu!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:         ў
while/lstm_cell_20/mul_1Mulwhile/lstm_cell_20/Sigmoid:y:0%while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:         Ї
while/lstm_cell_20/add_1AddV2while/lstm_cell_20/mul:z:0while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:         |
while/lstm_cell_20/Sigmoid_2Sigmoid!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:         q
while/lstm_cell_20/Relu_1Reluwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:         ю
while/lstm_cell_20/mul_2Mul while/lstm_cell_20/Sigmoid_2:y:0'while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:         ┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_20/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         y
while/Identity_5Identitywhile/lstm_cell_20/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         л

while/NoOpNoOp*^while/lstm_cell_20/BiasAdd/ReadVariableOp)^while/lstm_cell_20/MatMul/ReadVariableOp+^while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_20_biasadd_readvariableop_resource4while_lstm_cell_20_biasadd_readvariableop_resource_0"l
3while_lstm_cell_20_matmul_1_readvariableop_resource5while_lstm_cell_20_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_20_matmul_readvariableop_resource3while_lstm_cell_20_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_20/BiasAdd/ReadVariableOp)while/lstm_cell_20/BiasAdd/ReadVariableOp2T
(while/lstm_cell_20/MatMul/ReadVariableOp(while/lstm_cell_20/MatMul/ReadVariableOp2X
*while/lstm_cell_20/MatMul_1/ReadVariableOp*while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
х
├
while_cond_618873
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_618873___redundant_placeholder04
0while_while_cond_618873___redundant_placeholder14
0while_while_cond_618873___redundant_placeholder24
0while_while_cond_618873___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ъJ
ў
C__inference_lstm_20_layer_call_and_return_conditional_losses_623033

inputs=
+lstm_cell_20_matmul_readvariableop_resource: ?
-lstm_cell_20_matmul_1_readvariableop_resource: :
,lstm_cell_20_biasadd_readvariableop_resource: 
identityѕб#lstm_cell_20/BiasAdd/ReadVariableOpб"lstm_cell_20/MatMul/ReadVariableOpб$lstm_cell_20/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskј
"lstm_cell_20/MatMul/ReadVariableOpReadVariableOp+lstm_cell_20_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0*lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          њ
$lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell_20/MatMul_1MatMulzeros:output:0,lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          І
lstm_cell_20/addAddV2lstm_cell_20/MatMul:product:0lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:          ї
#lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ћ
lstm_cell_20/BiasAddBiasAddlstm_cell_20/add:z:0+lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitn
lstm_cell_20/SigmoidSigmoidlstm_cell_20/split:output:0*
T0*'
_output_shapes
:         p
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/split:output:1*
T0*'
_output_shapes
:         w
lstm_cell_20/mulMullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         h
lstm_cell_20/ReluRelulstm_cell_20/split:output:2*
T0*'
_output_shapes
:         є
lstm_cell_20/mul_1Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:         {
lstm_cell_20/add_1AddV2lstm_cell_20/mul:z:0lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:         p
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/split:output:3*
T0*'
_output_shapes
:         e
lstm_cell_20/Relu_1Relulstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:         і
lstm_cell_20/mul_2Mullstm_cell_20/Sigmoid_2:y:0!lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_20_matmul_readvariableop_resource-lstm_cell_20_matmul_1_readvariableop_resource,lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_622949*
condR
while_cond_622948*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         └
NoOpNoOp$^lstm_cell_20/BiasAdd/ReadVariableOp#^lstm_cell_20/MatMul/ReadVariableOp%^lstm_cell_20/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2J
#lstm_cell_20/BiasAdd/ReadVariableOp#lstm_cell_20/BiasAdd/ReadVariableOp2H
"lstm_cell_20/MatMul/ReadVariableOp"lstm_cell_20/MatMul/ReadVariableOp2L
$lstm_cell_20/MatMul_1/ReadVariableOp$lstm_cell_20/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
х
├
while_cond_618032
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_618032___redundant_placeholder04
0while_while_cond_618032___redundant_placeholder14
0while_while_cond_618032___redundant_placeholder24
0while_while_cond_618032___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
Џ

ш
D__inference_dense_17_layer_call_and_return_conditional_losses_623317

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
 7
╩
while_body_618874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_19_matmul_readvariableop_resource_0: G
5while_lstm_cell_19_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_19_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_19_matmul_readvariableop_resource: E
3while_lstm_cell_19_matmul_1_readvariableop_resource: @
2while_lstm_cell_19_biasadd_readvariableop_resource: ѕб)while/lstm_cell_19/BiasAdd/ReadVariableOpб(while/lstm_cell_19/MatMul/ReadVariableOpб*while/lstm_cell_19/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ю
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╣
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          а
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0а
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:          џ
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0д
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:         є
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         t
while/lstm_cell_19/ReluRelu!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:         ў
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0%while/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:         Ї
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:         |
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:         q
while/lstm_cell_19/Relu_1Reluwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:         ю
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_2:y:0'while/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:         ┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         y
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         л

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
П
╗
-__inference_sequential_6_layer_call_fn_620285

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:
identityѕбStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *3
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_6_layer_call_and_return_conditional_losses_619219o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ш
d
+__inference_dropout_31_layer_call_fn_623280

inputs
identityѕбStatefulPartitionedCall─
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_31_layer_call_and_return_conditional_losses_619319o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
в
з
-__inference_lstm_cell_19_layer_call_fn_623478

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ѕбStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_618019o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
ИA
╩

lstm_19_while_body_620984,
(lstm_19_while_lstm_19_while_loop_counter2
.lstm_19_while_lstm_19_while_maximum_iterations
lstm_19_while_placeholder
lstm_19_while_placeholder_1
lstm_19_while_placeholder_2
lstm_19_while_placeholder_3+
'lstm_19_while_lstm_19_strided_slice_1_0g
clstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0: O
=lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0: J
<lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0: 
lstm_19_while_identity
lstm_19_while_identity_1
lstm_19_while_identity_2
lstm_19_while_identity_3
lstm_19_while_identity_4
lstm_19_while_identity_5)
%lstm_19_while_lstm_19_strided_slice_1e
alstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensorK
9lstm_19_while_lstm_cell_19_matmul_readvariableop_resource: M
;lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource: H
:lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource: ѕб1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOpб0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOpб2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOpљ
?lstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╬
1lstm_19/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0lstm_19_while_placeholderHlstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0г
0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp;lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Л
!lstm_19/while/lstm_cell_19/MatMulMatMul8lstm_19/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ░
2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp=lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0И
#lstm_19/while/lstm_cell_19/MatMul_1MatMullstm_19_while_placeholder_2:lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          х
lstm_19/while/lstm_cell_19/addAddV2+lstm_19/while/lstm_cell_19/MatMul:product:0-lstm_19/while/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:          ф
1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp<lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Й
"lstm_19/while/lstm_cell_19/BiasAddBiasAdd"lstm_19/while/lstm_cell_19/add:z:09lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          l
*lstm_19/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
 lstm_19/while/lstm_cell_19/splitSplit3lstm_19/while/lstm_cell_19/split/split_dim:output:0+lstm_19/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitі
"lstm_19/while/lstm_cell_19/SigmoidSigmoid)lstm_19/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:         ї
$lstm_19/while/lstm_cell_19/Sigmoid_1Sigmoid)lstm_19/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:         ъ
lstm_19/while/lstm_cell_19/mulMul(lstm_19/while/lstm_cell_19/Sigmoid_1:y:0lstm_19_while_placeholder_3*
T0*'
_output_shapes
:         ё
lstm_19/while/lstm_cell_19/ReluRelu)lstm_19/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:         ░
 lstm_19/while/lstm_cell_19/mul_1Mul&lstm_19/while/lstm_cell_19/Sigmoid:y:0-lstm_19/while/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:         Ц
 lstm_19/while/lstm_cell_19/add_1AddV2"lstm_19/while/lstm_cell_19/mul:z:0$lstm_19/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:         ї
$lstm_19/while/lstm_cell_19/Sigmoid_2Sigmoid)lstm_19/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:         Ђ
!lstm_19/while/lstm_cell_19/Relu_1Relu$lstm_19/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:         ┤
 lstm_19/while/lstm_cell_19/mul_2Mul(lstm_19/while/lstm_cell_19/Sigmoid_2:y:0/lstm_19/while/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:         т
2lstm_19/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_19_while_placeholder_1lstm_19_while_placeholder$lstm_19/while/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмU
lstm_19/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_19/while/addAddV2lstm_19_while_placeholderlstm_19/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_19/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_19/while/add_1AddV2(lstm_19_while_lstm_19_while_loop_counterlstm_19/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_19/while/IdentityIdentitylstm_19/while/add_1:z:0^lstm_19/while/NoOp*
T0*
_output_shapes
: і
lstm_19/while/Identity_1Identity.lstm_19_while_lstm_19_while_maximum_iterations^lstm_19/while/NoOp*
T0*
_output_shapes
: q
lstm_19/while/Identity_2Identitylstm_19/while/add:z:0^lstm_19/while/NoOp*
T0*
_output_shapes
: ъ
lstm_19/while/Identity_3IdentityBlstm_19/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_19/while/NoOp*
T0*
_output_shapes
: Љ
lstm_19/while/Identity_4Identity$lstm_19/while/lstm_cell_19/mul_2:z:0^lstm_19/while/NoOp*
T0*'
_output_shapes
:         Љ
lstm_19/while/Identity_5Identity$lstm_19/while/lstm_cell_19/add_1:z:0^lstm_19/while/NoOp*
T0*'
_output_shapes
:         ­
lstm_19/while/NoOpNoOp2^lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp1^lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp3^lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_19_while_identitylstm_19/while/Identity:output:0"=
lstm_19_while_identity_1!lstm_19/while/Identity_1:output:0"=
lstm_19_while_identity_2!lstm_19/while/Identity_2:output:0"=
lstm_19_while_identity_3!lstm_19/while/Identity_3:output:0"=
lstm_19_while_identity_4!lstm_19/while/Identity_4:output:0"=
lstm_19_while_identity_5!lstm_19/while/Identity_5:output:0"P
%lstm_19_while_lstm_19_strided_slice_1'lstm_19_while_lstm_19_strided_slice_1_0"z
:lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource<lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0"|
;lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource=lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0"x
9lstm_19_while_lstm_cell_19_matmul_readvariableop_resource;lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0"╚
alstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensorclstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2f
1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp2d
0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp2h
2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
х
├
while_cond_622162
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_622162___redundant_placeholder04
0while_while_cond_622162___redundant_placeholder14
0while_while_cond_622162___redundant_placeholder24
0while_while_cond_622162___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
с"
П
while_body_618574
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_20_618598_0: -
while_lstm_cell_20_618600_0: )
while_lstm_cell_20_618602_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_20_618598: +
while_lstm_cell_20_618600: '
while_lstm_cell_20_618602: ѕб*while/lstm_cell_20/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Х
*while/lstm_cell_20/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_20_618598_0while_lstm_cell_20_618600_0while_lstm_cell_20_618602_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_618515▄
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_20/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: љ
while/Identity_4Identity3while/lstm_cell_20/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         љ
while/Identity_5Identity3while/lstm_cell_20/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         y

while/NoOpNoOp+^while/lstm_cell_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_20_618598while_lstm_cell_20_618598_0"8
while_lstm_cell_20_618600while_lstm_cell_20_618600_0"8
while_lstm_cell_20_618602while_lstm_cell_20_618602_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2X
*while/lstm_cell_20/StatefulPartitionedCall*while/lstm_cell_20/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
 7
╩
while_body_621520
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_18_matmul_readvariableop_resource_0: G
5while_lstm_cell_18_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_18_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_18_matmul_readvariableop_resource: E
3while_lstm_cell_18_matmul_1_readvariableop_resource: @
2while_lstm_cell_18_biasadd_readvariableop_resource: ѕб)while/lstm_cell_18/BiasAdd/ReadVariableOpб(while/lstm_cell_18/MatMul/ReadVariableOpб*while/lstm_cell_18/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ю
(while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_18_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╣
while/lstm_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          а
*while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0а
while/lstm_cell_18/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_18/addAddV2#while/lstm_cell_18/MatMul:product:0%while/lstm_cell_18/MatMul_1:product:0*
T0*'
_output_shapes
:          џ
)while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0д
while/lstm_cell_18/BiasAddBiasAddwhile/lstm_cell_18/add:z:01while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_18/splitSplit+while/lstm_cell_18/split/split_dim:output:0#while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
while/lstm_cell_18/SigmoidSigmoid!while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell_18/Sigmoid_1Sigmoid!while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:         є
while/lstm_cell_18/mulMul while/lstm_cell_18/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         t
while/lstm_cell_18/ReluRelu!while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:         ў
while/lstm_cell_18/mul_1Mulwhile/lstm_cell_18/Sigmoid:y:0%while/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:         Ї
while/lstm_cell_18/add_1AddV2while/lstm_cell_18/mul:z:0while/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:         |
while/lstm_cell_18/Sigmoid_2Sigmoid!while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:         q
while/lstm_cell_18/Relu_1Reluwhile/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:         ю
while/lstm_cell_18/mul_2Mul while/lstm_cell_18/Sigmoid_2:y:0'while/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:         ┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_18/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_18/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         y
while/Identity_5Identitywhile/lstm_cell_18/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         л

while/NoOpNoOp*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_18_biasadd_readvariableop_resource4while_lstm_cell_18_biasadd_readvariableop_resource_0"l
3while_lstm_cell_18_matmul_1_readvariableop_resource5while_lstm_cell_18_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_18_matmul_readvariableop_resource3while_lstm_cell_18_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_18/BiasAdd/ReadVariableOp)while/lstm_cell_18/BiasAdd/ReadVariableOp2T
(while/lstm_cell_18/MatMul/ReadVariableOp(while/lstm_cell_18/MatMul/ReadVariableOp2X
*while/lstm_cell_18/MatMul_1/ReadVariableOp*while/lstm_cell_18/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
ИA
╩

lstm_18_while_body_620837,
(lstm_18_while_lstm_18_while_loop_counter2
.lstm_18_while_lstm_18_while_maximum_iterations
lstm_18_while_placeholder
lstm_18_while_placeholder_1
lstm_18_while_placeholder_2
lstm_18_while_placeholder_3+
'lstm_18_while_lstm_18_strided_slice_1_0g
clstm_18_while_tensorarrayv2read_tensorlistgetitem_lstm_18_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_18_while_lstm_cell_18_matmul_readvariableop_resource_0: O
=lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource_0: J
<lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource_0: 
lstm_18_while_identity
lstm_18_while_identity_1
lstm_18_while_identity_2
lstm_18_while_identity_3
lstm_18_while_identity_4
lstm_18_while_identity_5)
%lstm_18_while_lstm_18_strided_slice_1e
alstm_18_while_tensorarrayv2read_tensorlistgetitem_lstm_18_tensorarrayunstack_tensorlistfromtensorK
9lstm_18_while_lstm_cell_18_matmul_readvariableop_resource: M
;lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource: H
:lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource: ѕб1lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOpб0lstm_18/while/lstm_cell_18/MatMul/ReadVariableOpб2lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOpљ
?lstm_18/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╬
1lstm_18/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_18_while_tensorarrayv2read_tensorlistgetitem_lstm_18_tensorarrayunstack_tensorlistfromtensor_0lstm_18_while_placeholderHlstm_18/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0г
0lstm_18/while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp;lstm_18_while_lstm_cell_18_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Л
!lstm_18/while/lstm_cell_18/MatMulMatMul8lstm_18/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ░
2lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp=lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0И
#lstm_18/while/lstm_cell_18/MatMul_1MatMullstm_18_while_placeholder_2:lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          х
lstm_18/while/lstm_cell_18/addAddV2+lstm_18/while/lstm_cell_18/MatMul:product:0-lstm_18/while/lstm_cell_18/MatMul_1:product:0*
T0*'
_output_shapes
:          ф
1lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp<lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Й
"lstm_18/while/lstm_cell_18/BiasAddBiasAdd"lstm_18/while/lstm_cell_18/add:z:09lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          l
*lstm_18/while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
 lstm_18/while/lstm_cell_18/splitSplit3lstm_18/while/lstm_cell_18/split/split_dim:output:0+lstm_18/while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitі
"lstm_18/while/lstm_cell_18/SigmoidSigmoid)lstm_18/while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:         ї
$lstm_18/while/lstm_cell_18/Sigmoid_1Sigmoid)lstm_18/while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:         ъ
lstm_18/while/lstm_cell_18/mulMul(lstm_18/while/lstm_cell_18/Sigmoid_1:y:0lstm_18_while_placeholder_3*
T0*'
_output_shapes
:         ё
lstm_18/while/lstm_cell_18/ReluRelu)lstm_18/while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:         ░
 lstm_18/while/lstm_cell_18/mul_1Mul&lstm_18/while/lstm_cell_18/Sigmoid:y:0-lstm_18/while/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:         Ц
 lstm_18/while/lstm_cell_18/add_1AddV2"lstm_18/while/lstm_cell_18/mul:z:0$lstm_18/while/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:         ї
$lstm_18/while/lstm_cell_18/Sigmoid_2Sigmoid)lstm_18/while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:         Ђ
!lstm_18/while/lstm_cell_18/Relu_1Relu$lstm_18/while/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:         ┤
 lstm_18/while/lstm_cell_18/mul_2Mul(lstm_18/while/lstm_cell_18/Sigmoid_2:y:0/lstm_18/while/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:         т
2lstm_18/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_18_while_placeholder_1lstm_18_while_placeholder$lstm_18/while/lstm_cell_18/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмU
lstm_18/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_18/while/addAddV2lstm_18_while_placeholderlstm_18/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_18/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_18/while/add_1AddV2(lstm_18_while_lstm_18_while_loop_counterlstm_18/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_18/while/IdentityIdentitylstm_18/while/add_1:z:0^lstm_18/while/NoOp*
T0*
_output_shapes
: і
lstm_18/while/Identity_1Identity.lstm_18_while_lstm_18_while_maximum_iterations^lstm_18/while/NoOp*
T0*
_output_shapes
: q
lstm_18/while/Identity_2Identitylstm_18/while/add:z:0^lstm_18/while/NoOp*
T0*
_output_shapes
: ъ
lstm_18/while/Identity_3IdentityBlstm_18/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_18/while/NoOp*
T0*
_output_shapes
: Љ
lstm_18/while/Identity_4Identity$lstm_18/while/lstm_cell_18/mul_2:z:0^lstm_18/while/NoOp*
T0*'
_output_shapes
:         Љ
lstm_18/while/Identity_5Identity$lstm_18/while/lstm_cell_18/add_1:z:0^lstm_18/while/NoOp*
T0*'
_output_shapes
:         ­
lstm_18/while/NoOpNoOp2^lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp1^lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp3^lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_18_while_identitylstm_18/while/Identity:output:0"=
lstm_18_while_identity_1!lstm_18/while/Identity_1:output:0"=
lstm_18_while_identity_2!lstm_18/while/Identity_2:output:0"=
lstm_18_while_identity_3!lstm_18/while/Identity_3:output:0"=
lstm_18_while_identity_4!lstm_18/while/Identity_4:output:0"=
lstm_18_while_identity_5!lstm_18/while/Identity_5:output:0"P
%lstm_18_while_lstm_18_strided_slice_1'lstm_18_while_lstm_18_strided_slice_1_0"z
:lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource<lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource_0"|
;lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource=lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource_0"x
9lstm_18_while_lstm_cell_18_matmul_readvariableop_resource;lstm_18_while_lstm_cell_18_matmul_readvariableop_resource_0"╚
alstm_18_while_tensorarrayv2read_tensorlistgetitem_lstm_18_tensorarrayunstack_tensorlistfromtensorclstm_18_while_tensorarrayv2read_tensorlistgetitem_lstm_18_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2f
1lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp1lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp2d
0lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp0lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp2h
2lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp2lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
ЎJ
ў
C__inference_lstm_18_layer_call_and_return_conditional_losses_621747

inputs=
+lstm_cell_18_matmul_readvariableop_resource: ?
-lstm_cell_18_matmul_1_readvariableop_resource: :
,lstm_cell_18_biasadd_readvariableop_resource: 
identityѕб#lstm_cell_18/BiasAdd/ReadVariableOpб"lstm_cell_18/MatMul/ReadVariableOpб$lstm_cell_18/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskј
"lstm_cell_18/MatMul/ReadVariableOpReadVariableOp+lstm_cell_18_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
lstm_cell_18/MatMulMatMulstrided_slice_2:output:0*lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          њ
$lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell_18/MatMul_1MatMulzeros:output:0,lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          І
lstm_cell_18/addAddV2lstm_cell_18/MatMul:product:0lstm_cell_18/MatMul_1:product:0*
T0*'
_output_shapes
:          ї
#lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ћ
lstm_cell_18/BiasAddBiasAddlstm_cell_18/add:z:0+lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ^
lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_18/splitSplit%lstm_cell_18/split/split_dim:output:0lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitn
lstm_cell_18/SigmoidSigmoidlstm_cell_18/split:output:0*
T0*'
_output_shapes
:         p
lstm_cell_18/Sigmoid_1Sigmoidlstm_cell_18/split:output:1*
T0*'
_output_shapes
:         w
lstm_cell_18/mulMullstm_cell_18/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         h
lstm_cell_18/ReluRelulstm_cell_18/split:output:2*
T0*'
_output_shapes
:         є
lstm_cell_18/mul_1Mullstm_cell_18/Sigmoid:y:0lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:         {
lstm_cell_18/add_1AddV2lstm_cell_18/mul:z:0lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:         p
lstm_cell_18/Sigmoid_2Sigmoidlstm_cell_18/split:output:3*
T0*'
_output_shapes
:         e
lstm_cell_18/Relu_1Relulstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:         і
lstm_cell_18/mul_2Mullstm_cell_18/Sigmoid_2:y:0!lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_18_matmul_readvariableop_resource-lstm_cell_18_matmul_1_readvariableop_resource,lstm_cell_18_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_621663*
condR
while_cond_621662*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         └
NoOpNoOp$^lstm_cell_18/BiasAdd/ReadVariableOp#^lstm_cell_18/MatMul/ReadVariableOp%^lstm_cell_18/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2J
#lstm_cell_18/BiasAdd/ReadVariableOp#lstm_cell_18/BiasAdd/ReadVariableOp2H
"lstm_cell_18/MatMul/ReadVariableOp"lstm_cell_18/MatMul/ReadVariableOp2L
$lstm_cell_18/MatMul_1/ReadVariableOp$lstm_cell_18/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ж
d
F__inference_dropout_28_layer_call_and_return_conditional_losses_622548

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:         _

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Е
┤
(__inference_lstm_18_layer_call_fn_621285
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_18_layer_call_and_return_conditional_losses_617752|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
З	
e
F__inference_dropout_32_layer_call_and_return_conditional_losses_623344

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ш
d
+__inference_dropout_32_layer_call_fn_623327

inputs
identityѕбStatefulPartitionedCall─
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_32_layer_call_and_return_conditional_losses_619286o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ј8
ѓ
C__inference_lstm_20_layer_call_and_return_conditional_losses_618452

inputs%
lstm_cell_20_618370: %
lstm_cell_20_618372: !
lstm_cell_20_618374: 
identityѕб$lstm_cell_20/StatefulPartitionedCallбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЭ
$lstm_cell_20/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_20_618370lstm_cell_20_618372lstm_cell_20_618374*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_618369n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_20_618370lstm_cell_20_618372lstm_cell_20_618374*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_618383*
condR
while_cond_618382*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         u
NoOpNoOp%^lstm_cell_20/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_20/StatefulPartitionedCall$lstm_cell_20/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
ќ

с
lstm_19_while_cond_620983,
(lstm_19_while_lstm_19_while_loop_counter2
.lstm_19_while_lstm_19_while_maximum_iterations
lstm_19_while_placeholder
lstm_19_while_placeholder_1
lstm_19_while_placeholder_2
lstm_19_while_placeholder_3.
*lstm_19_while_less_lstm_19_strided_slice_1D
@lstm_19_while_lstm_19_while_cond_620983___redundant_placeholder0D
@lstm_19_while_lstm_19_while_cond_620983___redundant_placeholder1D
@lstm_19_while_lstm_19_while_cond_620983___redundant_placeholder2D
@lstm_19_while_lstm_19_while_cond_620983___redundant_placeholder3
lstm_19_while_identity
ѓ
lstm_19/while/LessLesslstm_19_while_placeholder*lstm_19_while_less_lstm_19_strided_slice_1*
T0*
_output_shapes
: [
lstm_19/while/IdentityIdentitylstm_19/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_19_while_identitylstm_19/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ЎJ
ў
C__inference_lstm_19_layer_call_and_return_conditional_losses_618958

inputs=
+lstm_cell_19_matmul_readvariableop_resource: ?
-lstm_cell_19_matmul_1_readvariableop_resource: :
,lstm_cell_19_biasadd_readvariableop_resource: 
identityѕб#lstm_cell_19/BiasAdd/ReadVariableOpб"lstm_cell_19/MatMul/ReadVariableOpб$lstm_cell_19/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskј
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          њ
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          І
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:          ї
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ћ
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ^
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitn
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:         p
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:         w
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         h
lstm_cell_19/ReluRelulstm_cell_19/split:output:2*
T0*'
_output_shapes
:         є
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:         {
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:         p
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:         e
lstm_cell_19/Relu_1Relulstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:         і
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_2:y:0!lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_618874*
condR
while_cond_618873*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         └
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Џ

ш
D__inference_dense_16_layer_call_and_return_conditional_losses_623270

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
К	
ш
D__inference_dense_18_layer_call_and_return_conditional_losses_623363

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
З	
e
F__inference_dropout_29_layer_call_and_return_conditional_losses_619385

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
с"
П
while_body_618033
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_19_618057_0: -
while_lstm_cell_19_618059_0: )
while_lstm_cell_19_618061_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_19_618057: +
while_lstm_cell_19_618059: '
while_lstm_cell_19_618061: ѕб*while/lstm_cell_19/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Х
*while/lstm_cell_19/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_19_618057_0while_lstm_cell_19_618059_0while_lstm_cell_19_618061_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_618019▄
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_19/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: љ
while/Identity_4Identity3while/lstm_cell_19/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         љ
while/Identity_5Identity3while/lstm_cell_19/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         y

while/NoOpNoOp+^while/lstm_cell_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_19_618057while_lstm_cell_19_618057_0"8
while_lstm_cell_19_618059while_lstm_cell_19_618059_0"8
while_lstm_cell_19_618061while_lstm_cell_19_618061_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2X
*while/lstm_cell_19/StatefulPartitionedCall*while/lstm_cell_19/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
ЎJ
ў
C__inference_lstm_18_layer_call_and_return_conditional_losses_619920

inputs=
+lstm_cell_18_matmul_readvariableop_resource: ?
-lstm_cell_18_matmul_1_readvariableop_resource: :
,lstm_cell_18_biasadd_readvariableop_resource: 
identityѕб#lstm_cell_18/BiasAdd/ReadVariableOpб"lstm_cell_18/MatMul/ReadVariableOpб$lstm_cell_18/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskј
"lstm_cell_18/MatMul/ReadVariableOpReadVariableOp+lstm_cell_18_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
lstm_cell_18/MatMulMatMulstrided_slice_2:output:0*lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          њ
$lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell_18/MatMul_1MatMulzeros:output:0,lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          І
lstm_cell_18/addAddV2lstm_cell_18/MatMul:product:0lstm_cell_18/MatMul_1:product:0*
T0*'
_output_shapes
:          ї
#lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ћ
lstm_cell_18/BiasAddBiasAddlstm_cell_18/add:z:0+lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ^
lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_18/splitSplit%lstm_cell_18/split/split_dim:output:0lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitn
lstm_cell_18/SigmoidSigmoidlstm_cell_18/split:output:0*
T0*'
_output_shapes
:         p
lstm_cell_18/Sigmoid_1Sigmoidlstm_cell_18/split:output:1*
T0*'
_output_shapes
:         w
lstm_cell_18/mulMullstm_cell_18/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         h
lstm_cell_18/ReluRelulstm_cell_18/split:output:2*
T0*'
_output_shapes
:         є
lstm_cell_18/mul_1Mullstm_cell_18/Sigmoid:y:0lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:         {
lstm_cell_18/add_1AddV2lstm_cell_18/mul:z:0lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:         p
lstm_cell_18/Sigmoid_2Sigmoidlstm_cell_18/split:output:3*
T0*'
_output_shapes
:         e
lstm_cell_18/Relu_1Relulstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:         і
lstm_cell_18/mul_2Mullstm_cell_18/Sigmoid_2:y:0!lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_18_matmul_readvariableop_resource-lstm_cell_18_matmul_1_readvariableop_resource,lstm_cell_18_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_619836*
condR
while_cond_619835*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         └
NoOpNoOp$^lstm_cell_18/BiasAdd/ReadVariableOp#^lstm_cell_18/MatMul/ReadVariableOp%^lstm_cell_18/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2J
#lstm_cell_18/BiasAdd/ReadVariableOp#lstm_cell_18/BiasAdd/ReadVariableOp2H
"lstm_cell_18/MatMul/ReadVariableOp"lstm_cell_18/MatMul/ReadVariableOp2L
$lstm_cell_18/MatMul_1/ReadVariableOp$lstm_cell_18/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╦
Ђ
H__inference_lstm_cell_18_layer_call_and_return_conditional_losses_617669

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates
Е
┤
(__inference_lstm_19_layer_call_fn_621939
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_19_layer_call_and_return_conditional_losses_618293|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
ОJ
џ
C__inference_lstm_18_layer_call_and_return_conditional_losses_621461
inputs_0=
+lstm_cell_18_matmul_readvariableop_resource: ?
-lstm_cell_18_matmul_1_readvariableop_resource: :
,lstm_cell_18_biasadd_readvariableop_resource: 
identityѕб#lstm_cell_18/BiasAdd/ReadVariableOpб"lstm_cell_18/MatMul/ReadVariableOpб$lstm_cell_18/MatMul_1/ReadVariableOpбwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskј
"lstm_cell_18/MatMul/ReadVariableOpReadVariableOp+lstm_cell_18_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
lstm_cell_18/MatMulMatMulstrided_slice_2:output:0*lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          њ
$lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell_18/MatMul_1MatMulzeros:output:0,lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          І
lstm_cell_18/addAddV2lstm_cell_18/MatMul:product:0lstm_cell_18/MatMul_1:product:0*
T0*'
_output_shapes
:          ї
#lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ћ
lstm_cell_18/BiasAddBiasAddlstm_cell_18/add:z:0+lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ^
lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_18/splitSplit%lstm_cell_18/split/split_dim:output:0lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitn
lstm_cell_18/SigmoidSigmoidlstm_cell_18/split:output:0*
T0*'
_output_shapes
:         p
lstm_cell_18/Sigmoid_1Sigmoidlstm_cell_18/split:output:1*
T0*'
_output_shapes
:         w
lstm_cell_18/mulMullstm_cell_18/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         h
lstm_cell_18/ReluRelulstm_cell_18/split:output:2*
T0*'
_output_shapes
:         є
lstm_cell_18/mul_1Mullstm_cell_18/Sigmoid:y:0lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:         {
lstm_cell_18/add_1AddV2lstm_cell_18/mul:z:0lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:         p
lstm_cell_18/Sigmoid_2Sigmoidlstm_cell_18/split:output:3*
T0*'
_output_shapes
:         e
lstm_cell_18/Relu_1Relulstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:         і
lstm_cell_18/mul_2Mullstm_cell_18/Sigmoid_2:y:0!lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_18_matmul_readvariableop_resource-lstm_cell_18_matmul_1_readvariableop_resource,lstm_cell_18_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_621377*
condR
while_cond_621376*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  └
NoOpNoOp$^lstm_cell_18/BiasAdd/ReadVariableOp#^lstm_cell_18/MatMul/ReadVariableOp%^lstm_cell_18/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2J
#lstm_cell_18/BiasAdd/ReadVariableOp#lstm_cell_18/BiasAdd/ReadVariableOp2H
"lstm_cell_18/MatMul/ReadVariableOp"lstm_cell_18/MatMul/ReadVariableOp2L
$lstm_cell_18/MatMul_1/ReadVariableOp$lstm_cell_18/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
 7
╩
while_body_622163
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_19_matmul_readvariableop_resource_0: G
5while_lstm_cell_19_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_19_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_19_matmul_readvariableop_resource: E
3while_lstm_cell_19_matmul_1_readvariableop_resource: @
2while_lstm_cell_19_biasadd_readvariableop_resource: ѕб)while/lstm_cell_19/BiasAdd/ReadVariableOpб(while/lstm_cell_19/MatMul/ReadVariableOpб*while/lstm_cell_19/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ю
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╣
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          а
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0а
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:          џ
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0д
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:         є
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         t
while/lstm_cell_19/ReluRelu!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:         ў
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0%while/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:         Ї
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:         |
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:         q
while/lstm_cell_19/Relu_1Reluwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:         ю
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_2:y:0'while/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:         ┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         y
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         л

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
МJ
џ
C__inference_lstm_20_layer_call_and_return_conditional_losses_622747
inputs_0=
+lstm_cell_20_matmul_readvariableop_resource: ?
-lstm_cell_20_matmul_1_readvariableop_resource: :
,lstm_cell_20_biasadd_readvariableop_resource: 
identityѕб#lstm_cell_20/BiasAdd/ReadVariableOpб"lstm_cell_20/MatMul/ReadVariableOpб$lstm_cell_20/MatMul_1/ReadVariableOpбwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskј
"lstm_cell_20/MatMul/ReadVariableOpReadVariableOp+lstm_cell_20_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0*lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          њ
$lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell_20/MatMul_1MatMulzeros:output:0,lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          І
lstm_cell_20/addAddV2lstm_cell_20/MatMul:product:0lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:          ї
#lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ћ
lstm_cell_20/BiasAddBiasAddlstm_cell_20/add:z:0+lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitn
lstm_cell_20/SigmoidSigmoidlstm_cell_20/split:output:0*
T0*'
_output_shapes
:         p
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/split:output:1*
T0*'
_output_shapes
:         w
lstm_cell_20/mulMullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         h
lstm_cell_20/ReluRelulstm_cell_20/split:output:2*
T0*'
_output_shapes
:         є
lstm_cell_20/mul_1Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:         {
lstm_cell_20/add_1AddV2lstm_cell_20/mul:z:0lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:         p
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/split:output:3*
T0*'
_output_shapes
:         e
lstm_cell_20/Relu_1Relulstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:         і
lstm_cell_20/mul_2Mullstm_cell_20/Sigmoid_2:y:0!lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_20_matmul_readvariableop_resource-lstm_cell_20_matmul_1_readvariableop_resource,lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_622663*
condR
while_cond_622662*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         └
NoOpNoOp$^lstm_cell_20/BiasAdd/ReadVariableOp#^lstm_cell_20/MatMul/ReadVariableOp%^lstm_cell_20/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2J
#lstm_cell_20/BiasAdd/ReadVariableOp#lstm_cell_20/BiasAdd/ReadVariableOp2H
"lstm_cell_20/MatMul/ReadVariableOp"lstm_cell_20/MatMul/ReadVariableOp2L
$lstm_cell_20/MatMul_1/ReadVariableOp$lstm_cell_20/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
 7
╩
while_body_619031
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_20_matmul_readvariableop_resource_0: G
5while_lstm_cell_20_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_20_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_20_matmul_readvariableop_resource: E
3while_lstm_cell_20_matmul_1_readvariableop_resource: @
2while_lstm_cell_20_biasadd_readvariableop_resource: ѕб)while/lstm_cell_20/BiasAdd/ReadVariableOpб(while/lstm_cell_20/MatMul/ReadVariableOpб*while/lstm_cell_20/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ю
(while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╣
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          а
*while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0а
while/lstm_cell_20/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_20/addAddV2#while/lstm_cell_20/MatMul:product:0%while/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:          џ
)while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0д
while/lstm_cell_20/BiasAddBiasAddwhile/lstm_cell_20/add:z:01while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0#while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
while/lstm_cell_20/SigmoidSigmoid!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell_20/Sigmoid_1Sigmoid!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:         є
while/lstm_cell_20/mulMul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         t
while/lstm_cell_20/ReluRelu!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:         ў
while/lstm_cell_20/mul_1Mulwhile/lstm_cell_20/Sigmoid:y:0%while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:         Ї
while/lstm_cell_20/add_1AddV2while/lstm_cell_20/mul:z:0while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:         |
while/lstm_cell_20/Sigmoid_2Sigmoid!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:         q
while/lstm_cell_20/Relu_1Reluwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:         ю
while/lstm_cell_20/mul_2Mul while/lstm_cell_20/Sigmoid_2:y:0'while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:         ┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_20/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         y
while/Identity_5Identitywhile/lstm_cell_20/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         л

while/NoOpNoOp*^while/lstm_cell_20/BiasAdd/ReadVariableOp)^while/lstm_cell_20/MatMul/ReadVariableOp+^while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_20_biasadd_readvariableop_resource4while_lstm_cell_20_biasadd_readvariableop_resource_0"l
3while_lstm_cell_20_matmul_1_readvariableop_resource5while_lstm_cell_20_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_20_matmul_readvariableop_resource3while_lstm_cell_20_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_20/BiasAdd/ReadVariableOp)while/lstm_cell_20/BiasAdd/ReadVariableOp2T
(while/lstm_cell_20/MatMul/ReadVariableOp(while/lstm_cell_20/MatMul/ReadVariableOp2X
*while/lstm_cell_20/MatMul_1/ReadVariableOp*while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
х
├
while_cond_622805
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_622805___redundant_placeholder04
0while_while_cond_622805___redundant_placeholder14
0while_while_cond_622805___redundant_placeholder24
0while_while_cond_622805___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
 7
╩
while_body_621663
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_18_matmul_readvariableop_resource_0: G
5while_lstm_cell_18_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_18_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_18_matmul_readvariableop_resource: E
3while_lstm_cell_18_matmul_1_readvariableop_resource: @
2while_lstm_cell_18_biasadd_readvariableop_resource: ѕб)while/lstm_cell_18/BiasAdd/ReadVariableOpб(while/lstm_cell_18/MatMul/ReadVariableOpб*while/lstm_cell_18/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ю
(while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_18_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╣
while/lstm_cell_18/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          а
*while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0а
while/lstm_cell_18/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_18/addAddV2#while/lstm_cell_18/MatMul:product:0%while/lstm_cell_18/MatMul_1:product:0*
T0*'
_output_shapes
:          џ
)while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0д
while/lstm_cell_18/BiasAddBiasAddwhile/lstm_cell_18/add:z:01while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_18/splitSplit+while/lstm_cell_18/split/split_dim:output:0#while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
while/lstm_cell_18/SigmoidSigmoid!while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell_18/Sigmoid_1Sigmoid!while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:         є
while/lstm_cell_18/mulMul while/lstm_cell_18/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         t
while/lstm_cell_18/ReluRelu!while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:         ў
while/lstm_cell_18/mul_1Mulwhile/lstm_cell_18/Sigmoid:y:0%while/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:         Ї
while/lstm_cell_18/add_1AddV2while/lstm_cell_18/mul:z:0while/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:         |
while/lstm_cell_18/Sigmoid_2Sigmoid!while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:         q
while/lstm_cell_18/Relu_1Reluwhile/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:         ю
while/lstm_cell_18/mul_2Mul while/lstm_cell_18/Sigmoid_2:y:0'while/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:         ┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_18/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_18/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         y
while/Identity_5Identitywhile/lstm_cell_18/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         л

while/NoOpNoOp*^while/lstm_cell_18/BiasAdd/ReadVariableOp)^while/lstm_cell_18/MatMul/ReadVariableOp+^while/lstm_cell_18/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_18_biasadd_readvariableop_resource4while_lstm_cell_18_biasadd_readvariableop_resource_0"l
3while_lstm_cell_18_matmul_1_readvariableop_resource5while_lstm_cell_18_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_18_matmul_readvariableop_resource3while_lstm_cell_18_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_18/BiasAdd/ReadVariableOp)while/lstm_cell_18/BiasAdd/ReadVariableOp2T
(while/lstm_cell_18/MatMul/ReadVariableOp(while/lstm_cell_18/MatMul/ReadVariableOp2X
*while/lstm_cell_18/MatMul_1/ReadVariableOp*while/lstm_cell_18/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
═@
т
H__inference_sequential_6_layer_call_and_return_conditional_losses_620021

inputs 
lstm_18_619973:  
lstm_18_619975: 
lstm_18_619977:  
lstm_19_619981:  
lstm_19_619983: 
lstm_19_619985:  
lstm_20_619989:  
lstm_20_619991: 
lstm_20_619993: !
dense_15_619997:
dense_15_619999:!
dense_16_620003:
dense_16_620005:!
dense_17_620009:
dense_17_620011:!
dense_18_620015:
dense_18_620017:
identityѕб dense_15/StatefulPartitionedCallб dense_16/StatefulPartitionedCallб dense_17/StatefulPartitionedCallб dense_18/StatefulPartitionedCallб"dropout_27/StatefulPartitionedCallб"dropout_28/StatefulPartitionedCallб"dropout_29/StatefulPartitionedCallб"dropout_30/StatefulPartitionedCallб"dropout_31/StatefulPartitionedCallб"dropout_32/StatefulPartitionedCallбlstm_18/StatefulPartitionedCallбlstm_19/StatefulPartitionedCallбlstm_20/StatefulPartitionedCallЁ
lstm_18/StatefulPartitionedCallStatefulPartitionedCallinputslstm_18_619973lstm_18_619975lstm_18_619977*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_18_layer_call_and_return_conditional_losses_619920ш
"dropout_27/StatefulPartitionedCallStatefulPartitionedCall(lstm_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_619761ф
lstm_19/StatefulPartitionedCallStatefulPartitionedCall+dropout_27/StatefulPartitionedCall:output:0lstm_19_619981lstm_19_619983lstm_19_619985*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_19_layer_call_and_return_conditional_losses_619732џ
"dropout_28/StatefulPartitionedCallStatefulPartitionedCall(lstm_19/StatefulPartitionedCall:output:0#^dropout_27/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_619573д
lstm_20/StatefulPartitionedCallStatefulPartitionedCall+dropout_28/StatefulPartitionedCall:output:0lstm_20_619989lstm_20_619991lstm_20_619993*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_619544ќ
"dropout_29/StatefulPartitionedCallStatefulPartitionedCall(lstm_20/StatefulPartitionedCall:output:0#^dropout_28/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_619385ў
 dense_15/StatefulPartitionedCallStatefulPartitionedCall+dropout_29/StatefulPartitionedCall:output:0dense_15_619997dense_15_619999*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_619141Ќ
"dropout_30/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0#^dropout_29/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_619352ў
 dense_16/StatefulPartitionedCallStatefulPartitionedCall+dropout_30/StatefulPartitionedCall:output:0dense_16_620003dense_16_620005*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_619165Ќ
"dropout_31/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0#^dropout_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_31_layer_call_and_return_conditional_losses_619319ў
 dense_17/StatefulPartitionedCallStatefulPartitionedCall+dropout_31/StatefulPartitionedCall:output:0dense_17_620009dense_17_620011*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_619189Ќ
"dropout_32/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0#^dropout_31/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_32_layer_call_and_return_conditional_losses_619286ў
 dense_18/StatefulPartitionedCallStatefulPartitionedCall+dropout_32/StatefulPartitionedCall:output:0dense_18_620015dense_18_620017*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_619212x
IdentityIdentity)dense_18/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ќ
NoOpNoOp!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall#^dropout_27/StatefulPartitionedCall#^dropout_28/StatefulPartitionedCall#^dropout_29/StatefulPartitionedCall#^dropout_30/StatefulPartitionedCall#^dropout_31/StatefulPartitionedCall#^dropout_32/StatefulPartitionedCall ^lstm_18/StatefulPartitionedCall ^lstm_19/StatefulPartitionedCall ^lstm_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2H
"dropout_27/StatefulPartitionedCall"dropout_27/StatefulPartitionedCall2H
"dropout_28/StatefulPartitionedCall"dropout_28/StatefulPartitionedCall2H
"dropout_29/StatefulPartitionedCall"dropout_29/StatefulPartitionedCall2H
"dropout_30/StatefulPartitionedCall"dropout_30/StatefulPartitionedCall2H
"dropout_31/StatefulPartitionedCall"dropout_31/StatefulPartitionedCall2H
"dropout_32/StatefulPartitionedCall"dropout_32/StatefulPartitionedCall2B
lstm_18/StatefulPartitionedCalllstm_18/StatefulPartitionedCall2B
lstm_19/StatefulPartitionedCalllstm_19/StatefulPartitionedCall2B
lstm_20/StatefulPartitionedCalllstm_20/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ц
G
+__inference_dropout_29_layer_call_fn_623181

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_619128`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
А7
ј
H__inference_sequential_6_layer_call_and_return_conditional_losses_620148
lstm_18_input 
lstm_18_620100:  
lstm_18_620102: 
lstm_18_620104:  
lstm_19_620108:  
lstm_19_620110: 
lstm_19_620112:  
lstm_20_620116:  
lstm_20_620118: 
lstm_20_620120: !
dense_15_620124:
dense_15_620126:!
dense_16_620130:
dense_16_620132:!
dense_17_620136:
dense_17_620138:!
dense_18_620142:
dense_18_620144:
identityѕб dense_15/StatefulPartitionedCallб dense_16/StatefulPartitionedCallб dense_17/StatefulPartitionedCallб dense_18/StatefulPartitionedCallбlstm_18/StatefulPartitionedCallбlstm_19/StatefulPartitionedCallбlstm_20/StatefulPartitionedCallї
lstm_18/StatefulPartitionedCallStatefulPartitionedCalllstm_18_inputlstm_18_620100lstm_18_620102lstm_18_620104*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_18_layer_call_and_return_conditional_losses_618801т
dropout_27/PartitionedCallPartitionedCall(lstm_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_618814б
lstm_19/StatefulPartitionedCallStatefulPartitionedCall#dropout_27/PartitionedCall:output:0lstm_19_620108lstm_19_620110lstm_19_620112*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_19_layer_call_and_return_conditional_losses_618958т
dropout_28/PartitionedCallPartitionedCall(lstm_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_618971ъ
lstm_20/StatefulPartitionedCallStatefulPartitionedCall#dropout_28/PartitionedCall:output:0lstm_20_620116lstm_20_620118lstm_20_620120*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_619115р
dropout_29/PartitionedCallPartitionedCall(lstm_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_619128љ
 dense_15/StatefulPartitionedCallStatefulPartitionedCall#dropout_29/PartitionedCall:output:0dense_15_620124dense_15_620126*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_619141Р
dropout_30/PartitionedCallPartitionedCall)dense_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_619152љ
 dense_16/StatefulPartitionedCallStatefulPartitionedCall#dropout_30/PartitionedCall:output:0dense_16_620130dense_16_620132*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_619165Р
dropout_31/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_31_layer_call_and_return_conditional_losses_619176љ
 dense_17/StatefulPartitionedCallStatefulPartitionedCall#dropout_31/PartitionedCall:output:0dense_17_620136dense_17_620138*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_619189Р
dropout_32/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_32_layer_call_and_return_conditional_losses_619200љ
 dense_18/StatefulPartitionedCallStatefulPartitionedCall#dropout_32/PartitionedCall:output:0dense_18_620142dense_18_620144*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_619212x
IdentityIdentity)dense_18/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         И
NoOpNoOp!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall ^lstm_18/StatefulPartitionedCall ^lstm_19/StatefulPartitionedCall ^lstm_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2B
lstm_18/StatefulPartitionedCalllstm_18/StatefulPartitionedCall2B
lstm_19/StatefulPartitionedCalllstm_19/StatefulPartitionedCall2B
lstm_20/StatefulPartitionedCalllstm_20/StatefulPartitionedCall:Z V
+
_output_shapes
:         
'
_user_specified_namelstm_18_input
 7
╩
while_body_622020
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_19_matmul_readvariableop_resource_0: G
5while_lstm_cell_19_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_19_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_19_matmul_readvariableop_resource: E
3while_lstm_cell_19_matmul_1_readvariableop_resource: @
2while_lstm_cell_19_biasadd_readvariableop_resource: ѕб)while/lstm_cell_19/BiasAdd/ReadVariableOpб(while/lstm_cell_19/MatMul/ReadVariableOpб*while/lstm_cell_19/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ю
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╣
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          а
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0а
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:          џ
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0д
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:         є
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         t
while/lstm_cell_19/ReluRelu!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:         ў
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0%while/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:         Ї
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:         |
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:         q
while/lstm_cell_19/Relu_1Reluwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:         ю
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_2:y:0'while/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:         ┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         y
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         л

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
Ш
d
+__inference_dropout_30_layer_call_fn_623233

inputs
identityѕбStatefulPartitionedCall─
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_619352o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ј
┤
(__inference_lstm_20_layer_call_fn_622582
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_618643o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
┘
d
F__inference_dropout_31_layer_call_and_return_conditional_losses_619176

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ћ

e
F__inference_dropout_27_layer_call_and_return_conditional_losses_619761

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:         C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:љ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=ф
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:         s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:         m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:         ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
с"
П
while_body_618224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_19_618248_0: -
while_lstm_cell_19_618250_0: )
while_lstm_cell_19_618252_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_19_618248: +
while_lstm_cell_19_618250: '
while_lstm_cell_19_618252: ѕб*while/lstm_cell_19/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Х
*while/lstm_cell_19/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_19_618248_0while_lstm_cell_19_618250_0while_lstm_cell_19_618252_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_618165▄
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_19/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: љ
while/Identity_4Identity3while/lstm_cell_19/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         љ
while/Identity_5Identity3while/lstm_cell_19/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         y

while/NoOpNoOp+^while/lstm_cell_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_19_618248while_lstm_cell_19_618248_0"8
while_lstm_cell_19_618250while_lstm_cell_19_618250_0"8
while_lstm_cell_19_618252while_lstm_cell_19_618252_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2X
*while/lstm_cell_19/StatefulPartitionedCall*while/lstm_cell_19/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
Џ

ш
D__inference_dense_16_layer_call_and_return_conditional_losses_619165

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ИA
╩

lstm_19_while_body_620523,
(lstm_19_while_lstm_19_while_loop_counter2
.lstm_19_while_lstm_19_while_maximum_iterations
lstm_19_while_placeholder
lstm_19_while_placeholder_1
lstm_19_while_placeholder_2
lstm_19_while_placeholder_3+
'lstm_19_while_lstm_19_strided_slice_1_0g
clstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0: O
=lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0: J
<lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0: 
lstm_19_while_identity
lstm_19_while_identity_1
lstm_19_while_identity_2
lstm_19_while_identity_3
lstm_19_while_identity_4
lstm_19_while_identity_5)
%lstm_19_while_lstm_19_strided_slice_1e
alstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensorK
9lstm_19_while_lstm_cell_19_matmul_readvariableop_resource: M
;lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource: H
:lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource: ѕб1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOpб0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOpб2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOpљ
?lstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╬
1lstm_19/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0lstm_19_while_placeholderHlstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0г
0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp;lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Л
!lstm_19/while/lstm_cell_19/MatMulMatMul8lstm_19/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ░
2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp=lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0И
#lstm_19/while/lstm_cell_19/MatMul_1MatMullstm_19_while_placeholder_2:lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          х
lstm_19/while/lstm_cell_19/addAddV2+lstm_19/while/lstm_cell_19/MatMul:product:0-lstm_19/while/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:          ф
1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp<lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Й
"lstm_19/while/lstm_cell_19/BiasAddBiasAdd"lstm_19/while/lstm_cell_19/add:z:09lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          l
*lstm_19/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
 lstm_19/while/lstm_cell_19/splitSplit3lstm_19/while/lstm_cell_19/split/split_dim:output:0+lstm_19/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitі
"lstm_19/while/lstm_cell_19/SigmoidSigmoid)lstm_19/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:         ї
$lstm_19/while/lstm_cell_19/Sigmoid_1Sigmoid)lstm_19/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:         ъ
lstm_19/while/lstm_cell_19/mulMul(lstm_19/while/lstm_cell_19/Sigmoid_1:y:0lstm_19_while_placeholder_3*
T0*'
_output_shapes
:         ё
lstm_19/while/lstm_cell_19/ReluRelu)lstm_19/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:         ░
 lstm_19/while/lstm_cell_19/mul_1Mul&lstm_19/while/lstm_cell_19/Sigmoid:y:0-lstm_19/while/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:         Ц
 lstm_19/while/lstm_cell_19/add_1AddV2"lstm_19/while/lstm_cell_19/mul:z:0$lstm_19/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:         ї
$lstm_19/while/lstm_cell_19/Sigmoid_2Sigmoid)lstm_19/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:         Ђ
!lstm_19/while/lstm_cell_19/Relu_1Relu$lstm_19/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:         ┤
 lstm_19/while/lstm_cell_19/mul_2Mul(lstm_19/while/lstm_cell_19/Sigmoid_2:y:0/lstm_19/while/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:         т
2lstm_19/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_19_while_placeholder_1lstm_19_while_placeholder$lstm_19/while/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмU
lstm_19/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_19/while/addAddV2lstm_19_while_placeholderlstm_19/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_19/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_19/while/add_1AddV2(lstm_19_while_lstm_19_while_loop_counterlstm_19/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_19/while/IdentityIdentitylstm_19/while/add_1:z:0^lstm_19/while/NoOp*
T0*
_output_shapes
: і
lstm_19/while/Identity_1Identity.lstm_19_while_lstm_19_while_maximum_iterations^lstm_19/while/NoOp*
T0*
_output_shapes
: q
lstm_19/while/Identity_2Identitylstm_19/while/add:z:0^lstm_19/while/NoOp*
T0*
_output_shapes
: ъ
lstm_19/while/Identity_3IdentityBlstm_19/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_19/while/NoOp*
T0*
_output_shapes
: Љ
lstm_19/while/Identity_4Identity$lstm_19/while/lstm_cell_19/mul_2:z:0^lstm_19/while/NoOp*
T0*'
_output_shapes
:         Љ
lstm_19/while/Identity_5Identity$lstm_19/while/lstm_cell_19/add_1:z:0^lstm_19/while/NoOp*
T0*'
_output_shapes
:         ­
lstm_19/while/NoOpNoOp2^lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp1^lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp3^lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_19_while_identitylstm_19/while/Identity:output:0"=
lstm_19_while_identity_1!lstm_19/while/Identity_1:output:0"=
lstm_19_while_identity_2!lstm_19/while/Identity_2:output:0"=
lstm_19_while_identity_3!lstm_19/while/Identity_3:output:0"=
lstm_19_while_identity_4!lstm_19/while/Identity_4:output:0"=
lstm_19_while_identity_5!lstm_19/while/Identity_5:output:0"P
%lstm_19_while_lstm_19_strided_slice_1'lstm_19_while_lstm_19_strided_slice_1_0"z
:lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource<lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0"|
;lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource=lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0"x
9lstm_19_while_lstm_cell_19_matmul_readvariableop_resource;lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0"╚
alstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensorclstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2f
1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp2d
0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp2h
2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
є
d
+__inference_dropout_27_layer_call_fn_621900

inputs
identityѕбStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_619761s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ОJ
џ
C__inference_lstm_19_layer_call_and_return_conditional_losses_622247
inputs_0=
+lstm_cell_19_matmul_readvariableop_resource: ?
-lstm_cell_19_matmul_1_readvariableop_resource: :
,lstm_cell_19_biasadd_readvariableop_resource: 
identityѕб#lstm_cell_19/BiasAdd/ReadVariableOpб"lstm_cell_19/MatMul/ReadVariableOpб$lstm_cell_19/MatMul_1/ReadVariableOpбwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskј
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          њ
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          І
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:          ї
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ћ
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ^
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitn
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:         p
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:         w
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         h
lstm_cell_19/ReluRelulstm_cell_19/split:output:2*
T0*'
_output_shapes
:         є
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:         {
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:         p
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:         e
lstm_cell_19/Relu_1Relulstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:         і
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_2:y:0!lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_622163*
condR
while_cond_622162*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  └
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
┤
G
+__inference_dropout_28_layer_call_fn_622538

inputs
identityИ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_618971d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
М
Ѓ
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_623559

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
х
├
while_cond_618573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_618573___redundant_placeholder04
0while_while_cond_618573___redundant_placeholder14
0while_while_cond_618573___redundant_placeholder24
0while_while_cond_618573___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
х
├
while_cond_617873
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_617873___redundant_placeholder04
0while_while_cond_617873___redundant_placeholder14
0while_while_cond_617873___redundant_placeholder24
0while_while_cond_617873___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ж
d
F__inference_dropout_28_layer_call_and_return_conditional_losses_618971

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:         _

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Нџ
Ѕ
H__inference_sequential_6_layer_call_and_return_conditional_losses_620778

inputsE
3lstm_18_lstm_cell_18_matmul_readvariableop_resource: G
5lstm_18_lstm_cell_18_matmul_1_readvariableop_resource: B
4lstm_18_lstm_cell_18_biasadd_readvariableop_resource: E
3lstm_19_lstm_cell_19_matmul_readvariableop_resource: G
5lstm_19_lstm_cell_19_matmul_1_readvariableop_resource: B
4lstm_19_lstm_cell_19_biasadd_readvariableop_resource: E
3lstm_20_lstm_cell_20_matmul_readvariableop_resource: G
5lstm_20_lstm_cell_20_matmul_1_readvariableop_resource: B
4lstm_20_lstm_cell_20_biasadd_readvariableop_resource: 9
'dense_15_matmul_readvariableop_resource:6
(dense_15_biasadd_readvariableop_resource:9
'dense_16_matmul_readvariableop_resource:6
(dense_16_biasadd_readvariableop_resource:9
'dense_17_matmul_readvariableop_resource:6
(dense_17_biasadd_readvariableop_resource:9
'dense_18_matmul_readvariableop_resource:6
(dense_18_biasadd_readvariableop_resource:
identityѕбdense_15/BiasAdd/ReadVariableOpбdense_15/MatMul/ReadVariableOpбdense_16/BiasAdd/ReadVariableOpбdense_16/MatMul/ReadVariableOpбdense_17/BiasAdd/ReadVariableOpбdense_17/MatMul/ReadVariableOpбdense_18/BiasAdd/ReadVariableOpбdense_18/MatMul/ReadVariableOpб+lstm_18/lstm_cell_18/BiasAdd/ReadVariableOpб*lstm_18/lstm_cell_18/MatMul/ReadVariableOpб,lstm_18/lstm_cell_18/MatMul_1/ReadVariableOpбlstm_18/whileб+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOpб*lstm_19/lstm_cell_19/MatMul/ReadVariableOpб,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOpбlstm_19/whileб+lstm_20/lstm_cell_20/BiasAdd/ReadVariableOpб*lstm_20/lstm_cell_20/MatMul/ReadVariableOpб,lstm_20/lstm_cell_20/MatMul_1/ReadVariableOpбlstm_20/whileC
lstm_18/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_18/strided_sliceStridedSlicelstm_18/Shape:output:0$lstm_18/strided_slice/stack:output:0&lstm_18/strided_slice/stack_1:output:0&lstm_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_18/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :І
lstm_18/zeros/packedPacklstm_18/strided_slice:output:0lstm_18/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_18/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ё
lstm_18/zerosFilllstm_18/zeros/packed:output:0lstm_18/zeros/Const:output:0*
T0*'
_output_shapes
:         Z
lstm_18/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ј
lstm_18/zeros_1/packedPacklstm_18/strided_slice:output:0!lstm_18/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_18/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    і
lstm_18/zeros_1Filllstm_18/zeros_1/packed:output:0lstm_18/zeros_1/Const:output:0*
T0*'
_output_shapes
:         k
lstm_18/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_18/transpose	Transposeinputslstm_18/transpose/perm:output:0*
T0*+
_output_shapes
:         T
lstm_18/Shape_1Shapelstm_18/transpose:y:0*
T0*
_output_shapes
:g
lstm_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
lstm_18/strided_slice_1StridedSlicelstm_18/Shape_1:output:0&lstm_18/strided_slice_1/stack:output:0(lstm_18/strided_slice_1/stack_1:output:0(lstm_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_18/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╠
lstm_18/TensorArrayV2TensorListReserve,lstm_18/TensorArrayV2/element_shape:output:0 lstm_18/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмј
=lstm_18/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Э
/lstm_18/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_18/transpose:y:0Flstm_18/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмg
lstm_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Љ
lstm_18/strided_slice_2StridedSlicelstm_18/transpose:y:0&lstm_18/strided_slice_2/stack:output:0(lstm_18/strided_slice_2/stack_1:output:0(lstm_18/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskъ
*lstm_18/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp3lstm_18_lstm_cell_18_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Г
lstm_18/lstm_cell_18/MatMulMatMul lstm_18/strided_slice_2:output:02lstm_18/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          б
,lstm_18/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp5lstm_18_lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Д
lstm_18/lstm_cell_18/MatMul_1MatMullstm_18/zeros:output:04lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Б
lstm_18/lstm_cell_18/addAddV2%lstm_18/lstm_cell_18/MatMul:product:0'lstm_18/lstm_cell_18/MatMul_1:product:0*
T0*'
_output_shapes
:          ю
+lstm_18/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp4lstm_18_lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0г
lstm_18/lstm_cell_18/BiasAddBiasAddlstm_18/lstm_cell_18/add:z:03lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          f
$lstm_18/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
lstm_18/lstm_cell_18/splitSplit-lstm_18/lstm_cell_18/split/split_dim:output:0%lstm_18/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_split~
lstm_18/lstm_cell_18/SigmoidSigmoid#lstm_18/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:         ђ
lstm_18/lstm_cell_18/Sigmoid_1Sigmoid#lstm_18/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:         Ј
lstm_18/lstm_cell_18/mulMul"lstm_18/lstm_cell_18/Sigmoid_1:y:0lstm_18/zeros_1:output:0*
T0*'
_output_shapes
:         x
lstm_18/lstm_cell_18/ReluRelu#lstm_18/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:         ъ
lstm_18/lstm_cell_18/mul_1Mul lstm_18/lstm_cell_18/Sigmoid:y:0'lstm_18/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:         Њ
lstm_18/lstm_cell_18/add_1AddV2lstm_18/lstm_cell_18/mul:z:0lstm_18/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:         ђ
lstm_18/lstm_cell_18/Sigmoid_2Sigmoid#lstm_18/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:         u
lstm_18/lstm_cell_18/Relu_1Relulstm_18/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:         б
lstm_18/lstm_cell_18/mul_2Mul"lstm_18/lstm_cell_18/Sigmoid_2:y:0)lstm_18/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:         v
%lstm_18/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       л
lstm_18/TensorArrayV2_1TensorListReserve.lstm_18/TensorArrayV2_1/element_shape:output:0 lstm_18/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмN
lstm_18/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_18/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         \
lstm_18/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ы
lstm_18/whileWhile#lstm_18/while/loop_counter:output:0)lstm_18/while/maximum_iterations:output:0lstm_18/time:output:0 lstm_18/TensorArrayV2_1:handle:0lstm_18/zeros:output:0lstm_18/zeros_1:output:0 lstm_18/strided_slice_1:output:0?lstm_18/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_18_lstm_cell_18_matmul_readvariableop_resource5lstm_18_lstm_cell_18_matmul_1_readvariableop_resource4lstm_18_lstm_cell_18_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_18_while_body_620383*%
condR
lstm_18_while_cond_620382*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ѕ
8lstm_18/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┌
*lstm_18/TensorArrayV2Stack/TensorListStackTensorListStacklstm_18/while:output:3Alstm_18/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0p
lstm_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         i
lstm_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
lstm_18/strided_slice_3StridedSlice3lstm_18/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_18/strided_slice_3/stack:output:0(lstm_18/strided_slice_3/stack_1:output:0(lstm_18/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskm
lstm_18/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
lstm_18/transpose_1	Transpose3lstm_18/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_18/transpose_1/perm:output:0*
T0*+
_output_shapes
:         c
lstm_18/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    n
dropout_27/IdentityIdentitylstm_18/transpose_1:y:0*
T0*+
_output_shapes
:         Y
lstm_19/ShapeShapedropout_27/Identity:output:0*
T0*
_output_shapes
:e
lstm_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_19/strided_sliceStridedSlicelstm_19/Shape:output:0$lstm_19/strided_slice/stack:output:0&lstm_19/strided_slice/stack_1:output:0&lstm_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_19/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :І
lstm_19/zeros/packedPacklstm_19/strided_slice:output:0lstm_19/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_19/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ё
lstm_19/zerosFilllstm_19/zeros/packed:output:0lstm_19/zeros/Const:output:0*
T0*'
_output_shapes
:         Z
lstm_19/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ј
lstm_19/zeros_1/packedPacklstm_19/strided_slice:output:0!lstm_19/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_19/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    і
lstm_19/zeros_1Filllstm_19/zeros_1/packed:output:0lstm_19/zeros_1/Const:output:0*
T0*'
_output_shapes
:         k
lstm_19/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Њ
lstm_19/transpose	Transposedropout_27/Identity:output:0lstm_19/transpose/perm:output:0*
T0*+
_output_shapes
:         T
lstm_19/Shape_1Shapelstm_19/transpose:y:0*
T0*
_output_shapes
:g
lstm_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
lstm_19/strided_slice_1StridedSlicelstm_19/Shape_1:output:0&lstm_19/strided_slice_1/stack:output:0(lstm_19/strided_slice_1/stack_1:output:0(lstm_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_19/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╠
lstm_19/TensorArrayV2TensorListReserve,lstm_19/TensorArrayV2/element_shape:output:0 lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмј
=lstm_19/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Э
/lstm_19/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_19/transpose:y:0Flstm_19/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмg
lstm_19/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_19/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_19/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Љ
lstm_19/strided_slice_2StridedSlicelstm_19/transpose:y:0&lstm_19/strided_slice_2/stack:output:0(lstm_19/strided_slice_2/stack_1:output:0(lstm_19/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskъ
*lstm_19/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3lstm_19_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Г
lstm_19/lstm_cell_19/MatMulMatMul lstm_19/strided_slice_2:output:02lstm_19/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          б
,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5lstm_19_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Д
lstm_19/lstm_cell_19/MatMul_1MatMullstm_19/zeros:output:04lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Б
lstm_19/lstm_cell_19/addAddV2%lstm_19/lstm_cell_19/MatMul:product:0'lstm_19/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:          ю
+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4lstm_19_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0г
lstm_19/lstm_cell_19/BiasAddBiasAddlstm_19/lstm_cell_19/add:z:03lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          f
$lstm_19/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
lstm_19/lstm_cell_19/splitSplit-lstm_19/lstm_cell_19/split/split_dim:output:0%lstm_19/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_split~
lstm_19/lstm_cell_19/SigmoidSigmoid#lstm_19/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:         ђ
lstm_19/lstm_cell_19/Sigmoid_1Sigmoid#lstm_19/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:         Ј
lstm_19/lstm_cell_19/mulMul"lstm_19/lstm_cell_19/Sigmoid_1:y:0lstm_19/zeros_1:output:0*
T0*'
_output_shapes
:         x
lstm_19/lstm_cell_19/ReluRelu#lstm_19/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:         ъ
lstm_19/lstm_cell_19/mul_1Mul lstm_19/lstm_cell_19/Sigmoid:y:0'lstm_19/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:         Њ
lstm_19/lstm_cell_19/add_1AddV2lstm_19/lstm_cell_19/mul:z:0lstm_19/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:         ђ
lstm_19/lstm_cell_19/Sigmoid_2Sigmoid#lstm_19/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:         u
lstm_19/lstm_cell_19/Relu_1Relulstm_19/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:         б
lstm_19/lstm_cell_19/mul_2Mul"lstm_19/lstm_cell_19/Sigmoid_2:y:0)lstm_19/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:         v
%lstm_19/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       л
lstm_19/TensorArrayV2_1TensorListReserve.lstm_19/TensorArrayV2_1/element_shape:output:0 lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмN
lstm_19/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_19/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         \
lstm_19/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ы
lstm_19/whileWhile#lstm_19/while/loop_counter:output:0)lstm_19/while/maximum_iterations:output:0lstm_19/time:output:0 lstm_19/TensorArrayV2_1:handle:0lstm_19/zeros:output:0lstm_19/zeros_1:output:0 lstm_19/strided_slice_1:output:0?lstm_19/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_19_lstm_cell_19_matmul_readvariableop_resource5lstm_19_lstm_cell_19_matmul_1_readvariableop_resource4lstm_19_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_19_while_body_620523*%
condR
lstm_19_while_cond_620522*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ѕ
8lstm_19/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┌
*lstm_19/TensorArrayV2Stack/TensorListStackTensorListStacklstm_19/while:output:3Alstm_19/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0p
lstm_19/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         i
lstm_19/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_19/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
lstm_19/strided_slice_3StridedSlice3lstm_19/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_19/strided_slice_3/stack:output:0(lstm_19/strided_slice_3/stack_1:output:0(lstm_19/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskm
lstm_19/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
lstm_19/transpose_1	Transpose3lstm_19/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_19/transpose_1/perm:output:0*
T0*+
_output_shapes
:         c
lstm_19/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    n
dropout_28/IdentityIdentitylstm_19/transpose_1:y:0*
T0*+
_output_shapes
:         Y
lstm_20/ShapeShapedropout_28/Identity:output:0*
T0*
_output_shapes
:e
lstm_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_20/strided_sliceStridedSlicelstm_20/Shape:output:0$lstm_20/strided_slice/stack:output:0&lstm_20/strided_slice/stack_1:output:0&lstm_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_20/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :І
lstm_20/zeros/packedPacklstm_20/strided_slice:output:0lstm_20/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_20/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ё
lstm_20/zerosFilllstm_20/zeros/packed:output:0lstm_20/zeros/Const:output:0*
T0*'
_output_shapes
:         Z
lstm_20/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ј
lstm_20/zeros_1/packedPacklstm_20/strided_slice:output:0!lstm_20/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_20/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    і
lstm_20/zeros_1Filllstm_20/zeros_1/packed:output:0lstm_20/zeros_1/Const:output:0*
T0*'
_output_shapes
:         k
lstm_20/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Њ
lstm_20/transpose	Transposedropout_28/Identity:output:0lstm_20/transpose/perm:output:0*
T0*+
_output_shapes
:         T
lstm_20/Shape_1Shapelstm_20/transpose:y:0*
T0*
_output_shapes
:g
lstm_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
lstm_20/strided_slice_1StridedSlicelstm_20/Shape_1:output:0&lstm_20/strided_slice_1/stack:output:0(lstm_20/strided_slice_1/stack_1:output:0(lstm_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_20/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╠
lstm_20/TensorArrayV2TensorListReserve,lstm_20/TensorArrayV2/element_shape:output:0 lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмј
=lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Э
/lstm_20/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_20/transpose:y:0Flstm_20/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмg
lstm_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Љ
lstm_20/strided_slice_2StridedSlicelstm_20/transpose:y:0&lstm_20/strided_slice_2/stack:output:0(lstm_20/strided_slice_2/stack_1:output:0(lstm_20/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskъ
*lstm_20/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3lstm_20_lstm_cell_20_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Г
lstm_20/lstm_cell_20/MatMulMatMul lstm_20/strided_slice_2:output:02lstm_20/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          б
,lstm_20/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5lstm_20_lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Д
lstm_20/lstm_cell_20/MatMul_1MatMullstm_20/zeros:output:04lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Б
lstm_20/lstm_cell_20/addAddV2%lstm_20/lstm_cell_20/MatMul:product:0'lstm_20/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:          ю
+lstm_20/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4lstm_20_lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0г
lstm_20/lstm_cell_20/BiasAddBiasAddlstm_20/lstm_cell_20/add:z:03lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          f
$lstm_20/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ш
lstm_20/lstm_cell_20/splitSplit-lstm_20/lstm_cell_20/split/split_dim:output:0%lstm_20/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_split~
lstm_20/lstm_cell_20/SigmoidSigmoid#lstm_20/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:         ђ
lstm_20/lstm_cell_20/Sigmoid_1Sigmoid#lstm_20/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:         Ј
lstm_20/lstm_cell_20/mulMul"lstm_20/lstm_cell_20/Sigmoid_1:y:0lstm_20/zeros_1:output:0*
T0*'
_output_shapes
:         x
lstm_20/lstm_cell_20/ReluRelu#lstm_20/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:         ъ
lstm_20/lstm_cell_20/mul_1Mul lstm_20/lstm_cell_20/Sigmoid:y:0'lstm_20/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:         Њ
lstm_20/lstm_cell_20/add_1AddV2lstm_20/lstm_cell_20/mul:z:0lstm_20/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:         ђ
lstm_20/lstm_cell_20/Sigmoid_2Sigmoid#lstm_20/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:         u
lstm_20/lstm_cell_20/Relu_1Relulstm_20/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:         б
lstm_20/lstm_cell_20/mul_2Mul"lstm_20/lstm_cell_20/Sigmoid_2:y:0)lstm_20/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:         v
%lstm_20/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       л
lstm_20/TensorArrayV2_1TensorListReserve.lstm_20/TensorArrayV2_1/element_shape:output:0 lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмN
lstm_20/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_20/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         \
lstm_20/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ы
lstm_20/whileWhile#lstm_20/while/loop_counter:output:0)lstm_20/while/maximum_iterations:output:0lstm_20/time:output:0 lstm_20/TensorArrayV2_1:handle:0lstm_20/zeros:output:0lstm_20/zeros_1:output:0 lstm_20/strided_slice_1:output:0?lstm_20/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_20_lstm_cell_20_matmul_readvariableop_resource5lstm_20_lstm_cell_20_matmul_1_readvariableop_resource4lstm_20_lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_20_while_body_620663*%
condR
lstm_20_while_cond_620662*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ѕ
8lstm_20/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┌
*lstm_20/TensorArrayV2Stack/TensorListStackTensorListStacklstm_20/while:output:3Alstm_20/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0p
lstm_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         i
lstm_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:»
lstm_20/strided_slice_3StridedSlice3lstm_20/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_20/strided_slice_3/stack:output:0(lstm_20/strided_slice_3/stack_1:output:0(lstm_20/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskm
lstm_20/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
lstm_20/transpose_1	Transpose3lstm_20/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_20/transpose_1/perm:output:0*
T0*+
_output_shapes
:         c
lstm_20/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    s
dropout_29/IdentityIdentity lstm_20/strided_slice_3:output:0*
T0*'
_output_shapes
:         є
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Љ
dense_15/MatMulMatMuldropout_29/Identity:output:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*'
_output_shapes
:         n
dropout_30/IdentityIdentitydense_15/Relu:activations:0*
T0*'
_output_shapes
:         є
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Љ
dense_16/MatMulMatMuldropout_30/Identity:output:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*'
_output_shapes
:         n
dropout_31/IdentityIdentitydense_16/Relu:activations:0*
T0*'
_output_shapes
:         є
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Љ
dense_17/MatMulMatMuldropout_31/Identity:output:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         b
dense_17/ReluReludense_17/BiasAdd:output:0*
T0*'
_output_shapes
:         n
dropout_32/IdentityIdentitydense_17/Relu:activations:0*
T0*'
_output_shapes
:         є
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Љ
dense_18/MatMulMatMuldropout_32/Identity:output:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_18/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         а
NoOpNoOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp,^lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp+^lstm_18/lstm_cell_18/MatMul/ReadVariableOp-^lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp^lstm_18/while,^lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp+^lstm_19/lstm_cell_19/MatMul/ReadVariableOp-^lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp^lstm_19/while,^lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp+^lstm_20/lstm_cell_20/MatMul/ReadVariableOp-^lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp^lstm_20/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2Z
+lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp+lstm_18/lstm_cell_18/BiasAdd/ReadVariableOp2X
*lstm_18/lstm_cell_18/MatMul/ReadVariableOp*lstm_18/lstm_cell_18/MatMul/ReadVariableOp2\
,lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp,lstm_18/lstm_cell_18/MatMul_1/ReadVariableOp2
lstm_18/whilelstm_18/while2Z
+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp2X
*lstm_19/lstm_cell_19/MatMul/ReadVariableOp*lstm_19/lstm_cell_19/MatMul/ReadVariableOp2\
,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp2
lstm_19/whilelstm_19/while2Z
+lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp+lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp2X
*lstm_20/lstm_cell_20/MatMul/ReadVariableOp*lstm_20/lstm_cell_20/MatMul/ReadVariableOp2\
,lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp,lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp2
lstm_20/whilelstm_20/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
њ8
ѓ
C__inference_lstm_18_layer_call_and_return_conditional_losses_617943

inputs%
lstm_cell_18_617861: %
lstm_cell_18_617863: !
lstm_cell_18_617865: 
identityѕб$lstm_cell_18/StatefulPartitionedCallбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЭ
$lstm_cell_18/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_18_617861lstm_cell_18_617863lstm_cell_18_617865*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_lstm_cell_18_layer_call_and_return_conditional_losses_617815n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : и
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_18_617861lstm_cell_18_617863lstm_cell_18_617865*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_617874*
condR
while_cond_617873*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  u
NoOpNoOp%^lstm_cell_18/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_18/StatefulPartitionedCall$lstm_cell_18/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
┘
d
F__inference_dropout_31_layer_call_and_return_conditional_losses_623285

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
М
Ѓ
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_623657

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
╦
Ђ
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_618165

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates
 7
╩
while_body_622949
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_20_matmul_readvariableop_resource_0: G
5while_lstm_cell_20_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_20_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_20_matmul_readvariableop_resource: E
3while_lstm_cell_20_matmul_1_readvariableop_resource: @
2while_lstm_cell_20_biasadd_readvariableop_resource: ѕб)while/lstm_cell_20/BiasAdd/ReadVariableOpб(while/lstm_cell_20/MatMul/ReadVariableOpб*while/lstm_cell_20/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ю
(while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╣
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          а
*while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0а
while/lstm_cell_20/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_20/addAddV2#while/lstm_cell_20/MatMul:product:0%while/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:          џ
)while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0д
while/lstm_cell_20/BiasAddBiasAddwhile/lstm_cell_20/add:z:01while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0#while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
while/lstm_cell_20/SigmoidSigmoid!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell_20/Sigmoid_1Sigmoid!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:         є
while/lstm_cell_20/mulMul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         t
while/lstm_cell_20/ReluRelu!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:         ў
while/lstm_cell_20/mul_1Mulwhile/lstm_cell_20/Sigmoid:y:0%while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:         Ї
while/lstm_cell_20/add_1AddV2while/lstm_cell_20/mul:z:0while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:         |
while/lstm_cell_20/Sigmoid_2Sigmoid!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:         q
while/lstm_cell_20/Relu_1Reluwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:         ю
while/lstm_cell_20/mul_2Mul while/lstm_cell_20/Sigmoid_2:y:0'while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:         ┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_20/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         y
while/Identity_5Identitywhile/lstm_cell_20/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         л

while/NoOpNoOp*^while/lstm_cell_20/BiasAdd/ReadVariableOp)^while/lstm_cell_20/MatMul/ReadVariableOp+^while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_20_biasadd_readvariableop_resource4while_lstm_cell_20_biasadd_readvariableop_resource_0"l
3while_lstm_cell_20_matmul_1_readvariableop_resource5while_lstm_cell_20_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_20_matmul_readvariableop_resource3while_lstm_cell_20_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_20/BiasAdd/ReadVariableOp)while/lstm_cell_20/BiasAdd/ReadVariableOp2T
(while/lstm_cell_20/MatMul/ReadVariableOp(while/lstm_cell_20/MatMul/ReadVariableOp2X
*while/lstm_cell_20/MatMul_1/ReadVariableOp*while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
┼
ќ
)__inference_dense_17_layer_call_fn_623306

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_619189o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Џ

ш
D__inference_dense_17_layer_call_and_return_conditional_losses_619189

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Е
┤
(__inference_lstm_18_layer_call_fn_621296
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_18_layer_call_and_return_conditional_losses_617943|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
х
├
while_cond_618716
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_618716___redundant_placeholder04
0while_while_cond_618716___redundant_placeholder14
0while_while_cond_618716___redundant_placeholder24
0while_while_cond_618716___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ЯP
в
&sequential_6_lstm_19_while_body_617347F
Bsequential_6_lstm_19_while_sequential_6_lstm_19_while_loop_counterL
Hsequential_6_lstm_19_while_sequential_6_lstm_19_while_maximum_iterations*
&sequential_6_lstm_19_while_placeholder,
(sequential_6_lstm_19_while_placeholder_1,
(sequential_6_lstm_19_while_placeholder_2,
(sequential_6_lstm_19_while_placeholder_3E
Asequential_6_lstm_19_while_sequential_6_lstm_19_strided_slice_1_0Ђ
}sequential_6_lstm_19_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_19_tensorarrayunstack_tensorlistfromtensor_0Z
Hsequential_6_lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0: \
Jsequential_6_lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0: W
Isequential_6_lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0: '
#sequential_6_lstm_19_while_identity)
%sequential_6_lstm_19_while_identity_1)
%sequential_6_lstm_19_while_identity_2)
%sequential_6_lstm_19_while_identity_3)
%sequential_6_lstm_19_while_identity_4)
%sequential_6_lstm_19_while_identity_5C
?sequential_6_lstm_19_while_sequential_6_lstm_19_strided_slice_1
{sequential_6_lstm_19_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_19_tensorarrayunstack_tensorlistfromtensorX
Fsequential_6_lstm_19_while_lstm_cell_19_matmul_readvariableop_resource: Z
Hsequential_6_lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource: U
Gsequential_6_lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource: ѕб>sequential_6/lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOpб=sequential_6/lstm_19/while/lstm_cell_19/MatMul/ReadVariableOpб?sequential_6/lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOpЮ
Lsequential_6/lstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ј
>sequential_6/lstm_19/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_6_lstm_19_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_19_tensorarrayunstack_tensorlistfromtensor_0&sequential_6_lstm_19_while_placeholderUsequential_6/lstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0к
=sequential_6/lstm_19/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOpHsequential_6_lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Э
.sequential_6/lstm_19/while/lstm_cell_19/MatMulMatMulEsequential_6/lstm_19/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_6/lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╩
?sequential_6/lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpJsequential_6_lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0▀
0sequential_6/lstm_19/while/lstm_cell_19/MatMul_1MatMul(sequential_6_lstm_19_while_placeholder_2Gsequential_6/lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ▄
+sequential_6/lstm_19/while/lstm_cell_19/addAddV28sequential_6/lstm_19/while/lstm_cell_19/MatMul:product:0:sequential_6/lstm_19/while/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:          ─
>sequential_6/lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOpIsequential_6_lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0т
/sequential_6/lstm_19/while/lstm_cell_19/BiasAddBiasAdd/sequential_6/lstm_19/while/lstm_cell_19/add:z:0Fsequential_6/lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          y
7sequential_6/lstm_19/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :«
-sequential_6/lstm_19/while/lstm_cell_19/splitSplit@sequential_6/lstm_19/while/lstm_cell_19/split/split_dim:output:08sequential_6/lstm_19/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitц
/sequential_6/lstm_19/while/lstm_cell_19/SigmoidSigmoid6sequential_6/lstm_19/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:         д
1sequential_6/lstm_19/while/lstm_cell_19/Sigmoid_1Sigmoid6sequential_6/lstm_19/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:         ┼
+sequential_6/lstm_19/while/lstm_cell_19/mulMul5sequential_6/lstm_19/while/lstm_cell_19/Sigmoid_1:y:0(sequential_6_lstm_19_while_placeholder_3*
T0*'
_output_shapes
:         ъ
,sequential_6/lstm_19/while/lstm_cell_19/ReluRelu6sequential_6/lstm_19/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:         О
-sequential_6/lstm_19/while/lstm_cell_19/mul_1Mul3sequential_6/lstm_19/while/lstm_cell_19/Sigmoid:y:0:sequential_6/lstm_19/while/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:         ╠
-sequential_6/lstm_19/while/lstm_cell_19/add_1AddV2/sequential_6/lstm_19/while/lstm_cell_19/mul:z:01sequential_6/lstm_19/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:         д
1sequential_6/lstm_19/while/lstm_cell_19/Sigmoid_2Sigmoid6sequential_6/lstm_19/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:         Џ
.sequential_6/lstm_19/while/lstm_cell_19/Relu_1Relu1sequential_6/lstm_19/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:         █
-sequential_6/lstm_19/while/lstm_cell_19/mul_2Mul5sequential_6/lstm_19/while/lstm_cell_19/Sigmoid_2:y:0<sequential_6/lstm_19/while/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:         Ў
?sequential_6/lstm_19/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_6_lstm_19_while_placeholder_1&sequential_6_lstm_19_while_placeholder1sequential_6/lstm_19/while/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмb
 sequential_6/lstm_19/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Џ
sequential_6/lstm_19/while/addAddV2&sequential_6_lstm_19_while_placeholder)sequential_6/lstm_19/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_6/lstm_19/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :╗
 sequential_6/lstm_19/while/add_1AddV2Bsequential_6_lstm_19_while_sequential_6_lstm_19_while_loop_counter+sequential_6/lstm_19/while/add_1/y:output:0*
T0*
_output_shapes
: ў
#sequential_6/lstm_19/while/IdentityIdentity$sequential_6/lstm_19/while/add_1:z:0 ^sequential_6/lstm_19/while/NoOp*
T0*
_output_shapes
: Й
%sequential_6/lstm_19/while/Identity_1IdentityHsequential_6_lstm_19_while_sequential_6_lstm_19_while_maximum_iterations ^sequential_6/lstm_19/while/NoOp*
T0*
_output_shapes
: ў
%sequential_6/lstm_19/while/Identity_2Identity"sequential_6/lstm_19/while/add:z:0 ^sequential_6/lstm_19/while/NoOp*
T0*
_output_shapes
: ┼
%sequential_6/lstm_19/while/Identity_3IdentityOsequential_6/lstm_19/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_6/lstm_19/while/NoOp*
T0*
_output_shapes
: И
%sequential_6/lstm_19/while/Identity_4Identity1sequential_6/lstm_19/while/lstm_cell_19/mul_2:z:0 ^sequential_6/lstm_19/while/NoOp*
T0*'
_output_shapes
:         И
%sequential_6/lstm_19/while/Identity_5Identity1sequential_6/lstm_19/while/lstm_cell_19/add_1:z:0 ^sequential_6/lstm_19/while/NoOp*
T0*'
_output_shapes
:         ц
sequential_6/lstm_19/while/NoOpNoOp?^sequential_6/lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp>^sequential_6/lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp@^sequential_6/lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_6_lstm_19_while_identity,sequential_6/lstm_19/while/Identity:output:0"W
%sequential_6_lstm_19_while_identity_1.sequential_6/lstm_19/while/Identity_1:output:0"W
%sequential_6_lstm_19_while_identity_2.sequential_6/lstm_19/while/Identity_2:output:0"W
%sequential_6_lstm_19_while_identity_3.sequential_6/lstm_19/while/Identity_3:output:0"W
%sequential_6_lstm_19_while_identity_4.sequential_6/lstm_19/while/Identity_4:output:0"W
%sequential_6_lstm_19_while_identity_5.sequential_6/lstm_19/while/Identity_5:output:0"ћ
Gsequential_6_lstm_19_while_lstm_cell_19_biasadd_readvariableop_resourceIsequential_6_lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0"ќ
Hsequential_6_lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resourceJsequential_6_lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0"њ
Fsequential_6_lstm_19_while_lstm_cell_19_matmul_readvariableop_resourceHsequential_6_lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0"ё
?sequential_6_lstm_19_while_sequential_6_lstm_19_strided_slice_1Asequential_6_lstm_19_while_sequential_6_lstm_19_strided_slice_1_0"Ч
{sequential_6_lstm_19_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_19_tensorarrayunstack_tensorlistfromtensor}sequential_6_lstm_19_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_19_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2ђ
>sequential_6/lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp>sequential_6/lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp2~
=sequential_6/lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp=sequential_6/lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp2ѓ
?sequential_6/lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp?sequential_6/lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
»ы
¤'
"__inference__traced_restore_624050
file_prefix2
 assignvariableop_dense_15_kernel:.
 assignvariableop_1_dense_15_bias:4
"assignvariableop_2_dense_16_kernel:.
 assignvariableop_3_dense_16_bias:4
"assignvariableop_4_dense_17_kernel:.
 assignvariableop_5_dense_17_bias:4
"assignvariableop_6_dense_18_kernel:.
 assignvariableop_7_dense_18_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: A
/assignvariableop_13_lstm_18_lstm_cell_18_kernel: K
9assignvariableop_14_lstm_18_lstm_cell_18_recurrent_kernel: ;
-assignvariableop_15_lstm_18_lstm_cell_18_bias: A
/assignvariableop_16_lstm_19_lstm_cell_19_kernel: K
9assignvariableop_17_lstm_19_lstm_cell_19_recurrent_kernel: ;
-assignvariableop_18_lstm_19_lstm_cell_19_bias: A
/assignvariableop_19_lstm_20_lstm_cell_20_kernel: K
9assignvariableop_20_lstm_20_lstm_cell_20_recurrent_kernel: ;
-assignvariableop_21_lstm_20_lstm_cell_20_bias: #
assignvariableop_22_total: #
assignvariableop_23_count: %
assignvariableop_24_total_1: %
assignvariableop_25_count_1: <
*assignvariableop_26_adam_dense_15_kernel_m:6
(assignvariableop_27_adam_dense_15_bias_m:<
*assignvariableop_28_adam_dense_16_kernel_m:6
(assignvariableop_29_adam_dense_16_bias_m:<
*assignvariableop_30_adam_dense_17_kernel_m:6
(assignvariableop_31_adam_dense_17_bias_m:<
*assignvariableop_32_adam_dense_18_kernel_m:6
(assignvariableop_33_adam_dense_18_bias_m:H
6assignvariableop_34_adam_lstm_18_lstm_cell_18_kernel_m: R
@assignvariableop_35_adam_lstm_18_lstm_cell_18_recurrent_kernel_m: B
4assignvariableop_36_adam_lstm_18_lstm_cell_18_bias_m: H
6assignvariableop_37_adam_lstm_19_lstm_cell_19_kernel_m: R
@assignvariableop_38_adam_lstm_19_lstm_cell_19_recurrent_kernel_m: B
4assignvariableop_39_adam_lstm_19_lstm_cell_19_bias_m: H
6assignvariableop_40_adam_lstm_20_lstm_cell_20_kernel_m: R
@assignvariableop_41_adam_lstm_20_lstm_cell_20_recurrent_kernel_m: B
4assignvariableop_42_adam_lstm_20_lstm_cell_20_bias_m: <
*assignvariableop_43_adam_dense_15_kernel_v:6
(assignvariableop_44_adam_dense_15_bias_v:<
*assignvariableop_45_adam_dense_16_kernel_v:6
(assignvariableop_46_adam_dense_16_bias_v:<
*assignvariableop_47_adam_dense_17_kernel_v:6
(assignvariableop_48_adam_dense_17_bias_v:<
*assignvariableop_49_adam_dense_18_kernel_v:6
(assignvariableop_50_adam_dense_18_bias_v:H
6assignvariableop_51_adam_lstm_18_lstm_cell_18_kernel_v: R
@assignvariableop_52_adam_lstm_18_lstm_cell_18_recurrent_kernel_v: B
4assignvariableop_53_adam_lstm_18_lstm_cell_18_bias_v: H
6assignvariableop_54_adam_lstm_19_lstm_cell_19_kernel_v: R
@assignvariableop_55_adam_lstm_19_lstm_cell_19_recurrent_kernel_v: B
4assignvariableop_56_adam_lstm_19_lstm_cell_19_bias_v: H
6assignvariableop_57_adam_lstm_20_lstm_cell_20_kernel_v: R
@assignvariableop_58_adam_lstm_20_lstm_cell_20_recurrent_kernel_v: B
4assignvariableop_59_adam_lstm_20_lstm_cell_20_bias_v: 
identity_61ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_40бAssignVariableOp_41бAssignVariableOp_42бAssignVariableOp_43бAssignVariableOp_44бAssignVariableOp_45бAssignVariableOp_46бAssignVariableOp_47бAssignVariableOp_48бAssignVariableOp_49бAssignVariableOp_5бAssignVariableOp_50бAssignVariableOp_51бAssignVariableOp_52бAssignVariableOp_53бAssignVariableOp_54бAssignVariableOp_55бAssignVariableOp_56бAssignVariableOp_57бAssignVariableOp_58бAssignVariableOp_59бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9Р
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*ѕ
value■Bч=B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHь
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*Ј
valueЁBѓ=B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B м
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*і
_output_shapesэ
З:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*K
dtypesA
?2=	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOpAssignVariableOp assignvariableop_dense_15_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_15_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_16_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_16_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_17_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_17_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_18_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_18_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:І
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_18_lstm_cell_18_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:ф
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_18_lstm_cell_18_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:ъ
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_18_lstm_cell_18_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_16AssignVariableOp/assignvariableop_16_lstm_19_lstm_cell_19_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ф
AssignVariableOp_17AssignVariableOp9assignvariableop_17_lstm_19_lstm_cell_19_recurrent_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:ъ
AssignVariableOp_18AssignVariableOp-assignvariableop_18_lstm_19_lstm_cell_19_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_19AssignVariableOp/assignvariableop_19_lstm_20_lstm_cell_20_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:ф
AssignVariableOp_20AssignVariableOp9assignvariableop_20_lstm_20_lstm_cell_20_recurrent_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:ъ
AssignVariableOp_21AssignVariableOp-assignvariableop_21_lstm_20_lstm_cell_20_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_22AssignVariableOpassignvariableop_22_totalIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_23AssignVariableOpassignvariableop_23_countIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_24AssignVariableOpassignvariableop_24_total_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_25AssignVariableOpassignvariableop_25_count_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_dense_15_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_dense_15_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_dense_16_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_dense_16_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_dense_17_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_dense_17_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_dense_18_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_dense_18_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_18_lstm_cell_18_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_lstm_18_lstm_cell_18_recurrent_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_18_lstm_cell_18_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_lstm_19_lstm_cell_19_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_38AssignVariableOp@assignvariableop_38_adam_lstm_19_lstm_cell_19_recurrent_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adam_lstm_19_lstm_cell_19_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_40AssignVariableOp6assignvariableop_40_adam_lstm_20_lstm_cell_20_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_41AssignVariableOp@assignvariableop_41_adam_lstm_20_lstm_cell_20_recurrent_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_42AssignVariableOp4assignvariableop_42_adam_lstm_20_lstm_cell_20_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_dense_15_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_dense_15_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_dense_16_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_dense_16_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_17_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_17_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_18_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_18_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_51AssignVariableOp6assignvariableop_51_adam_lstm_18_lstm_cell_18_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_52AssignVariableOp@assignvariableop_52_adam_lstm_18_lstm_cell_18_recurrent_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_53AssignVariableOp4assignvariableop_53_adam_lstm_18_lstm_cell_18_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_54AssignVariableOp6assignvariableop_54_adam_lstm_19_lstm_cell_19_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_55AssignVariableOp@assignvariableop_55_adam_lstm_19_lstm_cell_19_recurrent_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_56AssignVariableOp4assignvariableop_56_adam_lstm_19_lstm_cell_19_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_57AssignVariableOp6assignvariableop_57_adam_lstm_20_lstm_cell_20_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_58AssignVariableOp@assignvariableop_58_adam_lstm_20_lstm_cell_20_recurrent_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_59AssignVariableOp4assignvariableop_59_adam_lstm_20_lstm_cell_20_bias_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 э

Identity_60Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_61IdentityIdentity_60:output:0^NoOp_1*
T0*
_output_shapes
: С

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_61Identity_61:output:0*Ї
_input_shapes|
z: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
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
AssignVariableOp_4AssignVariableOp_42*
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
AssignVariableOp_5AssignVariableOp_52*
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
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ИA
╩

lstm_20_while_body_621131,
(lstm_20_while_lstm_20_while_loop_counter2
.lstm_20_while_lstm_20_while_maximum_iterations
lstm_20_while_placeholder
lstm_20_while_placeholder_1
lstm_20_while_placeholder_2
lstm_20_while_placeholder_3+
'lstm_20_while_lstm_20_strided_slice_1_0g
clstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_20_while_lstm_cell_20_matmul_readvariableop_resource_0: O
=lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource_0: J
<lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource_0: 
lstm_20_while_identity
lstm_20_while_identity_1
lstm_20_while_identity_2
lstm_20_while_identity_3
lstm_20_while_identity_4
lstm_20_while_identity_5)
%lstm_20_while_lstm_20_strided_slice_1e
alstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensorK
9lstm_20_while_lstm_cell_20_matmul_readvariableop_resource: M
;lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource: H
:lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource: ѕб1lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOpб0lstm_20/while/lstm_cell_20/MatMul/ReadVariableOpб2lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOpљ
?lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╬
1lstm_20/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0lstm_20_while_placeholderHlstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0г
0lstm_20/while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp;lstm_20_while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Л
!lstm_20/while/lstm_cell_20/MatMulMatMul8lstm_20/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ░
2lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp=lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0И
#lstm_20/while/lstm_cell_20/MatMul_1MatMullstm_20_while_placeholder_2:lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          х
lstm_20/while/lstm_cell_20/addAddV2+lstm_20/while/lstm_cell_20/MatMul:product:0-lstm_20/while/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:          ф
1lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp<lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Й
"lstm_20/while/lstm_cell_20/BiasAddBiasAdd"lstm_20/while/lstm_cell_20/add:z:09lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          l
*lstm_20/while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
 lstm_20/while/lstm_cell_20/splitSplit3lstm_20/while/lstm_cell_20/split/split_dim:output:0+lstm_20/while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitі
"lstm_20/while/lstm_cell_20/SigmoidSigmoid)lstm_20/while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:         ї
$lstm_20/while/lstm_cell_20/Sigmoid_1Sigmoid)lstm_20/while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:         ъ
lstm_20/while/lstm_cell_20/mulMul(lstm_20/while/lstm_cell_20/Sigmoid_1:y:0lstm_20_while_placeholder_3*
T0*'
_output_shapes
:         ё
lstm_20/while/lstm_cell_20/ReluRelu)lstm_20/while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:         ░
 lstm_20/while/lstm_cell_20/mul_1Mul&lstm_20/while/lstm_cell_20/Sigmoid:y:0-lstm_20/while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:         Ц
 lstm_20/while/lstm_cell_20/add_1AddV2"lstm_20/while/lstm_cell_20/mul:z:0$lstm_20/while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:         ї
$lstm_20/while/lstm_cell_20/Sigmoid_2Sigmoid)lstm_20/while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:         Ђ
!lstm_20/while/lstm_cell_20/Relu_1Relu$lstm_20/while/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:         ┤
 lstm_20/while/lstm_cell_20/mul_2Mul(lstm_20/while/lstm_cell_20/Sigmoid_2:y:0/lstm_20/while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:         т
2lstm_20/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_20_while_placeholder_1lstm_20_while_placeholder$lstm_20/while/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмU
lstm_20/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_20/while/addAddV2lstm_20_while_placeholderlstm_20/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_20/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_20/while/add_1AddV2(lstm_20_while_lstm_20_while_loop_counterlstm_20/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_20/while/IdentityIdentitylstm_20/while/add_1:z:0^lstm_20/while/NoOp*
T0*
_output_shapes
: і
lstm_20/while/Identity_1Identity.lstm_20_while_lstm_20_while_maximum_iterations^lstm_20/while/NoOp*
T0*
_output_shapes
: q
lstm_20/while/Identity_2Identitylstm_20/while/add:z:0^lstm_20/while/NoOp*
T0*
_output_shapes
: ъ
lstm_20/while/Identity_3IdentityBlstm_20/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_20/while/NoOp*
T0*
_output_shapes
: Љ
lstm_20/while/Identity_4Identity$lstm_20/while/lstm_cell_20/mul_2:z:0^lstm_20/while/NoOp*
T0*'
_output_shapes
:         Љ
lstm_20/while/Identity_5Identity$lstm_20/while/lstm_cell_20/add_1:z:0^lstm_20/while/NoOp*
T0*'
_output_shapes
:         ­
lstm_20/while/NoOpNoOp2^lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp1^lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp3^lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_20_while_identitylstm_20/while/Identity:output:0"=
lstm_20_while_identity_1!lstm_20/while/Identity_1:output:0"=
lstm_20_while_identity_2!lstm_20/while/Identity_2:output:0"=
lstm_20_while_identity_3!lstm_20/while/Identity_3:output:0"=
lstm_20_while_identity_4!lstm_20/while/Identity_4:output:0"=
lstm_20_while_identity_5!lstm_20/while/Identity_5:output:0"P
%lstm_20_while_lstm_20_strided_slice_1'lstm_20_while_lstm_20_strided_slice_1_0"z
:lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource<lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource_0"|
;lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource=lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource_0"x
9lstm_20_while_lstm_cell_20_matmul_readvariableop_resource;lstm_20_while_lstm_cell_20_matmul_readvariableop_resource_0"╚
alstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensorclstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2f
1lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp1lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp2d
0lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp0lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp2h
2lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp2lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
х
├
while_cond_618382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_618382___redundant_placeholder04
0while_while_cond_618382___redundant_placeholder14
0while_while_cond_618382___redundant_placeholder24
0while_while_cond_618382___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ИA
╩

lstm_18_while_body_620383,
(lstm_18_while_lstm_18_while_loop_counter2
.lstm_18_while_lstm_18_while_maximum_iterations
lstm_18_while_placeholder
lstm_18_while_placeholder_1
lstm_18_while_placeholder_2
lstm_18_while_placeholder_3+
'lstm_18_while_lstm_18_strided_slice_1_0g
clstm_18_while_tensorarrayv2read_tensorlistgetitem_lstm_18_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_18_while_lstm_cell_18_matmul_readvariableop_resource_0: O
=lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource_0: J
<lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource_0: 
lstm_18_while_identity
lstm_18_while_identity_1
lstm_18_while_identity_2
lstm_18_while_identity_3
lstm_18_while_identity_4
lstm_18_while_identity_5)
%lstm_18_while_lstm_18_strided_slice_1e
alstm_18_while_tensorarrayv2read_tensorlistgetitem_lstm_18_tensorarrayunstack_tensorlistfromtensorK
9lstm_18_while_lstm_cell_18_matmul_readvariableop_resource: M
;lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource: H
:lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource: ѕб1lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOpб0lstm_18/while/lstm_cell_18/MatMul/ReadVariableOpб2lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOpљ
?lstm_18/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╬
1lstm_18/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_18_while_tensorarrayv2read_tensorlistgetitem_lstm_18_tensorarrayunstack_tensorlistfromtensor_0lstm_18_while_placeholderHlstm_18/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0г
0lstm_18/while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOp;lstm_18_while_lstm_cell_18_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Л
!lstm_18/while/lstm_cell_18/MatMulMatMul8lstm_18/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ░
2lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp=lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0И
#lstm_18/while/lstm_cell_18/MatMul_1MatMullstm_18_while_placeholder_2:lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          х
lstm_18/while/lstm_cell_18/addAddV2+lstm_18/while/lstm_cell_18/MatMul:product:0-lstm_18/while/lstm_cell_18/MatMul_1:product:0*
T0*'
_output_shapes
:          ф
1lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp<lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Й
"lstm_18/while/lstm_cell_18/BiasAddBiasAdd"lstm_18/while/lstm_cell_18/add:z:09lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          l
*lstm_18/while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
 lstm_18/while/lstm_cell_18/splitSplit3lstm_18/while/lstm_cell_18/split/split_dim:output:0+lstm_18/while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitі
"lstm_18/while/lstm_cell_18/SigmoidSigmoid)lstm_18/while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:         ї
$lstm_18/while/lstm_cell_18/Sigmoid_1Sigmoid)lstm_18/while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:         ъ
lstm_18/while/lstm_cell_18/mulMul(lstm_18/while/lstm_cell_18/Sigmoid_1:y:0lstm_18_while_placeholder_3*
T0*'
_output_shapes
:         ё
lstm_18/while/lstm_cell_18/ReluRelu)lstm_18/while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:         ░
 lstm_18/while/lstm_cell_18/mul_1Mul&lstm_18/while/lstm_cell_18/Sigmoid:y:0-lstm_18/while/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:         Ц
 lstm_18/while/lstm_cell_18/add_1AddV2"lstm_18/while/lstm_cell_18/mul:z:0$lstm_18/while/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:         ї
$lstm_18/while/lstm_cell_18/Sigmoid_2Sigmoid)lstm_18/while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:         Ђ
!lstm_18/while/lstm_cell_18/Relu_1Relu$lstm_18/while/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:         ┤
 lstm_18/while/lstm_cell_18/mul_2Mul(lstm_18/while/lstm_cell_18/Sigmoid_2:y:0/lstm_18/while/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:         т
2lstm_18/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_18_while_placeholder_1lstm_18_while_placeholder$lstm_18/while/lstm_cell_18/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмU
lstm_18/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_18/while/addAddV2lstm_18_while_placeholderlstm_18/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_18/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_18/while/add_1AddV2(lstm_18_while_lstm_18_while_loop_counterlstm_18/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_18/while/IdentityIdentitylstm_18/while/add_1:z:0^lstm_18/while/NoOp*
T0*
_output_shapes
: і
lstm_18/while/Identity_1Identity.lstm_18_while_lstm_18_while_maximum_iterations^lstm_18/while/NoOp*
T0*
_output_shapes
: q
lstm_18/while/Identity_2Identitylstm_18/while/add:z:0^lstm_18/while/NoOp*
T0*
_output_shapes
: ъ
lstm_18/while/Identity_3IdentityBlstm_18/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_18/while/NoOp*
T0*
_output_shapes
: Љ
lstm_18/while/Identity_4Identity$lstm_18/while/lstm_cell_18/mul_2:z:0^lstm_18/while/NoOp*
T0*'
_output_shapes
:         Љ
lstm_18/while/Identity_5Identity$lstm_18/while/lstm_cell_18/add_1:z:0^lstm_18/while/NoOp*
T0*'
_output_shapes
:         ­
lstm_18/while/NoOpNoOp2^lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp1^lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp3^lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_18_while_identitylstm_18/while/Identity:output:0"=
lstm_18_while_identity_1!lstm_18/while/Identity_1:output:0"=
lstm_18_while_identity_2!lstm_18/while/Identity_2:output:0"=
lstm_18_while_identity_3!lstm_18/while/Identity_3:output:0"=
lstm_18_while_identity_4!lstm_18/while/Identity_4:output:0"=
lstm_18_while_identity_5!lstm_18/while/Identity_5:output:0"P
%lstm_18_while_lstm_18_strided_slice_1'lstm_18_while_lstm_18_strided_slice_1_0"z
:lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource<lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource_0"|
;lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource=lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource_0"x
9lstm_18_while_lstm_cell_18_matmul_readvariableop_resource;lstm_18_while_lstm_cell_18_matmul_readvariableop_resource_0"╚
alstm_18_while_tensorarrayv2read_tensorlistgetitem_lstm_18_tensorarrayunstack_tensorlistfromtensorclstm_18_while_tensorarrayv2read_tensorlistgetitem_lstm_18_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2f
1lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp1lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp2d
0lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp0lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp2h
2lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp2lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
┤
G
+__inference_dropout_27_layer_call_fn_621895

inputs
identityИ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_618814d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╦
Ђ
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_618369

inputs

states
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates
Ы
┬
-__inference_sequential_6_layer_call_fn_619256
lstm_18_input
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:
identityѕбStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCalllstm_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *3
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_sequential_6_layer_call_and_return_conditional_losses_619219o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:         
'
_user_specified_namelstm_18_input
┬
╣
$__inference_signature_wrapper_620246
lstm_18_input
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:
identityѕбStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCalllstm_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *3
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ **
f%R#
!__inference__wrapped_model_617602o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:         
'
_user_specified_namelstm_18_input
с"
П
while_body_617683
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_18_617707_0: -
while_lstm_cell_18_617709_0: )
while_lstm_cell_18_617711_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_18_617707: +
while_lstm_cell_18_617709: '
while_lstm_cell_18_617711: ѕб*while/lstm_cell_18/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Х
*while/lstm_cell_18/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_18_617707_0while_lstm_cell_18_617709_0while_lstm_cell_18_617711_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_lstm_cell_18_layer_call_and_return_conditional_losses_617669▄
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_18/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: љ
while/Identity_4Identity3while/lstm_cell_18/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         љ
while/Identity_5Identity3while/lstm_cell_18/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         y

while/NoOpNoOp+^while/lstm_cell_18/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_18_617707while_lstm_cell_18_617707_0"8
while_lstm_cell_18_617709while_lstm_cell_18_617709_0"8
while_lstm_cell_18_617711while_lstm_cell_18_617711_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2X
*while/lstm_cell_18/StatefulPartitionedCall*while/lstm_cell_18/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
х
├
while_cond_621805
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_621805___redundant_placeholder04
0while_while_cond_621805___redundant_placeholder14
0while_while_cond_621805___redundant_placeholder24
0while_while_cond_621805___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
┘
d
F__inference_dropout_32_layer_call_and_return_conditional_losses_623332

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
М
Ѓ
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_623527

inputs
states_0
states_10
matmul_readvariableop_resource: 2
 matmul_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:          r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
Џ

ш
D__inference_dense_15_layer_call_and_return_conditional_losses_623223

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
в
з
-__inference_lstm_cell_18_layer_call_fn_623397

inputs
states_0
states_1
unknown: 
	unknown_0: 
	unknown_1: 
identity

identity_1

identity_2ѕбStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *Q
fLRJ
H__inference_lstm_cell_18_layer_call_and_return_conditional_losses_617815o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
Ј
┤
(__inference_lstm_20_layer_call_fn_622571
inputs_0
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_618452o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
┘
d
F__inference_dropout_29_layer_call_and_return_conditional_losses_619128

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
х
├
while_cond_619647
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_619647___redundant_placeholder04
0while_while_cond_619647___redundant_placeholder14
0while_while_cond_619647___redundant_placeholder24
0while_while_cond_619647___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ѓ
у
&sequential_6_lstm_19_while_cond_617346F
Bsequential_6_lstm_19_while_sequential_6_lstm_19_while_loop_counterL
Hsequential_6_lstm_19_while_sequential_6_lstm_19_while_maximum_iterations*
&sequential_6_lstm_19_while_placeholder,
(sequential_6_lstm_19_while_placeholder_1,
(sequential_6_lstm_19_while_placeholder_2,
(sequential_6_lstm_19_while_placeholder_3H
Dsequential_6_lstm_19_while_less_sequential_6_lstm_19_strided_slice_1^
Zsequential_6_lstm_19_while_sequential_6_lstm_19_while_cond_617346___redundant_placeholder0^
Zsequential_6_lstm_19_while_sequential_6_lstm_19_while_cond_617346___redundant_placeholder1^
Zsequential_6_lstm_19_while_sequential_6_lstm_19_while_cond_617346___redundant_placeholder2^
Zsequential_6_lstm_19_while_sequential_6_lstm_19_while_cond_617346___redundant_placeholder3'
#sequential_6_lstm_19_while_identity
Х
sequential_6/lstm_19/while/LessLess&sequential_6_lstm_19_while_placeholderDsequential_6_lstm_19_while_less_sequential_6_lstm_19_strided_slice_1*
T0*
_output_shapes
: u
#sequential_6/lstm_19/while/IdentityIdentity#sequential_6/lstm_19/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_6_lstm_19_while_identity,sequential_6/lstm_19/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
┘
d
F__inference_dropout_30_layer_call_and_return_conditional_losses_619152

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
З	
e
F__inference_dropout_31_layer_call_and_return_conditional_losses_623297

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ъJ
ў
C__inference_lstm_20_layer_call_and_return_conditional_losses_619544

inputs=
+lstm_cell_20_matmul_readvariableop_resource: ?
-lstm_cell_20_matmul_1_readvariableop_resource: :
,lstm_cell_20_biasadd_readvariableop_resource: 
identityѕб#lstm_cell_20/BiasAdd/ReadVariableOpб"lstm_cell_20/MatMul/ReadVariableOpб$lstm_cell_20/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskј
"lstm_cell_20/MatMul/ReadVariableOpReadVariableOp+lstm_cell_20_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0*lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          њ
$lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell_20/MatMul_1MatMulzeros:output:0,lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          І
lstm_cell_20/addAddV2lstm_cell_20/MatMul:product:0lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:          ї
#lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ћ
lstm_cell_20/BiasAddBiasAddlstm_cell_20/add:z:0+lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitn
lstm_cell_20/SigmoidSigmoidlstm_cell_20/split:output:0*
T0*'
_output_shapes
:         p
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/split:output:1*
T0*'
_output_shapes
:         w
lstm_cell_20/mulMullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         h
lstm_cell_20/ReluRelulstm_cell_20/split:output:2*
T0*'
_output_shapes
:         є
lstm_cell_20/mul_1Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:         {
lstm_cell_20/add_1AddV2lstm_cell_20/mul:z:0lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:         p
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/split:output:3*
T0*'
_output_shapes
:         e
lstm_cell_20/Relu_1Relulstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:         і
lstm_cell_20/mul_2Mullstm_cell_20/Sigmoid_2:y:0!lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_20_matmul_readvariableop_resource-lstm_cell_20_matmul_1_readvariableop_resource,lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_619460*
condR
while_cond_619459*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         └
NoOpNoOp$^lstm_cell_20/BiasAdd/ReadVariableOp#^lstm_cell_20/MatMul/ReadVariableOp%^lstm_cell_20/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2J
#lstm_cell_20/BiasAdd/ReadVariableOp#lstm_cell_20/BiasAdd/ReadVariableOp2H
"lstm_cell_20/MatMul/ReadVariableOp"lstm_cell_20/MatMul/ReadVariableOp2L
$lstm_cell_20/MatMul_1/ReadVariableOp$lstm_cell_20/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ЎJ
ў
C__inference_lstm_18_layer_call_and_return_conditional_losses_621890

inputs=
+lstm_cell_18_matmul_readvariableop_resource: ?
-lstm_cell_18_matmul_1_readvariableop_resource: :
,lstm_cell_18_biasadd_readvariableop_resource: 
identityѕб#lstm_cell_18/BiasAdd/ReadVariableOpб"lstm_cell_18/MatMul/ReadVariableOpб$lstm_cell_18/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskј
"lstm_cell_18/MatMul/ReadVariableOpReadVariableOp+lstm_cell_18_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
lstm_cell_18/MatMulMatMulstrided_slice_2:output:0*lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          њ
$lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_18_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell_18/MatMul_1MatMulzeros:output:0,lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          І
lstm_cell_18/addAddV2lstm_cell_18/MatMul:product:0lstm_cell_18/MatMul_1:product:0*
T0*'
_output_shapes
:          ї
#lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ћ
lstm_cell_18/BiasAddBiasAddlstm_cell_18/add:z:0+lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ^
lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_18/splitSplit%lstm_cell_18/split/split_dim:output:0lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitn
lstm_cell_18/SigmoidSigmoidlstm_cell_18/split:output:0*
T0*'
_output_shapes
:         p
lstm_cell_18/Sigmoid_1Sigmoidlstm_cell_18/split:output:1*
T0*'
_output_shapes
:         w
lstm_cell_18/mulMullstm_cell_18/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         h
lstm_cell_18/ReluRelulstm_cell_18/split:output:2*
T0*'
_output_shapes
:         є
lstm_cell_18/mul_1Mullstm_cell_18/Sigmoid:y:0lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:         {
lstm_cell_18/add_1AddV2lstm_cell_18/mul:z:0lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:         p
lstm_cell_18/Sigmoid_2Sigmoidlstm_cell_18/split:output:3*
T0*'
_output_shapes
:         e
lstm_cell_18/Relu_1Relulstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:         і
lstm_cell_18/mul_2Mullstm_cell_18/Sigmoid_2:y:0!lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_18_matmul_readvariableop_resource-lstm_cell_18_matmul_1_readvariableop_resource,lstm_cell_18_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_621806*
condR
while_cond_621805*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         └
NoOpNoOp$^lstm_cell_18/BiasAdd/ReadVariableOp#^lstm_cell_18/MatMul/ReadVariableOp%^lstm_cell_18/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2J
#lstm_cell_18/BiasAdd/ReadVariableOp#lstm_cell_18/BiasAdd/ReadVariableOp2H
"lstm_cell_18/MatMul/ReadVariableOp"lstm_cell_18/MatMul/ReadVariableOp2L
$lstm_cell_18/MatMul_1/ReadVariableOp$lstm_cell_18/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
К	
ш
D__inference_dense_18_layer_call_and_return_conditional_losses_619212

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ИA
╩

lstm_20_while_body_620663,
(lstm_20_while_lstm_20_while_loop_counter2
.lstm_20_while_lstm_20_while_maximum_iterations
lstm_20_while_placeholder
lstm_20_while_placeholder_1
lstm_20_while_placeholder_2
lstm_20_while_placeholder_3+
'lstm_20_while_lstm_20_strided_slice_1_0g
clstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_20_while_lstm_cell_20_matmul_readvariableop_resource_0: O
=lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource_0: J
<lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource_0: 
lstm_20_while_identity
lstm_20_while_identity_1
lstm_20_while_identity_2
lstm_20_while_identity_3
lstm_20_while_identity_4
lstm_20_while_identity_5)
%lstm_20_while_lstm_20_strided_slice_1e
alstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensorK
9lstm_20_while_lstm_cell_20_matmul_readvariableop_resource: M
;lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource: H
:lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource: ѕб1lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOpб0lstm_20/while/lstm_cell_20/MatMul/ReadVariableOpб2lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOpљ
?lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╬
1lstm_20/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0lstm_20_while_placeholderHlstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0г
0lstm_20/while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp;lstm_20_while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Л
!lstm_20/while/lstm_cell_20/MatMulMatMul8lstm_20/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ░
2lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp=lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0И
#lstm_20/while/lstm_cell_20/MatMul_1MatMullstm_20_while_placeholder_2:lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          х
lstm_20/while/lstm_cell_20/addAddV2+lstm_20/while/lstm_cell_20/MatMul:product:0-lstm_20/while/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:          ф
1lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp<lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0Й
"lstm_20/while/lstm_cell_20/BiasAddBiasAdd"lstm_20/while/lstm_cell_20/add:z:09lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          l
*lstm_20/while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
 lstm_20/while/lstm_cell_20/splitSplit3lstm_20/while/lstm_cell_20/split/split_dim:output:0+lstm_20/while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitі
"lstm_20/while/lstm_cell_20/SigmoidSigmoid)lstm_20/while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:         ї
$lstm_20/while/lstm_cell_20/Sigmoid_1Sigmoid)lstm_20/while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:         ъ
lstm_20/while/lstm_cell_20/mulMul(lstm_20/while/lstm_cell_20/Sigmoid_1:y:0lstm_20_while_placeholder_3*
T0*'
_output_shapes
:         ё
lstm_20/while/lstm_cell_20/ReluRelu)lstm_20/while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:         ░
 lstm_20/while/lstm_cell_20/mul_1Mul&lstm_20/while/lstm_cell_20/Sigmoid:y:0-lstm_20/while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:         Ц
 lstm_20/while/lstm_cell_20/add_1AddV2"lstm_20/while/lstm_cell_20/mul:z:0$lstm_20/while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:         ї
$lstm_20/while/lstm_cell_20/Sigmoid_2Sigmoid)lstm_20/while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:         Ђ
!lstm_20/while/lstm_cell_20/Relu_1Relu$lstm_20/while/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:         ┤
 lstm_20/while/lstm_cell_20/mul_2Mul(lstm_20/while/lstm_cell_20/Sigmoid_2:y:0/lstm_20/while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:         т
2lstm_20/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_20_while_placeholder_1lstm_20_while_placeholder$lstm_20/while/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмU
lstm_20/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_20/while/addAddV2lstm_20_while_placeholderlstm_20/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_20/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_20/while/add_1AddV2(lstm_20_while_lstm_20_while_loop_counterlstm_20/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_20/while/IdentityIdentitylstm_20/while/add_1:z:0^lstm_20/while/NoOp*
T0*
_output_shapes
: і
lstm_20/while/Identity_1Identity.lstm_20_while_lstm_20_while_maximum_iterations^lstm_20/while/NoOp*
T0*
_output_shapes
: q
lstm_20/while/Identity_2Identitylstm_20/while/add:z:0^lstm_20/while/NoOp*
T0*
_output_shapes
: ъ
lstm_20/while/Identity_3IdentityBlstm_20/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_20/while/NoOp*
T0*
_output_shapes
: Љ
lstm_20/while/Identity_4Identity$lstm_20/while/lstm_cell_20/mul_2:z:0^lstm_20/while/NoOp*
T0*'
_output_shapes
:         Љ
lstm_20/while/Identity_5Identity$lstm_20/while/lstm_cell_20/add_1:z:0^lstm_20/while/NoOp*
T0*'
_output_shapes
:         ­
lstm_20/while/NoOpNoOp2^lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp1^lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp3^lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_20_while_identitylstm_20/while/Identity:output:0"=
lstm_20_while_identity_1!lstm_20/while/Identity_1:output:0"=
lstm_20_while_identity_2!lstm_20/while/Identity_2:output:0"=
lstm_20_while_identity_3!lstm_20/while/Identity_3:output:0"=
lstm_20_while_identity_4!lstm_20/while/Identity_4:output:0"=
lstm_20_while_identity_5!lstm_20/while/Identity_5:output:0"P
%lstm_20_while_lstm_20_strided_slice_1'lstm_20_while_lstm_20_strided_slice_1_0"z
:lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource<lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource_0"|
;lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource=lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource_0"x
9lstm_20_while_lstm_cell_20_matmul_readvariableop_resource;lstm_20_while_lstm_cell_20_matmul_readvariableop_resource_0"╚
alstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensorclstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2f
1lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp1lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp2d
0lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp0lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp2h
2lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp2lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
х
├
while_cond_621519
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_621519___redundant_placeholder04
0while_while_cond_621519___redundant_placeholder14
0while_while_cond_621519___redundant_placeholder24
0while_while_cond_621519___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ЎJ
ў
C__inference_lstm_19_layer_call_and_return_conditional_losses_622390

inputs=
+lstm_cell_19_matmul_readvariableop_resource: ?
-lstm_cell_19_matmul_1_readvariableop_resource: :
,lstm_cell_19_biasadd_readvariableop_resource: 
identityѕб#lstm_cell_19/BiasAdd/ReadVariableOpб"lstm_cell_19/MatMul/ReadVariableOpб$lstm_cell_19/MatMul_1/ReadVariableOpбwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskј
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          њ
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes

: *
dtype0Ј
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          І
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:          ї
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ћ
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ^
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :П
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitn
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:         p
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:         w
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         h
lstm_cell_19/ReluRelulstm_cell_19/split:output:2*
T0*'
_output_shapes
:         є
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:         {
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:         p
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:         e
lstm_cell_19/Relu_1Relulstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:         і
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_2:y:0!lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_622306*
condR
while_cond_622305*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         └
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ћ

e
F__inference_dropout_28_layer_call_and_return_conditional_losses_622560

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:         C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:љ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=ф
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:         s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:         m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:         ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
 7
╩
while_body_619648
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_19_matmul_readvariableop_resource_0: G
5while_lstm_cell_19_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_19_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_19_matmul_readvariableop_resource: E
3while_lstm_cell_19_matmul_1_readvariableop_resource: @
2while_lstm_cell_19_biasadd_readvariableop_resource: ѕб)while/lstm_cell_19/BiasAdd/ReadVariableOpб(while/lstm_cell_19/MatMul/ReadVariableOpб*while/lstm_cell_19/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ю
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╣
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          а
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0а
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:          џ
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0д
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:         є
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         t
while/lstm_cell_19/ReluRelu!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:         ў
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0%while/lstm_cell_19/Relu:activations:0*
T0*'
_output_shapes
:         Ї
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:         |
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:         q
while/lstm_cell_19/Relu_1Reluwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:         ю
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_2:y:0'while/lstm_cell_19/Relu_1:activations:0*
T0*'
_output_shapes
:         ┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         y
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         л

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
З	
e
F__inference_dropout_30_layer_call_and_return_conditional_losses_623250

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
э
▓
(__inference_lstm_20_layer_call_fn_622604

inputs
unknown: 
	unknown_0: 
	unknown_1: 
identityѕбStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_619544o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ж
d
F__inference_dropout_27_layer_call_and_return_conditional_losses_621905

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:         _

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
З	
e
F__inference_dropout_32_layer_call_and_return_conditional_losses_619286

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Р@
В
H__inference_sequential_6_layer_call_and_return_conditional_losses_620199
lstm_18_input 
lstm_18_620151:  
lstm_18_620153: 
lstm_18_620155:  
lstm_19_620159:  
lstm_19_620161: 
lstm_19_620163:  
lstm_20_620167:  
lstm_20_620169: 
lstm_20_620171: !
dense_15_620175:
dense_15_620177:!
dense_16_620181:
dense_16_620183:!
dense_17_620187:
dense_17_620189:!
dense_18_620193:
dense_18_620195:
identityѕб dense_15/StatefulPartitionedCallб dense_16/StatefulPartitionedCallб dense_17/StatefulPartitionedCallб dense_18/StatefulPartitionedCallб"dropout_27/StatefulPartitionedCallб"dropout_28/StatefulPartitionedCallб"dropout_29/StatefulPartitionedCallб"dropout_30/StatefulPartitionedCallб"dropout_31/StatefulPartitionedCallб"dropout_32/StatefulPartitionedCallбlstm_18/StatefulPartitionedCallбlstm_19/StatefulPartitionedCallбlstm_20/StatefulPartitionedCallї
lstm_18/StatefulPartitionedCallStatefulPartitionedCalllstm_18_inputlstm_18_620151lstm_18_620153lstm_18_620155*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_18_layer_call_and_return_conditional_losses_619920ш
"dropout_27/StatefulPartitionedCallStatefulPartitionedCall(lstm_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_619761ф
lstm_19/StatefulPartitionedCallStatefulPartitionedCall+dropout_27/StatefulPartitionedCall:output:0lstm_19_620159lstm_19_620161lstm_19_620163*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_19_layer_call_and_return_conditional_losses_619732џ
"dropout_28/StatefulPartitionedCallStatefulPartitionedCall(lstm_19/StatefulPartitionedCall:output:0#^dropout_27/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_619573д
lstm_20/StatefulPartitionedCallStatefulPartitionedCall+dropout_28/StatefulPartitionedCall:output:0lstm_20_620167lstm_20_620169lstm_20_620171*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_619544ќ
"dropout_29/StatefulPartitionedCallStatefulPartitionedCall(lstm_20/StatefulPartitionedCall:output:0#^dropout_28/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_619385ў
 dense_15/StatefulPartitionedCallStatefulPartitionedCall+dropout_29/StatefulPartitionedCall:output:0dense_15_620175dense_15_620177*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_619141Ќ
"dropout_30/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0#^dropout_29/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_619352ў
 dense_16/StatefulPartitionedCallStatefulPartitionedCall+dropout_30/StatefulPartitionedCall:output:0dense_16_620181dense_16_620183*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_619165Ќ
"dropout_31/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0#^dropout_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_31_layer_call_and_return_conditional_losses_619319ў
 dense_17/StatefulPartitionedCallStatefulPartitionedCall+dropout_31/StatefulPartitionedCall:output:0dense_17_620187dense_17_620189*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_619189Ќ
"dropout_32/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0#^dropout_31/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_32_layer_call_and_return_conditional_losses_619286ў
 dense_18/StatefulPartitionedCallStatefulPartitionedCall+dropout_32/StatefulPartitionedCall:output:0dense_18_620193dense_18_620195*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_619212x
IdentityIdentity)dense_18/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ќ
NoOpNoOp!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall#^dropout_27/StatefulPartitionedCall#^dropout_28/StatefulPartitionedCall#^dropout_29/StatefulPartitionedCall#^dropout_30/StatefulPartitionedCall#^dropout_31/StatefulPartitionedCall#^dropout_32/StatefulPartitionedCall ^lstm_18/StatefulPartitionedCall ^lstm_19/StatefulPartitionedCall ^lstm_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2H
"dropout_27/StatefulPartitionedCall"dropout_27/StatefulPartitionedCall2H
"dropout_28/StatefulPartitionedCall"dropout_28/StatefulPartitionedCall2H
"dropout_29/StatefulPartitionedCall"dropout_29/StatefulPartitionedCall2H
"dropout_30/StatefulPartitionedCall"dropout_30/StatefulPartitionedCall2H
"dropout_31/StatefulPartitionedCall"dropout_31/StatefulPartitionedCall2H
"dropout_32/StatefulPartitionedCall"dropout_32/StatefulPartitionedCall2B
lstm_18/StatefulPartitionedCalllstm_18/StatefulPartitionedCall2B
lstm_19/StatefulPartitionedCalllstm_19/StatefulPartitionedCall2B
lstm_20/StatefulPartitionedCalllstm_20/StatefulPartitionedCall:Z V
+
_output_shapes
:         
'
_user_specified_namelstm_18_input
 7
╩
while_body_623092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_20_matmul_readvariableop_resource_0: G
5while_lstm_cell_20_matmul_1_readvariableop_resource_0: B
4while_lstm_cell_20_biasadd_readvariableop_resource_0: 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_20_matmul_readvariableop_resource: E
3while_lstm_cell_20_matmul_1_readvariableop_resource: @
2while_lstm_cell_20_biasadd_readvariableop_resource: ѕб)while/lstm_cell_20/BiasAdd/ReadVariableOpб(while/lstm_cell_20/MatMul/ReadVariableOpб*while/lstm_cell_20/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ю
(while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0╣
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          а
*while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0а
while/lstm_cell_20/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_20/addAddV2#while/lstm_cell_20/MatMul:product:0%while/lstm_cell_20/MatMul_1:product:0*
T0*'
_output_shapes
:          џ
)while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0д
while/lstm_cell_20/BiasAddBiasAddwhile/lstm_cell_20/add:z:01while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          d
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :№
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0#while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitz
while/lstm_cell_20/SigmoidSigmoid!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:         |
while/lstm_cell_20/Sigmoid_1Sigmoid!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:         є
while/lstm_cell_20/mulMul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         t
while/lstm_cell_20/ReluRelu!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:         ў
while/lstm_cell_20/mul_1Mulwhile/lstm_cell_20/Sigmoid:y:0%while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:         Ї
while/lstm_cell_20/add_1AddV2while/lstm_cell_20/mul:z:0while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:         |
while/lstm_cell_20/Sigmoid_2Sigmoid!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:         q
while/lstm_cell_20/Relu_1Reluwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:         ю
while/lstm_cell_20/mul_2Mul while/lstm_cell_20/Sigmoid_2:y:0'while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:         ┼
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_20/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         y
while/Identity_5Identitywhile/lstm_cell_20/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         л

while/NoOpNoOp*^while/lstm_cell_20/BiasAdd/ReadVariableOp)^while/lstm_cell_20/MatMul/ReadVariableOp+^while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_20_biasadd_readvariableop_resource4while_lstm_cell_20_biasadd_readvariableop_resource_0"l
3while_lstm_cell_20_matmul_1_readvariableop_resource5while_lstm_cell_20_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_20_matmul_readvariableop_resource3while_lstm_cell_20_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_20/BiasAdd/ReadVariableOp)while/lstm_cell_20/BiasAdd/ReadVariableOp2T
(while/lstm_cell_20/MatMul/ReadVariableOp(while/lstm_cell_20/MatMul/ReadVariableOp2X
*while/lstm_cell_20/MatMul_1/ReadVariableOp*while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
З	
e
F__inference_dropout_29_layer_call_and_return_conditional_losses_623203

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *С8ј?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┼
ќ
)__inference_dense_15_layer_call_fn_623212

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_619141o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ЯP
в
&sequential_6_lstm_18_while_body_617207F
Bsequential_6_lstm_18_while_sequential_6_lstm_18_while_loop_counterL
Hsequential_6_lstm_18_while_sequential_6_lstm_18_while_maximum_iterations*
&sequential_6_lstm_18_while_placeholder,
(sequential_6_lstm_18_while_placeholder_1,
(sequential_6_lstm_18_while_placeholder_2,
(sequential_6_lstm_18_while_placeholder_3E
Asequential_6_lstm_18_while_sequential_6_lstm_18_strided_slice_1_0Ђ
}sequential_6_lstm_18_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_18_tensorarrayunstack_tensorlistfromtensor_0Z
Hsequential_6_lstm_18_while_lstm_cell_18_matmul_readvariableop_resource_0: \
Jsequential_6_lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource_0: W
Isequential_6_lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource_0: '
#sequential_6_lstm_18_while_identity)
%sequential_6_lstm_18_while_identity_1)
%sequential_6_lstm_18_while_identity_2)
%sequential_6_lstm_18_while_identity_3)
%sequential_6_lstm_18_while_identity_4)
%sequential_6_lstm_18_while_identity_5C
?sequential_6_lstm_18_while_sequential_6_lstm_18_strided_slice_1
{sequential_6_lstm_18_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_18_tensorarrayunstack_tensorlistfromtensorX
Fsequential_6_lstm_18_while_lstm_cell_18_matmul_readvariableop_resource: Z
Hsequential_6_lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource: U
Gsequential_6_lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource: ѕб>sequential_6/lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOpб=sequential_6/lstm_18/while/lstm_cell_18/MatMul/ReadVariableOpб?sequential_6/lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOpЮ
Lsequential_6/lstm_18/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ј
>sequential_6/lstm_18/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_6_lstm_18_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_18_tensorarrayunstack_tensorlistfromtensor_0&sequential_6_lstm_18_while_placeholderUsequential_6/lstm_18/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0к
=sequential_6/lstm_18/while/lstm_cell_18/MatMul/ReadVariableOpReadVariableOpHsequential_6_lstm_18_while_lstm_cell_18_matmul_readvariableop_resource_0*
_output_shapes

: *
dtype0Э
.sequential_6/lstm_18/while/lstm_cell_18/MatMulMatMulEsequential_6/lstm_18/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_6/lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ╩
?sequential_6/lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOpReadVariableOpJsequential_6_lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource_0*
_output_shapes

: *
dtype0▀
0sequential_6/lstm_18/while/lstm_cell_18/MatMul_1MatMul(sequential_6_lstm_18_while_placeholder_2Gsequential_6/lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:          ▄
+sequential_6/lstm_18/while/lstm_cell_18/addAddV28sequential_6/lstm_18/while/lstm_cell_18/MatMul:product:0:sequential_6/lstm_18/while/lstm_cell_18/MatMul_1:product:0*
T0*'
_output_shapes
:          ─
>sequential_6/lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOpReadVariableOpIsequential_6_lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype0т
/sequential_6/lstm_18/while/lstm_cell_18/BiasAddBiasAdd/sequential_6/lstm_18/while/lstm_cell_18/add:z:0Fsequential_6/lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:          y
7sequential_6/lstm_18/while/lstm_cell_18/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :«
-sequential_6/lstm_18/while/lstm_cell_18/splitSplit@sequential_6/lstm_18/while/lstm_cell_18/split/split_dim:output:08sequential_6/lstm_18/while/lstm_cell_18/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitц
/sequential_6/lstm_18/while/lstm_cell_18/SigmoidSigmoid6sequential_6/lstm_18/while/lstm_cell_18/split:output:0*
T0*'
_output_shapes
:         д
1sequential_6/lstm_18/while/lstm_cell_18/Sigmoid_1Sigmoid6sequential_6/lstm_18/while/lstm_cell_18/split:output:1*
T0*'
_output_shapes
:         ┼
+sequential_6/lstm_18/while/lstm_cell_18/mulMul5sequential_6/lstm_18/while/lstm_cell_18/Sigmoid_1:y:0(sequential_6_lstm_18_while_placeholder_3*
T0*'
_output_shapes
:         ъ
,sequential_6/lstm_18/while/lstm_cell_18/ReluRelu6sequential_6/lstm_18/while/lstm_cell_18/split:output:2*
T0*'
_output_shapes
:         О
-sequential_6/lstm_18/while/lstm_cell_18/mul_1Mul3sequential_6/lstm_18/while/lstm_cell_18/Sigmoid:y:0:sequential_6/lstm_18/while/lstm_cell_18/Relu:activations:0*
T0*'
_output_shapes
:         ╠
-sequential_6/lstm_18/while/lstm_cell_18/add_1AddV2/sequential_6/lstm_18/while/lstm_cell_18/mul:z:01sequential_6/lstm_18/while/lstm_cell_18/mul_1:z:0*
T0*'
_output_shapes
:         д
1sequential_6/lstm_18/while/lstm_cell_18/Sigmoid_2Sigmoid6sequential_6/lstm_18/while/lstm_cell_18/split:output:3*
T0*'
_output_shapes
:         Џ
.sequential_6/lstm_18/while/lstm_cell_18/Relu_1Relu1sequential_6/lstm_18/while/lstm_cell_18/add_1:z:0*
T0*'
_output_shapes
:         █
-sequential_6/lstm_18/while/lstm_cell_18/mul_2Mul5sequential_6/lstm_18/while/lstm_cell_18/Sigmoid_2:y:0<sequential_6/lstm_18/while/lstm_cell_18/Relu_1:activations:0*
T0*'
_output_shapes
:         Ў
?sequential_6/lstm_18/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_6_lstm_18_while_placeholder_1&sequential_6_lstm_18_while_placeholder1sequential_6/lstm_18/while/lstm_cell_18/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмb
 sequential_6/lstm_18/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Џ
sequential_6/lstm_18/while/addAddV2&sequential_6_lstm_18_while_placeholder)sequential_6/lstm_18/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_6/lstm_18/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :╗
 sequential_6/lstm_18/while/add_1AddV2Bsequential_6_lstm_18_while_sequential_6_lstm_18_while_loop_counter+sequential_6/lstm_18/while/add_1/y:output:0*
T0*
_output_shapes
: ў
#sequential_6/lstm_18/while/IdentityIdentity$sequential_6/lstm_18/while/add_1:z:0 ^sequential_6/lstm_18/while/NoOp*
T0*
_output_shapes
: Й
%sequential_6/lstm_18/while/Identity_1IdentityHsequential_6_lstm_18_while_sequential_6_lstm_18_while_maximum_iterations ^sequential_6/lstm_18/while/NoOp*
T0*
_output_shapes
: ў
%sequential_6/lstm_18/while/Identity_2Identity"sequential_6/lstm_18/while/add:z:0 ^sequential_6/lstm_18/while/NoOp*
T0*
_output_shapes
: ┼
%sequential_6/lstm_18/while/Identity_3IdentityOsequential_6/lstm_18/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_6/lstm_18/while/NoOp*
T0*
_output_shapes
: И
%sequential_6/lstm_18/while/Identity_4Identity1sequential_6/lstm_18/while/lstm_cell_18/mul_2:z:0 ^sequential_6/lstm_18/while/NoOp*
T0*'
_output_shapes
:         И
%sequential_6/lstm_18/while/Identity_5Identity1sequential_6/lstm_18/while/lstm_cell_18/add_1:z:0 ^sequential_6/lstm_18/while/NoOp*
T0*'
_output_shapes
:         ц
sequential_6/lstm_18/while/NoOpNoOp?^sequential_6/lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp>^sequential_6/lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp@^sequential_6/lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_6_lstm_18_while_identity,sequential_6/lstm_18/while/Identity:output:0"W
%sequential_6_lstm_18_while_identity_1.sequential_6/lstm_18/while/Identity_1:output:0"W
%sequential_6_lstm_18_while_identity_2.sequential_6/lstm_18/while/Identity_2:output:0"W
%sequential_6_lstm_18_while_identity_3.sequential_6/lstm_18/while/Identity_3:output:0"W
%sequential_6_lstm_18_while_identity_4.sequential_6/lstm_18/while/Identity_4:output:0"W
%sequential_6_lstm_18_while_identity_5.sequential_6/lstm_18/while/Identity_5:output:0"ћ
Gsequential_6_lstm_18_while_lstm_cell_18_biasadd_readvariableop_resourceIsequential_6_lstm_18_while_lstm_cell_18_biasadd_readvariableop_resource_0"ќ
Hsequential_6_lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resourceJsequential_6_lstm_18_while_lstm_cell_18_matmul_1_readvariableop_resource_0"њ
Fsequential_6_lstm_18_while_lstm_cell_18_matmul_readvariableop_resourceHsequential_6_lstm_18_while_lstm_cell_18_matmul_readvariableop_resource_0"ё
?sequential_6_lstm_18_while_sequential_6_lstm_18_strided_slice_1Asequential_6_lstm_18_while_sequential_6_lstm_18_strided_slice_1_0"Ч
{sequential_6_lstm_18_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_18_tensorarrayunstack_tensorlistfromtensor}sequential_6_lstm_18_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_18_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2ђ
>sequential_6/lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp>sequential_6/lstm_18/while/lstm_cell_18/BiasAdd/ReadVariableOp2~
=sequential_6/lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp=sequential_6/lstm_18/while/lstm_cell_18/MatMul/ReadVariableOp2ѓ
?sequential_6/lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp?sequential_6/lstm_18/while/lstm_cell_18/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: "ѓL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╗
serving_defaultД
K
lstm_18_input:
serving_default_lstm_18_input:0         <
dense_180
StatefulPartitionedCall:0         tensorflow/serving/predict:чО
╦
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer-11
layer_with_weights-6
layer-12
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
Э__call__
+щ&call_and_return_all_conditional_losses
Щ_default_save_signature"
_tf_keras_sequential
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
ч__call__
+Ч&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Д
	variables
trainable_variables
regularization_losses
	keras_api
§__call__
+■&call_and_return_all_conditional_losses"
_tf_keras_layer
┼
cell

state_spec
 	variables
!trainable_variables
"regularization_losses
#	keras_api
 __call__
+ђ&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Д
$	variables
%trainable_variables
&regularization_losses
'	keras_api
Ђ__call__
+ѓ&call_and_return_all_conditional_losses"
_tf_keras_layer
┼
(cell
)
state_spec
*	variables
+trainable_variables
,regularization_losses
-	keras_api
Ѓ__call__
+ё&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Д
.	variables
/trainable_variables
0regularization_losses
1	keras_api
Ё__call__
+є&call_and_return_all_conditional_losses"
_tf_keras_layer
й

2kernel
3bias
4	variables
5trainable_variables
6regularization_losses
7	keras_api
Є__call__
+ѕ&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
8	variables
9trainable_variables
:regularization_losses
;	keras_api
Ѕ__call__
+і&call_and_return_all_conditional_losses"
_tf_keras_layer
й

<kernel
=bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
І__call__
+ї&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
Ї__call__
+ј&call_and_return_all_conditional_losses"
_tf_keras_layer
й

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
Ј__call__
+љ&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
Љ__call__
+њ&call_and_return_all_conditional_losses"
_tf_keras_layer
й

Pkernel
Qbias
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
Њ__call__
+ћ&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
Viter

Wbeta_1

Xbeta_2
	Ydecay
Zlearning_rate2mо3mО<mп=m┘Fm┌Gm█Pm▄QmП[mя\m▀]mЯ^mр_mР`mсamСbmтcmТ2vу3vУ<vж=vЖFvвGvВPvьQvЬ[v№\v­]vы^vЫ_vз`vЗavшbvШcvэ"
	optimizer
ъ
[0
\1
]2
^3
_4
`5
a6
b7
c8
29
310
<11
=12
F13
G14
P15
Q16"
trackable_list_wrapper
ъ
[0
\1
]2
^3
_4
`5
a6
b7
c8
29
310
<11
=12
F13
G14
P15
Q16"
trackable_list_wrapper
 "
trackable_list_wrapper
╬
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
Э__call__
Щ_default_save_signature
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses"
_generic_user_object
-
Ћserving_default"
signature_map
с
i
state_size

[kernel
\recurrent_kernel
]bias
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
ќ__call__
+Ќ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
[0
\1
]2"
trackable_list_wrapper
5
[0
\1
]2"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

nstates
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
	variables
trainable_variables
regularization_losses
ч__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
	variables
trainable_variables
regularization_losses
§__call__
+■&call_and_return_all_conditional_losses
'■"call_and_return_conditional_losses"
_generic_user_object
с
y
state_size

^kernel
_recurrent_kernel
`bias
z	variables
{trainable_variables
|regularization_losses
}	keras_api
ў__call__
+Ў&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
^0
_1
`2"
trackable_list_wrapper
5
^0
_1
`2"
trackable_list_wrapper
 "
trackable_list_wrapper
└

~states
non_trainable_variables
ђlayers
Ђmetrics
 ѓlayer_regularization_losses
Ѓlayer_metrics
 	variables
!trainable_variables
"regularization_losses
 __call__
+ђ&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
ёnon_trainable_variables
Ёlayers
єmetrics
 Єlayer_regularization_losses
ѕlayer_metrics
$	variables
%trainable_variables
&regularization_losses
Ђ__call__
+ѓ&call_and_return_all_conditional_losses
'ѓ"call_and_return_conditional_losses"
_generic_user_object
У
Ѕ
state_size

akernel
brecurrent_kernel
cbias
і	variables
Іtrainable_variables
їregularization_losses
Ї	keras_api
џ__call__
+Џ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
a0
b1
c2"
trackable_list_wrapper
5
a0
b1
c2"
trackable_list_wrapper
 "
trackable_list_wrapper
┬
јstates
Јnon_trainable_variables
љlayers
Љmetrics
 њlayer_regularization_losses
Њlayer_metrics
*	variables
+trainable_variables
,regularization_losses
Ѓ__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
ћnon_trainable_variables
Ћlayers
ќmetrics
 Ќlayer_regularization_losses
ўlayer_metrics
.	variables
/trainable_variables
0regularization_losses
Ё__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
!:2dense_15/kernel
:2dense_15/bias
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
х
Ўnon_trainable_variables
џlayers
Џmetrics
 юlayer_regularization_losses
Юlayer_metrics
4	variables
5trainable_variables
6regularization_losses
Є__call__
+ѕ&call_and_return_all_conditional_losses
'ѕ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
ъnon_trainable_variables
Ъlayers
аmetrics
 Аlayer_regularization_losses
бlayer_metrics
8	variables
9trainable_variables
:regularization_losses
Ѕ__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
!:2dense_16/kernel
:2dense_16/bias
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
х
Бnon_trainable_variables
цlayers
Цmetrics
 дlayer_regularization_losses
Дlayer_metrics
>	variables
?trainable_variables
@regularization_losses
І__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
еnon_trainable_variables
Еlayers
фmetrics
 Фlayer_regularization_losses
гlayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
Ї__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
!:2dense_17/kernel
:2dense_17/bias
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
х
Гnon_trainable_variables
«layers
»metrics
 ░layer_regularization_losses
▒layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
Ј__call__
+љ&call_and_return_all_conditional_losses
'љ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
▓non_trainable_variables
│layers
┤metrics
 хlayer_regularization_losses
Хlayer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
Љ__call__
+њ&call_and_return_all_conditional_losses
'њ"call_and_return_conditional_losses"
_generic_user_object
!:2dense_18/kernel
:2dense_18/bias
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
х
иnon_trainable_variables
Иlayers
╣metrics
 ║layer_regularization_losses
╗layer_metrics
R	variables
Strainable_variables
Tregularization_losses
Њ__call__
+ћ&call_and_return_all_conditional_losses
'ћ"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+ 2lstm_18/lstm_cell_18/kernel
7:5 2%lstm_18/lstm_cell_18/recurrent_kernel
':% 2lstm_18/lstm_cell_18/bias
-:+ 2lstm_19/lstm_cell_19/kernel
7:5 2%lstm_19/lstm_cell_19/recurrent_kernel
':% 2lstm_19/lstm_cell_19/bias
-:+ 2lstm_20/lstm_cell_20/kernel
7:5 2%lstm_20/lstm_cell_20/recurrent_kernel
':% 2lstm_20/lstm_cell_20/bias
 "
trackable_list_wrapper
~
0
1
2
3
4
5
6
7
	8

9
10
11
12"
trackable_list_wrapper
0
╝0
й1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
[0
\1
]2"
trackable_list_wrapper
5
[0
\1
]2"
trackable_list_wrapper
 "
trackable_list_wrapper
х
Йnon_trainable_variables
┐layers
└metrics
 ┴layer_regularization_losses
┬layer_metrics
j	variables
ktrainable_variables
lregularization_losses
ќ__call__
+Ќ&call_and_return_all_conditional_losses
'Ќ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
^0
_1
`2"
trackable_list_wrapper
5
^0
_1
`2"
trackable_list_wrapper
 "
trackable_list_wrapper
х
├non_trainable_variables
─layers
┼metrics
 кlayer_regularization_losses
Кlayer_metrics
z	variables
{trainable_variables
|regularization_losses
ў__call__
+Ў&call_and_return_all_conditional_losses
'Ў"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
a0
b1
c2"
trackable_list_wrapper
5
a0
b1
c2"
trackable_list_wrapper
 "
trackable_list_wrapper
И
╚non_trainable_variables
╔layers
╩metrics
 ╦layer_regularization_losses
╠layer_metrics
і	variables
Іtrainable_variables
їregularization_losses
џ__call__
+Џ&call_and_return_all_conditional_losses
'Џ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
(0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

═total

╬count
¤	variables
л	keras_api"
_tf_keras_metric
c

Лtotal

мcount
М
_fn_kwargs
н	variables
Н	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
═0
╬1"
trackable_list_wrapper
.
¤	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Л0
м1"
trackable_list_wrapper
.
н	variables"
_generic_user_object
&:$2Adam/dense_15/kernel/m
 :2Adam/dense_15/bias/m
&:$2Adam/dense_16/kernel/m
 :2Adam/dense_16/bias/m
&:$2Adam/dense_17/kernel/m
 :2Adam/dense_17/bias/m
&:$2Adam/dense_18/kernel/m
 :2Adam/dense_18/bias/m
2:0 2"Adam/lstm_18/lstm_cell_18/kernel/m
<:: 2,Adam/lstm_18/lstm_cell_18/recurrent_kernel/m
,:* 2 Adam/lstm_18/lstm_cell_18/bias/m
2:0 2"Adam/lstm_19/lstm_cell_19/kernel/m
<:: 2,Adam/lstm_19/lstm_cell_19/recurrent_kernel/m
,:* 2 Adam/lstm_19/lstm_cell_19/bias/m
2:0 2"Adam/lstm_20/lstm_cell_20/kernel/m
<:: 2,Adam/lstm_20/lstm_cell_20/recurrent_kernel/m
,:* 2 Adam/lstm_20/lstm_cell_20/bias/m
&:$2Adam/dense_15/kernel/v
 :2Adam/dense_15/bias/v
&:$2Adam/dense_16/kernel/v
 :2Adam/dense_16/bias/v
&:$2Adam/dense_17/kernel/v
 :2Adam/dense_17/bias/v
&:$2Adam/dense_18/kernel/v
 :2Adam/dense_18/bias/v
2:0 2"Adam/lstm_18/lstm_cell_18/kernel/v
<:: 2,Adam/lstm_18/lstm_cell_18/recurrent_kernel/v
,:* 2 Adam/lstm_18/lstm_cell_18/bias/v
2:0 2"Adam/lstm_19/lstm_cell_19/kernel/v
<:: 2,Adam/lstm_19/lstm_cell_19/recurrent_kernel/v
,:* 2 Adam/lstm_19/lstm_cell_19/bias/v
2:0 2"Adam/lstm_20/lstm_cell_20/kernel/v
<:: 2,Adam/lstm_20/lstm_cell_20/recurrent_kernel/v
,:* 2 Adam/lstm_20/lstm_cell_20/bias/v
ѓ2 
-__inference_sequential_6_layer_call_fn_619256
-__inference_sequential_6_layer_call_fn_620285
-__inference_sequential_6_layer_call_fn_620324
-__inference_sequential_6_layer_call_fn_620097└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ь2в
H__inference_sequential_6_layer_call_and_return_conditional_losses_620778
H__inference_sequential_6_layer_call_and_return_conditional_losses_621274
H__inference_sequential_6_layer_call_and_return_conditional_losses_620148
H__inference_sequential_6_layer_call_and_return_conditional_losses_620199└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
мB¤
!__inference__wrapped_model_617602lstm_18_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ѓ2ђ
(__inference_lstm_18_layer_call_fn_621285
(__inference_lstm_18_layer_call_fn_621296
(__inference_lstm_18_layer_call_fn_621307
(__inference_lstm_18_layer_call_fn_621318Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
№2В
C__inference_lstm_18_layer_call_and_return_conditional_losses_621461
C__inference_lstm_18_layer_call_and_return_conditional_losses_621604
C__inference_lstm_18_layer_call_and_return_conditional_losses_621747
C__inference_lstm_18_layer_call_and_return_conditional_losses_621890Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ћ2Љ
+__inference_dropout_27_layer_call_fn_621895
+__inference_dropout_27_layer_call_fn_621900┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╩2К
F__inference_dropout_27_layer_call_and_return_conditional_losses_621905
F__inference_dropout_27_layer_call_and_return_conditional_losses_621917┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ѓ2ђ
(__inference_lstm_19_layer_call_fn_621928
(__inference_lstm_19_layer_call_fn_621939
(__inference_lstm_19_layer_call_fn_621950
(__inference_lstm_19_layer_call_fn_621961Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
№2В
C__inference_lstm_19_layer_call_and_return_conditional_losses_622104
C__inference_lstm_19_layer_call_and_return_conditional_losses_622247
C__inference_lstm_19_layer_call_and_return_conditional_losses_622390
C__inference_lstm_19_layer_call_and_return_conditional_losses_622533Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ћ2Љ
+__inference_dropout_28_layer_call_fn_622538
+__inference_dropout_28_layer_call_fn_622543┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╩2К
F__inference_dropout_28_layer_call_and_return_conditional_losses_622548
F__inference_dropout_28_layer_call_and_return_conditional_losses_622560┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ѓ2ђ
(__inference_lstm_20_layer_call_fn_622571
(__inference_lstm_20_layer_call_fn_622582
(__inference_lstm_20_layer_call_fn_622593
(__inference_lstm_20_layer_call_fn_622604Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
№2В
C__inference_lstm_20_layer_call_and_return_conditional_losses_622747
C__inference_lstm_20_layer_call_and_return_conditional_losses_622890
C__inference_lstm_20_layer_call_and_return_conditional_losses_623033
C__inference_lstm_20_layer_call_and_return_conditional_losses_623176Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ћ2Љ
+__inference_dropout_29_layer_call_fn_623181
+__inference_dropout_29_layer_call_fn_623186┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╩2К
F__inference_dropout_29_layer_call_and_return_conditional_losses_623191
F__inference_dropout_29_layer_call_and_return_conditional_losses_623203┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
М2л
)__inference_dense_15_layer_call_fn_623212б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_dense_15_layer_call_and_return_conditional_losses_623223б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ћ2Љ
+__inference_dropout_30_layer_call_fn_623228
+__inference_dropout_30_layer_call_fn_623233┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╩2К
F__inference_dropout_30_layer_call_and_return_conditional_losses_623238
F__inference_dropout_30_layer_call_and_return_conditional_losses_623250┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
М2л
)__inference_dense_16_layer_call_fn_623259б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_dense_16_layer_call_and_return_conditional_losses_623270б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ћ2Љ
+__inference_dropout_31_layer_call_fn_623275
+__inference_dropout_31_layer_call_fn_623280┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╩2К
F__inference_dropout_31_layer_call_and_return_conditional_losses_623285
F__inference_dropout_31_layer_call_and_return_conditional_losses_623297┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
М2л
)__inference_dense_17_layer_call_fn_623306б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_dense_17_layer_call_and_return_conditional_losses_623317б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ћ2Љ
+__inference_dropout_32_layer_call_fn_623322
+__inference_dropout_32_layer_call_fn_623327┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╩2К
F__inference_dropout_32_layer_call_and_return_conditional_losses_623332
F__inference_dropout_32_layer_call_and_return_conditional_losses_623344┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
М2л
)__inference_dense_18_layer_call_fn_623353б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_dense_18_layer_call_and_return_conditional_losses_623363б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЛB╬
$__inference_signature_wrapper_620246lstm_18_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
б2Ъ
-__inference_lstm_cell_18_layer_call_fn_623380
-__inference_lstm_cell_18_layer_call_fn_623397Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
п2Н
H__inference_lstm_cell_18_layer_call_and_return_conditional_losses_623429
H__inference_lstm_cell_18_layer_call_and_return_conditional_losses_623461Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
б2Ъ
-__inference_lstm_cell_19_layer_call_fn_623478
-__inference_lstm_cell_19_layer_call_fn_623495Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
п2Н
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_623527
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_623559Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
б2Ъ
-__inference_lstm_cell_20_layer_call_fn_623576
-__inference_lstm_cell_20_layer_call_fn_623593Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
п2Н
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_623625
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_623657Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 ф
!__inference__wrapped_model_617602ё[\]^_`abc23<=FGPQ:б7
0б-
+і(
lstm_18_input         
ф "3ф0
.
dense_18"і
dense_18         ц
D__inference_dense_15_layer_call_and_return_conditional_losses_623223\23/б,
%б"
 і
inputs         
ф "%б"
і
0         
џ |
)__inference_dense_15_layer_call_fn_623212O23/б,
%б"
 і
inputs         
ф "і         ц
D__inference_dense_16_layer_call_and_return_conditional_losses_623270\<=/б,
%б"
 і
inputs         
ф "%б"
і
0         
џ |
)__inference_dense_16_layer_call_fn_623259O<=/б,
%б"
 і
inputs         
ф "і         ц
D__inference_dense_17_layer_call_and_return_conditional_losses_623317\FG/б,
%б"
 і
inputs         
ф "%б"
і
0         
џ |
)__inference_dense_17_layer_call_fn_623306OFG/б,
%б"
 і
inputs         
ф "і         ц
D__inference_dense_18_layer_call_and_return_conditional_losses_623363\PQ/б,
%б"
 і
inputs         
ф "%б"
і
0         
џ |
)__inference_dense_18_layer_call_fn_623353OPQ/б,
%б"
 і
inputs         
ф "і         «
F__inference_dropout_27_layer_call_and_return_conditional_losses_621905d7б4
-б*
$і!
inputs         
p 
ф ")б&
і
0         
џ «
F__inference_dropout_27_layer_call_and_return_conditional_losses_621917d7б4
-б*
$і!
inputs         
p
ф ")б&
і
0         
џ є
+__inference_dropout_27_layer_call_fn_621895W7б4
-б*
$і!
inputs         
p 
ф "і         є
+__inference_dropout_27_layer_call_fn_621900W7б4
-б*
$і!
inputs         
p
ф "і         «
F__inference_dropout_28_layer_call_and_return_conditional_losses_622548d7б4
-б*
$і!
inputs         
p 
ф ")б&
і
0         
џ «
F__inference_dropout_28_layer_call_and_return_conditional_losses_622560d7б4
-б*
$і!
inputs         
p
ф ")б&
і
0         
џ є
+__inference_dropout_28_layer_call_fn_622538W7б4
-б*
$і!
inputs         
p 
ф "і         є
+__inference_dropout_28_layer_call_fn_622543W7б4
-б*
$і!
inputs         
p
ф "і         д
F__inference_dropout_29_layer_call_and_return_conditional_losses_623191\3б0
)б&
 і
inputs         
p 
ф "%б"
і
0         
џ д
F__inference_dropout_29_layer_call_and_return_conditional_losses_623203\3б0
)б&
 і
inputs         
p
ф "%б"
і
0         
џ ~
+__inference_dropout_29_layer_call_fn_623181O3б0
)б&
 і
inputs         
p 
ф "і         ~
+__inference_dropout_29_layer_call_fn_623186O3б0
)б&
 і
inputs         
p
ф "і         д
F__inference_dropout_30_layer_call_and_return_conditional_losses_623238\3б0
)б&
 і
inputs         
p 
ф "%б"
і
0         
џ д
F__inference_dropout_30_layer_call_and_return_conditional_losses_623250\3б0
)б&
 і
inputs         
p
ф "%б"
і
0         
џ ~
+__inference_dropout_30_layer_call_fn_623228O3б0
)б&
 і
inputs         
p 
ф "і         ~
+__inference_dropout_30_layer_call_fn_623233O3б0
)б&
 і
inputs         
p
ф "і         д
F__inference_dropout_31_layer_call_and_return_conditional_losses_623285\3б0
)б&
 і
inputs         
p 
ф "%б"
і
0         
џ д
F__inference_dropout_31_layer_call_and_return_conditional_losses_623297\3б0
)б&
 і
inputs         
p
ф "%б"
і
0         
џ ~
+__inference_dropout_31_layer_call_fn_623275O3б0
)б&
 і
inputs         
p 
ф "і         ~
+__inference_dropout_31_layer_call_fn_623280O3б0
)б&
 і
inputs         
p
ф "і         д
F__inference_dropout_32_layer_call_and_return_conditional_losses_623332\3б0
)б&
 і
inputs         
p 
ф "%б"
і
0         
џ д
F__inference_dropout_32_layer_call_and_return_conditional_losses_623344\3б0
)б&
 і
inputs         
p
ф "%б"
і
0         
џ ~
+__inference_dropout_32_layer_call_fn_623322O3б0
)б&
 і
inputs         
p 
ф "і         ~
+__inference_dropout_32_layer_call_fn_623327O3б0
)б&
 і
inputs         
p
ф "і         м
C__inference_lstm_18_layer_call_and_return_conditional_losses_621461і[\]OбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "2б/
(і%
0                  
џ м
C__inference_lstm_18_layer_call_and_return_conditional_losses_621604і[\]OбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "2б/
(і%
0                  
џ И
C__inference_lstm_18_layer_call_and_return_conditional_losses_621747q[\]?б<
5б2
$і!
inputs         

 
p 

 
ф ")б&
і
0         
џ И
C__inference_lstm_18_layer_call_and_return_conditional_losses_621890q[\]?б<
5б2
$і!
inputs         

 
p

 
ф ")б&
і
0         
џ Е
(__inference_lstm_18_layer_call_fn_621285}[\]OбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "%і"                  Е
(__inference_lstm_18_layer_call_fn_621296}[\]OбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "%і"                  љ
(__inference_lstm_18_layer_call_fn_621307d[\]?б<
5б2
$і!
inputs         

 
p 

 
ф "і         љ
(__inference_lstm_18_layer_call_fn_621318d[\]?б<
5б2
$і!
inputs         

 
p

 
ф "і         м
C__inference_lstm_19_layer_call_and_return_conditional_losses_622104і^_`OбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "2б/
(і%
0                  
џ м
C__inference_lstm_19_layer_call_and_return_conditional_losses_622247і^_`OбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "2б/
(і%
0                  
џ И
C__inference_lstm_19_layer_call_and_return_conditional_losses_622390q^_`?б<
5б2
$і!
inputs         

 
p 

 
ф ")б&
і
0         
џ И
C__inference_lstm_19_layer_call_and_return_conditional_losses_622533q^_`?б<
5б2
$і!
inputs         

 
p

 
ф ")б&
і
0         
џ Е
(__inference_lstm_19_layer_call_fn_621928}^_`OбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "%і"                  Е
(__inference_lstm_19_layer_call_fn_621939}^_`OбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "%і"                  љ
(__inference_lstm_19_layer_call_fn_621950d^_`?б<
5б2
$і!
inputs         

 
p 

 
ф "і         љ
(__inference_lstm_19_layer_call_fn_621961d^_`?б<
5б2
$і!
inputs         

 
p

 
ф "і         ─
C__inference_lstm_20_layer_call_and_return_conditional_losses_622747}abcOбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "%б"
і
0         
џ ─
C__inference_lstm_20_layer_call_and_return_conditional_losses_622890}abcOбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "%б"
і
0         
џ ┤
C__inference_lstm_20_layer_call_and_return_conditional_losses_623033mabc?б<
5б2
$і!
inputs         

 
p 

 
ф "%б"
і
0         
џ ┤
C__inference_lstm_20_layer_call_and_return_conditional_losses_623176mabc?б<
5б2
$і!
inputs         

 
p

 
ф "%б"
і
0         
џ ю
(__inference_lstm_20_layer_call_fn_622571pabcOбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "і         ю
(__inference_lstm_20_layer_call_fn_622582pabcOбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "і         ї
(__inference_lstm_20_layer_call_fn_622593`abc?б<
5б2
$і!
inputs         

 
p 

 
ф "і         ї
(__inference_lstm_20_layer_call_fn_622604`abc?б<
5б2
$і!
inputs         

 
p

 
ф "і         ╩
H__inference_lstm_cell_18_layer_call_and_return_conditional_losses_623429§[\]ђб}
vбs
 і
inputs         
KбH
"і
states/0         
"і
states/1         
p 
ф "sбp
iбf
і
0/0         
EџB
і
0/1/0         
і
0/1/1         
џ ╩
H__inference_lstm_cell_18_layer_call_and_return_conditional_losses_623461§[\]ђб}
vбs
 і
inputs         
KбH
"і
states/0         
"і
states/1         
p
ф "sбp
iбf
і
0/0         
EџB
і
0/1/0         
і
0/1/1         
џ Ъ
-__inference_lstm_cell_18_layer_call_fn_623380ь[\]ђб}
vбs
 і
inputs         
KбH
"і
states/0         
"і
states/1         
p 
ф "cб`
і
0         
Aџ>
і
1/0         
і
1/1         Ъ
-__inference_lstm_cell_18_layer_call_fn_623397ь[\]ђб}
vбs
 і
inputs         
KбH
"і
states/0         
"і
states/1         
p
ф "cб`
і
0         
Aџ>
і
1/0         
і
1/1         ╩
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_623527§^_`ђб}
vбs
 і
inputs         
KбH
"і
states/0         
"і
states/1         
p 
ф "sбp
iбf
і
0/0         
EџB
і
0/1/0         
і
0/1/1         
џ ╩
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_623559§^_`ђб}
vбs
 і
inputs         
KбH
"і
states/0         
"і
states/1         
p
ф "sбp
iбf
і
0/0         
EџB
і
0/1/0         
і
0/1/1         
џ Ъ
-__inference_lstm_cell_19_layer_call_fn_623478ь^_`ђб}
vбs
 і
inputs         
KбH
"і
states/0         
"і
states/1         
p 
ф "cб`
і
0         
Aџ>
і
1/0         
і
1/1         Ъ
-__inference_lstm_cell_19_layer_call_fn_623495ь^_`ђб}
vбs
 і
inputs         
KбH
"і
states/0         
"і
states/1         
p
ф "cб`
і
0         
Aџ>
і
1/0         
і
1/1         ╩
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_623625§abcђб}
vбs
 і
inputs         
KбH
"і
states/0         
"і
states/1         
p 
ф "sбp
iбf
і
0/0         
EџB
і
0/1/0         
і
0/1/1         
џ ╩
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_623657§abcђб}
vбs
 і
inputs         
KбH
"і
states/0         
"і
states/1         
p
ф "sбp
iбf
і
0/0         
EџB
і
0/1/0         
і
0/1/1         
џ Ъ
-__inference_lstm_cell_20_layer_call_fn_623576ьabcђб}
vбs
 і
inputs         
KбH
"і
states/0         
"і
states/1         
p 
ф "cб`
і
0         
Aџ>
і
1/0         
і
1/1         Ъ
-__inference_lstm_cell_20_layer_call_fn_623593ьabcђб}
vбs
 і
inputs         
KбH
"і
states/0         
"і
states/1         
p
ф "cб`
і
0         
Aџ>
і
1/0         
і
1/1         ╩
H__inference_sequential_6_layer_call_and_return_conditional_losses_620148~[\]^_`abc23<=FGPQBб?
8б5
+і(
lstm_18_input         
p 

 
ф "%б"
і
0         
џ ╩
H__inference_sequential_6_layer_call_and_return_conditional_losses_620199~[\]^_`abc23<=FGPQBб?
8б5
+і(
lstm_18_input         
p

 
ф "%б"
і
0         
џ ├
H__inference_sequential_6_layer_call_and_return_conditional_losses_620778w[\]^_`abc23<=FGPQ;б8
1б.
$і!
inputs         
p 

 
ф "%б"
і
0         
џ ├
H__inference_sequential_6_layer_call_and_return_conditional_losses_621274w[\]^_`abc23<=FGPQ;б8
1б.
$і!
inputs         
p

 
ф "%б"
і
0         
џ б
-__inference_sequential_6_layer_call_fn_619256q[\]^_`abc23<=FGPQBб?
8б5
+і(
lstm_18_input         
p 

 
ф "і         б
-__inference_sequential_6_layer_call_fn_620097q[\]^_`abc23<=FGPQBб?
8б5
+і(
lstm_18_input         
p

 
ф "і         Џ
-__inference_sequential_6_layer_call_fn_620285j[\]^_`abc23<=FGPQ;б8
1б.
$і!
inputs         
p 

 
ф "і         Џ
-__inference_sequential_6_layer_call_fn_620324j[\]^_`abc23<=FGPQ;б8
1б.
$і!
inputs         
p

 
ф "і         Й
$__inference_signature_wrapper_620246Ћ[\]^_`abc23<=FGPQKбH
б 
Aф>
<
lstm_18_input+і(
lstm_18_input         "3ф0
.
dense_18"і
dense_18         