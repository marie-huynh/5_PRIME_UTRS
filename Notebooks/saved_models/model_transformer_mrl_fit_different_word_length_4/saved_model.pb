õ,
 $ð#
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
®
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
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

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
list(type)(0
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
Á
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
executor_typestring ¨
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
÷
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

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
"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8ñ¤(

Adam/rnn_5/lstm_cell_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:¸*.
shared_nameAdam/rnn_5/lstm_cell_5/bias/v

1Adam/rnn_5/lstm_cell_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/rnn_5/lstm_cell_5/bias/v*
_output_shapes	
:¸*
dtype0
¯
)Adam/rnn_5/lstm_cell_5/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.¸*:
shared_name+)Adam/rnn_5/lstm_cell_5/recurrent_kernel/v
¨
=Adam/rnn_5/lstm_cell_5/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp)Adam/rnn_5/lstm_cell_5/recurrent_kernel/v*
_output_shapes
:	.¸*
dtype0

Adam/rnn_5/lstm_cell_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2¸*0
shared_name!Adam/rnn_5/lstm_cell_5/kernel/v

3Adam/rnn_5/lstm_cell_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/rnn_5/lstm_cell_5/kernel/v*
_output_shapes
:	2¸*
dtype0
È
8Adam/transformer_encoder_5/layer_normalization_11/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*I
shared_name:8Adam/transformer_encoder_5/layer_normalization_11/beta/v
Á
LAdam/transformer_encoder_5/layer_normalization_11/beta/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder_5/layer_normalization_11/beta/v*
_output_shapes
:2*
dtype0
Ê
9Adam/transformer_encoder_5/layer_normalization_11/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*J
shared_name;9Adam/transformer_encoder_5/layer_normalization_11/gamma/v
Ã
MAdam/transformer_encoder_5/layer_normalization_11/gamma/v/Read/ReadVariableOpReadVariableOp9Adam/transformer_encoder_5/layer_normalization_11/gamma/v*
_output_shapes
:2*
dtype0
È
8Adam/transformer_encoder_5/layer_normalization_10/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*I
shared_name:8Adam/transformer_encoder_5/layer_normalization_10/beta/v
Á
LAdam/transformer_encoder_5/layer_normalization_10/beta/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder_5/layer_normalization_10/beta/v*
_output_shapes
:2*
dtype0
Ê
9Adam/transformer_encoder_5/layer_normalization_10/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*J
shared_name;9Adam/transformer_encoder_5/layer_normalization_10/gamma/v
Ã
MAdam/transformer_encoder_5/layer_normalization_10/gamma/v/Read/ReadVariableOpReadVariableOp9Adam/transformer_encoder_5/layer_normalization_10/gamma/v*
_output_shapes
:2*
dtype0

Adam/dense_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_21/bias/v
y
(Adam/dense_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/v*
_output_shapes
:2*
dtype0

Adam/dense_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 2*'
shared_nameAdam/dense_21/kernel/v

*Adam/dense_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/v*
_output_shapes

: 2*
dtype0

Adam/dense_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_20/bias/v
y
(Adam/dense_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_20/bias/v*
_output_shapes
: *
dtype0

Adam/dense_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2 *'
shared_nameAdam/dense_20/kernel/v

*Adam/dense_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_20/kernel/v*
_output_shapes

:2 *
dtype0
ê
IAdam/transformer_encoder_5/multi_head_attention_5/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*Z
shared_nameKIAdam/transformer_encoder_5/multi_head_attention_5/attention_output/bias/v
ã
]Adam/transformer_encoder_5/multi_head_attention_5/attention_output/bias/v/Read/ReadVariableOpReadVariableOpIAdam/transformer_encoder_5/multi_head_attention_5/attention_output/bias/v*
_output_shapes
:2*
dtype0
ö
KAdam/transformer_encoder_5/multi_head_attention_5/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*\
shared_nameMKAdam/transformer_encoder_5/multi_head_attention_5/attention_output/kernel/v
ï
_Adam/transformer_encoder_5/multi_head_attention_5/attention_output/kernel/v/Read/ReadVariableOpReadVariableOpKAdam/transformer_encoder_5/multi_head_attention_5/attention_output/kernel/v*"
_output_shapes
:22*
dtype0
Ø
>Adam/transformer_encoder_5/multi_head_attention_5/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_5/multi_head_attention_5/value/bias/v
Ñ
RAdam/transformer_encoder_5/multi_head_attention_5/value/bias/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_5/multi_head_attention_5/value/bias/v*
_output_shapes

:2*
dtype0
à
@Adam/transformer_encoder_5/multi_head_attention_5/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_5/multi_head_attention_5/value/kernel/v
Ù
TAdam/transformer_encoder_5/multi_head_attention_5/value/kernel/v/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_5/multi_head_attention_5/value/kernel/v*"
_output_shapes
:22*
dtype0
Ô
<Adam/transformer_encoder_5/multi_head_attention_5/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*M
shared_name><Adam/transformer_encoder_5/multi_head_attention_5/key/bias/v
Í
PAdam/transformer_encoder_5/multi_head_attention_5/key/bias/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_encoder_5/multi_head_attention_5/key/bias/v*
_output_shapes

:2*
dtype0
Ü
>Adam/transformer_encoder_5/multi_head_attention_5/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*O
shared_name@>Adam/transformer_encoder_5/multi_head_attention_5/key/kernel/v
Õ
RAdam/transformer_encoder_5/multi_head_attention_5/key/kernel/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_5/multi_head_attention_5/key/kernel/v*"
_output_shapes
:22*
dtype0
Ø
>Adam/transformer_encoder_5/multi_head_attention_5/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_5/multi_head_attention_5/query/bias/v
Ñ
RAdam/transformer_encoder_5/multi_head_attention_5/query/bias/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_5/multi_head_attention_5/query/bias/v*
_output_shapes

:2*
dtype0
à
@Adam/transformer_encoder_5/multi_head_attention_5/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_5/multi_head_attention_5/query/kernel/v
Ù
TAdam/transformer_encoder_5/multi_head_attention_5/query/kernel/v/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_5/multi_head_attention_5/query/kernel/v*"
_output_shapes
:22*
dtype0
Ö
=Adam/token_and_position_embedding_5/embedding_11/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:/2*N
shared_name?=Adam/token_and_position_embedding_5/embedding_11/embeddings/v
Ï
QAdam/token_and_position_embedding_5/embedding_11/embeddings/v/Read/ReadVariableOpReadVariableOp=Adam/token_and_position_embedding_5/embedding_11/embeddings/v*
_output_shapes

:/2*
dtype0
×
=Adam/token_and_position_embedding_5/embedding_10/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*N
shared_name?=Adam/token_and_position_embedding_5/embedding_10/embeddings/v
Ð
QAdam/token_and_position_embedding_5/embedding_10/embeddings/v/Read/ReadVariableOpReadVariableOp=Adam/token_and_position_embedding_5/embedding_10/embeddings/v*
_output_shapes
:	2*
dtype0

Adam/dense_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_23/bias/v
y
(Adam/dense_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/v*
_output_shapes
:*
dtype0

Adam/dense_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.*'
shared_nameAdam/dense_23/kernel/v

*Adam/dense_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/v*
_output_shapes

:.*
dtype0

Adam/dense_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*%
shared_nameAdam/dense_22/bias/v
y
(Adam/dense_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/v*
_output_shapes
:.*
dtype0

Adam/dense_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:..*'
shared_nameAdam/dense_22/kernel/v

*Adam/dense_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/v*
_output_shapes

:..*
dtype0

Adam/rnn_5/lstm_cell_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:¸*.
shared_nameAdam/rnn_5/lstm_cell_5/bias/m

1Adam/rnn_5/lstm_cell_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/rnn_5/lstm_cell_5/bias/m*
_output_shapes	
:¸*
dtype0
¯
)Adam/rnn_5/lstm_cell_5/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.¸*:
shared_name+)Adam/rnn_5/lstm_cell_5/recurrent_kernel/m
¨
=Adam/rnn_5/lstm_cell_5/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp)Adam/rnn_5/lstm_cell_5/recurrent_kernel/m*
_output_shapes
:	.¸*
dtype0

Adam/rnn_5/lstm_cell_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2¸*0
shared_name!Adam/rnn_5/lstm_cell_5/kernel/m

3Adam/rnn_5/lstm_cell_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/rnn_5/lstm_cell_5/kernel/m*
_output_shapes
:	2¸*
dtype0
È
8Adam/transformer_encoder_5/layer_normalization_11/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*I
shared_name:8Adam/transformer_encoder_5/layer_normalization_11/beta/m
Á
LAdam/transformer_encoder_5/layer_normalization_11/beta/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder_5/layer_normalization_11/beta/m*
_output_shapes
:2*
dtype0
Ê
9Adam/transformer_encoder_5/layer_normalization_11/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*J
shared_name;9Adam/transformer_encoder_5/layer_normalization_11/gamma/m
Ã
MAdam/transformer_encoder_5/layer_normalization_11/gamma/m/Read/ReadVariableOpReadVariableOp9Adam/transformer_encoder_5/layer_normalization_11/gamma/m*
_output_shapes
:2*
dtype0
È
8Adam/transformer_encoder_5/layer_normalization_10/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*I
shared_name:8Adam/transformer_encoder_5/layer_normalization_10/beta/m
Á
LAdam/transformer_encoder_5/layer_normalization_10/beta/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder_5/layer_normalization_10/beta/m*
_output_shapes
:2*
dtype0
Ê
9Adam/transformer_encoder_5/layer_normalization_10/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*J
shared_name;9Adam/transformer_encoder_5/layer_normalization_10/gamma/m
Ã
MAdam/transformer_encoder_5/layer_normalization_10/gamma/m/Read/ReadVariableOpReadVariableOp9Adam/transformer_encoder_5/layer_normalization_10/gamma/m*
_output_shapes
:2*
dtype0

Adam/dense_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_21/bias/m
y
(Adam/dense_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/m*
_output_shapes
:2*
dtype0

Adam/dense_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 2*'
shared_nameAdam/dense_21/kernel/m

*Adam/dense_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/m*
_output_shapes

: 2*
dtype0

Adam/dense_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_20/bias/m
y
(Adam/dense_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_20/bias/m*
_output_shapes
: *
dtype0

Adam/dense_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2 *'
shared_nameAdam/dense_20/kernel/m

*Adam/dense_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_20/kernel/m*
_output_shapes

:2 *
dtype0
ê
IAdam/transformer_encoder_5/multi_head_attention_5/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*Z
shared_nameKIAdam/transformer_encoder_5/multi_head_attention_5/attention_output/bias/m
ã
]Adam/transformer_encoder_5/multi_head_attention_5/attention_output/bias/m/Read/ReadVariableOpReadVariableOpIAdam/transformer_encoder_5/multi_head_attention_5/attention_output/bias/m*
_output_shapes
:2*
dtype0
ö
KAdam/transformer_encoder_5/multi_head_attention_5/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*\
shared_nameMKAdam/transformer_encoder_5/multi_head_attention_5/attention_output/kernel/m
ï
_Adam/transformer_encoder_5/multi_head_attention_5/attention_output/kernel/m/Read/ReadVariableOpReadVariableOpKAdam/transformer_encoder_5/multi_head_attention_5/attention_output/kernel/m*"
_output_shapes
:22*
dtype0
Ø
>Adam/transformer_encoder_5/multi_head_attention_5/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_5/multi_head_attention_5/value/bias/m
Ñ
RAdam/transformer_encoder_5/multi_head_attention_5/value/bias/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_5/multi_head_attention_5/value/bias/m*
_output_shapes

:2*
dtype0
à
@Adam/transformer_encoder_5/multi_head_attention_5/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_5/multi_head_attention_5/value/kernel/m
Ù
TAdam/transformer_encoder_5/multi_head_attention_5/value/kernel/m/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_5/multi_head_attention_5/value/kernel/m*"
_output_shapes
:22*
dtype0
Ô
<Adam/transformer_encoder_5/multi_head_attention_5/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*M
shared_name><Adam/transformer_encoder_5/multi_head_attention_5/key/bias/m
Í
PAdam/transformer_encoder_5/multi_head_attention_5/key/bias/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_encoder_5/multi_head_attention_5/key/bias/m*
_output_shapes

:2*
dtype0
Ü
>Adam/transformer_encoder_5/multi_head_attention_5/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*O
shared_name@>Adam/transformer_encoder_5/multi_head_attention_5/key/kernel/m
Õ
RAdam/transformer_encoder_5/multi_head_attention_5/key/kernel/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_5/multi_head_attention_5/key/kernel/m*"
_output_shapes
:22*
dtype0
Ø
>Adam/transformer_encoder_5/multi_head_attention_5/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_5/multi_head_attention_5/query/bias/m
Ñ
RAdam/transformer_encoder_5/multi_head_attention_5/query/bias/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_5/multi_head_attention_5/query/bias/m*
_output_shapes

:2*
dtype0
à
@Adam/transformer_encoder_5/multi_head_attention_5/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_5/multi_head_attention_5/query/kernel/m
Ù
TAdam/transformer_encoder_5/multi_head_attention_5/query/kernel/m/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_5/multi_head_attention_5/query/kernel/m*"
_output_shapes
:22*
dtype0
Ö
=Adam/token_and_position_embedding_5/embedding_11/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:/2*N
shared_name?=Adam/token_and_position_embedding_5/embedding_11/embeddings/m
Ï
QAdam/token_and_position_embedding_5/embedding_11/embeddings/m/Read/ReadVariableOpReadVariableOp=Adam/token_and_position_embedding_5/embedding_11/embeddings/m*
_output_shapes

:/2*
dtype0
×
=Adam/token_and_position_embedding_5/embedding_10/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*N
shared_name?=Adam/token_and_position_embedding_5/embedding_10/embeddings/m
Ð
QAdam/token_and_position_embedding_5/embedding_10/embeddings/m/Read/ReadVariableOpReadVariableOp=Adam/token_and_position_embedding_5/embedding_10/embeddings/m*
_output_shapes
:	2*
dtype0

Adam/dense_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_23/bias/m
y
(Adam/dense_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/m*
_output_shapes
:*
dtype0

Adam/dense_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.*'
shared_nameAdam/dense_23/kernel/m

*Adam/dense_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/m*
_output_shapes

:.*
dtype0

Adam/dense_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*%
shared_nameAdam/dense_22/bias/m
y
(Adam/dense_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/m*
_output_shapes
:.*
dtype0

Adam/dense_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:..*'
shared_nameAdam/dense_22/kernel/m

*Adam/dense_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/m*
_output_shapes

:..*
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

rnn_5/lstm_cell_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:¸*'
shared_namernn_5/lstm_cell_5/bias
~
*rnn_5/lstm_cell_5/bias/Read/ReadVariableOpReadVariableOprnn_5/lstm_cell_5/bias*
_output_shapes	
:¸*
dtype0
¡
"rnn_5/lstm_cell_5/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.¸*3
shared_name$"rnn_5/lstm_cell_5/recurrent_kernel

6rnn_5/lstm_cell_5/recurrent_kernel/Read/ReadVariableOpReadVariableOp"rnn_5/lstm_cell_5/recurrent_kernel*
_output_shapes
:	.¸*
dtype0

rnn_5/lstm_cell_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2¸*)
shared_namernn_5/lstm_cell_5/kernel

,rnn_5/lstm_cell_5/kernel/Read/ReadVariableOpReadVariableOprnn_5/lstm_cell_5/kernel*
_output_shapes
:	2¸*
dtype0
º
1transformer_encoder_5/layer_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*B
shared_name31transformer_encoder_5/layer_normalization_11/beta
³
Etransformer_encoder_5/layer_normalization_11/beta/Read/ReadVariableOpReadVariableOp1transformer_encoder_5/layer_normalization_11/beta*
_output_shapes
:2*
dtype0
¼
2transformer_encoder_5/layer_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*C
shared_name42transformer_encoder_5/layer_normalization_11/gamma
µ
Ftransformer_encoder_5/layer_normalization_11/gamma/Read/ReadVariableOpReadVariableOp2transformer_encoder_5/layer_normalization_11/gamma*
_output_shapes
:2*
dtype0
º
1transformer_encoder_5/layer_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*B
shared_name31transformer_encoder_5/layer_normalization_10/beta
³
Etransformer_encoder_5/layer_normalization_10/beta/Read/ReadVariableOpReadVariableOp1transformer_encoder_5/layer_normalization_10/beta*
_output_shapes
:2*
dtype0
¼
2transformer_encoder_5/layer_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*C
shared_name42transformer_encoder_5/layer_normalization_10/gamma
µ
Ftransformer_encoder_5/layer_normalization_10/gamma/Read/ReadVariableOpReadVariableOp2transformer_encoder_5/layer_normalization_10/gamma*
_output_shapes
:2*
dtype0
r
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_21/bias
k
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
_output_shapes
:2*
dtype0
z
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 2* 
shared_namedense_21/kernel
s
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel*
_output_shapes

: 2*
dtype0
r
dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_20/bias
k
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
_output_shapes
: *
dtype0
z
dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2 * 
shared_namedense_20/kernel
s
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
_output_shapes

:2 *
dtype0
Ü
Btransformer_encoder_5/multi_head_attention_5/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*S
shared_nameDBtransformer_encoder_5/multi_head_attention_5/attention_output/bias
Õ
Vtransformer_encoder_5/multi_head_attention_5/attention_output/bias/Read/ReadVariableOpReadVariableOpBtransformer_encoder_5/multi_head_attention_5/attention_output/bias*
_output_shapes
:2*
dtype0
è
Dtransformer_encoder_5/multi_head_attention_5/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*U
shared_nameFDtransformer_encoder_5/multi_head_attention_5/attention_output/kernel
á
Xtransformer_encoder_5/multi_head_attention_5/attention_output/kernel/Read/ReadVariableOpReadVariableOpDtransformer_encoder_5/multi_head_attention_5/attention_output/kernel*"
_output_shapes
:22*
dtype0
Ê
7transformer_encoder_5/multi_head_attention_5/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*H
shared_name97transformer_encoder_5/multi_head_attention_5/value/bias
Ã
Ktransformer_encoder_5/multi_head_attention_5/value/bias/Read/ReadVariableOpReadVariableOp7transformer_encoder_5/multi_head_attention_5/value/bias*
_output_shapes

:2*
dtype0
Ò
9transformer_encoder_5/multi_head_attention_5/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*J
shared_name;9transformer_encoder_5/multi_head_attention_5/value/kernel
Ë
Mtransformer_encoder_5/multi_head_attention_5/value/kernel/Read/ReadVariableOpReadVariableOp9transformer_encoder_5/multi_head_attention_5/value/kernel*"
_output_shapes
:22*
dtype0
Æ
5transformer_encoder_5/multi_head_attention_5/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*F
shared_name75transformer_encoder_5/multi_head_attention_5/key/bias
¿
Itransformer_encoder_5/multi_head_attention_5/key/bias/Read/ReadVariableOpReadVariableOp5transformer_encoder_5/multi_head_attention_5/key/bias*
_output_shapes

:2*
dtype0
Î
7transformer_encoder_5/multi_head_attention_5/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*H
shared_name97transformer_encoder_5/multi_head_attention_5/key/kernel
Ç
Ktransformer_encoder_5/multi_head_attention_5/key/kernel/Read/ReadVariableOpReadVariableOp7transformer_encoder_5/multi_head_attention_5/key/kernel*"
_output_shapes
:22*
dtype0
Ê
7transformer_encoder_5/multi_head_attention_5/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*H
shared_name97transformer_encoder_5/multi_head_attention_5/query/bias
Ã
Ktransformer_encoder_5/multi_head_attention_5/query/bias/Read/ReadVariableOpReadVariableOp7transformer_encoder_5/multi_head_attention_5/query/bias*
_output_shapes

:2*
dtype0
Ò
9transformer_encoder_5/multi_head_attention_5/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*J
shared_name;9transformer_encoder_5/multi_head_attention_5/query/kernel
Ë
Mtransformer_encoder_5/multi_head_attention_5/query/kernel/Read/ReadVariableOpReadVariableOp9transformer_encoder_5/multi_head_attention_5/query/kernel*"
_output_shapes
:22*
dtype0
È
6token_and_position_embedding_5/embedding_11/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:/2*G
shared_name86token_and_position_embedding_5/embedding_11/embeddings
Á
Jtoken_and_position_embedding_5/embedding_11/embeddings/Read/ReadVariableOpReadVariableOp6token_and_position_embedding_5/embedding_11/embeddings*
_output_shapes

:/2*
dtype0
É
6token_and_position_embedding_5/embedding_10/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*G
shared_name86token_and_position_embedding_5/embedding_10/embeddings
Â
Jtoken_and_position_embedding_5/embedding_10/embeddings/Read/ReadVariableOpReadVariableOp6token_and_position_embedding_5/embedding_10/embeddings*
_output_shapes
:	2*
dtype0
r
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_23/bias
k
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
_output_shapes
:*
dtype0
z
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.* 
shared_namedense_23/kernel
s
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel*
_output_shapes

:.*
dtype0
r
dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*
shared_namedense_22/bias
k
!dense_22/bias/Read/ReadVariableOpReadVariableOpdense_22/bias*
_output_shapes
:.*
dtype0
z
dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:..* 
shared_namedense_22/kernel
s
#dense_22/kernel/Read/ReadVariableOpReadVariableOpdense_22/kernel*
_output_shapes

:..*
dtype0
z
serving_default_input_6Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ/
Ý

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_66token_and_position_embedding_5/embedding_11/embeddings6token_and_position_embedding_5/embedding_10/embeddings9transformer_encoder_5/multi_head_attention_5/query/kernel7transformer_encoder_5/multi_head_attention_5/query/bias7transformer_encoder_5/multi_head_attention_5/key/kernel5transformer_encoder_5/multi_head_attention_5/key/bias9transformer_encoder_5/multi_head_attention_5/value/kernel7transformer_encoder_5/multi_head_attention_5/value/biasDtransformer_encoder_5/multi_head_attention_5/attention_output/kernelBtransformer_encoder_5/multi_head_attention_5/attention_output/bias2transformer_encoder_5/layer_normalization_10/gamma1transformer_encoder_5/layer_normalization_10/betadense_20/kerneldense_20/biasdense_21/kerneldense_21/bias2transformer_encoder_5/layer_normalization_11/gamma1transformer_encoder_5/layer_normalization_11/betarnn_5/lstm_cell_5/kernel"rnn_5/lstm_cell_5/recurrent_kernelrnn_5/lstm_cell_5/biasdense_22/kerneldense_22/biasdense_23/kerneldense_23/bias*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*;
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_signature_wrapper_177374853

NoOpNoOp
åË
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ë
valueËBË BË

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	token_emb
pos_emb*
Þ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
att
ffn
 
layernorm1
!
layernorm2
"dropout1
#dropout2*
ª
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses
*cell
+
state_spec*
¦
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias*
¦
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias*
Â
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
N18
O19
P20
221
322
:23
;24*
Â
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
N18
O19
P20
221
322
:23
;24*
* 
°
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_3* 
6
Ztrace_0
[trace_1
\trace_2
]trace_3* 
* 
¸
^iter

_beta_1

`beta_2
	adecay
blearning_rate2mý3mþ:mÿ;m<m=m>m?m@mAmBmCmDmEmFmGmHmImJmKmLmMmNmOmPm2v3v:v;v<v=v>v?v@vAvBv Cv¡Dv¢Ev£Fv¤Gv¥Hv¦Iv§Jv¨Kv©LvªMv«Nv¬Ov­Pv®*

cserving_default* 

<0
=1*

<0
=1*
* 

dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

itrace_0* 

jtrace_0* 
 
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
<
embeddings*
 
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
=
embeddings*
z
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15*
z
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15*
* 

wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

|trace_0
}trace_1* 

~trace_0
trace_1* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_query_dense

_key_dense
_value_dense
_softmax
_dropout_layer
_output_dense*
è
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
¶
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	Jgamma
Kbeta*
¶
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+ &call_and_return_all_conditional_losses
	¡axis
	Lgamma
Mbeta*
¬
¢	variables
£trainable_variables
¤regularization_losses
¥	keras_api
¦__call__
+§&call_and_return_all_conditional_losses
¨_random_generator* 
¬
©	variables
ªtrainable_variables
«regularization_losses
¬	keras_api
­__call__
+®&call_and_return_all_conditional_losses
¯_random_generator* 

N0
O1
P2*

N0
O1
P2*
* 
¥
°states
±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*
:
¶trace_0
·trace_1
¸trace_2
¹trace_3* 
:
ºtrace_0
»trace_1
¼trace_2
½trace_3* 
ë
¾	variables
¿trainable_variables
Àregularization_losses
Á	keras_api
Â__call__
+Ã&call_and_return_all_conditional_losses
Ä_random_generator
Å
state_size

Nkernel
Orecurrent_kernel
Pbias*
* 

20
31*

20
31*
* 

Ænon_trainable_variables
Çlayers
Èmetrics
 Élayer_regularization_losses
Êlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

Ëtrace_0* 

Ìtrace_0* 
_Y
VARIABLE_VALUEdense_22/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_22/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

:0
;1*

:0
;1*
* 

Ínon_trainable_variables
Îlayers
Ïmetrics
 Ðlayer_regularization_losses
Ñlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

Òtrace_0* 

Ótrace_0* 
_Y
VARIABLE_VALUEdense_23/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_23/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE6token_and_position_embedding_5/embedding_10/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE6token_and_position_embedding_5/embedding_11/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE9transformer_encoder_5/multi_head_attention_5/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7transformer_encoder_5/multi_head_attention_5/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7transformer_encoder_5/multi_head_attention_5/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5transformer_encoder_5/multi_head_attention_5/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE9transformer_encoder_5/multi_head_attention_5/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7transformer_encoder_5/multi_head_attention_5/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEDtransformer_encoder_5/multi_head_attention_5/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEBtransformer_encoder_5/multi_head_attention_5/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_20/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_20/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_21/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_21/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE2transformer_encoder_5/layer_normalization_10/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1transformer_encoder_5/layer_normalization_10/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE2transformer_encoder_5/layer_normalization_11/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1transformer_encoder_5/layer_normalization_11/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUErnn_5/lstm_cell_5/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"rnn_5/lstm_cell_5/recurrent_kernel'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUErnn_5/lstm_cell_5/bias'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

Ô0
Õ1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

0
1*
* 
* 
* 
* 
* 

<0*

<0*
* 

Önon_trainable_variables
×layers
Ømetrics
 Ùlayer_regularization_losses
Úlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*
* 
* 

=0*

=0*
* 

Ûnon_trainable_variables
Ülayers
Ýmetrics
 Þlayer_regularization_losses
ßlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*
* 
* 
* 
.
0
1
 2
!3
"4
#5*
* 
* 
* 
* 
* 
* 
* 
<
>0
?1
@2
A3
B4
C5
D6
E7*
<
>0
?1
@2
A3
B4
C5
D6
E7*
* 

ànon_trainable_variables
álayers
âmetrics
 ãlayer_regularization_losses
älayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
ß
å	variables
ætrainable_variables
çregularization_losses
è	keras_api
é__call__
+ê&call_and_return_all_conditional_losses
ëpartial_output_shape
ìfull_output_shape

>kernel
?bias*
ß
í	variables
îtrainable_variables
ïregularization_losses
ð	keras_api
ñ__call__
+ò&call_and_return_all_conditional_losses
ópartial_output_shape
ôfull_output_shape

@kernel
Abias*
ß
õ	variables
ötrainable_variables
÷regularization_losses
ø	keras_api
ù__call__
+ú&call_and_return_all_conditional_losses
ûpartial_output_shape
üfull_output_shape

Bkernel
Cbias*

ý	variables
þtrainable_variables
ÿregularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator* 
ß
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
partial_output_shape
full_output_shape

Dkernel
Ebias*
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Fkernel
Gbias*
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Hkernel
Ibias*
 
F0
G1
H2
I3*
 
F0
G1
H2
I3*
* 

non_trainable_variables
layers
 metrics
 ¡layer_regularization_losses
¢layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
:
£trace_0
¤trace_1
¥trace_2
¦trace_3* 
:
§trace_0
¨trace_1
©trace_2
ªtrace_3* 

J0
K1*

J0
K1*
* 

«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 

L0
M1*

L0
M1*
* 

°non_trainable_variables
±layers
²metrics
 ³layer_regularization_losses
´layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

µnon_trainable_variables
¶layers
·metrics
 ¸layer_regularization_losses
¹layer_metrics
¢	variables
£trainable_variables
¤regularization_losses
¦__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

ºnon_trainable_variables
»layers
¼metrics
 ½layer_regularization_losses
¾layer_metrics
©	variables
ªtrainable_variables
«regularization_losses
­__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

*0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

N0
O1
P2*

N0
O1
P2*
* 

¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
¾	variables
¿trainable_variables
Àregularization_losses
Â__call__
+Ã&call_and_return_all_conditional_losses
'Ã"call_and_return_conditional_losses*

Ätrace_0
Åtrace_1* 

Ætrace_0
Çtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
È	variables
É	keras_api

Êtotal

Ëcount*
M
Ì	variables
Í	keras_api

Îtotal

Ïcount
Ð
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
4
0
1
2
3
4
5*
* 
* 
* 

>0
?1*

>0
?1*
* 

Ñnon_trainable_variables
Òlayers
Ómetrics
 Ôlayer_regularization_losses
Õlayer_metrics
å	variables
ætrainable_variables
çregularization_losses
é__call__
+ê&call_and_return_all_conditional_losses
'ê"call_and_return_conditional_losses*
* 
* 
* 
* 

@0
A1*

@0
A1*
* 

Önon_trainable_variables
×layers
Ømetrics
 Ùlayer_regularization_losses
Úlayer_metrics
í	variables
îtrainable_variables
ïregularization_losses
ñ__call__
+ò&call_and_return_all_conditional_losses
'ò"call_and_return_conditional_losses*
* 
* 
* 
* 

B0
C1*

B0
C1*
* 

Ûnon_trainable_variables
Ülayers
Ýmetrics
 Þlayer_regularization_losses
ßlayer_metrics
õ	variables
ötrainable_variables
÷regularization_losses
ù__call__
+ú&call_and_return_all_conditional_losses
'ú"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 

ànon_trainable_variables
álayers
âmetrics
 ãlayer_regularization_losses
älayer_metrics
ý	variables
þtrainable_variables
ÿregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

ånon_trainable_variables
ælayers
çmetrics
 èlayer_regularization_losses
élayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 

D0
E1*

D0
E1*
* 

ênon_trainable_variables
ëlayers
ìmetrics
 ílayer_regularization_losses
îlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 

F0
G1*

F0
G1*
* 

ïnon_trainable_variables
ðlayers
ñmetrics
 òlayer_regularization_losses
ólayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

ôtrace_0* 

õtrace_0* 

H0
I1*

H0
I1*
* 

önon_trainable_variables
÷layers
ømetrics
 ùlayer_regularization_losses
úlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

ûtrace_0* 

ütrace_0* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Ê0
Ë1*

È	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Î0
Ï1*

Ì	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
|
VARIABLE_VALUEAdam/dense_22/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_22/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_23/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_23/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE=Adam/token_and_position_embedding_5/embedding_10/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE=Adam/token_and_position_embedding_5/embedding_11/embeddings/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_5/multi_head_attention_5/query/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_5/multi_head_attention_5/query/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_5/multi_head_attention_5/key/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/transformer_encoder_5/multi_head_attention_5/key/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_5/multi_head_attention_5/value/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_5/multi_head_attention_5/value/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¨¡
VARIABLE_VALUEKAdam/transformer_encoder_5/multi_head_attention_5/attention_output/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¦
VARIABLE_VALUEIAdam/transformer_encoder_5/multi_head_attention_5/attention_output/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_20/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_20/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_21/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_21/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE9Adam/transformer_encoder_5/layer_normalization_10/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/transformer_encoder_5/layer_normalization_10/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE9Adam/transformer_encoder_5/layer_normalization_11/gamma/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/transformer_encoder_5/layer_normalization_11/beta/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/rnn_5/lstm_cell_5/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/rnn_5/lstm_cell_5/recurrent_kernel/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/rnn_5/lstm_cell_5/bias/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_22/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_22/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_23/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_23/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE=Adam/token_and_position_embedding_5/embedding_10/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE=Adam/token_and_position_embedding_5/embedding_11/embeddings/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_5/multi_head_attention_5/query/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_5/multi_head_attention_5/query/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_5/multi_head_attention_5/key/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/transformer_encoder_5/multi_head_attention_5/key/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_5/multi_head_attention_5/value/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_5/multi_head_attention_5/value/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¨¡
VARIABLE_VALUEKAdam/transformer_encoder_5/multi_head_attention_5/attention_output/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¦
VARIABLE_VALUEIAdam/transformer_encoder_5/multi_head_attention_5/attention_output/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_20/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_20/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_21/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_21/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE9Adam/transformer_encoder_5/layer_normalization_10/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/transformer_encoder_5/layer_normalization_10/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE9Adam/transformer_encoder_5/layer_normalization_11/gamma/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/transformer_encoder_5/layer_normalization_11/beta/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/rnn_5/lstm_cell_5/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/rnn_5/lstm_cell_5/recurrent_kernel/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/rnn_5/lstm_cell_5/bias/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
§+
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_22/kernel/Read/ReadVariableOp!dense_22/bias/Read/ReadVariableOp#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOpJtoken_and_position_embedding_5/embedding_10/embeddings/Read/ReadVariableOpJtoken_and_position_embedding_5/embedding_11/embeddings/Read/ReadVariableOpMtransformer_encoder_5/multi_head_attention_5/query/kernel/Read/ReadVariableOpKtransformer_encoder_5/multi_head_attention_5/query/bias/Read/ReadVariableOpKtransformer_encoder_5/multi_head_attention_5/key/kernel/Read/ReadVariableOpItransformer_encoder_5/multi_head_attention_5/key/bias/Read/ReadVariableOpMtransformer_encoder_5/multi_head_attention_5/value/kernel/Read/ReadVariableOpKtransformer_encoder_5/multi_head_attention_5/value/bias/Read/ReadVariableOpXtransformer_encoder_5/multi_head_attention_5/attention_output/kernel/Read/ReadVariableOpVtransformer_encoder_5/multi_head_attention_5/attention_output/bias/Read/ReadVariableOp#dense_20/kernel/Read/ReadVariableOp!dense_20/bias/Read/ReadVariableOp#dense_21/kernel/Read/ReadVariableOp!dense_21/bias/Read/ReadVariableOpFtransformer_encoder_5/layer_normalization_10/gamma/Read/ReadVariableOpEtransformer_encoder_5/layer_normalization_10/beta/Read/ReadVariableOpFtransformer_encoder_5/layer_normalization_11/gamma/Read/ReadVariableOpEtransformer_encoder_5/layer_normalization_11/beta/Read/ReadVariableOp,rnn_5/lstm_cell_5/kernel/Read/ReadVariableOp6rnn_5/lstm_cell_5/recurrent_kernel/Read/ReadVariableOp*rnn_5/lstm_cell_5/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_22/kernel/m/Read/ReadVariableOp(Adam/dense_22/bias/m/Read/ReadVariableOp*Adam/dense_23/kernel/m/Read/ReadVariableOp(Adam/dense_23/bias/m/Read/ReadVariableOpQAdam/token_and_position_embedding_5/embedding_10/embeddings/m/Read/ReadVariableOpQAdam/token_and_position_embedding_5/embedding_11/embeddings/m/Read/ReadVariableOpTAdam/transformer_encoder_5/multi_head_attention_5/query/kernel/m/Read/ReadVariableOpRAdam/transformer_encoder_5/multi_head_attention_5/query/bias/m/Read/ReadVariableOpRAdam/transformer_encoder_5/multi_head_attention_5/key/kernel/m/Read/ReadVariableOpPAdam/transformer_encoder_5/multi_head_attention_5/key/bias/m/Read/ReadVariableOpTAdam/transformer_encoder_5/multi_head_attention_5/value/kernel/m/Read/ReadVariableOpRAdam/transformer_encoder_5/multi_head_attention_5/value/bias/m/Read/ReadVariableOp_Adam/transformer_encoder_5/multi_head_attention_5/attention_output/kernel/m/Read/ReadVariableOp]Adam/transformer_encoder_5/multi_head_attention_5/attention_output/bias/m/Read/ReadVariableOp*Adam/dense_20/kernel/m/Read/ReadVariableOp(Adam/dense_20/bias/m/Read/ReadVariableOp*Adam/dense_21/kernel/m/Read/ReadVariableOp(Adam/dense_21/bias/m/Read/ReadVariableOpMAdam/transformer_encoder_5/layer_normalization_10/gamma/m/Read/ReadVariableOpLAdam/transformer_encoder_5/layer_normalization_10/beta/m/Read/ReadVariableOpMAdam/transformer_encoder_5/layer_normalization_11/gamma/m/Read/ReadVariableOpLAdam/transformer_encoder_5/layer_normalization_11/beta/m/Read/ReadVariableOp3Adam/rnn_5/lstm_cell_5/kernel/m/Read/ReadVariableOp=Adam/rnn_5/lstm_cell_5/recurrent_kernel/m/Read/ReadVariableOp1Adam/rnn_5/lstm_cell_5/bias/m/Read/ReadVariableOp*Adam/dense_22/kernel/v/Read/ReadVariableOp(Adam/dense_22/bias/v/Read/ReadVariableOp*Adam/dense_23/kernel/v/Read/ReadVariableOp(Adam/dense_23/bias/v/Read/ReadVariableOpQAdam/token_and_position_embedding_5/embedding_10/embeddings/v/Read/ReadVariableOpQAdam/token_and_position_embedding_5/embedding_11/embeddings/v/Read/ReadVariableOpTAdam/transformer_encoder_5/multi_head_attention_5/query/kernel/v/Read/ReadVariableOpRAdam/transformer_encoder_5/multi_head_attention_5/query/bias/v/Read/ReadVariableOpRAdam/transformer_encoder_5/multi_head_attention_5/key/kernel/v/Read/ReadVariableOpPAdam/transformer_encoder_5/multi_head_attention_5/key/bias/v/Read/ReadVariableOpTAdam/transformer_encoder_5/multi_head_attention_5/value/kernel/v/Read/ReadVariableOpRAdam/transformer_encoder_5/multi_head_attention_5/value/bias/v/Read/ReadVariableOp_Adam/transformer_encoder_5/multi_head_attention_5/attention_output/kernel/v/Read/ReadVariableOp]Adam/transformer_encoder_5/multi_head_attention_5/attention_output/bias/v/Read/ReadVariableOp*Adam/dense_20/kernel/v/Read/ReadVariableOp(Adam/dense_20/bias/v/Read/ReadVariableOp*Adam/dense_21/kernel/v/Read/ReadVariableOp(Adam/dense_21/bias/v/Read/ReadVariableOpMAdam/transformer_encoder_5/layer_normalization_10/gamma/v/Read/ReadVariableOpLAdam/transformer_encoder_5/layer_normalization_10/beta/v/Read/ReadVariableOpMAdam/transformer_encoder_5/layer_normalization_11/gamma/v/Read/ReadVariableOpLAdam/transformer_encoder_5/layer_normalization_11/beta/v/Read/ReadVariableOp3Adam/rnn_5/lstm_cell_5/kernel/v/Read/ReadVariableOp=Adam/rnn_5/lstm_cell_5/recurrent_kernel/v/Read/ReadVariableOp1Adam/rnn_5/lstm_cell_5/bias/v/Read/ReadVariableOpConst*a
TinZ
X2V	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_save_177377201

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_22/kerneldense_22/biasdense_23/kerneldense_23/bias6token_and_position_embedding_5/embedding_10/embeddings6token_and_position_embedding_5/embedding_11/embeddings9transformer_encoder_5/multi_head_attention_5/query/kernel7transformer_encoder_5/multi_head_attention_5/query/bias7transformer_encoder_5/multi_head_attention_5/key/kernel5transformer_encoder_5/multi_head_attention_5/key/bias9transformer_encoder_5/multi_head_attention_5/value/kernel7transformer_encoder_5/multi_head_attention_5/value/biasDtransformer_encoder_5/multi_head_attention_5/attention_output/kernelBtransformer_encoder_5/multi_head_attention_5/attention_output/biasdense_20/kerneldense_20/biasdense_21/kerneldense_21/bias2transformer_encoder_5/layer_normalization_10/gamma1transformer_encoder_5/layer_normalization_10/beta2transformer_encoder_5/layer_normalization_11/gamma1transformer_encoder_5/layer_normalization_11/betarnn_5/lstm_cell_5/kernel"rnn_5/lstm_cell_5/recurrent_kernelrnn_5/lstm_cell_5/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_22/kernel/mAdam/dense_22/bias/mAdam/dense_23/kernel/mAdam/dense_23/bias/m=Adam/token_and_position_embedding_5/embedding_10/embeddings/m=Adam/token_and_position_embedding_5/embedding_11/embeddings/m@Adam/transformer_encoder_5/multi_head_attention_5/query/kernel/m>Adam/transformer_encoder_5/multi_head_attention_5/query/bias/m>Adam/transformer_encoder_5/multi_head_attention_5/key/kernel/m<Adam/transformer_encoder_5/multi_head_attention_5/key/bias/m@Adam/transformer_encoder_5/multi_head_attention_5/value/kernel/m>Adam/transformer_encoder_5/multi_head_attention_5/value/bias/mKAdam/transformer_encoder_5/multi_head_attention_5/attention_output/kernel/mIAdam/transformer_encoder_5/multi_head_attention_5/attention_output/bias/mAdam/dense_20/kernel/mAdam/dense_20/bias/mAdam/dense_21/kernel/mAdam/dense_21/bias/m9Adam/transformer_encoder_5/layer_normalization_10/gamma/m8Adam/transformer_encoder_5/layer_normalization_10/beta/m9Adam/transformer_encoder_5/layer_normalization_11/gamma/m8Adam/transformer_encoder_5/layer_normalization_11/beta/mAdam/rnn_5/lstm_cell_5/kernel/m)Adam/rnn_5/lstm_cell_5/recurrent_kernel/mAdam/rnn_5/lstm_cell_5/bias/mAdam/dense_22/kernel/vAdam/dense_22/bias/vAdam/dense_23/kernel/vAdam/dense_23/bias/v=Adam/token_and_position_embedding_5/embedding_10/embeddings/v=Adam/token_and_position_embedding_5/embedding_11/embeddings/v@Adam/transformer_encoder_5/multi_head_attention_5/query/kernel/v>Adam/transformer_encoder_5/multi_head_attention_5/query/bias/v>Adam/transformer_encoder_5/multi_head_attention_5/key/kernel/v<Adam/transformer_encoder_5/multi_head_attention_5/key/bias/v@Adam/transformer_encoder_5/multi_head_attention_5/value/kernel/v>Adam/transformer_encoder_5/multi_head_attention_5/value/bias/vKAdam/transformer_encoder_5/multi_head_attention_5/attention_output/kernel/vIAdam/transformer_encoder_5/multi_head_attention_5/attention_output/bias/vAdam/dense_20/kernel/vAdam/dense_20/bias/vAdam/dense_21/kernel/vAdam/dense_21/bias/v9Adam/transformer_encoder_5/layer_normalization_10/gamma/v8Adam/transformer_encoder_5/layer_normalization_10/beta/v9Adam/transformer_encoder_5/layer_normalization_11/gamma/v8Adam/transformer_encoder_5/layer_normalization_11/beta/vAdam/rnn_5/lstm_cell_5/kernel/v)Adam/rnn_5/lstm_cell_5/recurrent_kernel/vAdam/rnn_5/lstm_cell_5/bias/v*`
TinY
W2U*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference__traced_restore_177377463¶¥$
É
²
+__inference_model_5_layer_call_fn_177374672
input_6
unknown:/2
	unknown_0:	2
	unknown_1:22
	unknown_2:2
	unknown_3:22
	unknown_4:2
	unknown_5:22
	unknown_6:2
	unknown_7:22
	unknown_8:2
	unknown_9:2

unknown_10:2

unknown_11:2 

unknown_12: 

unknown_13: 2

unknown_14:2

unknown_15:2

unknown_16:2

unknown_17:	2¸

unknown_18:	.¸

unknown_19:	¸

unknown_20:..

unknown_21:.

unknown_22:.

unknown_23:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_23*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*;
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_model_5_layer_call_and_return_conditional_losses_177374564o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ/: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
!
_user_specified_name	input_6
Ê	
ø
G__inference_dense_23_layer_call_and_return_conditional_losses_177376609

inputs0
matmul_readvariableop_resource:.-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:.*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
´
Ó
0__inference_sequential_5_layer_call_fn_177376622

inputs
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_5_layer_call_and_return_conditional_losses_177373137s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ/2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
 
_user_specified_nameinputs
Ä
Ò
while_cond_177376197
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_177376197___redundant_placeholder07
3while_while_cond_177376197___redundant_placeholder17
3while_while_cond_177376197___redundant_placeholder27
3while_while_cond_177376197___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
â
B
%__inference__traced_restore_177377463
file_prefix2
 assignvariableop_dense_22_kernel:...
 assignvariableop_1_dense_22_bias:.4
"assignvariableop_2_dense_23_kernel:..
 assignvariableop_3_dense_23_bias:\
Iassignvariableop_4_token_and_position_embedding_5_embedding_10_embeddings:	2[
Iassignvariableop_5_token_and_position_embedding_5_embedding_11_embeddings:/2b
Lassignvariableop_6_transformer_encoder_5_multi_head_attention_5_query_kernel:22\
Jassignvariableop_7_transformer_encoder_5_multi_head_attention_5_query_bias:2`
Jassignvariableop_8_transformer_encoder_5_multi_head_attention_5_key_kernel:22Z
Hassignvariableop_9_transformer_encoder_5_multi_head_attention_5_key_bias:2c
Massignvariableop_10_transformer_encoder_5_multi_head_attention_5_value_kernel:22]
Kassignvariableop_11_transformer_encoder_5_multi_head_attention_5_value_bias:2n
Xassignvariableop_12_transformer_encoder_5_multi_head_attention_5_attention_output_kernel:22d
Vassignvariableop_13_transformer_encoder_5_multi_head_attention_5_attention_output_bias:25
#assignvariableop_14_dense_20_kernel:2 /
!assignvariableop_15_dense_20_bias: 5
#assignvariableop_16_dense_21_kernel: 2/
!assignvariableop_17_dense_21_bias:2T
Fassignvariableop_18_transformer_encoder_5_layer_normalization_10_gamma:2S
Eassignvariableop_19_transformer_encoder_5_layer_normalization_10_beta:2T
Fassignvariableop_20_transformer_encoder_5_layer_normalization_11_gamma:2S
Eassignvariableop_21_transformer_encoder_5_layer_normalization_11_beta:2?
,assignvariableop_22_rnn_5_lstm_cell_5_kernel:	2¸I
6assignvariableop_23_rnn_5_lstm_cell_5_recurrent_kernel:	.¸9
*assignvariableop_24_rnn_5_lstm_cell_5_bias:	¸'
assignvariableop_25_adam_iter:	 )
assignvariableop_26_adam_beta_1: )
assignvariableop_27_adam_beta_2: (
assignvariableop_28_adam_decay: 0
&assignvariableop_29_adam_learning_rate: %
assignvariableop_30_total_1: %
assignvariableop_31_count_1: #
assignvariableop_32_total: #
assignvariableop_33_count: <
*assignvariableop_34_adam_dense_22_kernel_m:..6
(assignvariableop_35_adam_dense_22_bias_m:.<
*assignvariableop_36_adam_dense_23_kernel_m:.6
(assignvariableop_37_adam_dense_23_bias_m:d
Qassignvariableop_38_adam_token_and_position_embedding_5_embedding_10_embeddings_m:	2c
Qassignvariableop_39_adam_token_and_position_embedding_5_embedding_11_embeddings_m:/2j
Tassignvariableop_40_adam_transformer_encoder_5_multi_head_attention_5_query_kernel_m:22d
Rassignvariableop_41_adam_transformer_encoder_5_multi_head_attention_5_query_bias_m:2h
Rassignvariableop_42_adam_transformer_encoder_5_multi_head_attention_5_key_kernel_m:22b
Passignvariableop_43_adam_transformer_encoder_5_multi_head_attention_5_key_bias_m:2j
Tassignvariableop_44_adam_transformer_encoder_5_multi_head_attention_5_value_kernel_m:22d
Rassignvariableop_45_adam_transformer_encoder_5_multi_head_attention_5_value_bias_m:2u
_assignvariableop_46_adam_transformer_encoder_5_multi_head_attention_5_attention_output_kernel_m:22k
]assignvariableop_47_adam_transformer_encoder_5_multi_head_attention_5_attention_output_bias_m:2<
*assignvariableop_48_adam_dense_20_kernel_m:2 6
(assignvariableop_49_adam_dense_20_bias_m: <
*assignvariableop_50_adam_dense_21_kernel_m: 26
(assignvariableop_51_adam_dense_21_bias_m:2[
Massignvariableop_52_adam_transformer_encoder_5_layer_normalization_10_gamma_m:2Z
Lassignvariableop_53_adam_transformer_encoder_5_layer_normalization_10_beta_m:2[
Massignvariableop_54_adam_transformer_encoder_5_layer_normalization_11_gamma_m:2Z
Lassignvariableop_55_adam_transformer_encoder_5_layer_normalization_11_beta_m:2F
3assignvariableop_56_adam_rnn_5_lstm_cell_5_kernel_m:	2¸P
=assignvariableop_57_adam_rnn_5_lstm_cell_5_recurrent_kernel_m:	.¸@
1assignvariableop_58_adam_rnn_5_lstm_cell_5_bias_m:	¸<
*assignvariableop_59_adam_dense_22_kernel_v:..6
(assignvariableop_60_adam_dense_22_bias_v:.<
*assignvariableop_61_adam_dense_23_kernel_v:.6
(assignvariableop_62_adam_dense_23_bias_v:d
Qassignvariableop_63_adam_token_and_position_embedding_5_embedding_10_embeddings_v:	2c
Qassignvariableop_64_adam_token_and_position_embedding_5_embedding_11_embeddings_v:/2j
Tassignvariableop_65_adam_transformer_encoder_5_multi_head_attention_5_query_kernel_v:22d
Rassignvariableop_66_adam_transformer_encoder_5_multi_head_attention_5_query_bias_v:2h
Rassignvariableop_67_adam_transformer_encoder_5_multi_head_attention_5_key_kernel_v:22b
Passignvariableop_68_adam_transformer_encoder_5_multi_head_attention_5_key_bias_v:2j
Tassignvariableop_69_adam_transformer_encoder_5_multi_head_attention_5_value_kernel_v:22d
Rassignvariableop_70_adam_transformer_encoder_5_multi_head_attention_5_value_bias_v:2u
_assignvariableop_71_adam_transformer_encoder_5_multi_head_attention_5_attention_output_kernel_v:22k
]assignvariableop_72_adam_transformer_encoder_5_multi_head_attention_5_attention_output_bias_v:2<
*assignvariableop_73_adam_dense_20_kernel_v:2 6
(assignvariableop_74_adam_dense_20_bias_v: <
*assignvariableop_75_adam_dense_21_kernel_v: 26
(assignvariableop_76_adam_dense_21_bias_v:2[
Massignvariableop_77_adam_transformer_encoder_5_layer_normalization_10_gamma_v:2Z
Lassignvariableop_78_adam_transformer_encoder_5_layer_normalization_10_beta_v:2[
Massignvariableop_79_adam_transformer_encoder_5_layer_normalization_11_gamma_v:2Z
Lassignvariableop_80_adam_transformer_encoder_5_layer_normalization_11_beta_v:2F
3assignvariableop_81_adam_rnn_5_lstm_cell_5_kernel_v:	2¸P
=assignvariableop_82_adam_rnn_5_lstm_cell_5_recurrent_kernel_v:	.¸@
1assignvariableop_83_adam_rnn_5_lstm_cell_5_bias_v:	¸
identity_85¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_73¢AssignVariableOp_74¢AssignVariableOp_75¢AssignVariableOp_76¢AssignVariableOp_77¢AssignVariableOp_78¢AssignVariableOp_79¢AssignVariableOp_8¢AssignVariableOp_80¢AssignVariableOp_81¢AssignVariableOp_82¢AssignVariableOp_83¢AssignVariableOp_9Ï(
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*õ'
valueë'Bè'UB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*¿
valueµB²UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ê
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ê
_output_shapes×
Ô:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*c
dtypesY
W2U	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_dense_22_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_22_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_23_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_23_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_4AssignVariableOpIassignvariableop_4_token_and_position_embedding_5_embedding_10_embeddingsIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_5AssignVariableOpIassignvariableop_5_token_and_position_embedding_5_embedding_11_embeddingsIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_6AssignVariableOpLassignvariableop_6_transformer_encoder_5_multi_head_attention_5_query_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_7AssignVariableOpJassignvariableop_7_transformer_encoder_5_multi_head_attention_5_query_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_8AssignVariableOpJassignvariableop_8_transformer_encoder_5_multi_head_attention_5_key_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_9AssignVariableOpHassignvariableop_9_transformer_encoder_5_multi_head_attention_5_key_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:¾
AssignVariableOp_10AssignVariableOpMassignvariableop_10_transformer_encoder_5_multi_head_attention_5_value_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_11AssignVariableOpKassignvariableop_11_transformer_encoder_5_multi_head_attention_5_value_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_12AssignVariableOpXassignvariableop_12_transformer_encoder_5_multi_head_attention_5_attention_output_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ç
AssignVariableOp_13AssignVariableOpVassignvariableop_13_transformer_encoder_5_multi_head_attention_5_attention_output_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_20_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_20_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp#assignvariableop_16_dense_21_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp!assignvariableop_17_dense_21_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_18AssignVariableOpFassignvariableop_18_transformer_encoder_5_layer_normalization_10_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_19AssignVariableOpEassignvariableop_19_transformer_encoder_5_layer_normalization_10_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_20AssignVariableOpFassignvariableop_20_transformer_encoder_5_layer_normalization_11_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_21AssignVariableOpEassignvariableop_21_transformer_encoder_5_layer_normalization_11_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp,assignvariableop_22_rnn_5_lstm_cell_5_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_23AssignVariableOp6assignvariableop_23_rnn_5_lstm_cell_5_recurrent_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp*assignvariableop_24_rnn_5_lstm_cell_5_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_25AssignVariableOpassignvariableop_25_adam_iterIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOpassignvariableop_26_adam_beta_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_adam_beta_2Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOpassignvariableop_28_adam_decayIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp&assignvariableop_29_adam_learning_rateIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOpassignvariableop_30_total_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOpassignvariableop_31_count_1Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOpassignvariableop_32_totalIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOpassignvariableop_33_countIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_dense_22_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_dense_22_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_dense_23_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_dense_23_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Â
AssignVariableOp_38AssignVariableOpQassignvariableop_38_adam_token_and_position_embedding_5_embedding_10_embeddings_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Â
AssignVariableOp_39AssignVariableOpQassignvariableop_39_adam_token_and_position_embedding_5_embedding_11_embeddings_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_40AssignVariableOpTassignvariableop_40_adam_transformer_encoder_5_multi_head_attention_5_query_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_41AssignVariableOpRassignvariableop_41_adam_transformer_encoder_5_multi_head_attention_5_query_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_42AssignVariableOpRassignvariableop_42_adam_transformer_encoder_5_multi_head_attention_5_key_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_43AssignVariableOpPassignvariableop_43_adam_transformer_encoder_5_multi_head_attention_5_key_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_44AssignVariableOpTassignvariableop_44_adam_transformer_encoder_5_multi_head_attention_5_value_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_45AssignVariableOpRassignvariableop_45_adam_transformer_encoder_5_multi_head_attention_5_value_bias_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ð
AssignVariableOp_46AssignVariableOp_assignvariableop_46_adam_transformer_encoder_5_multi_head_attention_5_attention_output_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Î
AssignVariableOp_47AssignVariableOp]assignvariableop_47_adam_transformer_encoder_5_multi_head_attention_5_attention_output_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp*assignvariableop_48_adam_dense_20_kernel_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_dense_20_bias_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp*assignvariableop_50_adam_dense_21_kernel_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp(assignvariableop_51_adam_dense_21_bias_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:¾
AssignVariableOp_52AssignVariableOpMassignvariableop_52_adam_transformer_encoder_5_layer_normalization_10_gamma_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_53AssignVariableOpLassignvariableop_53_adam_transformer_encoder_5_layer_normalization_10_beta_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:¾
AssignVariableOp_54AssignVariableOpMassignvariableop_54_adam_transformer_encoder_5_layer_normalization_11_gamma_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_55AssignVariableOpLassignvariableop_55_adam_transformer_encoder_5_layer_normalization_11_beta_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_56AssignVariableOp3assignvariableop_56_adam_rnn_5_lstm_cell_5_kernel_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_57AssignVariableOp=assignvariableop_57_adam_rnn_5_lstm_cell_5_recurrent_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_58AssignVariableOp1assignvariableop_58_adam_rnn_5_lstm_cell_5_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_dense_22_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_dense_22_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp*assignvariableop_61_adam_dense_23_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp(assignvariableop_62_adam_dense_23_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Â
AssignVariableOp_63AssignVariableOpQassignvariableop_63_adam_token_and_position_embedding_5_embedding_10_embeddings_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Â
AssignVariableOp_64AssignVariableOpQassignvariableop_64_adam_token_and_position_embedding_5_embedding_11_embeddings_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_65AssignVariableOpTassignvariableop_65_adam_transformer_encoder_5_multi_head_attention_5_query_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_66AssignVariableOpRassignvariableop_66_adam_transformer_encoder_5_multi_head_attention_5_query_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_67AssignVariableOpRassignvariableop_67_adam_transformer_encoder_5_multi_head_attention_5_key_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_68AssignVariableOpPassignvariableop_68_adam_transformer_encoder_5_multi_head_attention_5_key_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_69AssignVariableOpTassignvariableop_69_adam_transformer_encoder_5_multi_head_attention_5_value_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_70AssignVariableOpRassignvariableop_70_adam_transformer_encoder_5_multi_head_attention_5_value_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:Ð
AssignVariableOp_71AssignVariableOp_assignvariableop_71_adam_transformer_encoder_5_multi_head_attention_5_attention_output_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:Î
AssignVariableOp_72AssignVariableOp]assignvariableop_72_adam_transformer_encoder_5_multi_head_attention_5_attention_output_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_73AssignVariableOp*assignvariableop_73_adam_dense_20_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_74AssignVariableOp(assignvariableop_74_adam_dense_20_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_75AssignVariableOp*assignvariableop_75_adam_dense_21_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_76AssignVariableOp(assignvariableop_76_adam_dense_21_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:¾
AssignVariableOp_77AssignVariableOpMassignvariableop_77_adam_transformer_encoder_5_layer_normalization_10_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_78AssignVariableOpLassignvariableop_78_adam_transformer_encoder_5_layer_normalization_10_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:¾
AssignVariableOp_79AssignVariableOpMassignvariableop_79_adam_transformer_encoder_5_layer_normalization_11_gamma_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_80AssignVariableOpLassignvariableop_80_adam_transformer_encoder_5_layer_normalization_11_beta_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_81AssignVariableOp3assignvariableop_81_adam_rnn_5_lstm_cell_5_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_82AssignVariableOp=assignvariableop_82_adam_rnn_5_lstm_cell_5_recurrent_kernel_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_83AssignVariableOp1assignvariableop_83_adam_rnn_5_lstm_cell_5_bias_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_84Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_85IdentityIdentity_84:output:0^NoOp_1*
T0*
_output_shapes
: ô
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_85Identity_85:output:0*¿
_input_shapes­
ª: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_6AssignVariableOp_62*
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
AssignVariableOp_7AssignVariableOp_72*
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
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ø

,__inference_dense_20_layer_call_fn_177376856

inputs
unknown:2 
	unknown_0: 
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_20_layer_call_and_return_conditional_losses_177373094s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ/2: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
 
_user_specified_nameinputs
Ä
Ò
while_cond_177373330
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_177373330___redundant_placeholder07
3while_while_cond_177373330___redundant_placeholder17
3while_while_cond_177373330___redundant_placeholder27
3while_while_cond_177373330___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
é
È
K__inference_sequential_5_layer_call_and_return_conditional_losses_177373235
dense_20_input$
dense_20_177373224:2  
dense_20_177373226: $
dense_21_177373229: 2 
dense_21_177373231:2
identity¢ dense_20/StatefulPartitionedCall¢ dense_21/StatefulPartitionedCall
 dense_20/StatefulPartitionedCallStatefulPartitionedCalldense_20_inputdense_20_177373224dense_20_177373226*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_20_layer_call_and_return_conditional_losses_177373094 
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_177373229dense_21_177373231*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_21_layer_call_and_return_conditional_losses_177373130|
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
NoOpNoOp!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ/2: : : : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
(
_user_specified_namedense_20_input
J

D__inference_rnn_5_layer_call_and_return_conditional_losses_177374214

inputs=
*lstm_cell_5_matmul_readvariableop_resource:	2¸?
,lstm_cell_5_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_5_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_5/BiasAdd/ReadVariableOp¢!lstm_cell_5/MatMul/ReadVariableOp¢#lstm_cell_5/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
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
value	B :.s
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
:ÿÿÿÿÿÿÿÿÿ.R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.w
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
:ÿÿÿÿÿÿÿÿÿ.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:/ÿÿÿÿÿÿÿÿÿ2D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_5/TanhTanhlstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_5/Tanh_1Tanhlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_2:y:0lstm_cell_5/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
while_body_177374130* 
condR
while_cond_177374129*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.½
NoOpNoOp#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ/2: : : 2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
 
_user_specified_nameinputs
¼Ê
»
T__inference_transformer_encoder_5_layer_call_and_return_conditional_losses_177375950

inputsX
Bmulti_head_attention_5_query_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_5_query_add_readvariableop_resource:2V
@multi_head_attention_5_key_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_5_key_add_readvariableop_resource:2X
Bmulti_head_attention_5_value_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_5_value_add_readvariableop_resource:2c
Mmulti_head_attention_5_attention_output_einsum_einsum_readvariableop_resource:22Q
Cmulti_head_attention_5_attention_output_add_readvariableop_resource:2J
<layer_normalization_10_batchnorm_mul_readvariableop_resource:2F
8layer_normalization_10_batchnorm_readvariableop_resource:2I
7sequential_5_dense_20_tensordot_readvariableop_resource:2 C
5sequential_5_dense_20_biasadd_readvariableop_resource: I
7sequential_5_dense_21_tensordot_readvariableop_resource: 2C
5sequential_5_dense_21_biasadd_readvariableop_resource:2J
<layer_normalization_11_batchnorm_mul_readvariableop_resource:2F
8layer_normalization_11_batchnorm_readvariableop_resource:2
identity¢/layer_normalization_10/batchnorm/ReadVariableOp¢3layer_normalization_10/batchnorm/mul/ReadVariableOp¢/layer_normalization_11/batchnorm/ReadVariableOp¢3layer_normalization_11/batchnorm/mul/ReadVariableOp¢:multi_head_attention_5/attention_output/add/ReadVariableOp¢Dmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_5/key/add/ReadVariableOp¢7multi_head_attention_5/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_5/query/add/ReadVariableOp¢9multi_head_attention_5/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_5/value/add/ReadVariableOp¢9multi_head_attention_5/value/einsum/Einsum/ReadVariableOp¢,sequential_5/dense_20/BiasAdd/ReadVariableOp¢.sequential_5/dense_20/Tensordot/ReadVariableOp¢,sequential_5/dense_21/BiasAdd/ReadVariableOp¢.sequential_5/dense_21/Tensordot/ReadVariableOpÀ
9multi_head_attention_5/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_5_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_5/query/einsum/EinsumEinsuminputsAmulti_head_attention_5/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabc,cde->abde¨
/multi_head_attention_5/query/add/ReadVariableOpReadVariableOp8multi_head_attention_5_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_5/query/addAddV23multi_head_attention_5/query/einsum/Einsum:output:07multi_head_attention_5/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¼
7multi_head_attention_5/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_5_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention_5/key/einsum/EinsumEinsuminputs?multi_head_attention_5/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabc,cde->abde¤
-multi_head_attention_5/key/add/ReadVariableOpReadVariableOp6multi_head_attention_5_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention_5/key/addAddV21multi_head_attention_5/key/einsum/Einsum:output:05multi_head_attention_5/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2À
9multi_head_attention_5/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_5_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_5/value/einsum/EinsumEinsuminputsAmulti_head_attention_5/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabc,cde->abde¨
/multi_head_attention_5/value/add/ReadVariableOpReadVariableOp8multi_head_attention_5_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_5/value/addAddV23multi_head_attention_5/value/einsum/Einsum:output:07multi_head_attention_5/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2a
multi_head_attention_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>¨
multi_head_attention_5/MulMul$multi_head_attention_5/query/add:z:0%multi_head_attention_5/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ô
$multi_head_attention_5/einsum/EinsumEinsum"multi_head_attention_5/key/add:z:0multi_head_attention_5/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//*
equationaecd,abcd->acbe
&multi_head_attention_5/softmax/SoftmaxSoftmax-multi_head_attention_5/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//ê
&multi_head_attention_5/einsum_1/EinsumEinsum0multi_head_attention_5/softmax/Softmax:softmax:0$multi_head_attention_5/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_5_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
5multi_head_attention_5/attention_output/einsum/EinsumEinsum/multi_head_attention_5/einsum_1/Einsum:output:0Lmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabcd,cde->abeº
:multi_head_attention_5/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_5_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0î
+multi_head_attention_5/attention_output/addAddV2>multi_head_attention_5/attention_output/einsum/Einsum:output:0Bmulti_head_attention_5/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2]
dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @§
dropout_16/dropout/MulMul/multi_head_attention_5/attention_output/add:z:0!dropout_16/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2w
dropout_16/dropout/ShapeShape/multi_head_attention_5/attention_output/add:z:0*
T0*
_output_shapes
:¦
/dropout_16/dropout/random_uniform/RandomUniformRandomUniform!dropout_16/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
dtype0f
!dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ë
dropout_16/dropout/GreaterEqualGreaterEqual8dropout_16/dropout/random_uniform/RandomUniform:output:0*dropout_16/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
dropout_16/dropout/CastCast#dropout_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
dropout_16/dropout/Mul_1Muldropout_16/dropout/Mul:z:0dropout_16/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2h
addAddV2inputsdropout_16/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
5layer_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
#layer_normalization_10/moments/meanMeanadd:z:0>layer_normalization_10/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(
+layer_normalization_10/moments/StopGradientStopGradient,layer_normalization_10/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/º
0layer_normalization_10/moments/SquaredDifferenceSquaredDifferenceadd:z:04layer_normalization_10/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
9layer_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ð
'layer_normalization_10/moments/varianceMean4layer_normalization_10/moments/SquaredDifference:z:0Blayer_normalization_10/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(k
&layer_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Æ
$layer_normalization_10/batchnorm/addAddV20layer_normalization_10/moments/variance:output:0/layer_normalization_10/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
&layer_normalization_10/batchnorm/RsqrtRsqrt(layer_normalization_10/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/¬
3layer_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ê
$layer_normalization_10/batchnorm/mulMul*layer_normalization_10/batchnorm/Rsqrt:y:0;layer_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
&layer_normalization_10/batchnorm/mul_1Muladd:z:0(layer_normalization_10/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2»
&layer_normalization_10/batchnorm/mul_2Mul,layer_normalization_10/moments/mean:output:0(layer_normalization_10/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¤
/layer_normalization_10/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_10_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Æ
$layer_normalization_10/batchnorm/subSub7layer_normalization_10/batchnorm/ReadVariableOp:value:0*layer_normalization_10/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2»
&layer_normalization_10/batchnorm/add_1AddV2*layer_normalization_10/batchnorm/mul_1:z:0(layer_normalization_10/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¦
.sequential_5/dense_20/Tensordot/ReadVariableOpReadVariableOp7sequential_5_dense_20_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0n
$sequential_5/dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_5/dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
%sequential_5/dense_20/Tensordot/ShapeShape*layer_normalization_10/batchnorm/add_1:z:0*
T0*
_output_shapes
:o
-sequential_5/dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_5/dense_20/Tensordot/GatherV2GatherV2.sequential_5/dense_20/Tensordot/Shape:output:0-sequential_5/dense_20/Tensordot/free:output:06sequential_5/dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_5/dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_5/dense_20/Tensordot/GatherV2_1GatherV2.sequential_5/dense_20/Tensordot/Shape:output:0-sequential_5/dense_20/Tensordot/axes:output:08sequential_5/dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_5/dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_5/dense_20/Tensordot/ProdProd1sequential_5/dense_20/Tensordot/GatherV2:output:0.sequential_5/dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_5/dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_5/dense_20/Tensordot/Prod_1Prod3sequential_5/dense_20/Tensordot/GatherV2_1:output:00sequential_5/dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_5/dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_5/dense_20/Tensordot/concatConcatV2-sequential_5/dense_20/Tensordot/free:output:0-sequential_5/dense_20/Tensordot/axes:output:04sequential_5/dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_5/dense_20/Tensordot/stackPack-sequential_5/dense_20/Tensordot/Prod:output:0/sequential_5/dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:É
)sequential_5/dense_20/Tensordot/transpose	Transpose*layer_normalization_10/batchnorm/add_1:z:0/sequential_5/dense_20/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ì
'sequential_5/dense_20/Tensordot/ReshapeReshape-sequential_5/dense_20/Tensordot/transpose:y:0.sequential_5/dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
&sequential_5/dense_20/Tensordot/MatMulMatMul0sequential_5/dense_20/Tensordot/Reshape:output:06sequential_5/dense_20/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
'sequential_5/dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: o
-sequential_5/dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_5/dense_20/Tensordot/concat_1ConcatV21sequential_5/dense_20/Tensordot/GatherV2:output:00sequential_5/dense_20/Tensordot/Const_2:output:06sequential_5/dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Å
sequential_5/dense_20/TensordotReshape0sequential_5/dense_20/Tensordot/MatMul:product:01sequential_5/dense_20/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ 
,sequential_5/dense_20/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¾
sequential_5/dense_20/BiasAddBiasAdd(sequential_5/dense_20/Tensordot:output:04sequential_5/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ 
sequential_5/dense_20/ReluRelu&sequential_5/dense_20/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ ¦
.sequential_5/dense_21/Tensordot/ReadVariableOpReadVariableOp7sequential_5_dense_21_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0n
$sequential_5/dense_21/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_5/dense_21/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_5/dense_21/Tensordot/ShapeShape(sequential_5/dense_20/Relu:activations:0*
T0*
_output_shapes
:o
-sequential_5/dense_21/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_5/dense_21/Tensordot/GatherV2GatherV2.sequential_5/dense_21/Tensordot/Shape:output:0-sequential_5/dense_21/Tensordot/free:output:06sequential_5/dense_21/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_5/dense_21/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_5/dense_21/Tensordot/GatherV2_1GatherV2.sequential_5/dense_21/Tensordot/Shape:output:0-sequential_5/dense_21/Tensordot/axes:output:08sequential_5/dense_21/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_5/dense_21/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_5/dense_21/Tensordot/ProdProd1sequential_5/dense_21/Tensordot/GatherV2:output:0.sequential_5/dense_21/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_5/dense_21/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_5/dense_21/Tensordot/Prod_1Prod3sequential_5/dense_21/Tensordot/GatherV2_1:output:00sequential_5/dense_21/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_5/dense_21/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_5/dense_21/Tensordot/concatConcatV2-sequential_5/dense_21/Tensordot/free:output:0-sequential_5/dense_21/Tensordot/axes:output:04sequential_5/dense_21/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_5/dense_21/Tensordot/stackPack-sequential_5/dense_21/Tensordot/Prod:output:0/sequential_5/dense_21/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ç
)sequential_5/dense_21/Tensordot/transpose	Transpose(sequential_5/dense_20/Relu:activations:0/sequential_5/dense_21/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ Ì
'sequential_5/dense_21/Tensordot/ReshapeReshape-sequential_5/dense_21/Tensordot/transpose:y:0.sequential_5/dense_21/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
&sequential_5/dense_21/Tensordot/MatMulMatMul0sequential_5/dense_21/Tensordot/Reshape:output:06sequential_5/dense_21/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
'sequential_5/dense_21/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2o
-sequential_5/dense_21/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_5/dense_21/Tensordot/concat_1ConcatV21sequential_5/dense_21/Tensordot/GatherV2:output:00sequential_5/dense_21/Tensordot/Const_2:output:06sequential_5/dense_21/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Å
sequential_5/dense_21/TensordotReshape0sequential_5/dense_21/Tensordot/MatMul:product:01sequential_5/dense_21/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
,sequential_5/dense_21/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_21_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0¾
sequential_5/dense_21/BiasAddBiasAdd(sequential_5/dense_21/Tensordot:output:04sequential_5/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2]
dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_17/dropout/MulMul&sequential_5/dense_21/BiasAdd:output:0!dropout_17/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2n
dropout_17/dropout/ShapeShape&sequential_5/dense_21/BiasAdd:output:0*
T0*
_output_shapes
:¦
/dropout_17/dropout/random_uniform/RandomUniformRandomUniform!dropout_17/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
dtype0f
!dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ë
dropout_17/dropout/GreaterEqualGreaterEqual8dropout_17/dropout/random_uniform/RandomUniform:output:0*dropout_17/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
dropout_17/dropout/CastCast#dropout_17/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
dropout_17/dropout/Mul_1Muldropout_17/dropout/Mul:z:0dropout_17/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
add_1AddV2*layer_normalization_10/batchnorm/add_1:z:0dropout_17/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
5layer_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:½
#layer_normalization_11/moments/meanMean	add_1:z:0>layer_normalization_11/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(
+layer_normalization_11/moments/StopGradientStopGradient,layer_normalization_11/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/¼
0layer_normalization_11/moments/SquaredDifferenceSquaredDifference	add_1:z:04layer_normalization_11/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
9layer_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ð
'layer_normalization_11/moments/varianceMean4layer_normalization_11/moments/SquaredDifference:z:0Blayer_normalization_11/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(k
&layer_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Æ
$layer_normalization_11/batchnorm/addAddV20layer_normalization_11/moments/variance:output:0/layer_normalization_11/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
&layer_normalization_11/batchnorm/RsqrtRsqrt(layer_normalization_11/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/¬
3layer_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ê
$layer_normalization_11/batchnorm/mulMul*layer_normalization_11/batchnorm/Rsqrt:y:0;layer_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
&layer_normalization_11/batchnorm/mul_1Mul	add_1:z:0(layer_normalization_11/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2»
&layer_normalization_11/batchnorm/mul_2Mul,layer_normalization_11/moments/mean:output:0(layer_normalization_11/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¤
/layer_normalization_11/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_11_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Æ
$layer_normalization_11/batchnorm/subSub7layer_normalization_11/batchnorm/ReadVariableOp:value:0*layer_normalization_11/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2»
&layer_normalization_11/batchnorm/add_1AddV2*layer_normalization_11/batchnorm/mul_1:z:0(layer_normalization_11/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2}
IdentityIdentity*layer_normalization_11/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2 
NoOpNoOp0^layer_normalization_10/batchnorm/ReadVariableOp4^layer_normalization_10/batchnorm/mul/ReadVariableOp0^layer_normalization_11/batchnorm/ReadVariableOp4^layer_normalization_11/batchnorm/mul/ReadVariableOp;^multi_head_attention_5/attention_output/add/ReadVariableOpE^multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_5/key/add/ReadVariableOp8^multi_head_attention_5/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_5/query/add/ReadVariableOp:^multi_head_attention_5/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_5/value/add/ReadVariableOp:^multi_head_attention_5/value/einsum/Einsum/ReadVariableOp-^sequential_5/dense_20/BiasAdd/ReadVariableOp/^sequential_5/dense_20/Tensordot/ReadVariableOp-^sequential_5/dense_21/BiasAdd/ReadVariableOp/^sequential_5/dense_21/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ/2: : : : : : : : : : : : : : : : 2b
/layer_normalization_10/batchnorm/ReadVariableOp/layer_normalization_10/batchnorm/ReadVariableOp2j
3layer_normalization_10/batchnorm/mul/ReadVariableOp3layer_normalization_10/batchnorm/mul/ReadVariableOp2b
/layer_normalization_11/batchnorm/ReadVariableOp/layer_normalization_11/batchnorm/ReadVariableOp2j
3layer_normalization_11/batchnorm/mul/ReadVariableOp3layer_normalization_11/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_5/attention_output/add/ReadVariableOp:multi_head_attention_5/attention_output/add/ReadVariableOp2
Dmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_5/key/add/ReadVariableOp-multi_head_attention_5/key/add/ReadVariableOp2r
7multi_head_attention_5/key/einsum/Einsum/ReadVariableOp7multi_head_attention_5/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_5/query/add/ReadVariableOp/multi_head_attention_5/query/add/ReadVariableOp2v
9multi_head_attention_5/query/einsum/Einsum/ReadVariableOp9multi_head_attention_5/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_5/value/add/ReadVariableOp/multi_head_attention_5/value/add/ReadVariableOp2v
9multi_head_attention_5/value/einsum/Einsum/ReadVariableOp9multi_head_attention_5/value/einsum/Einsum/ReadVariableOp2\
,sequential_5/dense_20/BiasAdd/ReadVariableOp,sequential_5/dense_20/BiasAdd/ReadVariableOp2`
.sequential_5/dense_20/Tensordot/ReadVariableOp.sequential_5/dense_20/Tensordot/ReadVariableOp2\
,sequential_5/dense_21/BiasAdd/ReadVariableOp,sequential_5/dense_21/BiasAdd/ReadVariableOp2`
.sequential_5/dense_21/Tensordot/ReadVariableOp.sequential_5/dense_21/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
 
_user_specified_nameinputs
Ä
Ò
while_cond_177376341
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_177376341___redundant_placeholder07
3while_while_cond_177376341___redundant_placeholder17
3while_while_cond_177376341___redundant_placeholder27
3while_while_cond_177376341___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
Á
®
]__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_177373632
x9
'embedding_11_embedding_lookup_177373619:/2:
'embedding_10_embedding_lookup_177373625:	2
identity¢embedding_10/embedding_lookup¢embedding_11/embedding_lookup6
ShapeShapex*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*
_output_shapes
:/á
embedding_11/embedding_lookupResourceGather'embedding_11_embedding_lookup_177373619range:output:0*
Tindices0*:
_class0
.,loc:@embedding_11/embedding_lookup/177373619*
_output_shapes

:/2*
dtype0¿
&embedding_11/embedding_lookup/IdentityIdentity&embedding_11/embedding_lookup:output:0*
T0*:
_class0
.,loc:@embedding_11/embedding_lookup/177373619*
_output_shapes

:/2
(embedding_11/embedding_lookup/Identity_1Identity/embedding_11/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:/2]
embedding_10/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/õ
embedding_10/embedding_lookupResourceGather'embedding_10_embedding_lookup_177373625embedding_10/Cast:y:0*
Tindices0*:
_class0
.,loc:@embedding_10/embedding_lookup/177373625*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
dtype0Ì
&embedding_10/embedding_lookup/IdentityIdentity&embedding_10/embedding_lookup:output:0*
T0*:
_class0
.,loc:@embedding_10/embedding_lookup/177373625*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
(embedding_10/embedding_lookup/Identity_1Identity/embedding_10/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¨
addAddV21embedding_10/embedding_lookup/Identity_1:output:01embedding_11/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Z
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
NoOpNoOp^embedding_10/embedding_lookup^embedding_11/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ/: : 2>
embedding_10/embedding_lookupembedding_10/embedding_lookup2>
embedding_11/embedding_lookupembedding_11/embedding_lookup:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/

_user_specified_namex
Ü
¹
9__inference_transformer_encoder_5_layer_call_fn_177375683

inputs
unknown:22
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:22
	unknown_4:2
	unknown_5:22
	unknown_6:2
	unknown_7:2
	unknown_8:2
	unknown_9:2 

unknown_10: 

unknown_11: 2

unknown_12:2

unknown_13:2

unknown_14:2
identity¢StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transformer_encoder_5_layer_call_and_return_conditional_losses_177374403s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ/2: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
 
_user_specified_nameinputs
Ë

J__inference_lstm_cell_5_layer_call_and_return_conditional_losses_177376847

inputs
states_0
states_11
matmul_readvariableop_resource:	2¸3
 matmul_1_readvariableop_resource:	.¸.
biasadd_readvariableop_resource:	¸
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
states/1
É
²
+__inference_model_5_layer_call_fn_177374037
input_6
unknown:/2
	unknown_0:	2
	unknown_1:22
	unknown_2:2
	unknown_3:22
	unknown_4:2
	unknown_5:22
	unknown_6:2
	unknown_7:22
	unknown_8:2
	unknown_9:2

unknown_10:2

unknown_11:2 

unknown_12: 

unknown_13: 2

unknown_14:2

unknown_15:2

unknown_16:2

unknown_17:	2¸

unknown_18:	.¸

unknown_19:	¸

unknown_20:..

unknown_21:.

unknown_22:.

unknown_23:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_23*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*;
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_model_5_layer_call_and_return_conditional_losses_177373984o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ/: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
!
_user_specified_name	input_6
ì	
Ê
rnn_5_while_cond_177375478(
$rnn_5_while_rnn_5_while_loop_counter.
*rnn_5_while_rnn_5_while_maximum_iterations
rnn_5_while_placeholder
rnn_5_while_placeholder_1
rnn_5_while_placeholder_2
rnn_5_while_placeholder_3*
&rnn_5_while_less_rnn_5_strided_slice_1C
?rnn_5_while_rnn_5_while_cond_177375478___redundant_placeholder0C
?rnn_5_while_rnn_5_while_cond_177375478___redundant_placeholder1C
?rnn_5_while_rnn_5_while_cond_177375478___redundant_placeholder2C
?rnn_5_while_rnn_5_while_cond_177375478___redundant_placeholder3
rnn_5_while_identity
z
rnn_5/while/LessLessrnn_5_while_placeholder&rnn_5_while_less_rnn_5_strided_slice_1*
T0*
_output_shapes
: W
rnn_5/while/IdentityIdentityrnn_5/while/Less:z:0*
T0
*
_output_shapes
: "5
rnn_5_while_identityrnn_5/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
Æ
±
+__inference_model_5_layer_call_fn_177374963

inputs
unknown:/2
	unknown_0:	2
	unknown_1:22
	unknown_2:2
	unknown_3:22
	unknown_4:2
	unknown_5:22
	unknown_6:2
	unknown_7:22
	unknown_8:2
	unknown_9:2

unknown_10:2

unknown_11:2 

unknown_12: 

unknown_13: 2

unknown_14:2

unknown_15:2

unknown_16:2

unknown_17:	2¸

unknown_18:	.¸

unknown_19:	¸

unknown_20:..

unknown_21:.

unknown_22:.

unknown_23:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_23*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*;
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_model_5_layer_call_and_return_conditional_losses_177374564o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ/: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
 
_user_specified_nameinputs
Ó8
Ê
while_body_177376342
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_5_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_5_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_5_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_5_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_5_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_5_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_5/BiasAdd/ReadVariableOp¢'while/lstm_cell_5/MatMul/ReadVariableOp¢)while/lstm_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_5/TanhTanh while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0while/lstm_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_5/Tanh_1Tanhwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_2:y:0while/lstm_cell_5/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 
J

D__inference_rnn_5_layer_call_and_return_conditional_losses_177376426

inputs=
*lstm_cell_5_matmul_readvariableop_resource:	2¸?
,lstm_cell_5_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_5_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_5/BiasAdd/ReadVariableOp¢!lstm_cell_5/MatMul/ReadVariableOp¢#lstm_cell_5/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
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
value	B :.s
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
:ÿÿÿÿÿÿÿÿÿ.R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.w
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
:ÿÿÿÿÿÿÿÿÿ.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:/ÿÿÿÿÿÿÿÿÿ2D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_5/TanhTanhlstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_5/Tanh_1Tanhlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_2:y:0lstm_cell_5/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
while_body_177376342* 
condR
while_cond_177376341*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.½
NoOpNoOp#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ/2: : : 2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
 
_user_specified_nameinputs
¶8

D__inference_rnn_5_layer_call_and_return_conditional_losses_177373400

inputs(
lstm_cell_5_177373317:	2¸(
lstm_cell_5_177373319:	.¸$
lstm_cell_5_177373321:	¸
identity¢#lstm_cell_5/StatefulPartitionedCall¢while;
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
valueB:Ñ
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
value	B :.s
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
:ÿÿÿÿÿÿÿÿÿ.R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.w
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
:ÿÿÿÿÿÿÿÿÿ.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskü
#lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_5_177373317lstm_cell_5_177373319lstm_cell_5_177373321*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_5_layer_call_and_return_conditional_losses_177373316n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ã
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_5_177373317lstm_cell_5_177373319lstm_cell_5_177373321*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
while_body_177373331* 
condR
while_cond_177373330*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.t
NoOpNoOp$^lstm_cell_5/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_5/StatefulPartitionedCall#lstm_cell_5/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
é
È
K__inference_sequential_5_layer_call_and_return_conditional_losses_177373249
dense_20_input$
dense_20_177373238:2  
dense_20_177373240: $
dense_21_177373243: 2 
dense_21_177373245:2
identity¢ dense_20/StatefulPartitionedCall¢ dense_21/StatefulPartitionedCall
 dense_20/StatefulPartitionedCallStatefulPartitionedCalldense_20_inputdense_20_177373238dense_20_177373240*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_20_layer_call_and_return_conditional_losses_177373094 
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_177373243dense_21_177373245*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_21_layer_call_and_return_conditional_losses_177373130|
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
NoOpNoOp!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ/2: : : : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
(
_user_specified_namedense_20_input
Ø

,__inference_dense_21_layer_call_fn_177376896

inputs
unknown: 2
	unknown_0:2
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_21_layer_call_and_return_conditional_losses_177373130s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ/ : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ 
 
_user_specified_nameinputs
Ä
Ò
while_cond_177376053
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_177376053___redundant_placeholder07
3while_while_cond_177376053___redundant_placeholder17
3while_while_cond_177376053___redundant_placeholder27
3while_while_cond_177376053___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
È

,__inference_dense_23_layer_call_fn_177376599

inputs
unknown:.
	unknown_0:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_23_layer_call_and_return_conditional_losses_177373977o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs


ø
G__inference_dense_22_layer_call_and_return_conditional_losses_177373961

inputs0
matmul_readvariableop_resource:..-
biasadd_readvariableop_resource:.
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:..*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:.*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
ü»
»
T__inference_transformer_encoder_5_layer_call_and_return_conditional_losses_177375810

inputsX
Bmulti_head_attention_5_query_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_5_query_add_readvariableop_resource:2V
@multi_head_attention_5_key_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_5_key_add_readvariableop_resource:2X
Bmulti_head_attention_5_value_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_5_value_add_readvariableop_resource:2c
Mmulti_head_attention_5_attention_output_einsum_einsum_readvariableop_resource:22Q
Cmulti_head_attention_5_attention_output_add_readvariableop_resource:2J
<layer_normalization_10_batchnorm_mul_readvariableop_resource:2F
8layer_normalization_10_batchnorm_readvariableop_resource:2I
7sequential_5_dense_20_tensordot_readvariableop_resource:2 C
5sequential_5_dense_20_biasadd_readvariableop_resource: I
7sequential_5_dense_21_tensordot_readvariableop_resource: 2C
5sequential_5_dense_21_biasadd_readvariableop_resource:2J
<layer_normalization_11_batchnorm_mul_readvariableop_resource:2F
8layer_normalization_11_batchnorm_readvariableop_resource:2
identity¢/layer_normalization_10/batchnorm/ReadVariableOp¢3layer_normalization_10/batchnorm/mul/ReadVariableOp¢/layer_normalization_11/batchnorm/ReadVariableOp¢3layer_normalization_11/batchnorm/mul/ReadVariableOp¢:multi_head_attention_5/attention_output/add/ReadVariableOp¢Dmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_5/key/add/ReadVariableOp¢7multi_head_attention_5/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_5/query/add/ReadVariableOp¢9multi_head_attention_5/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_5/value/add/ReadVariableOp¢9multi_head_attention_5/value/einsum/Einsum/ReadVariableOp¢,sequential_5/dense_20/BiasAdd/ReadVariableOp¢.sequential_5/dense_20/Tensordot/ReadVariableOp¢,sequential_5/dense_21/BiasAdd/ReadVariableOp¢.sequential_5/dense_21/Tensordot/ReadVariableOpÀ
9multi_head_attention_5/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_5_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_5/query/einsum/EinsumEinsuminputsAmulti_head_attention_5/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabc,cde->abde¨
/multi_head_attention_5/query/add/ReadVariableOpReadVariableOp8multi_head_attention_5_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_5/query/addAddV23multi_head_attention_5/query/einsum/Einsum:output:07multi_head_attention_5/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¼
7multi_head_attention_5/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_5_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention_5/key/einsum/EinsumEinsuminputs?multi_head_attention_5/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabc,cde->abde¤
-multi_head_attention_5/key/add/ReadVariableOpReadVariableOp6multi_head_attention_5_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention_5/key/addAddV21multi_head_attention_5/key/einsum/Einsum:output:05multi_head_attention_5/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2À
9multi_head_attention_5/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_5_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_5/value/einsum/EinsumEinsuminputsAmulti_head_attention_5/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabc,cde->abde¨
/multi_head_attention_5/value/add/ReadVariableOpReadVariableOp8multi_head_attention_5_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_5/value/addAddV23multi_head_attention_5/value/einsum/Einsum:output:07multi_head_attention_5/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2a
multi_head_attention_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>¨
multi_head_attention_5/MulMul$multi_head_attention_5/query/add:z:0%multi_head_attention_5/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ô
$multi_head_attention_5/einsum/EinsumEinsum"multi_head_attention_5/key/add:z:0multi_head_attention_5/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//*
equationaecd,abcd->acbe
&multi_head_attention_5/softmax/SoftmaxSoftmax-multi_head_attention_5/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//
'multi_head_attention_5/dropout/IdentityIdentity0multi_head_attention_5/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//ê
&multi_head_attention_5/einsum_1/EinsumEinsum0multi_head_attention_5/dropout/Identity:output:0$multi_head_attention_5/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_5_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
5multi_head_attention_5/attention_output/einsum/EinsumEinsum/multi_head_attention_5/einsum_1/Einsum:output:0Lmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabcd,cde->abeº
:multi_head_attention_5/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_5_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0î
+multi_head_attention_5/attention_output/addAddV2>multi_head_attention_5/attention_output/einsum/Einsum:output:0Bmulti_head_attention_5/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
dropout_16/IdentityIdentity/multi_head_attention_5/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2h
addAddV2inputsdropout_16/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
5layer_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
#layer_normalization_10/moments/meanMeanadd:z:0>layer_normalization_10/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(
+layer_normalization_10/moments/StopGradientStopGradient,layer_normalization_10/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/º
0layer_normalization_10/moments/SquaredDifferenceSquaredDifferenceadd:z:04layer_normalization_10/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
9layer_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ð
'layer_normalization_10/moments/varianceMean4layer_normalization_10/moments/SquaredDifference:z:0Blayer_normalization_10/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(k
&layer_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Æ
$layer_normalization_10/batchnorm/addAddV20layer_normalization_10/moments/variance:output:0/layer_normalization_10/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
&layer_normalization_10/batchnorm/RsqrtRsqrt(layer_normalization_10/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/¬
3layer_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ê
$layer_normalization_10/batchnorm/mulMul*layer_normalization_10/batchnorm/Rsqrt:y:0;layer_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
&layer_normalization_10/batchnorm/mul_1Muladd:z:0(layer_normalization_10/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2»
&layer_normalization_10/batchnorm/mul_2Mul,layer_normalization_10/moments/mean:output:0(layer_normalization_10/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¤
/layer_normalization_10/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_10_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Æ
$layer_normalization_10/batchnorm/subSub7layer_normalization_10/batchnorm/ReadVariableOp:value:0*layer_normalization_10/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2»
&layer_normalization_10/batchnorm/add_1AddV2*layer_normalization_10/batchnorm/mul_1:z:0(layer_normalization_10/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¦
.sequential_5/dense_20/Tensordot/ReadVariableOpReadVariableOp7sequential_5_dense_20_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0n
$sequential_5/dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_5/dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
%sequential_5/dense_20/Tensordot/ShapeShape*layer_normalization_10/batchnorm/add_1:z:0*
T0*
_output_shapes
:o
-sequential_5/dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_5/dense_20/Tensordot/GatherV2GatherV2.sequential_5/dense_20/Tensordot/Shape:output:0-sequential_5/dense_20/Tensordot/free:output:06sequential_5/dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_5/dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_5/dense_20/Tensordot/GatherV2_1GatherV2.sequential_5/dense_20/Tensordot/Shape:output:0-sequential_5/dense_20/Tensordot/axes:output:08sequential_5/dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_5/dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_5/dense_20/Tensordot/ProdProd1sequential_5/dense_20/Tensordot/GatherV2:output:0.sequential_5/dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_5/dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_5/dense_20/Tensordot/Prod_1Prod3sequential_5/dense_20/Tensordot/GatherV2_1:output:00sequential_5/dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_5/dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_5/dense_20/Tensordot/concatConcatV2-sequential_5/dense_20/Tensordot/free:output:0-sequential_5/dense_20/Tensordot/axes:output:04sequential_5/dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_5/dense_20/Tensordot/stackPack-sequential_5/dense_20/Tensordot/Prod:output:0/sequential_5/dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:É
)sequential_5/dense_20/Tensordot/transpose	Transpose*layer_normalization_10/batchnorm/add_1:z:0/sequential_5/dense_20/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ì
'sequential_5/dense_20/Tensordot/ReshapeReshape-sequential_5/dense_20/Tensordot/transpose:y:0.sequential_5/dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
&sequential_5/dense_20/Tensordot/MatMulMatMul0sequential_5/dense_20/Tensordot/Reshape:output:06sequential_5/dense_20/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
'sequential_5/dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: o
-sequential_5/dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_5/dense_20/Tensordot/concat_1ConcatV21sequential_5/dense_20/Tensordot/GatherV2:output:00sequential_5/dense_20/Tensordot/Const_2:output:06sequential_5/dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Å
sequential_5/dense_20/TensordotReshape0sequential_5/dense_20/Tensordot/MatMul:product:01sequential_5/dense_20/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ 
,sequential_5/dense_20/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¾
sequential_5/dense_20/BiasAddBiasAdd(sequential_5/dense_20/Tensordot:output:04sequential_5/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ 
sequential_5/dense_20/ReluRelu&sequential_5/dense_20/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ ¦
.sequential_5/dense_21/Tensordot/ReadVariableOpReadVariableOp7sequential_5_dense_21_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0n
$sequential_5/dense_21/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_5/dense_21/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_5/dense_21/Tensordot/ShapeShape(sequential_5/dense_20/Relu:activations:0*
T0*
_output_shapes
:o
-sequential_5/dense_21/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_5/dense_21/Tensordot/GatherV2GatherV2.sequential_5/dense_21/Tensordot/Shape:output:0-sequential_5/dense_21/Tensordot/free:output:06sequential_5/dense_21/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_5/dense_21/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_5/dense_21/Tensordot/GatherV2_1GatherV2.sequential_5/dense_21/Tensordot/Shape:output:0-sequential_5/dense_21/Tensordot/axes:output:08sequential_5/dense_21/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_5/dense_21/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_5/dense_21/Tensordot/ProdProd1sequential_5/dense_21/Tensordot/GatherV2:output:0.sequential_5/dense_21/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_5/dense_21/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_5/dense_21/Tensordot/Prod_1Prod3sequential_5/dense_21/Tensordot/GatherV2_1:output:00sequential_5/dense_21/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_5/dense_21/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_5/dense_21/Tensordot/concatConcatV2-sequential_5/dense_21/Tensordot/free:output:0-sequential_5/dense_21/Tensordot/axes:output:04sequential_5/dense_21/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_5/dense_21/Tensordot/stackPack-sequential_5/dense_21/Tensordot/Prod:output:0/sequential_5/dense_21/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ç
)sequential_5/dense_21/Tensordot/transpose	Transpose(sequential_5/dense_20/Relu:activations:0/sequential_5/dense_21/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ Ì
'sequential_5/dense_21/Tensordot/ReshapeReshape-sequential_5/dense_21/Tensordot/transpose:y:0.sequential_5/dense_21/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
&sequential_5/dense_21/Tensordot/MatMulMatMul0sequential_5/dense_21/Tensordot/Reshape:output:06sequential_5/dense_21/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
'sequential_5/dense_21/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2o
-sequential_5/dense_21/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_5/dense_21/Tensordot/concat_1ConcatV21sequential_5/dense_21/Tensordot/GatherV2:output:00sequential_5/dense_21/Tensordot/Const_2:output:06sequential_5/dense_21/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Å
sequential_5/dense_21/TensordotReshape0sequential_5/dense_21/Tensordot/MatMul:product:01sequential_5/dense_21/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
,sequential_5/dense_21/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_21_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0¾
sequential_5/dense_21/BiasAddBiasAdd(sequential_5/dense_21/Tensordot:output:04sequential_5/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2}
dropout_17/IdentityIdentity&sequential_5/dense_21/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
add_1AddV2*layer_normalization_10/batchnorm/add_1:z:0dropout_17/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
5layer_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:½
#layer_normalization_11/moments/meanMean	add_1:z:0>layer_normalization_11/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(
+layer_normalization_11/moments/StopGradientStopGradient,layer_normalization_11/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/¼
0layer_normalization_11/moments/SquaredDifferenceSquaredDifference	add_1:z:04layer_normalization_11/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
9layer_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ð
'layer_normalization_11/moments/varianceMean4layer_normalization_11/moments/SquaredDifference:z:0Blayer_normalization_11/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(k
&layer_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Æ
$layer_normalization_11/batchnorm/addAddV20layer_normalization_11/moments/variance:output:0/layer_normalization_11/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
&layer_normalization_11/batchnorm/RsqrtRsqrt(layer_normalization_11/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/¬
3layer_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ê
$layer_normalization_11/batchnorm/mulMul*layer_normalization_11/batchnorm/Rsqrt:y:0;layer_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
&layer_normalization_11/batchnorm/mul_1Mul	add_1:z:0(layer_normalization_11/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2»
&layer_normalization_11/batchnorm/mul_2Mul,layer_normalization_11/moments/mean:output:0(layer_normalization_11/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¤
/layer_normalization_11/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_11_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Æ
$layer_normalization_11/batchnorm/subSub7layer_normalization_11/batchnorm/ReadVariableOp:value:0*layer_normalization_11/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2»
&layer_normalization_11/batchnorm/add_1AddV2*layer_normalization_11/batchnorm/mul_1:z:0(layer_normalization_11/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2}
IdentityIdentity*layer_normalization_11/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2 
NoOpNoOp0^layer_normalization_10/batchnorm/ReadVariableOp4^layer_normalization_10/batchnorm/mul/ReadVariableOp0^layer_normalization_11/batchnorm/ReadVariableOp4^layer_normalization_11/batchnorm/mul/ReadVariableOp;^multi_head_attention_5/attention_output/add/ReadVariableOpE^multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_5/key/add/ReadVariableOp8^multi_head_attention_5/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_5/query/add/ReadVariableOp:^multi_head_attention_5/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_5/value/add/ReadVariableOp:^multi_head_attention_5/value/einsum/Einsum/ReadVariableOp-^sequential_5/dense_20/BiasAdd/ReadVariableOp/^sequential_5/dense_20/Tensordot/ReadVariableOp-^sequential_5/dense_21/BiasAdd/ReadVariableOp/^sequential_5/dense_21/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ/2: : : : : : : : : : : : : : : : 2b
/layer_normalization_10/batchnorm/ReadVariableOp/layer_normalization_10/batchnorm/ReadVariableOp2j
3layer_normalization_10/batchnorm/mul/ReadVariableOp3layer_normalization_10/batchnorm/mul/ReadVariableOp2b
/layer_normalization_11/batchnorm/ReadVariableOp/layer_normalization_11/batchnorm/ReadVariableOp2j
3layer_normalization_11/batchnorm/mul/ReadVariableOp3layer_normalization_11/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_5/attention_output/add/ReadVariableOp:multi_head_attention_5/attention_output/add/ReadVariableOp2
Dmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_5/key/add/ReadVariableOp-multi_head_attention_5/key/add/ReadVariableOp2r
7multi_head_attention_5/key/einsum/Einsum/ReadVariableOp7multi_head_attention_5/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_5/query/add/ReadVariableOp/multi_head_attention_5/query/add/ReadVariableOp2v
9multi_head_attention_5/query/einsum/Einsum/ReadVariableOp9multi_head_attention_5/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_5/value/add/ReadVariableOp/multi_head_attention_5/value/add/ReadVariableOp2v
9multi_head_attention_5/value/einsum/Einsum/ReadVariableOp9multi_head_attention_5/value/einsum/Einsum/ReadVariableOp2\
,sequential_5/dense_20/BiasAdd/ReadVariableOp,sequential_5/dense_20/BiasAdd/ReadVariableOp2`
.sequential_5/dense_20/Tensordot/ReadVariableOp.sequential_5/dense_20/Tensordot/ReadVariableOp2\
,sequential_5/dense_21/BiasAdd/ReadVariableOp,sequential_5/dense_21/BiasAdd/ReadVariableOp2`
.sequential_5/dense_21/Tensordot/ReadVariableOp.sequential_5/dense_21/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
 
_user_specified_nameinputs
Î
þ
G__inference_dense_21_layer_call_and_return_conditional_losses_177376926

inputs3
!tensordot_readvariableop_resource: 2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ 
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ/ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ 
 
_user_specified_nameinputs
¦
þ
G__inference_dense_20_layer_call_and_return_conditional_losses_177373094

inputs3
!tensordot_readvariableop_resource:2 -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ/2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
 
_user_specified_nameinputs
Ä
Ò
while_cond_177373857
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_177373857___redundant_placeholder07
3while_while_cond_177373857___redundant_placeholder17
3while_while_cond_177373857___redundant_placeholder27
3while_while_cond_177373857___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
J

D__inference_rnn_5_layer_call_and_return_conditional_losses_177376570

inputs=
*lstm_cell_5_matmul_readvariableop_resource:	2¸?
,lstm_cell_5_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_5_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_5/BiasAdd/ReadVariableOp¢!lstm_cell_5/MatMul/ReadVariableOp¢#lstm_cell_5/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
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
value	B :.s
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
:ÿÿÿÿÿÿÿÿÿ.R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.w
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
:ÿÿÿÿÿÿÿÿÿ.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:/ÿÿÿÿÿÿÿÿÿ2D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_5/TanhTanhlstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_5/Tanh_1Tanhlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_2:y:0lstm_cell_5/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
while_body_177376486* 
condR
while_cond_177376485*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.½
NoOpNoOp#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ/2: : : 2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
 
_user_specified_nameinputs
£
®
'__inference_signature_wrapper_177374853
input_6
unknown:/2
	unknown_0:	2
	unknown_1:22
	unknown_2:2
	unknown_3:22
	unknown_4:2
	unknown_5:22
	unknown_6:2
	unknown_7:22
	unknown_8:2
	unknown_9:2

unknown_10:2

unknown_11:2 

unknown_12: 

unknown_13: 2

unknown_14:2

unknown_15:2

unknown_16:2

unknown_17:	2¸

unknown_18:	.¸

unknown_19:	¸

unknown_20:..

unknown_21:.

unknown_22:.

unknown_23:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_23*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*;
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference__wrapped_model_177373056o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ/: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
!
_user_specified_name	input_6
æó
é
F__inference_model_5_layer_call_and_return_conditional_losses_177375263

inputsX
Ftoken_and_position_embedding_5_embedding_11_embedding_lookup_177374974:/2Y
Ftoken_and_position_embedding_5_embedding_10_embedding_lookup_177374980:	2n
Xtransformer_encoder_5_multi_head_attention_5_query_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_5_multi_head_attention_5_query_add_readvariableop_resource:2l
Vtransformer_encoder_5_multi_head_attention_5_key_einsum_einsum_readvariableop_resource:22^
Ltransformer_encoder_5_multi_head_attention_5_key_add_readvariableop_resource:2n
Xtransformer_encoder_5_multi_head_attention_5_value_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_5_multi_head_attention_5_value_add_readvariableop_resource:2y
ctransformer_encoder_5_multi_head_attention_5_attention_output_einsum_einsum_readvariableop_resource:22g
Ytransformer_encoder_5_multi_head_attention_5_attention_output_add_readvariableop_resource:2`
Rtransformer_encoder_5_layer_normalization_10_batchnorm_mul_readvariableop_resource:2\
Ntransformer_encoder_5_layer_normalization_10_batchnorm_readvariableop_resource:2_
Mtransformer_encoder_5_sequential_5_dense_20_tensordot_readvariableop_resource:2 Y
Ktransformer_encoder_5_sequential_5_dense_20_biasadd_readvariableop_resource: _
Mtransformer_encoder_5_sequential_5_dense_21_tensordot_readvariableop_resource: 2Y
Ktransformer_encoder_5_sequential_5_dense_21_biasadd_readvariableop_resource:2`
Rtransformer_encoder_5_layer_normalization_11_batchnorm_mul_readvariableop_resource:2\
Ntransformer_encoder_5_layer_normalization_11_batchnorm_readvariableop_resource:2C
0rnn_5_lstm_cell_5_matmul_readvariableop_resource:	2¸E
2rnn_5_lstm_cell_5_matmul_1_readvariableop_resource:	.¸@
1rnn_5_lstm_cell_5_biasadd_readvariableop_resource:	¸9
'dense_22_matmul_readvariableop_resource:..6
(dense_22_biasadd_readvariableop_resource:.9
'dense_23_matmul_readvariableop_resource:.6
(dense_23_biasadd_readvariableop_resource:
identity¢dense_22/BiasAdd/ReadVariableOp¢dense_22/MatMul/ReadVariableOp¢dense_23/BiasAdd/ReadVariableOp¢dense_23/MatMul/ReadVariableOp¢(rnn_5/lstm_cell_5/BiasAdd/ReadVariableOp¢'rnn_5/lstm_cell_5/MatMul/ReadVariableOp¢)rnn_5/lstm_cell_5/MatMul_1/ReadVariableOp¢rnn_5/while¢<token_and_position_embedding_5/embedding_10/embedding_lookup¢<token_and_position_embedding_5/embedding_11/embedding_lookup¢Etransformer_encoder_5/layer_normalization_10/batchnorm/ReadVariableOp¢Itransformer_encoder_5/layer_normalization_10/batchnorm/mul/ReadVariableOp¢Etransformer_encoder_5/layer_normalization_11/batchnorm/ReadVariableOp¢Itransformer_encoder_5/layer_normalization_11/batchnorm/mul/ReadVariableOp¢Ptransformer_encoder_5/multi_head_attention_5/attention_output/add/ReadVariableOp¢Ztransformer_encoder_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp¢Ctransformer_encoder_5/multi_head_attention_5/key/add/ReadVariableOp¢Mtransformer_encoder_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOp¢Etransformer_encoder_5/multi_head_attention_5/query/add/ReadVariableOp¢Otransformer_encoder_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOp¢Etransformer_encoder_5/multi_head_attention_5/value/add/ReadVariableOp¢Otransformer_encoder_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp¢Btransformer_encoder_5/sequential_5/dense_20/BiasAdd/ReadVariableOp¢Dtransformer_encoder_5/sequential_5/dense_20/Tensordot/ReadVariableOp¢Btransformer_encoder_5/sequential_5/dense_21/BiasAdd/ReadVariableOp¢Dtransformer_encoder_5/sequential_5/dense_21/Tensordot/ReadVariableOpZ
$token_and_position_embedding_5/ShapeShapeinputs*
T0*
_output_shapes
:
2token_and_position_embedding_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ~
4token_and_position_embedding_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,token_and_position_embedding_5/strided_sliceStridedSlice-token_and_position_embedding_5/Shape:output:0;token_and_position_embedding_5/strided_slice/stack:output:0=token_and_position_embedding_5/strided_slice/stack_1:output:0=token_and_position_embedding_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_5/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_5/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ê
$token_and_position_embedding_5/rangeRange3token_and_position_embedding_5/range/start:output:05token_and_position_embedding_5/strided_slice:output:03token_and_position_embedding_5/range/delta:output:0*
_output_shapes
:/Ý
<token_and_position_embedding_5/embedding_11/embedding_lookupResourceGatherFtoken_and_position_embedding_5_embedding_11_embedding_lookup_177374974-token_and_position_embedding_5/range:output:0*
Tindices0*Y
_classO
MKloc:@token_and_position_embedding_5/embedding_11/embedding_lookup/177374974*
_output_shapes

:/2*
dtype0
Etoken_and_position_embedding_5/embedding_11/embedding_lookup/IdentityIdentityEtoken_and_position_embedding_5/embedding_11/embedding_lookup:output:0*
T0*Y
_classO
MKloc:@token_and_position_embedding_5/embedding_11/embedding_lookup/177374974*
_output_shapes

:/2Ì
Gtoken_and_position_embedding_5/embedding_11/embedding_lookup/Identity_1IdentityNtoken_and_position_embedding_5/embedding_11/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:/2
0token_and_position_embedding_5/embedding_10/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ñ
<token_and_position_embedding_5/embedding_10/embedding_lookupResourceGatherFtoken_and_position_embedding_5_embedding_10_embedding_lookup_1773749804token_and_position_embedding_5/embedding_10/Cast:y:0*
Tindices0*Y
_classO
MKloc:@token_and_position_embedding_5/embedding_10/embedding_lookup/177374980*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
dtype0©
Etoken_and_position_embedding_5/embedding_10/embedding_lookup/IdentityIdentityEtoken_and_position_embedding_5/embedding_10/embedding_lookup:output:0*
T0*Y
_classO
MKloc:@token_and_position_embedding_5/embedding_10/embedding_lookup/177374980*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ù
Gtoken_and_position_embedding_5/embedding_10/embedding_lookup/Identity_1IdentityNtoken_and_position_embedding_5/embedding_10/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
"token_and_position_embedding_5/addAddV2Ptoken_and_position_embedding_5/embedding_10/embedding_lookup/Identity_1:output:0Ptoken_and_position_embedding_5/embedding_11/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2ì
Otransformer_encoder_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_5_multi_head_attention_5_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0«
@transformer_encoder_5/multi_head_attention_5/query/einsum/EinsumEinsum&token_and_position_embedding_5/add:z:0Wtransformer_encoder_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabc,cde->abdeÔ
Etransformer_encoder_5/multi_head_attention_5/query/add/ReadVariableOpReadVariableOpNtransformer_encoder_5_multi_head_attention_5_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0
6transformer_encoder_5/multi_head_attention_5/query/addAddV2Itransformer_encoder_5/multi_head_attention_5/query/einsum/Einsum:output:0Mtransformer_encoder_5/multi_head_attention_5/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2è
Mtransformer_encoder_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_encoder_5_multi_head_attention_5_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0§
>transformer_encoder_5/multi_head_attention_5/key/einsum/EinsumEinsum&token_and_position_embedding_5/add:z:0Utransformer_encoder_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabc,cde->abdeÐ
Ctransformer_encoder_5/multi_head_attention_5/key/add/ReadVariableOpReadVariableOpLtransformer_encoder_5_multi_head_attention_5_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0
4transformer_encoder_5/multi_head_attention_5/key/addAddV2Gtransformer_encoder_5/multi_head_attention_5/key/einsum/Einsum:output:0Ktransformer_encoder_5/multi_head_attention_5/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2ì
Otransformer_encoder_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_5_multi_head_attention_5_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0«
@transformer_encoder_5/multi_head_attention_5/value/einsum/EinsumEinsum&token_and_position_embedding_5/add:z:0Wtransformer_encoder_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabc,cde->abdeÔ
Etransformer_encoder_5/multi_head_attention_5/value/add/ReadVariableOpReadVariableOpNtransformer_encoder_5_multi_head_attention_5_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0
6transformer_encoder_5/multi_head_attention_5/value/addAddV2Itransformer_encoder_5/multi_head_attention_5/value/einsum/Einsum:output:0Mtransformer_encoder_5/multi_head_attention_5/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2w
2transformer_encoder_5/multi_head_attention_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>ê
0transformer_encoder_5/multi_head_attention_5/MulMul:transformer_encoder_5/multi_head_attention_5/query/add:z:0;transformer_encoder_5/multi_head_attention_5/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
:transformer_encoder_5/multi_head_attention_5/einsum/EinsumEinsum8transformer_encoder_5/multi_head_attention_5/key/add:z:04transformer_encoder_5/multi_head_attention_5/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//*
equationaecd,abcd->acbeÆ
<transformer_encoder_5/multi_head_attention_5/softmax/SoftmaxSoftmaxCtransformer_encoder_5/multi_head_attention_5/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//Ë
=transformer_encoder_5/multi_head_attention_5/dropout/IdentityIdentityFtransformer_encoder_5/multi_head_attention_5/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//¬
<transformer_encoder_5/multi_head_attention_5/einsum_1/EinsumEinsumFtransformer_encoder_5/multi_head_attention_5/dropout/Identity:output:0:transformer_encoder_5/multi_head_attention_5/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationacbe,aecd->abcd
Ztransformer_encoder_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpctransformer_encoder_5_multi_head_attention_5_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ü
Ktransformer_encoder_5/multi_head_attention_5/attention_output/einsum/EinsumEinsumEtransformer_encoder_5/multi_head_attention_5/einsum_1/Einsum:output:0btransformer_encoder_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabcd,cde->abeæ
Ptransformer_encoder_5/multi_head_attention_5/attention_output/add/ReadVariableOpReadVariableOpYtransformer_encoder_5_multi_head_attention_5_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0°
Atransformer_encoder_5/multi_head_attention_5/attention_output/addAddV2Ttransformer_encoder_5/multi_head_attention_5/attention_output/einsum/Einsum:output:0Xtransformer_encoder_5/multi_head_attention_5/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2²
)transformer_encoder_5/dropout_16/IdentityIdentityEtransformer_encoder_5/multi_head_attention_5/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2´
transformer_encoder_5/addAddV2&token_and_position_embedding_5/add:z:02transformer_encoder_5/dropout_16/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
Ktransformer_encoder_5/layer_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ý
9transformer_encoder_5/layer_normalization_10/moments/meanMeantransformer_encoder_5/add:z:0Ttransformer_encoder_5/layer_normalization_10/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(Ë
Atransformer_encoder_5/layer_normalization_10/moments/StopGradientStopGradientBtransformer_encoder_5/layer_normalization_10/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ü
Ftransformer_encoder_5/layer_normalization_10/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_5/add:z:0Jtransformer_encoder_5/layer_normalization_10/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
Otransformer_encoder_5/layer_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:²
=transformer_encoder_5/layer_normalization_10/moments/varianceMeanJtransformer_encoder_5/layer_normalization_10/moments/SquaredDifference:z:0Xtransformer_encoder_5/layer_normalization_10/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(
<transformer_encoder_5/layer_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
:transformer_encoder_5/layer_normalization_10/batchnorm/addAddV2Ftransformer_encoder_5/layer_normalization_10/moments/variance:output:0Etransformer_encoder_5/layer_normalization_10/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/»
<transformer_encoder_5/layer_normalization_10/batchnorm/RsqrtRsqrt>transformer_encoder_5/layer_normalization_10/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/Ø
Itransformer_encoder_5/layer_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOpRtransformer_encoder_5_layer_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
:transformer_encoder_5/layer_normalization_10/batchnorm/mulMul@transformer_encoder_5/layer_normalization_10/batchnorm/Rsqrt:y:0Qtransformer_encoder_5/layer_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ø
<transformer_encoder_5/layer_normalization_10/batchnorm/mul_1Multransformer_encoder_5/add:z:0>transformer_encoder_5/layer_normalization_10/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2ý
<transformer_encoder_5/layer_normalization_10/batchnorm/mul_2MulBtransformer_encoder_5/layer_normalization_10/moments/mean:output:0>transformer_encoder_5/layer_normalization_10/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ð
Etransformer_encoder_5/layer_normalization_10/batchnorm/ReadVariableOpReadVariableOpNtransformer_encoder_5_layer_normalization_10_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
:transformer_encoder_5/layer_normalization_10/batchnorm/subSubMtransformer_encoder_5/layer_normalization_10/batchnorm/ReadVariableOp:value:0@transformer_encoder_5/layer_normalization_10/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2ý
<transformer_encoder_5/layer_normalization_10/batchnorm/add_1AddV2@transformer_encoder_5/layer_normalization_10/batchnorm/mul_1:z:0>transformer_encoder_5/layer_normalization_10/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ò
Dtransformer_encoder_5/sequential_5/dense_20/Tensordot/ReadVariableOpReadVariableOpMtransformer_encoder_5_sequential_5_dense_20_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0
:transformer_encoder_5/sequential_5/dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
:transformer_encoder_5/sequential_5/dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       «
;transformer_encoder_5/sequential_5/dense_20/Tensordot/ShapeShape@transformer_encoder_5/layer_normalization_10/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Ctransformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
>transformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2GatherV2Dtransformer_encoder_5/sequential_5/dense_20/Tensordot/Shape:output:0Ctransformer_encoder_5/sequential_5/dense_20/Tensordot/free:output:0Ltransformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Etransformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ï
@transformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2_1GatherV2Dtransformer_encoder_5/sequential_5/dense_20/Tensordot/Shape:output:0Ctransformer_encoder_5/sequential_5/dense_20/Tensordot/axes:output:0Ntransformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
;transformer_encoder_5/sequential_5/dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ò
:transformer_encoder_5/sequential_5/dense_20/Tensordot/ProdProdGtransformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2:output:0Dtransformer_encoder_5/sequential_5/dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: 
=transformer_encoder_5/sequential_5/dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ø
<transformer_encoder_5/sequential_5/dense_20/Tensordot/Prod_1ProdItransformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2_1:output:0Ftransformer_encoder_5/sequential_5/dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Atransformer_encoder_5/sequential_5/dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ì
<transformer_encoder_5/sequential_5/dense_20/Tensordot/concatConcatV2Ctransformer_encoder_5/sequential_5/dense_20/Tensordot/free:output:0Ctransformer_encoder_5/sequential_5/dense_20/Tensordot/axes:output:0Jtransformer_encoder_5/sequential_5/dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ý
;transformer_encoder_5/sequential_5/dense_20/Tensordot/stackPackCtransformer_encoder_5/sequential_5/dense_20/Tensordot/Prod:output:0Etransformer_encoder_5/sequential_5/dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
?transformer_encoder_5/sequential_5/dense_20/Tensordot/transpose	Transpose@transformer_encoder_5/layer_normalization_10/batchnorm/add_1:z:0Etransformer_encoder_5/sequential_5/dense_20/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
=transformer_encoder_5/sequential_5/dense_20/Tensordot/ReshapeReshapeCtransformer_encoder_5/sequential_5/dense_20/Tensordot/transpose:y:0Dtransformer_encoder_5/sequential_5/dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
<transformer_encoder_5/sequential_5/dense_20/Tensordot/MatMulMatMulFtransformer_encoder_5/sequential_5/dense_20/Tensordot/Reshape:output:0Ltransformer_encoder_5/sequential_5/dense_20/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
=transformer_encoder_5/sequential_5/dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
Ctransformer_encoder_5/sequential_5/dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
>transformer_encoder_5/sequential_5/dense_20/Tensordot/concat_1ConcatV2Gtransformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2:output:0Ftransformer_encoder_5/sequential_5/dense_20/Tensordot/Const_2:output:0Ltransformer_encoder_5/sequential_5/dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
5transformer_encoder_5/sequential_5/dense_20/TensordotReshapeFtransformer_encoder_5/sequential_5/dense_20/Tensordot/MatMul:product:0Gtransformer_encoder_5/sequential_5/dense_20/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ Ê
Btransformer_encoder_5/sequential_5/dense_20/BiasAdd/ReadVariableOpReadVariableOpKtransformer_encoder_5_sequential_5_dense_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
3transformer_encoder_5/sequential_5/dense_20/BiasAddBiasAdd>transformer_encoder_5/sequential_5/dense_20/Tensordot:output:0Jtransformer_encoder_5/sequential_5/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ ¬
0transformer_encoder_5/sequential_5/dense_20/ReluRelu<transformer_encoder_5/sequential_5/dense_20/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ Ò
Dtransformer_encoder_5/sequential_5/dense_21/Tensordot/ReadVariableOpReadVariableOpMtransformer_encoder_5_sequential_5_dense_21_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0
:transformer_encoder_5/sequential_5/dense_21/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
:transformer_encoder_5/sequential_5/dense_21/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ©
;transformer_encoder_5/sequential_5/dense_21/Tensordot/ShapeShape>transformer_encoder_5/sequential_5/dense_20/Relu:activations:0*
T0*
_output_shapes
:
Ctransformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
>transformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2GatherV2Dtransformer_encoder_5/sequential_5/dense_21/Tensordot/Shape:output:0Ctransformer_encoder_5/sequential_5/dense_21/Tensordot/free:output:0Ltransformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Etransformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ï
@transformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2_1GatherV2Dtransformer_encoder_5/sequential_5/dense_21/Tensordot/Shape:output:0Ctransformer_encoder_5/sequential_5/dense_21/Tensordot/axes:output:0Ntransformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
;transformer_encoder_5/sequential_5/dense_21/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ò
:transformer_encoder_5/sequential_5/dense_21/Tensordot/ProdProdGtransformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2:output:0Dtransformer_encoder_5/sequential_5/dense_21/Tensordot/Const:output:0*
T0*
_output_shapes
: 
=transformer_encoder_5/sequential_5/dense_21/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ø
<transformer_encoder_5/sequential_5/dense_21/Tensordot/Prod_1ProdItransformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2_1:output:0Ftransformer_encoder_5/sequential_5/dense_21/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Atransformer_encoder_5/sequential_5/dense_21/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ì
<transformer_encoder_5/sequential_5/dense_21/Tensordot/concatConcatV2Ctransformer_encoder_5/sequential_5/dense_21/Tensordot/free:output:0Ctransformer_encoder_5/sequential_5/dense_21/Tensordot/axes:output:0Jtransformer_encoder_5/sequential_5/dense_21/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ý
;transformer_encoder_5/sequential_5/dense_21/Tensordot/stackPackCtransformer_encoder_5/sequential_5/dense_21/Tensordot/Prod:output:0Etransformer_encoder_5/sequential_5/dense_21/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
?transformer_encoder_5/sequential_5/dense_21/Tensordot/transpose	Transpose>transformer_encoder_5/sequential_5/dense_20/Relu:activations:0Etransformer_encoder_5/sequential_5/dense_21/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ 
=transformer_encoder_5/sequential_5/dense_21/Tensordot/ReshapeReshapeCtransformer_encoder_5/sequential_5/dense_21/Tensordot/transpose:y:0Dtransformer_encoder_5/sequential_5/dense_21/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
<transformer_encoder_5/sequential_5/dense_21/Tensordot/MatMulMatMulFtransformer_encoder_5/sequential_5/dense_21/Tensordot/Reshape:output:0Ltransformer_encoder_5/sequential_5/dense_21/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
=transformer_encoder_5/sequential_5/dense_21/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Ctransformer_encoder_5/sequential_5/dense_21/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
>transformer_encoder_5/sequential_5/dense_21/Tensordot/concat_1ConcatV2Gtransformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2:output:0Ftransformer_encoder_5/sequential_5/dense_21/Tensordot/Const_2:output:0Ltransformer_encoder_5/sequential_5/dense_21/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
5transformer_encoder_5/sequential_5/dense_21/TensordotReshapeFtransformer_encoder_5/sequential_5/dense_21/Tensordot/MatMul:product:0Gtransformer_encoder_5/sequential_5/dense_21/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ê
Btransformer_encoder_5/sequential_5/dense_21/BiasAdd/ReadVariableOpReadVariableOpKtransformer_encoder_5_sequential_5_dense_21_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
3transformer_encoder_5/sequential_5/dense_21/BiasAddBiasAdd>transformer_encoder_5/sequential_5/dense_21/Tensordot:output:0Jtransformer_encoder_5/sequential_5/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2©
)transformer_encoder_5/dropout_17/IdentityIdentity<transformer_encoder_5/sequential_5/dense_21/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ð
transformer_encoder_5/add_1AddV2@transformer_encoder_5/layer_normalization_10/batchnorm/add_1:z:02transformer_encoder_5/dropout_17/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
Ktransformer_encoder_5/layer_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ÿ
9transformer_encoder_5/layer_normalization_11/moments/meanMeantransformer_encoder_5/add_1:z:0Ttransformer_encoder_5/layer_normalization_11/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(Ë
Atransformer_encoder_5/layer_normalization_11/moments/StopGradientStopGradientBtransformer_encoder_5/layer_normalization_11/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/þ
Ftransformer_encoder_5/layer_normalization_11/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_5/add_1:z:0Jtransformer_encoder_5/layer_normalization_11/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
Otransformer_encoder_5/layer_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:²
=transformer_encoder_5/layer_normalization_11/moments/varianceMeanJtransformer_encoder_5/layer_normalization_11/moments/SquaredDifference:z:0Xtransformer_encoder_5/layer_normalization_11/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(
<transformer_encoder_5/layer_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
:transformer_encoder_5/layer_normalization_11/batchnorm/addAddV2Ftransformer_encoder_5/layer_normalization_11/moments/variance:output:0Etransformer_encoder_5/layer_normalization_11/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/»
<transformer_encoder_5/layer_normalization_11/batchnorm/RsqrtRsqrt>transformer_encoder_5/layer_normalization_11/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/Ø
Itransformer_encoder_5/layer_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOpRtransformer_encoder_5_layer_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
:transformer_encoder_5/layer_normalization_11/batchnorm/mulMul@transformer_encoder_5/layer_normalization_11/batchnorm/Rsqrt:y:0Qtransformer_encoder_5/layer_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ú
<transformer_encoder_5/layer_normalization_11/batchnorm/mul_1Multransformer_encoder_5/add_1:z:0>transformer_encoder_5/layer_normalization_11/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2ý
<transformer_encoder_5/layer_normalization_11/batchnorm/mul_2MulBtransformer_encoder_5/layer_normalization_11/moments/mean:output:0>transformer_encoder_5/layer_normalization_11/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ð
Etransformer_encoder_5/layer_normalization_11/batchnorm/ReadVariableOpReadVariableOpNtransformer_encoder_5_layer_normalization_11_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
:transformer_encoder_5/layer_normalization_11/batchnorm/subSubMtransformer_encoder_5/layer_normalization_11/batchnorm/ReadVariableOp:value:0@transformer_encoder_5/layer_normalization_11/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2ý
<transformer_encoder_5/layer_normalization_11/batchnorm/add_1AddV2@transformer_encoder_5/layer_normalization_11/batchnorm/mul_1:z:0>transformer_encoder_5/layer_normalization_11/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2{
rnn_5/ShapeShape@transformer_encoder_5/layer_normalization_11/batchnorm/add_1:z:0*
T0*
_output_shapes
:c
rnn_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
rnn_5/strided_sliceStridedSlicernn_5/Shape:output:0"rnn_5/strided_slice/stack:output:0$rnn_5/strided_slice/stack_1:output:0$rnn_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
rnn_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
rnn_5/zeros/packedPackrnn_5/strided_slice:output:0rnn_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
rnn_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
rnn_5/zerosFillrnn_5/zeros/packed:output:0rnn_5/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.X
rnn_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
rnn_5/zeros_1/packedPackrnn_5/strided_slice:output:0rnn_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:X
rnn_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rnn_5/zeros_1Fillrnn_5/zeros_1/packed:output:0rnn_5/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.i
rnn_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ³
rnn_5/transpose	Transpose@transformer_encoder_5/layer_normalization_11/batchnorm/add_1:z:0rnn_5/transpose/perm:output:0*
T0*+
_output_shapes
:/ÿÿÿÿÿÿÿÿÿ2P
rnn_5/Shape_1Shapernn_5/transpose:y:0*
T0*
_output_shapes
:e
rnn_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
rnn_5/strided_slice_1StridedSlicernn_5/Shape_1:output:0$rnn_5/strided_slice_1/stack:output:0&rnn_5/strided_slice_1/stack_1:output:0&rnn_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!rnn_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÆ
rnn_5/TensorArrayV2TensorListReserve*rnn_5/TensorArrayV2/element_shape:output:0rnn_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
;rnn_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ò
-rnn_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn_5/transpose:y:0Drnn_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒe
rnn_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
rnn_5/strided_slice_2StridedSlicernn_5/transpose:y:0$rnn_5/strided_slice_2/stack:output:0&rnn_5/strided_slice_2/stack_1:output:0&rnn_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
'rnn_5/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp0rnn_5_lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0¦
rnn_5/lstm_cell_5/MatMulMatMulrnn_5/strided_slice_2:output:0/rnn_5/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)rnn_5/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp2rnn_5_lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0 
rnn_5/lstm_cell_5/MatMul_1MatMulrnn_5/zeros:output:01rnn_5/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
rnn_5/lstm_cell_5/addAddV2"rnn_5/lstm_cell_5/MatMul:product:0$rnn_5/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(rnn_5/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp1rnn_5_lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0¤
rnn_5/lstm_cell_5/BiasAddBiasAddrnn_5/lstm_cell_5/add:z:00rnn_5/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!rnn_5/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
rnn_5/lstm_cell_5/splitSplit*rnn_5/lstm_cell_5/split/split_dim:output:0"rnn_5/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
rnn_5/lstm_cell_5/SigmoidSigmoid rnn_5/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
rnn_5/lstm_cell_5/Sigmoid_1Sigmoid rnn_5/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_5/lstm_cell_5/mulMulrnn_5/lstm_cell_5/Sigmoid_1:y:0rnn_5/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
rnn_5/lstm_cell_5/TanhTanh rnn_5/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_5/lstm_cell_5/mul_1Mulrnn_5/lstm_cell_5/Sigmoid:y:0rnn_5/lstm_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_5/lstm_cell_5/add_1AddV2rnn_5/lstm_cell_5/mul:z:0rnn_5/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
rnn_5/lstm_cell_5/Sigmoid_2Sigmoid rnn_5/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
rnn_5/lstm_cell_5/Tanh_1Tanhrnn_5/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_5/lstm_cell_5/mul_2Mulrnn_5/lstm_cell_5/Sigmoid_2:y:0rnn_5/lstm_cell_5/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.t
#rnn_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   d
"rnn_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :×
rnn_5/TensorArrayV2_1TensorListReserve,rnn_5/TensorArrayV2_1/element_shape:output:0+rnn_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒL

rnn_5/timeConst*
_output_shapes
: *
dtype0*
value	B : i
rnn_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿZ
rnn_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ù
rnn_5/whileWhile!rnn_5/while/loop_counter:output:0'rnn_5/while/maximum_iterations:output:0rnn_5/time:output:0rnn_5/TensorArrayV2_1:handle:0rnn_5/zeros:output:0rnn_5/zeros_1:output:0rnn_5/strided_slice_1:output:0=rnn_5/TensorArrayUnstack/TensorListFromTensor:output_handle:00rnn_5_lstm_cell_5_matmul_readvariableop_resource2rnn_5_lstm_cell_5_matmul_1_readvariableop_resource1rnn_5_lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
rnn_5_while_body_177375166*&
condR
rnn_5_while_cond_177375165*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
6rnn_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   è
(rnn_5/TensorArrayV2Stack/TensorListStackTensorListStackrnn_5/while:output:3?rnn_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsn
rnn_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿg
rnn_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
rnn_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¥
rnn_5/strided_slice_3StridedSlice1rnn_5/TensorArrayV2Stack/TensorListStack:tensor:0$rnn_5/strided_slice_3/stack:output:0&rnn_5/strided_slice_3/stack_1:output:0&rnn_5/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maskk
rnn_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¨
rnn_5/transpose_1	Transpose1rnn_5/TensorArrayV2Stack/TensorListStack:tensor:0rnn_5/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes

:..*
dtype0
dense_22/MatMulMatMulrnn_5/strided_slice_3:output:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.b
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:.*
dtype0
dense_23/MatMulMatMuldense_22/Relu:activations:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_23/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp)^rnn_5/lstm_cell_5/BiasAdd/ReadVariableOp(^rnn_5/lstm_cell_5/MatMul/ReadVariableOp*^rnn_5/lstm_cell_5/MatMul_1/ReadVariableOp^rnn_5/while=^token_and_position_embedding_5/embedding_10/embedding_lookup=^token_and_position_embedding_5/embedding_11/embedding_lookupF^transformer_encoder_5/layer_normalization_10/batchnorm/ReadVariableOpJ^transformer_encoder_5/layer_normalization_10/batchnorm/mul/ReadVariableOpF^transformer_encoder_5/layer_normalization_11/batchnorm/ReadVariableOpJ^transformer_encoder_5/layer_normalization_11/batchnorm/mul/ReadVariableOpQ^transformer_encoder_5/multi_head_attention_5/attention_output/add/ReadVariableOp[^transformer_encoder_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpD^transformer_encoder_5/multi_head_attention_5/key/add/ReadVariableOpN^transformer_encoder_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpF^transformer_encoder_5/multi_head_attention_5/query/add/ReadVariableOpP^transformer_encoder_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpF^transformer_encoder_5/multi_head_attention_5/value/add/ReadVariableOpP^transformer_encoder_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOpC^transformer_encoder_5/sequential_5/dense_20/BiasAdd/ReadVariableOpE^transformer_encoder_5/sequential_5/dense_20/Tensordot/ReadVariableOpC^transformer_encoder_5/sequential_5/dense_21/BiasAdd/ReadVariableOpE^transformer_encoder_5/sequential_5/dense_21/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ/: : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2T
(rnn_5/lstm_cell_5/BiasAdd/ReadVariableOp(rnn_5/lstm_cell_5/BiasAdd/ReadVariableOp2R
'rnn_5/lstm_cell_5/MatMul/ReadVariableOp'rnn_5/lstm_cell_5/MatMul/ReadVariableOp2V
)rnn_5/lstm_cell_5/MatMul_1/ReadVariableOp)rnn_5/lstm_cell_5/MatMul_1/ReadVariableOp2
rnn_5/whilernn_5/while2|
<token_and_position_embedding_5/embedding_10/embedding_lookup<token_and_position_embedding_5/embedding_10/embedding_lookup2|
<token_and_position_embedding_5/embedding_11/embedding_lookup<token_and_position_embedding_5/embedding_11/embedding_lookup2
Etransformer_encoder_5/layer_normalization_10/batchnorm/ReadVariableOpEtransformer_encoder_5/layer_normalization_10/batchnorm/ReadVariableOp2
Itransformer_encoder_5/layer_normalization_10/batchnorm/mul/ReadVariableOpItransformer_encoder_5/layer_normalization_10/batchnorm/mul/ReadVariableOp2
Etransformer_encoder_5/layer_normalization_11/batchnorm/ReadVariableOpEtransformer_encoder_5/layer_normalization_11/batchnorm/ReadVariableOp2
Itransformer_encoder_5/layer_normalization_11/batchnorm/mul/ReadVariableOpItransformer_encoder_5/layer_normalization_11/batchnorm/mul/ReadVariableOp2¤
Ptransformer_encoder_5/multi_head_attention_5/attention_output/add/ReadVariableOpPtransformer_encoder_5/multi_head_attention_5/attention_output/add/ReadVariableOp2¸
Ztransformer_encoder_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpZtransformer_encoder_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp2
Ctransformer_encoder_5/multi_head_attention_5/key/add/ReadVariableOpCtransformer_encoder_5/multi_head_attention_5/key/add/ReadVariableOp2
Mtransformer_encoder_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpMtransformer_encoder_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOp2
Etransformer_encoder_5/multi_head_attention_5/query/add/ReadVariableOpEtransformer_encoder_5/multi_head_attention_5/query/add/ReadVariableOp2¢
Otransformer_encoder_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpOtransformer_encoder_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOp2
Etransformer_encoder_5/multi_head_attention_5/value/add/ReadVariableOpEtransformer_encoder_5/multi_head_attention_5/value/add/ReadVariableOp2¢
Otransformer_encoder_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOpOtransformer_encoder_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp2
Btransformer_encoder_5/sequential_5/dense_20/BiasAdd/ReadVariableOpBtransformer_encoder_5/sequential_5/dense_20/BiasAdd/ReadVariableOp2
Dtransformer_encoder_5/sequential_5/dense_20/Tensordot/ReadVariableOpDtransformer_encoder_5/sequential_5/dense_20/Tensordot/ReadVariableOp2
Btransformer_encoder_5/sequential_5/dense_21/BiasAdd/ReadVariableOpBtransformer_encoder_5/sequential_5/dense_21/BiasAdd/ReadVariableOp2
Dtransformer_encoder_5/sequential_5/dense_21/Tensordot/ReadVariableOpDtransformer_encoder_5/sequential_5/dense_21/Tensordot/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
 
_user_specified_nameinputs
J

D__inference_rnn_5_layer_call_and_return_conditional_losses_177373942

inputs=
*lstm_cell_5_matmul_readvariableop_resource:	2¸?
,lstm_cell_5_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_5_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_5/BiasAdd/ReadVariableOp¢!lstm_cell_5/MatMul/ReadVariableOp¢#lstm_cell_5/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
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
value	B :.s
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
:ÿÿÿÿÿÿÿÿÿ.R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.w
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
:ÿÿÿÿÿÿÿÿÿ.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:/ÿÿÿÿÿÿÿÿÿ2D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_5/TanhTanhlstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_5/Tanh_1Tanhlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_2:y:0lstm_cell_5/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
while_body_177373858* 
condR
while_cond_177373857*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.½
NoOpNoOp#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ/2: : : 2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
 
_user_specified_nameinputs
¦
þ
G__inference_dense_20_layer_call_and_return_conditional_losses_177376887

inputs3
!tensordot_readvariableop_resource:2 -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ/2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
 
_user_specified_nameinputs
Ü
¹
9__inference_transformer_encoder_5_layer_call_fn_177375646

inputs
unknown:22
	unknown_0:2
	unknown_1:22
	unknown_2:2
	unknown_3:22
	unknown_4:2
	unknown_5:22
	unknown_6:2
	unknown_7:2
	unknown_8:2
	unknown_9:2 

unknown_10: 

unknown_11: 2

unknown_12:2

unknown_13:2

unknown_14:2
identity¢StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transformer_encoder_5_layer_call_and_return_conditional_losses_177373765s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ/2: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
 
_user_specified_nameinputs
ã?


rnn_5_while_body_177375166(
$rnn_5_while_rnn_5_while_loop_counter.
*rnn_5_while_rnn_5_while_maximum_iterations
rnn_5_while_placeholder
rnn_5_while_placeholder_1
rnn_5_while_placeholder_2
rnn_5_while_placeholder_3'
#rnn_5_while_rnn_5_strided_slice_1_0c
_rnn_5_while_tensorarrayv2read_tensorlistgetitem_rnn_5_tensorarrayunstack_tensorlistfromtensor_0K
8rnn_5_while_lstm_cell_5_matmul_readvariableop_resource_0:	2¸M
:rnn_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0:	.¸H
9rnn_5_while_lstm_cell_5_biasadd_readvariableop_resource_0:	¸
rnn_5_while_identity
rnn_5_while_identity_1
rnn_5_while_identity_2
rnn_5_while_identity_3
rnn_5_while_identity_4
rnn_5_while_identity_5%
!rnn_5_while_rnn_5_strided_slice_1a
]rnn_5_while_tensorarrayv2read_tensorlistgetitem_rnn_5_tensorarrayunstack_tensorlistfromtensorI
6rnn_5_while_lstm_cell_5_matmul_readvariableop_resource:	2¸K
8rnn_5_while_lstm_cell_5_matmul_1_readvariableop_resource:	.¸F
7rnn_5_while_lstm_cell_5_biasadd_readvariableop_resource:	¸¢.rnn_5/while/lstm_cell_5/BiasAdd/ReadVariableOp¢-rnn_5/while/lstm_cell_5/MatMul/ReadVariableOp¢/rnn_5/while/lstm_cell_5/MatMul_1/ReadVariableOp
=rnn_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ä
/rnn_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_rnn_5_while_tensorarrayv2read_tensorlistgetitem_rnn_5_tensorarrayunstack_tensorlistfromtensor_0rnn_5_while_placeholderFrnn_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0§
-rnn_5/while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp8rnn_5_while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0Ê
rnn_5/while/lstm_cell_5/MatMulMatMul6rnn_5/while/TensorArrayV2Read/TensorListGetItem:item:05rnn_5/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸«
/rnn_5/while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp:rnn_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0±
 rnn_5/while/lstm_cell_5/MatMul_1MatMulrnn_5_while_placeholder_27rnn_5/while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸­
rnn_5/while/lstm_cell_5/addAddV2(rnn_5/while/lstm_cell_5/MatMul:product:0*rnn_5/while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸¥
.rnn_5/while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp9rnn_5_while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¶
rnn_5/while/lstm_cell_5/BiasAddBiasAddrnn_5/while/lstm_cell_5/add:z:06rnn_5/while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸i
'rnn_5/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :þ
rnn_5/while/lstm_cell_5/splitSplit0rnn_5/while/lstm_cell_5/split/split_dim:output:0(rnn_5/while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_split
rnn_5/while/lstm_cell_5/SigmoidSigmoid&rnn_5/while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!rnn_5/while/lstm_cell_5/Sigmoid_1Sigmoid&rnn_5/while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_5/while/lstm_cell_5/mulMul%rnn_5/while/lstm_cell_5/Sigmoid_1:y:0rnn_5_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.~
rnn_5/while/lstm_cell_5/TanhTanh&rnn_5/while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_5/while/lstm_cell_5/mul_1Mul#rnn_5/while/lstm_cell_5/Sigmoid:y:0 rnn_5/while/lstm_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_5/while/lstm_cell_5/add_1AddV2rnn_5/while/lstm_cell_5/mul:z:0!rnn_5/while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!rnn_5/while/lstm_cell_5/Sigmoid_2Sigmoid&rnn_5/while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.{
rnn_5/while/lstm_cell_5/Tanh_1Tanh!rnn_5/while/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¡
rnn_5/while/lstm_cell_5/mul_2Mul%rnn_5/while/lstm_cell_5/Sigmoid_2:y:0"rnn_5/while/lstm_cell_5/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
6rnn_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
0rnn_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_5_while_placeholder_1?rnn_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0!rnn_5/while/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒS
rnn_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
rnn_5/while/addAddV2rnn_5_while_placeholderrnn_5/while/add/y:output:0*
T0*
_output_shapes
: U
rnn_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
rnn_5/while/add_1AddV2$rnn_5_while_rnn_5_while_loop_counterrnn_5/while/add_1/y:output:0*
T0*
_output_shapes
: k
rnn_5/while/IdentityIdentityrnn_5/while/add_1:z:0^rnn_5/while/NoOp*
T0*
_output_shapes
: 
rnn_5/while/Identity_1Identity*rnn_5_while_rnn_5_while_maximum_iterations^rnn_5/while/NoOp*
T0*
_output_shapes
: k
rnn_5/while/Identity_2Identityrnn_5/while/add:z:0^rnn_5/while/NoOp*
T0*
_output_shapes
: 
rnn_5/while/Identity_3Identity@rnn_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn_5/while/NoOp*
T0*
_output_shapes
: 
rnn_5/while/Identity_4Identity!rnn_5/while/lstm_cell_5/mul_2:z:0^rnn_5/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_5/while/Identity_5Identity!rnn_5/while/lstm_cell_5/add_1:z:0^rnn_5/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.å
rnn_5/while/NoOpNoOp/^rnn_5/while/lstm_cell_5/BiasAdd/ReadVariableOp.^rnn_5/while/lstm_cell_5/MatMul/ReadVariableOp0^rnn_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "5
rnn_5_while_identityrnn_5/while/Identity:output:0"9
rnn_5_while_identity_1rnn_5/while/Identity_1:output:0"9
rnn_5_while_identity_2rnn_5/while/Identity_2:output:0"9
rnn_5_while_identity_3rnn_5/while/Identity_3:output:0"9
rnn_5_while_identity_4rnn_5/while/Identity_4:output:0"9
rnn_5_while_identity_5rnn_5/while/Identity_5:output:0"t
7rnn_5_while_lstm_cell_5_biasadd_readvariableop_resource9rnn_5_while_lstm_cell_5_biasadd_readvariableop_resource_0"v
8rnn_5_while_lstm_cell_5_matmul_1_readvariableop_resource:rnn_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0"r
6rnn_5_while_lstm_cell_5_matmul_readvariableop_resource8rnn_5_while_lstm_cell_5_matmul_readvariableop_resource_0"H
!rnn_5_while_rnn_5_strided_slice_1#rnn_5_while_rnn_5_strided_slice_1_0"À
]rnn_5_while_tensorarrayv2read_tensorlistgetitem_rnn_5_tensorarrayunstack_tensorlistfromtensor_rnn_5_while_tensorarrayv2read_tensorlistgetitem_rnn_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2`
.rnn_5/while/lstm_cell_5/BiasAdd/ReadVariableOp.rnn_5/while/lstm_cell_5/BiasAdd/ReadVariableOp2^
-rnn_5/while/lstm_cell_5/MatMul/ReadVariableOp-rnn_5/while/lstm_cell_5/MatMul/ReadVariableOp2b
/rnn_5/while/lstm_cell_5/MatMul_1/ReadVariableOp/rnn_5/while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 
ë
á!
$__inference__wrapped_model_177373056
input_6`
Nmodel_5_token_and_position_embedding_5_embedding_11_embedding_lookup_177372767:/2a
Nmodel_5_token_and_position_embedding_5_embedding_10_embedding_lookup_177372773:	2v
`model_5_transformer_encoder_5_multi_head_attention_5_query_einsum_einsum_readvariableop_resource:22h
Vmodel_5_transformer_encoder_5_multi_head_attention_5_query_add_readvariableop_resource:2t
^model_5_transformer_encoder_5_multi_head_attention_5_key_einsum_einsum_readvariableop_resource:22f
Tmodel_5_transformer_encoder_5_multi_head_attention_5_key_add_readvariableop_resource:2v
`model_5_transformer_encoder_5_multi_head_attention_5_value_einsum_einsum_readvariableop_resource:22h
Vmodel_5_transformer_encoder_5_multi_head_attention_5_value_add_readvariableop_resource:2
kmodel_5_transformer_encoder_5_multi_head_attention_5_attention_output_einsum_einsum_readvariableop_resource:22o
amodel_5_transformer_encoder_5_multi_head_attention_5_attention_output_add_readvariableop_resource:2h
Zmodel_5_transformer_encoder_5_layer_normalization_10_batchnorm_mul_readvariableop_resource:2d
Vmodel_5_transformer_encoder_5_layer_normalization_10_batchnorm_readvariableop_resource:2g
Umodel_5_transformer_encoder_5_sequential_5_dense_20_tensordot_readvariableop_resource:2 a
Smodel_5_transformer_encoder_5_sequential_5_dense_20_biasadd_readvariableop_resource: g
Umodel_5_transformer_encoder_5_sequential_5_dense_21_tensordot_readvariableop_resource: 2a
Smodel_5_transformer_encoder_5_sequential_5_dense_21_biasadd_readvariableop_resource:2h
Zmodel_5_transformer_encoder_5_layer_normalization_11_batchnorm_mul_readvariableop_resource:2d
Vmodel_5_transformer_encoder_5_layer_normalization_11_batchnorm_readvariableop_resource:2K
8model_5_rnn_5_lstm_cell_5_matmul_readvariableop_resource:	2¸M
:model_5_rnn_5_lstm_cell_5_matmul_1_readvariableop_resource:	.¸H
9model_5_rnn_5_lstm_cell_5_biasadd_readvariableop_resource:	¸A
/model_5_dense_22_matmul_readvariableop_resource:..>
0model_5_dense_22_biasadd_readvariableop_resource:.A
/model_5_dense_23_matmul_readvariableop_resource:.>
0model_5_dense_23_biasadd_readvariableop_resource:
identity¢'model_5/dense_22/BiasAdd/ReadVariableOp¢&model_5/dense_22/MatMul/ReadVariableOp¢'model_5/dense_23/BiasAdd/ReadVariableOp¢&model_5/dense_23/MatMul/ReadVariableOp¢0model_5/rnn_5/lstm_cell_5/BiasAdd/ReadVariableOp¢/model_5/rnn_5/lstm_cell_5/MatMul/ReadVariableOp¢1model_5/rnn_5/lstm_cell_5/MatMul_1/ReadVariableOp¢model_5/rnn_5/while¢Dmodel_5/token_and_position_embedding_5/embedding_10/embedding_lookup¢Dmodel_5/token_and_position_embedding_5/embedding_11/embedding_lookup¢Mmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/ReadVariableOp¢Qmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/mul/ReadVariableOp¢Mmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/ReadVariableOp¢Qmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/mul/ReadVariableOp¢Xmodel_5/transformer_encoder_5/multi_head_attention_5/attention_output/add/ReadVariableOp¢bmodel_5/transformer_encoder_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp¢Kmodel_5/transformer_encoder_5/multi_head_attention_5/key/add/ReadVariableOp¢Umodel_5/transformer_encoder_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOp¢Mmodel_5/transformer_encoder_5/multi_head_attention_5/query/add/ReadVariableOp¢Wmodel_5/transformer_encoder_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOp¢Mmodel_5/transformer_encoder_5/multi_head_attention_5/value/add/ReadVariableOp¢Wmodel_5/transformer_encoder_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp¢Jmodel_5/transformer_encoder_5/sequential_5/dense_20/BiasAdd/ReadVariableOp¢Lmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/ReadVariableOp¢Jmodel_5/transformer_encoder_5/sequential_5/dense_21/BiasAdd/ReadVariableOp¢Lmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/ReadVariableOpc
,model_5/token_and_position_embedding_5/ShapeShapeinput_6*
T0*
_output_shapes
:
:model_5/token_and_position_embedding_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
<model_5/token_and_position_embedding_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<model_5/token_and_position_embedding_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4model_5/token_and_position_embedding_5/strided_sliceStridedSlice5model_5/token_and_position_embedding_5/Shape:output:0Cmodel_5/token_and_position_embedding_5/strided_slice/stack:output:0Emodel_5/token_and_position_embedding_5/strided_slice/stack_1:output:0Emodel_5/token_and_position_embedding_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
2model_5/token_and_position_embedding_5/range/startConst*
_output_shapes
: *
dtype0*
value	B : t
2model_5/token_and_position_embedding_5/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
,model_5/token_and_position_embedding_5/rangeRange;model_5/token_and_position_embedding_5/range/start:output:0=model_5/token_and_position_embedding_5/strided_slice:output:0;model_5/token_and_position_embedding_5/range/delta:output:0*
_output_shapes
:/ý
Dmodel_5/token_and_position_embedding_5/embedding_11/embedding_lookupResourceGatherNmodel_5_token_and_position_embedding_5_embedding_11_embedding_lookup_1773727675model_5/token_and_position_embedding_5/range:output:0*
Tindices0*a
_classW
USloc:@model_5/token_and_position_embedding_5/embedding_11/embedding_lookup/177372767*
_output_shapes

:/2*
dtype0´
Mmodel_5/token_and_position_embedding_5/embedding_11/embedding_lookup/IdentityIdentityMmodel_5/token_and_position_embedding_5/embedding_11/embedding_lookup:output:0*
T0*a
_classW
USloc:@model_5/token_and_position_embedding_5/embedding_11/embedding_lookup/177372767*
_output_shapes

:/2Ü
Omodel_5/token_and_position_embedding_5/embedding_11/embedding_lookup/Identity_1IdentityVmodel_5/token_and_position_embedding_5/embedding_11/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:/2
8model_5/token_and_position_embedding_5/embedding_10/CastCastinput_6*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
Dmodel_5/token_and_position_embedding_5/embedding_10/embedding_lookupResourceGatherNmodel_5_token_and_position_embedding_5_embedding_10_embedding_lookup_177372773<model_5/token_and_position_embedding_5/embedding_10/Cast:y:0*
Tindices0*a
_classW
USloc:@model_5/token_and_position_embedding_5/embedding_10/embedding_lookup/177372773*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
dtype0Á
Mmodel_5/token_and_position_embedding_5/embedding_10/embedding_lookup/IdentityIdentityMmodel_5/token_and_position_embedding_5/embedding_10/embedding_lookup:output:0*
T0*a
_classW
USloc:@model_5/token_and_position_embedding_5/embedding_10/embedding_lookup/177372773*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2é
Omodel_5/token_and_position_embedding_5/embedding_10/embedding_lookup/Identity_1IdentityVmodel_5/token_and_position_embedding_5/embedding_10/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
*model_5/token_and_position_embedding_5/addAddV2Xmodel_5/token_and_position_embedding_5/embedding_10/embedding_lookup/Identity_1:output:0Xmodel_5/token_and_position_embedding_5/embedding_11/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2ü
Wmodel_5/transformer_encoder_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpReadVariableOp`model_5_transformer_encoder_5_multi_head_attention_5_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ã
Hmodel_5/transformer_encoder_5/multi_head_attention_5/query/einsum/EinsumEinsum.model_5/token_and_position_embedding_5/add:z:0_model_5/transformer_encoder_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabc,cde->abdeä
Mmodel_5/transformer_encoder_5/multi_head_attention_5/query/add/ReadVariableOpReadVariableOpVmodel_5_transformer_encoder_5_multi_head_attention_5_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0«
>model_5/transformer_encoder_5/multi_head_attention_5/query/addAddV2Qmodel_5/transformer_encoder_5/multi_head_attention_5/query/einsum/Einsum:output:0Umodel_5/transformer_encoder_5/multi_head_attention_5/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2ø
Umodel_5/transformer_encoder_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpReadVariableOp^model_5_transformer_encoder_5_multi_head_attention_5_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0¿
Fmodel_5/transformer_encoder_5/multi_head_attention_5/key/einsum/EinsumEinsum.model_5/token_and_position_embedding_5/add:z:0]model_5/transformer_encoder_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabc,cde->abdeà
Kmodel_5/transformer_encoder_5/multi_head_attention_5/key/add/ReadVariableOpReadVariableOpTmodel_5_transformer_encoder_5_multi_head_attention_5_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0¥
<model_5/transformer_encoder_5/multi_head_attention_5/key/addAddV2Omodel_5/transformer_encoder_5/multi_head_attention_5/key/einsum/Einsum:output:0Smodel_5/transformer_encoder_5/multi_head_attention_5/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2ü
Wmodel_5/transformer_encoder_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOpReadVariableOp`model_5_transformer_encoder_5_multi_head_attention_5_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ã
Hmodel_5/transformer_encoder_5/multi_head_attention_5/value/einsum/EinsumEinsum.model_5/token_and_position_embedding_5/add:z:0_model_5/transformer_encoder_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabc,cde->abdeä
Mmodel_5/transformer_encoder_5/multi_head_attention_5/value/add/ReadVariableOpReadVariableOpVmodel_5_transformer_encoder_5_multi_head_attention_5_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0«
>model_5/transformer_encoder_5/multi_head_attention_5/value/addAddV2Qmodel_5/transformer_encoder_5/multi_head_attention_5/value/einsum/Einsum:output:0Umodel_5/transformer_encoder_5/multi_head_attention_5/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
:model_5/transformer_encoder_5/multi_head_attention_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>
8model_5/transformer_encoder_5/multi_head_attention_5/MulMulBmodel_5/transformer_encoder_5/multi_head_attention_5/query/add:z:0Cmodel_5/transformer_encoder_5/multi_head_attention_5/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2®
Bmodel_5/transformer_encoder_5/multi_head_attention_5/einsum/EinsumEinsum@model_5/transformer_encoder_5/multi_head_attention_5/key/add:z:0<model_5/transformer_encoder_5/multi_head_attention_5/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//*
equationaecd,abcd->acbeÖ
Dmodel_5/transformer_encoder_5/multi_head_attention_5/softmax/SoftmaxSoftmaxKmodel_5/transformer_encoder_5/multi_head_attention_5/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//Û
Emodel_5/transformer_encoder_5/multi_head_attention_5/dropout/IdentityIdentityNmodel_5/transformer_encoder_5/multi_head_attention_5/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//Ä
Dmodel_5/transformer_encoder_5/multi_head_attention_5/einsum_1/EinsumEinsumNmodel_5/transformer_encoder_5/multi_head_attention_5/dropout/Identity:output:0Bmodel_5/transformer_encoder_5/multi_head_attention_5/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationacbe,aecd->abcd
bmodel_5/transformer_encoder_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpkmodel_5_transformer_encoder_5_multi_head_attention_5_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ô
Smodel_5/transformer_encoder_5/multi_head_attention_5/attention_output/einsum/EinsumEinsumMmodel_5/transformer_encoder_5/multi_head_attention_5/einsum_1/Einsum:output:0jmodel_5/transformer_encoder_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabcd,cde->abeö
Xmodel_5/transformer_encoder_5/multi_head_attention_5/attention_output/add/ReadVariableOpReadVariableOpamodel_5_transformer_encoder_5_multi_head_attention_5_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0È
Imodel_5/transformer_encoder_5/multi_head_attention_5/attention_output/addAddV2\model_5/transformer_encoder_5/multi_head_attention_5/attention_output/einsum/Einsum:output:0`model_5/transformer_encoder_5/multi_head_attention_5/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Â
1model_5/transformer_encoder_5/dropout_16/IdentityIdentityMmodel_5/transformer_encoder_5/multi_head_attention_5/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ì
!model_5/transformer_encoder_5/addAddV2.model_5/token_and_position_embedding_5/add:z:0:model_5/transformer_encoder_5/dropout_16/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
Smodel_5/transformer_encoder_5/layer_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
Amodel_5/transformer_encoder_5/layer_normalization_10/moments/meanMean%model_5/transformer_encoder_5/add:z:0\model_5/transformer_encoder_5/layer_normalization_10/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(Û
Imodel_5/transformer_encoder_5/layer_normalization_10/moments/StopGradientStopGradientJmodel_5/transformer_encoder_5/layer_normalization_10/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
Nmodel_5/transformer_encoder_5/layer_normalization_10/moments/SquaredDifferenceSquaredDifference%model_5/transformer_encoder_5/add:z:0Rmodel_5/transformer_encoder_5/layer_normalization_10/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¡
Wmodel_5/transformer_encoder_5/layer_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ê
Emodel_5/transformer_encoder_5/layer_normalization_10/moments/varianceMeanRmodel_5/transformer_encoder_5/layer_normalization_10/moments/SquaredDifference:z:0`model_5/transformer_encoder_5/layer_normalization_10/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(
Dmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75 
Bmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/addAddV2Nmodel_5/transformer_encoder_5/layer_normalization_10/moments/variance:output:0Mmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/Ë
Dmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/RsqrtRsqrtFmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/è
Qmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOpZmodel_5_transformer_encoder_5_layer_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0¤
Bmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/mulMulHmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/Rsqrt:y:0Ymodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2ð
Dmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/mul_1Mul%model_5/transformer_encoder_5/add:z:0Fmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
Dmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/mul_2MulJmodel_5/transformer_encoder_5/layer_normalization_10/moments/mean:output:0Fmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2à
Mmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/ReadVariableOpReadVariableOpVmodel_5_transformer_encoder_5_layer_normalization_10_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0 
Bmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/subSubUmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/ReadVariableOp:value:0Hmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
Dmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/add_1AddV2Hmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/mul_1:z:0Fmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2â
Lmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/ReadVariableOpReadVariableOpUmodel_5_transformer_encoder_5_sequential_5_dense_20_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0
Bmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
Bmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       »
Cmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/ShapeShapeHmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Kmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Fmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2GatherV2Lmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/Shape:output:0Kmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/free:output:0Tmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Mmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Hmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2_1GatherV2Lmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/Shape:output:0Kmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/axes:output:0Vmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Cmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Bmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/ProdProdOmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2:output:0Lmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: 
Emodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Dmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/Prod_1ProdQmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2_1:output:0Nmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Imodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ì
Dmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/concatConcatV2Kmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/free:output:0Kmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/axes:output:0Rmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
Cmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/stackPackKmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/Prod:output:0Mmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:£
Gmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/transpose	TransposeHmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/add_1:z:0Mmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¦
Emodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/ReshapeReshapeKmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/transpose:y:0Lmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¦
Dmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/MatMulMatMulNmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/Reshape:output:0Tmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
Emodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
Kmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Fmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/concat_1ConcatV2Omodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2:output:0Nmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/Const_2:output:0Tmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
=model_5/transformer_encoder_5/sequential_5/dense_20/TensordotReshapeNmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/MatMul:product:0Omodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ Ú
Jmodel_5/transformer_encoder_5/sequential_5/dense_20/BiasAdd/ReadVariableOpReadVariableOpSmodel_5_transformer_encoder_5_sequential_5_dense_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
;model_5/transformer_encoder_5/sequential_5/dense_20/BiasAddBiasAddFmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot:output:0Rmodel_5/transformer_encoder_5/sequential_5/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ ¼
8model_5/transformer_encoder_5/sequential_5/dense_20/ReluReluDmodel_5/transformer_encoder_5/sequential_5/dense_20/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ â
Lmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/ReadVariableOpReadVariableOpUmodel_5_transformer_encoder_5_sequential_5_dense_21_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0
Bmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
Bmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ¹
Cmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/ShapeShapeFmodel_5/transformer_encoder_5/sequential_5/dense_20/Relu:activations:0*
T0*
_output_shapes
:
Kmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Fmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2GatherV2Lmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/Shape:output:0Kmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/free:output:0Tmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Mmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Hmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2_1GatherV2Lmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/Shape:output:0Kmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/axes:output:0Vmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Cmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Bmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/ProdProdOmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2:output:0Lmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/Const:output:0*
T0*
_output_shapes
: 
Emodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Dmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/Prod_1ProdQmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2_1:output:0Nmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Imodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ì
Dmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/concatConcatV2Kmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/free:output:0Kmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/axes:output:0Rmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
Cmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/stackPackKmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/Prod:output:0Mmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¡
Gmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/transpose	TransposeFmodel_5/transformer_encoder_5/sequential_5/dense_20/Relu:activations:0Mmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ ¦
Emodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/ReshapeReshapeKmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/transpose:y:0Lmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¦
Dmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/MatMulMatMulNmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/Reshape:output:0Tmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Emodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Kmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Fmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/concat_1ConcatV2Omodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2:output:0Nmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/Const_2:output:0Tmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
=model_5/transformer_encoder_5/sequential_5/dense_21/TensordotReshapeNmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/MatMul:product:0Omodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ú
Jmodel_5/transformer_encoder_5/sequential_5/dense_21/BiasAdd/ReadVariableOpReadVariableOpSmodel_5_transformer_encoder_5_sequential_5_dense_21_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
;model_5/transformer_encoder_5/sequential_5/dense_21/BiasAddBiasAddFmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot:output:0Rmodel_5/transformer_encoder_5/sequential_5/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¹
1model_5/transformer_encoder_5/dropout_17/IdentityIdentityDmodel_5/transformer_encoder_5/sequential_5/dense_21/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2è
#model_5/transformer_encoder_5/add_1AddV2Hmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/add_1:z:0:model_5/transformer_encoder_5/dropout_17/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
Smodel_5/transformer_encoder_5/layer_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
Amodel_5/transformer_encoder_5/layer_normalization_11/moments/meanMean'model_5/transformer_encoder_5/add_1:z:0\model_5/transformer_encoder_5/layer_normalization_11/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(Û
Imodel_5/transformer_encoder_5/layer_normalization_11/moments/StopGradientStopGradientJmodel_5/transformer_encoder_5/layer_normalization_11/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
Nmodel_5/transformer_encoder_5/layer_normalization_11/moments/SquaredDifferenceSquaredDifference'model_5/transformer_encoder_5/add_1:z:0Rmodel_5/transformer_encoder_5/layer_normalization_11/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¡
Wmodel_5/transformer_encoder_5/layer_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ê
Emodel_5/transformer_encoder_5/layer_normalization_11/moments/varianceMeanRmodel_5/transformer_encoder_5/layer_normalization_11/moments/SquaredDifference:z:0`model_5/transformer_encoder_5/layer_normalization_11/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(
Dmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75 
Bmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/addAddV2Nmodel_5/transformer_encoder_5/layer_normalization_11/moments/variance:output:0Mmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/Ë
Dmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/RsqrtRsqrtFmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/è
Qmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOpZmodel_5_transformer_encoder_5_layer_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0¤
Bmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/mulMulHmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/Rsqrt:y:0Ymodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2ò
Dmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/mul_1Mul'model_5/transformer_encoder_5/add_1:z:0Fmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
Dmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/mul_2MulJmodel_5/transformer_encoder_5/layer_normalization_11/moments/mean:output:0Fmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2à
Mmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/ReadVariableOpReadVariableOpVmodel_5_transformer_encoder_5_layer_normalization_11_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0 
Bmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/subSubUmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/ReadVariableOp:value:0Hmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
Dmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/add_1AddV2Hmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/mul_1:z:0Fmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
model_5/rnn_5/ShapeShapeHmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/add_1:z:0*
T0*
_output_shapes
:k
!model_5/rnn_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#model_5/rnn_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#model_5/rnn_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
model_5/rnn_5/strided_sliceStridedSlicemodel_5/rnn_5/Shape:output:0*model_5/rnn_5/strided_slice/stack:output:0,model_5/rnn_5/strided_slice/stack_1:output:0,model_5/rnn_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
model_5/rnn_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
model_5/rnn_5/zeros/packedPack$model_5/rnn_5/strided_slice:output:0%model_5/rnn_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
model_5/rnn_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
model_5/rnn_5/zerosFill#model_5/rnn_5/zeros/packed:output:0"model_5/rnn_5/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.`
model_5/rnn_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.¡
model_5/rnn_5/zeros_1/packedPack$model_5/rnn_5/strided_slice:output:0'model_5/rnn_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:`
model_5/rnn_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
model_5/rnn_5/zeros_1Fill%model_5/rnn_5/zeros_1/packed:output:0$model_5/rnn_5/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.q
model_5/rnn_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ë
model_5/rnn_5/transpose	TransposeHmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/add_1:z:0%model_5/rnn_5/transpose/perm:output:0*
T0*+
_output_shapes
:/ÿÿÿÿÿÿÿÿÿ2`
model_5/rnn_5/Shape_1Shapemodel_5/rnn_5/transpose:y:0*
T0*
_output_shapes
:m
#model_5/rnn_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%model_5/rnn_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%model_5/rnn_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
model_5/rnn_5/strided_slice_1StridedSlicemodel_5/rnn_5/Shape_1:output:0,model_5/rnn_5/strided_slice_1/stack:output:0.model_5/rnn_5/strided_slice_1/stack_1:output:0.model_5/rnn_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)model_5/rnn_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÞ
model_5/rnn_5/TensorArrayV2TensorListReserve2model_5/rnn_5/TensorArrayV2/element_shape:output:0&model_5/rnn_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Cmodel_5/rnn_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
5model_5/rnn_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel_5/rnn_5/transpose:y:0Lmodel_5/rnn_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒm
#model_5/rnn_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%model_5/rnn_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%model_5/rnn_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
model_5/rnn_5/strided_slice_2StridedSlicemodel_5/rnn_5/transpose:y:0,model_5/rnn_5/strided_slice_2/stack:output:0.model_5/rnn_5/strided_slice_2/stack_1:output:0.model_5/rnn_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask©
/model_5/rnn_5/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp8model_5_rnn_5_lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0¾
 model_5/rnn_5/lstm_cell_5/MatMulMatMul&model_5/rnn_5/strided_slice_2:output:07model_5/rnn_5/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸­
1model_5/rnn_5/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp:model_5_rnn_5_lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0¸
"model_5/rnn_5/lstm_cell_5/MatMul_1MatMulmodel_5/rnn_5/zeros:output:09model_5/rnn_5/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸³
model_5/rnn_5/lstm_cell_5/addAddV2*model_5/rnn_5/lstm_cell_5/MatMul:product:0,model_5/rnn_5/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸§
0model_5/rnn_5/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp9model_5_rnn_5_lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0¼
!model_5/rnn_5/lstm_cell_5/BiasAddBiasAdd!model_5/rnn_5/lstm_cell_5/add:z:08model_5/rnn_5/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸k
)model_5/rnn_5/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
model_5/rnn_5/lstm_cell_5/splitSplit2model_5/rnn_5/lstm_cell_5/split/split_dim:output:0*model_5/rnn_5/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_split
!model_5/rnn_5/lstm_cell_5/SigmoidSigmoid(model_5/rnn_5/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
#model_5/rnn_5/lstm_cell_5/Sigmoid_1Sigmoid(model_5/rnn_5/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
model_5/rnn_5/lstm_cell_5/mulMul'model_5/rnn_5/lstm_cell_5/Sigmoid_1:y:0model_5/rnn_5/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
model_5/rnn_5/lstm_cell_5/TanhTanh(model_5/rnn_5/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.£
model_5/rnn_5/lstm_cell_5/mul_1Mul%model_5/rnn_5/lstm_cell_5/Sigmoid:y:0"model_5/rnn_5/lstm_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¢
model_5/rnn_5/lstm_cell_5/add_1AddV2!model_5/rnn_5/lstm_cell_5/mul:z:0#model_5/rnn_5/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
#model_5/rnn_5/lstm_cell_5/Sigmoid_2Sigmoid(model_5/rnn_5/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 model_5/rnn_5/lstm_cell_5/Tanh_1Tanh#model_5/rnn_5/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.§
model_5/rnn_5/lstm_cell_5/mul_2Mul'model_5/rnn_5/lstm_cell_5/Sigmoid_2:y:0$model_5/rnn_5/lstm_cell_5/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.|
+model_5/rnn_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   l
*model_5/rnn_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ï
model_5/rnn_5/TensorArrayV2_1TensorListReserve4model_5/rnn_5/TensorArrayV2_1/element_shape:output:03model_5/rnn_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒT
model_5/rnn_5/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&model_5/rnn_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿb
 model_5/rnn_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : É
model_5/rnn_5/whileWhile)model_5/rnn_5/while/loop_counter:output:0/model_5/rnn_5/while/maximum_iterations:output:0model_5/rnn_5/time:output:0&model_5/rnn_5/TensorArrayV2_1:handle:0model_5/rnn_5/zeros:output:0model_5/rnn_5/zeros_1:output:0&model_5/rnn_5/strided_slice_1:output:0Emodel_5/rnn_5/TensorArrayUnstack/TensorListFromTensor:output_handle:08model_5_rnn_5_lstm_cell_5_matmul_readvariableop_resource:model_5_rnn_5_lstm_cell_5_matmul_1_readvariableop_resource9model_5_rnn_5_lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *.
body&R$
"model_5_rnn_5_while_body_177372959*.
cond&R$
"model_5_rnn_5_while_cond_177372958*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
>model_5/rnn_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   
0model_5/rnn_5/TensorArrayV2Stack/TensorListStackTensorListStackmodel_5/rnn_5/while:output:3Gmodel_5/rnn_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsv
#model_5/rnn_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%model_5/rnn_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%model_5/rnn_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Í
model_5/rnn_5/strided_slice_3StridedSlice9model_5/rnn_5/TensorArrayV2Stack/TensorListStack:tensor:0,model_5/rnn_5/strided_slice_3/stack:output:0.model_5/rnn_5/strided_slice_3/stack_1:output:0.model_5/rnn_5/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_masks
model_5/rnn_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          À
model_5/rnn_5/transpose_1	Transpose9model_5/rnn_5/TensorArrayV2Stack/TensorListStack:tensor:0'model_5/rnn_5/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
&model_5/dense_22/MatMul/ReadVariableOpReadVariableOp/model_5_dense_22_matmul_readvariableop_resource*
_output_shapes

:..*
dtype0«
model_5/dense_22/MatMulMatMul&model_5/rnn_5/strided_slice_3:output:0.model_5/dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
'model_5/dense_22/BiasAdd/ReadVariableOpReadVariableOp0model_5_dense_22_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0©
model_5/dense_22/BiasAddBiasAdd!model_5/dense_22/MatMul:product:0/model_5/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
model_5/dense_22/ReluRelu!model_5/dense_22/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
&model_5/dense_23/MatMul/ReadVariableOpReadVariableOp/model_5_dense_23_matmul_readvariableop_resource*
_output_shapes

:.*
dtype0¨
model_5/dense_23/MatMulMatMul#model_5/dense_22/Relu:activations:0.model_5/dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'model_5/dense_23/BiasAdd/ReadVariableOpReadVariableOp0model_5_dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0©
model_5/dense_23/BiasAddBiasAdd!model_5/dense_23/MatMul:product:0/model_5/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
IdentityIdentity!model_5/dense_23/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿã
NoOpNoOp(^model_5/dense_22/BiasAdd/ReadVariableOp'^model_5/dense_22/MatMul/ReadVariableOp(^model_5/dense_23/BiasAdd/ReadVariableOp'^model_5/dense_23/MatMul/ReadVariableOp1^model_5/rnn_5/lstm_cell_5/BiasAdd/ReadVariableOp0^model_5/rnn_5/lstm_cell_5/MatMul/ReadVariableOp2^model_5/rnn_5/lstm_cell_5/MatMul_1/ReadVariableOp^model_5/rnn_5/whileE^model_5/token_and_position_embedding_5/embedding_10/embedding_lookupE^model_5/token_and_position_embedding_5/embedding_11/embedding_lookupN^model_5/transformer_encoder_5/layer_normalization_10/batchnorm/ReadVariableOpR^model_5/transformer_encoder_5/layer_normalization_10/batchnorm/mul/ReadVariableOpN^model_5/transformer_encoder_5/layer_normalization_11/batchnorm/ReadVariableOpR^model_5/transformer_encoder_5/layer_normalization_11/batchnorm/mul/ReadVariableOpY^model_5/transformer_encoder_5/multi_head_attention_5/attention_output/add/ReadVariableOpc^model_5/transformer_encoder_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpL^model_5/transformer_encoder_5/multi_head_attention_5/key/add/ReadVariableOpV^model_5/transformer_encoder_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpN^model_5/transformer_encoder_5/multi_head_attention_5/query/add/ReadVariableOpX^model_5/transformer_encoder_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpN^model_5/transformer_encoder_5/multi_head_attention_5/value/add/ReadVariableOpX^model_5/transformer_encoder_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOpK^model_5/transformer_encoder_5/sequential_5/dense_20/BiasAdd/ReadVariableOpM^model_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/ReadVariableOpK^model_5/transformer_encoder_5/sequential_5/dense_21/BiasAdd/ReadVariableOpM^model_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ/: : : : : : : : : : : : : : : : : : : : : : : : : 2R
'model_5/dense_22/BiasAdd/ReadVariableOp'model_5/dense_22/BiasAdd/ReadVariableOp2P
&model_5/dense_22/MatMul/ReadVariableOp&model_5/dense_22/MatMul/ReadVariableOp2R
'model_5/dense_23/BiasAdd/ReadVariableOp'model_5/dense_23/BiasAdd/ReadVariableOp2P
&model_5/dense_23/MatMul/ReadVariableOp&model_5/dense_23/MatMul/ReadVariableOp2d
0model_5/rnn_5/lstm_cell_5/BiasAdd/ReadVariableOp0model_5/rnn_5/lstm_cell_5/BiasAdd/ReadVariableOp2b
/model_5/rnn_5/lstm_cell_5/MatMul/ReadVariableOp/model_5/rnn_5/lstm_cell_5/MatMul/ReadVariableOp2f
1model_5/rnn_5/lstm_cell_5/MatMul_1/ReadVariableOp1model_5/rnn_5/lstm_cell_5/MatMul_1/ReadVariableOp2*
model_5/rnn_5/whilemodel_5/rnn_5/while2
Dmodel_5/token_and_position_embedding_5/embedding_10/embedding_lookupDmodel_5/token_and_position_embedding_5/embedding_10/embedding_lookup2
Dmodel_5/token_and_position_embedding_5/embedding_11/embedding_lookupDmodel_5/token_and_position_embedding_5/embedding_11/embedding_lookup2
Mmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/ReadVariableOpMmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/ReadVariableOp2¦
Qmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/mul/ReadVariableOpQmodel_5/transformer_encoder_5/layer_normalization_10/batchnorm/mul/ReadVariableOp2
Mmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/ReadVariableOpMmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/ReadVariableOp2¦
Qmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/mul/ReadVariableOpQmodel_5/transformer_encoder_5/layer_normalization_11/batchnorm/mul/ReadVariableOp2´
Xmodel_5/transformer_encoder_5/multi_head_attention_5/attention_output/add/ReadVariableOpXmodel_5/transformer_encoder_5/multi_head_attention_5/attention_output/add/ReadVariableOp2È
bmodel_5/transformer_encoder_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpbmodel_5/transformer_encoder_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp2
Kmodel_5/transformer_encoder_5/multi_head_attention_5/key/add/ReadVariableOpKmodel_5/transformer_encoder_5/multi_head_attention_5/key/add/ReadVariableOp2®
Umodel_5/transformer_encoder_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpUmodel_5/transformer_encoder_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOp2
Mmodel_5/transformer_encoder_5/multi_head_attention_5/query/add/ReadVariableOpMmodel_5/transformer_encoder_5/multi_head_attention_5/query/add/ReadVariableOp2²
Wmodel_5/transformer_encoder_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpWmodel_5/transformer_encoder_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOp2
Mmodel_5/transformer_encoder_5/multi_head_attention_5/value/add/ReadVariableOpMmodel_5/transformer_encoder_5/multi_head_attention_5/value/add/ReadVariableOp2²
Wmodel_5/transformer_encoder_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOpWmodel_5/transformer_encoder_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp2
Jmodel_5/transformer_encoder_5/sequential_5/dense_20/BiasAdd/ReadVariableOpJmodel_5/transformer_encoder_5/sequential_5/dense_20/BiasAdd/ReadVariableOp2
Lmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/ReadVariableOpLmodel_5/transformer_encoder_5/sequential_5/dense_20/Tensordot/ReadVariableOp2
Jmodel_5/transformer_encoder_5/sequential_5/dense_21/BiasAdd/ReadVariableOpJmodel_5/transformer_encoder_5/sequential_5/dense_21/BiasAdd/ReadVariableOp2
Lmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/ReadVariableOpLmodel_5/transformer_encoder_5/sequential_5/dense_21/Tensordot/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
!
_user_specified_name	input_6
Ã

J__inference_lstm_cell_5_layer_call_and_return_conditional_losses_177373463

inputs

states
states_11
matmul_readvariableop_resource:	2¸3
 matmul_1_readvariableop_resource:	.¸.
biasadd_readvariableop_resource:	¸
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_namestates


ø
G__inference_dense_22_layer_call_and_return_conditional_losses_177376590

inputs0
matmul_readvariableop_resource:..-
biasadd_readvariableop_resource:.
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:..*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:.*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs

¸
)__inference_rnn_5_layer_call_fn_177375961
inputs_0
unknown:	2¸
	unknown_0:	.¸
	unknown_1:	¸
identity¢StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_rnn_5_layer_call_and_return_conditional_losses_177373400o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
Ñ
À
K__inference_sequential_5_layer_call_and_return_conditional_losses_177373197

inputs$
dense_20_177373186:2  
dense_20_177373188: $
dense_21_177373191: 2 
dense_21_177373193:2
identity¢ dense_20/StatefulPartitionedCall¢ dense_21/StatefulPartitionedCallý
 dense_20/StatefulPartitionedCallStatefulPartitionedCallinputsdense_20_177373186dense_20_177373188*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_20_layer_call_and_return_conditional_losses_177373094 
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_177373191dense_21_177373193*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_21_layer_call_and_return_conditional_losses_177373130|
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
NoOpNoOp!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ/2: : : : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
 
_user_specified_nameinputs
Á
®
]__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_177375609
x9
'embedding_11_embedding_lookup_177375596:/2:
'embedding_10_embedding_lookup_177375602:	2
identity¢embedding_10/embedding_lookup¢embedding_11/embedding_lookup6
ShapeShapex*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*
_output_shapes
:/á
embedding_11/embedding_lookupResourceGather'embedding_11_embedding_lookup_177375596range:output:0*
Tindices0*:
_class0
.,loc:@embedding_11/embedding_lookup/177375596*
_output_shapes

:/2*
dtype0¿
&embedding_11/embedding_lookup/IdentityIdentity&embedding_11/embedding_lookup:output:0*
T0*:
_class0
.,loc:@embedding_11/embedding_lookup/177375596*
_output_shapes

:/2
(embedding_11/embedding_lookup/Identity_1Identity/embedding_11/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:/2]
embedding_10/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/õ
embedding_10/embedding_lookupResourceGather'embedding_10_embedding_lookup_177375602embedding_10/Cast:y:0*
Tindices0*:
_class0
.,loc:@embedding_10/embedding_lookup/177375602*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
dtype0Ì
&embedding_10/embedding_lookup/IdentityIdentity&embedding_10/embedding_lookup:output:0*
T0*:
_class0
.,loc:@embedding_10/embedding_lookup/177375602*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
(embedding_10/embedding_lookup/Identity_1Identity/embedding_10/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¨
addAddV21embedding_10/embedding_lookup/Identity_1:output:01embedding_11/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Z
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
NoOpNoOp^embedding_10/embedding_lookup^embedding_11/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ/: : 2>
embedding_10/embedding_lookupembedding_10/embedding_lookup2>
embedding_11/embedding_lookupembedding_11/embedding_lookup:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/

_user_specified_namex
Ó8
Ê
while_body_177374130
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_5_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_5_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_5_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_5_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_5_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_5_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_5/BiasAdd/ReadVariableOp¢'while/lstm_cell_5/MatMul/ReadVariableOp¢)while/lstm_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_5/TanhTanh while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0while/lstm_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_5/Tanh_1Tanhwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_2:y:0while/lstm_cell_5/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 
¶8

D__inference_rnn_5_layer_call_and_return_conditional_losses_177373592

inputs(
lstm_cell_5_177373509:	2¸(
lstm_cell_5_177373511:	.¸$
lstm_cell_5_177373513:	¸
identity¢#lstm_cell_5/StatefulPartitionedCall¢while;
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
valueB:Ñ
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
value	B :.s
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
:ÿÿÿÿÿÿÿÿÿ.R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.w
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
:ÿÿÿÿÿÿÿÿÿ.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskü
#lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_5_177373509lstm_cell_5_177373511lstm_cell_5_177373513*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_5_layer_call_and_return_conditional_losses_177373463n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ã
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_5_177373509lstm_cell_5_177373511lstm_cell_5_177373513*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
while_body_177373523* 
condR
while_cond_177373522*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.t
NoOpNoOp$^lstm_cell_5/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_5/StatefulPartitionedCall#lstm_cell_5/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ü»
»
T__inference_transformer_encoder_5_layer_call_and_return_conditional_losses_177373765

inputsX
Bmulti_head_attention_5_query_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_5_query_add_readvariableop_resource:2V
@multi_head_attention_5_key_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_5_key_add_readvariableop_resource:2X
Bmulti_head_attention_5_value_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_5_value_add_readvariableop_resource:2c
Mmulti_head_attention_5_attention_output_einsum_einsum_readvariableop_resource:22Q
Cmulti_head_attention_5_attention_output_add_readvariableop_resource:2J
<layer_normalization_10_batchnorm_mul_readvariableop_resource:2F
8layer_normalization_10_batchnorm_readvariableop_resource:2I
7sequential_5_dense_20_tensordot_readvariableop_resource:2 C
5sequential_5_dense_20_biasadd_readvariableop_resource: I
7sequential_5_dense_21_tensordot_readvariableop_resource: 2C
5sequential_5_dense_21_biasadd_readvariableop_resource:2J
<layer_normalization_11_batchnorm_mul_readvariableop_resource:2F
8layer_normalization_11_batchnorm_readvariableop_resource:2
identity¢/layer_normalization_10/batchnorm/ReadVariableOp¢3layer_normalization_10/batchnorm/mul/ReadVariableOp¢/layer_normalization_11/batchnorm/ReadVariableOp¢3layer_normalization_11/batchnorm/mul/ReadVariableOp¢:multi_head_attention_5/attention_output/add/ReadVariableOp¢Dmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_5/key/add/ReadVariableOp¢7multi_head_attention_5/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_5/query/add/ReadVariableOp¢9multi_head_attention_5/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_5/value/add/ReadVariableOp¢9multi_head_attention_5/value/einsum/Einsum/ReadVariableOp¢,sequential_5/dense_20/BiasAdd/ReadVariableOp¢.sequential_5/dense_20/Tensordot/ReadVariableOp¢,sequential_5/dense_21/BiasAdd/ReadVariableOp¢.sequential_5/dense_21/Tensordot/ReadVariableOpÀ
9multi_head_attention_5/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_5_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_5/query/einsum/EinsumEinsuminputsAmulti_head_attention_5/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabc,cde->abde¨
/multi_head_attention_5/query/add/ReadVariableOpReadVariableOp8multi_head_attention_5_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_5/query/addAddV23multi_head_attention_5/query/einsum/Einsum:output:07multi_head_attention_5/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¼
7multi_head_attention_5/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_5_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention_5/key/einsum/EinsumEinsuminputs?multi_head_attention_5/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabc,cde->abde¤
-multi_head_attention_5/key/add/ReadVariableOpReadVariableOp6multi_head_attention_5_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention_5/key/addAddV21multi_head_attention_5/key/einsum/Einsum:output:05multi_head_attention_5/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2À
9multi_head_attention_5/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_5_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_5/value/einsum/EinsumEinsuminputsAmulti_head_attention_5/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabc,cde->abde¨
/multi_head_attention_5/value/add/ReadVariableOpReadVariableOp8multi_head_attention_5_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_5/value/addAddV23multi_head_attention_5/value/einsum/Einsum:output:07multi_head_attention_5/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2a
multi_head_attention_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>¨
multi_head_attention_5/MulMul$multi_head_attention_5/query/add:z:0%multi_head_attention_5/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ô
$multi_head_attention_5/einsum/EinsumEinsum"multi_head_attention_5/key/add:z:0multi_head_attention_5/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//*
equationaecd,abcd->acbe
&multi_head_attention_5/softmax/SoftmaxSoftmax-multi_head_attention_5/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//
'multi_head_attention_5/dropout/IdentityIdentity0multi_head_attention_5/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//ê
&multi_head_attention_5/einsum_1/EinsumEinsum0multi_head_attention_5/dropout/Identity:output:0$multi_head_attention_5/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_5_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
5multi_head_attention_5/attention_output/einsum/EinsumEinsum/multi_head_attention_5/einsum_1/Einsum:output:0Lmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabcd,cde->abeº
:multi_head_attention_5/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_5_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0î
+multi_head_attention_5/attention_output/addAddV2>multi_head_attention_5/attention_output/einsum/Einsum:output:0Bmulti_head_attention_5/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
dropout_16/IdentityIdentity/multi_head_attention_5/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2h
addAddV2inputsdropout_16/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
5layer_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
#layer_normalization_10/moments/meanMeanadd:z:0>layer_normalization_10/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(
+layer_normalization_10/moments/StopGradientStopGradient,layer_normalization_10/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/º
0layer_normalization_10/moments/SquaredDifferenceSquaredDifferenceadd:z:04layer_normalization_10/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
9layer_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ð
'layer_normalization_10/moments/varianceMean4layer_normalization_10/moments/SquaredDifference:z:0Blayer_normalization_10/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(k
&layer_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Æ
$layer_normalization_10/batchnorm/addAddV20layer_normalization_10/moments/variance:output:0/layer_normalization_10/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
&layer_normalization_10/batchnorm/RsqrtRsqrt(layer_normalization_10/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/¬
3layer_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ê
$layer_normalization_10/batchnorm/mulMul*layer_normalization_10/batchnorm/Rsqrt:y:0;layer_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
&layer_normalization_10/batchnorm/mul_1Muladd:z:0(layer_normalization_10/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2»
&layer_normalization_10/batchnorm/mul_2Mul,layer_normalization_10/moments/mean:output:0(layer_normalization_10/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¤
/layer_normalization_10/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_10_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Æ
$layer_normalization_10/batchnorm/subSub7layer_normalization_10/batchnorm/ReadVariableOp:value:0*layer_normalization_10/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2»
&layer_normalization_10/batchnorm/add_1AddV2*layer_normalization_10/batchnorm/mul_1:z:0(layer_normalization_10/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¦
.sequential_5/dense_20/Tensordot/ReadVariableOpReadVariableOp7sequential_5_dense_20_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0n
$sequential_5/dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_5/dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
%sequential_5/dense_20/Tensordot/ShapeShape*layer_normalization_10/batchnorm/add_1:z:0*
T0*
_output_shapes
:o
-sequential_5/dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_5/dense_20/Tensordot/GatherV2GatherV2.sequential_5/dense_20/Tensordot/Shape:output:0-sequential_5/dense_20/Tensordot/free:output:06sequential_5/dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_5/dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_5/dense_20/Tensordot/GatherV2_1GatherV2.sequential_5/dense_20/Tensordot/Shape:output:0-sequential_5/dense_20/Tensordot/axes:output:08sequential_5/dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_5/dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_5/dense_20/Tensordot/ProdProd1sequential_5/dense_20/Tensordot/GatherV2:output:0.sequential_5/dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_5/dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_5/dense_20/Tensordot/Prod_1Prod3sequential_5/dense_20/Tensordot/GatherV2_1:output:00sequential_5/dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_5/dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_5/dense_20/Tensordot/concatConcatV2-sequential_5/dense_20/Tensordot/free:output:0-sequential_5/dense_20/Tensordot/axes:output:04sequential_5/dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_5/dense_20/Tensordot/stackPack-sequential_5/dense_20/Tensordot/Prod:output:0/sequential_5/dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:É
)sequential_5/dense_20/Tensordot/transpose	Transpose*layer_normalization_10/batchnorm/add_1:z:0/sequential_5/dense_20/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ì
'sequential_5/dense_20/Tensordot/ReshapeReshape-sequential_5/dense_20/Tensordot/transpose:y:0.sequential_5/dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
&sequential_5/dense_20/Tensordot/MatMulMatMul0sequential_5/dense_20/Tensordot/Reshape:output:06sequential_5/dense_20/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
'sequential_5/dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: o
-sequential_5/dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_5/dense_20/Tensordot/concat_1ConcatV21sequential_5/dense_20/Tensordot/GatherV2:output:00sequential_5/dense_20/Tensordot/Const_2:output:06sequential_5/dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Å
sequential_5/dense_20/TensordotReshape0sequential_5/dense_20/Tensordot/MatMul:product:01sequential_5/dense_20/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ 
,sequential_5/dense_20/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¾
sequential_5/dense_20/BiasAddBiasAdd(sequential_5/dense_20/Tensordot:output:04sequential_5/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ 
sequential_5/dense_20/ReluRelu&sequential_5/dense_20/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ ¦
.sequential_5/dense_21/Tensordot/ReadVariableOpReadVariableOp7sequential_5_dense_21_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0n
$sequential_5/dense_21/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_5/dense_21/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_5/dense_21/Tensordot/ShapeShape(sequential_5/dense_20/Relu:activations:0*
T0*
_output_shapes
:o
-sequential_5/dense_21/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_5/dense_21/Tensordot/GatherV2GatherV2.sequential_5/dense_21/Tensordot/Shape:output:0-sequential_5/dense_21/Tensordot/free:output:06sequential_5/dense_21/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_5/dense_21/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_5/dense_21/Tensordot/GatherV2_1GatherV2.sequential_5/dense_21/Tensordot/Shape:output:0-sequential_5/dense_21/Tensordot/axes:output:08sequential_5/dense_21/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_5/dense_21/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_5/dense_21/Tensordot/ProdProd1sequential_5/dense_21/Tensordot/GatherV2:output:0.sequential_5/dense_21/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_5/dense_21/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_5/dense_21/Tensordot/Prod_1Prod3sequential_5/dense_21/Tensordot/GatherV2_1:output:00sequential_5/dense_21/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_5/dense_21/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_5/dense_21/Tensordot/concatConcatV2-sequential_5/dense_21/Tensordot/free:output:0-sequential_5/dense_21/Tensordot/axes:output:04sequential_5/dense_21/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_5/dense_21/Tensordot/stackPack-sequential_5/dense_21/Tensordot/Prod:output:0/sequential_5/dense_21/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ç
)sequential_5/dense_21/Tensordot/transpose	Transpose(sequential_5/dense_20/Relu:activations:0/sequential_5/dense_21/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ Ì
'sequential_5/dense_21/Tensordot/ReshapeReshape-sequential_5/dense_21/Tensordot/transpose:y:0.sequential_5/dense_21/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
&sequential_5/dense_21/Tensordot/MatMulMatMul0sequential_5/dense_21/Tensordot/Reshape:output:06sequential_5/dense_21/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
'sequential_5/dense_21/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2o
-sequential_5/dense_21/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_5/dense_21/Tensordot/concat_1ConcatV21sequential_5/dense_21/Tensordot/GatherV2:output:00sequential_5/dense_21/Tensordot/Const_2:output:06sequential_5/dense_21/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Å
sequential_5/dense_21/TensordotReshape0sequential_5/dense_21/Tensordot/MatMul:product:01sequential_5/dense_21/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
,sequential_5/dense_21/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_21_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0¾
sequential_5/dense_21/BiasAddBiasAdd(sequential_5/dense_21/Tensordot:output:04sequential_5/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2}
dropout_17/IdentityIdentity&sequential_5/dense_21/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
add_1AddV2*layer_normalization_10/batchnorm/add_1:z:0dropout_17/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
5layer_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:½
#layer_normalization_11/moments/meanMean	add_1:z:0>layer_normalization_11/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(
+layer_normalization_11/moments/StopGradientStopGradient,layer_normalization_11/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/¼
0layer_normalization_11/moments/SquaredDifferenceSquaredDifference	add_1:z:04layer_normalization_11/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
9layer_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ð
'layer_normalization_11/moments/varianceMean4layer_normalization_11/moments/SquaredDifference:z:0Blayer_normalization_11/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(k
&layer_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Æ
$layer_normalization_11/batchnorm/addAddV20layer_normalization_11/moments/variance:output:0/layer_normalization_11/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
&layer_normalization_11/batchnorm/RsqrtRsqrt(layer_normalization_11/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/¬
3layer_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ê
$layer_normalization_11/batchnorm/mulMul*layer_normalization_11/batchnorm/Rsqrt:y:0;layer_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
&layer_normalization_11/batchnorm/mul_1Mul	add_1:z:0(layer_normalization_11/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2»
&layer_normalization_11/batchnorm/mul_2Mul,layer_normalization_11/moments/mean:output:0(layer_normalization_11/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¤
/layer_normalization_11/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_11_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Æ
$layer_normalization_11/batchnorm/subSub7layer_normalization_11/batchnorm/ReadVariableOp:value:0*layer_normalization_11/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2»
&layer_normalization_11/batchnorm/add_1AddV2*layer_normalization_11/batchnorm/mul_1:z:0(layer_normalization_11/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2}
IdentityIdentity*layer_normalization_11/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2 
NoOpNoOp0^layer_normalization_10/batchnorm/ReadVariableOp4^layer_normalization_10/batchnorm/mul/ReadVariableOp0^layer_normalization_11/batchnorm/ReadVariableOp4^layer_normalization_11/batchnorm/mul/ReadVariableOp;^multi_head_attention_5/attention_output/add/ReadVariableOpE^multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_5/key/add/ReadVariableOp8^multi_head_attention_5/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_5/query/add/ReadVariableOp:^multi_head_attention_5/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_5/value/add/ReadVariableOp:^multi_head_attention_5/value/einsum/Einsum/ReadVariableOp-^sequential_5/dense_20/BiasAdd/ReadVariableOp/^sequential_5/dense_20/Tensordot/ReadVariableOp-^sequential_5/dense_21/BiasAdd/ReadVariableOp/^sequential_5/dense_21/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ/2: : : : : : : : : : : : : : : : 2b
/layer_normalization_10/batchnorm/ReadVariableOp/layer_normalization_10/batchnorm/ReadVariableOp2j
3layer_normalization_10/batchnorm/mul/ReadVariableOp3layer_normalization_10/batchnorm/mul/ReadVariableOp2b
/layer_normalization_11/batchnorm/ReadVariableOp/layer_normalization_11/batchnorm/ReadVariableOp2j
3layer_normalization_11/batchnorm/mul/ReadVariableOp3layer_normalization_11/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_5/attention_output/add/ReadVariableOp:multi_head_attention_5/attention_output/add/ReadVariableOp2
Dmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_5/key/add/ReadVariableOp-multi_head_attention_5/key/add/ReadVariableOp2r
7multi_head_attention_5/key/einsum/Einsum/ReadVariableOp7multi_head_attention_5/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_5/query/add/ReadVariableOp/multi_head_attention_5/query/add/ReadVariableOp2v
9multi_head_attention_5/query/einsum/Einsum/ReadVariableOp9multi_head_attention_5/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_5/value/add/ReadVariableOp/multi_head_attention_5/value/add/ReadVariableOp2v
9multi_head_attention_5/value/einsum/Einsum/ReadVariableOp9multi_head_attention_5/value/einsum/Einsum/ReadVariableOp2\
,sequential_5/dense_20/BiasAdd/ReadVariableOp,sequential_5/dense_20/BiasAdd/ReadVariableOp2`
.sequential_5/dense_20/Tensordot/ReadVariableOp.sequential_5/dense_20/Tensordot/ReadVariableOp2\
,sequential_5/dense_21/BiasAdd/ReadVariableOp,sequential_5/dense_21/BiasAdd/ReadVariableOp2`
.sequential_5/dense_21/Tensordot/ReadVariableOp.sequential_5/dense_21/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
 
_user_specified_nameinputs
Æ
±
+__inference_model_5_layer_call_fn_177374908

inputs
unknown:/2
	unknown_0:	2
	unknown_1:22
	unknown_2:2
	unknown_3:22
	unknown_4:2
	unknown_5:22
	unknown_6:2
	unknown_7:22
	unknown_8:2
	unknown_9:2

unknown_10:2

unknown_11:2 

unknown_12: 

unknown_13: 2

unknown_14:2

unknown_15:2

unknown_16:2

unknown_17:	2¸

unknown_18:	.¸

unknown_19:	¸

unknown_20:..

unknown_21:.

unknown_22:.

unknown_23:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_23*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*;
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_model_5_layer_call_and_return_conditional_losses_177373984o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ/: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
 
_user_specified_nameinputs
)
É
F__inference_model_5_layer_call_and_return_conditional_losses_177374564

inputs:
(token_and_position_embedding_5_177374508:/2;
(token_and_position_embedding_5_177374510:	25
transformer_encoder_5_177374513:221
transformer_encoder_5_177374515:25
transformer_encoder_5_177374517:221
transformer_encoder_5_177374519:25
transformer_encoder_5_177374521:221
transformer_encoder_5_177374523:25
transformer_encoder_5_177374525:22-
transformer_encoder_5_177374527:2-
transformer_encoder_5_177374529:2-
transformer_encoder_5_177374531:21
transformer_encoder_5_177374533:2 -
transformer_encoder_5_177374535: 1
transformer_encoder_5_177374537: 2-
transformer_encoder_5_177374539:2-
transformer_encoder_5_177374541:2-
transformer_encoder_5_177374543:2"
rnn_5_177374546:	2¸"
rnn_5_177374548:	.¸
rnn_5_177374550:	¸$
dense_22_177374553:.. 
dense_22_177374555:.$
dense_23_177374558:. 
dense_23_177374560:
identity¢ dense_22/StatefulPartitionedCall¢ dense_23/StatefulPartitionedCall¢rnn_5/StatefulPartitionedCall¢6token_and_position_embedding_5/StatefulPartitionedCall¢-transformer_encoder_5/StatefulPartitionedCallÕ
6token_and_position_embedding_5/StatefulPartitionedCallStatefulPartitionedCallinputs(token_and_position_embedding_5_177374508(token_and_position_embedding_5_177374510*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *f
faR_
]__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_177373632Ô
-transformer_encoder_5/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_5/StatefulPartitionedCall:output:0transformer_encoder_5_177374513transformer_encoder_5_177374515transformer_encoder_5_177374517transformer_encoder_5_177374519transformer_encoder_5_177374521transformer_encoder_5_177374523transformer_encoder_5_177374525transformer_encoder_5_177374527transformer_encoder_5_177374529transformer_encoder_5_177374531transformer_encoder_5_177374533transformer_encoder_5_177374535transformer_encoder_5_177374537transformer_encoder_5_177374539transformer_encoder_5_177374541transformer_encoder_5_177374543*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transformer_encoder_5_layer_call_and_return_conditional_losses_177374403°
rnn_5/StatefulPartitionedCallStatefulPartitionedCall6transformer_encoder_5/StatefulPartitionedCall:output:0rnn_5_177374546rnn_5_177374548rnn_5_177374550*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_rnn_5_layer_call_and_return_conditional_losses_177374214
 dense_22/StatefulPartitionedCallStatefulPartitionedCall&rnn_5/StatefulPartitionedCall:output:0dense_22_177374553dense_22_177374555*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_22_layer_call_and_return_conditional_losses_177373961
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_177374558dense_23_177374560*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_23_layer_call_and_return_conditional_losses_177373977x
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall^rnn_5/StatefulPartitionedCall7^token_and_position_embedding_5/StatefulPartitionedCall.^transformer_encoder_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ/: : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2>
rnn_5/StatefulPartitionedCallrnn_5/StatefulPartitionedCall2p
6token_and_position_embedding_5/StatefulPartitionedCall6token_and_position_embedding_5/StatefulPartitionedCall2^
-transformer_encoder_5/StatefulPartitionedCall-transformer_encoder_5/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
 
_user_specified_nameinputs

é
F__inference_model_5_layer_call_and_return_conditional_losses_177375576

inputsX
Ftoken_and_position_embedding_5_embedding_11_embedding_lookup_177375274:/2Y
Ftoken_and_position_embedding_5_embedding_10_embedding_lookup_177375280:	2n
Xtransformer_encoder_5_multi_head_attention_5_query_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_5_multi_head_attention_5_query_add_readvariableop_resource:2l
Vtransformer_encoder_5_multi_head_attention_5_key_einsum_einsum_readvariableop_resource:22^
Ltransformer_encoder_5_multi_head_attention_5_key_add_readvariableop_resource:2n
Xtransformer_encoder_5_multi_head_attention_5_value_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_5_multi_head_attention_5_value_add_readvariableop_resource:2y
ctransformer_encoder_5_multi_head_attention_5_attention_output_einsum_einsum_readvariableop_resource:22g
Ytransformer_encoder_5_multi_head_attention_5_attention_output_add_readvariableop_resource:2`
Rtransformer_encoder_5_layer_normalization_10_batchnorm_mul_readvariableop_resource:2\
Ntransformer_encoder_5_layer_normalization_10_batchnorm_readvariableop_resource:2_
Mtransformer_encoder_5_sequential_5_dense_20_tensordot_readvariableop_resource:2 Y
Ktransformer_encoder_5_sequential_5_dense_20_biasadd_readvariableop_resource: _
Mtransformer_encoder_5_sequential_5_dense_21_tensordot_readvariableop_resource: 2Y
Ktransformer_encoder_5_sequential_5_dense_21_biasadd_readvariableop_resource:2`
Rtransformer_encoder_5_layer_normalization_11_batchnorm_mul_readvariableop_resource:2\
Ntransformer_encoder_5_layer_normalization_11_batchnorm_readvariableop_resource:2C
0rnn_5_lstm_cell_5_matmul_readvariableop_resource:	2¸E
2rnn_5_lstm_cell_5_matmul_1_readvariableop_resource:	.¸@
1rnn_5_lstm_cell_5_biasadd_readvariableop_resource:	¸9
'dense_22_matmul_readvariableop_resource:..6
(dense_22_biasadd_readvariableop_resource:.9
'dense_23_matmul_readvariableop_resource:.6
(dense_23_biasadd_readvariableop_resource:
identity¢dense_22/BiasAdd/ReadVariableOp¢dense_22/MatMul/ReadVariableOp¢dense_23/BiasAdd/ReadVariableOp¢dense_23/MatMul/ReadVariableOp¢(rnn_5/lstm_cell_5/BiasAdd/ReadVariableOp¢'rnn_5/lstm_cell_5/MatMul/ReadVariableOp¢)rnn_5/lstm_cell_5/MatMul_1/ReadVariableOp¢rnn_5/while¢<token_and_position_embedding_5/embedding_10/embedding_lookup¢<token_and_position_embedding_5/embedding_11/embedding_lookup¢Etransformer_encoder_5/layer_normalization_10/batchnorm/ReadVariableOp¢Itransformer_encoder_5/layer_normalization_10/batchnorm/mul/ReadVariableOp¢Etransformer_encoder_5/layer_normalization_11/batchnorm/ReadVariableOp¢Itransformer_encoder_5/layer_normalization_11/batchnorm/mul/ReadVariableOp¢Ptransformer_encoder_5/multi_head_attention_5/attention_output/add/ReadVariableOp¢Ztransformer_encoder_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp¢Ctransformer_encoder_5/multi_head_attention_5/key/add/ReadVariableOp¢Mtransformer_encoder_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOp¢Etransformer_encoder_5/multi_head_attention_5/query/add/ReadVariableOp¢Otransformer_encoder_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOp¢Etransformer_encoder_5/multi_head_attention_5/value/add/ReadVariableOp¢Otransformer_encoder_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp¢Btransformer_encoder_5/sequential_5/dense_20/BiasAdd/ReadVariableOp¢Dtransformer_encoder_5/sequential_5/dense_20/Tensordot/ReadVariableOp¢Btransformer_encoder_5/sequential_5/dense_21/BiasAdd/ReadVariableOp¢Dtransformer_encoder_5/sequential_5/dense_21/Tensordot/ReadVariableOpZ
$token_and_position_embedding_5/ShapeShapeinputs*
T0*
_output_shapes
:
2token_and_position_embedding_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ~
4token_and_position_embedding_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,token_and_position_embedding_5/strided_sliceStridedSlice-token_and_position_embedding_5/Shape:output:0;token_and_position_embedding_5/strided_slice/stack:output:0=token_and_position_embedding_5/strided_slice/stack_1:output:0=token_and_position_embedding_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_5/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_5/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ê
$token_and_position_embedding_5/rangeRange3token_and_position_embedding_5/range/start:output:05token_and_position_embedding_5/strided_slice:output:03token_and_position_embedding_5/range/delta:output:0*
_output_shapes
:/Ý
<token_and_position_embedding_5/embedding_11/embedding_lookupResourceGatherFtoken_and_position_embedding_5_embedding_11_embedding_lookup_177375274-token_and_position_embedding_5/range:output:0*
Tindices0*Y
_classO
MKloc:@token_and_position_embedding_5/embedding_11/embedding_lookup/177375274*
_output_shapes

:/2*
dtype0
Etoken_and_position_embedding_5/embedding_11/embedding_lookup/IdentityIdentityEtoken_and_position_embedding_5/embedding_11/embedding_lookup:output:0*
T0*Y
_classO
MKloc:@token_and_position_embedding_5/embedding_11/embedding_lookup/177375274*
_output_shapes

:/2Ì
Gtoken_and_position_embedding_5/embedding_11/embedding_lookup/Identity_1IdentityNtoken_and_position_embedding_5/embedding_11/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:/2
0token_and_position_embedding_5/embedding_10/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ñ
<token_and_position_embedding_5/embedding_10/embedding_lookupResourceGatherFtoken_and_position_embedding_5_embedding_10_embedding_lookup_1773752804token_and_position_embedding_5/embedding_10/Cast:y:0*
Tindices0*Y
_classO
MKloc:@token_and_position_embedding_5/embedding_10/embedding_lookup/177375280*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
dtype0©
Etoken_and_position_embedding_5/embedding_10/embedding_lookup/IdentityIdentityEtoken_and_position_embedding_5/embedding_10/embedding_lookup:output:0*
T0*Y
_classO
MKloc:@token_and_position_embedding_5/embedding_10/embedding_lookup/177375280*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ù
Gtoken_and_position_embedding_5/embedding_10/embedding_lookup/Identity_1IdentityNtoken_and_position_embedding_5/embedding_10/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
"token_and_position_embedding_5/addAddV2Ptoken_and_position_embedding_5/embedding_10/embedding_lookup/Identity_1:output:0Ptoken_and_position_embedding_5/embedding_11/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2ì
Otransformer_encoder_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_5_multi_head_attention_5_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0«
@transformer_encoder_5/multi_head_attention_5/query/einsum/EinsumEinsum&token_and_position_embedding_5/add:z:0Wtransformer_encoder_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabc,cde->abdeÔ
Etransformer_encoder_5/multi_head_attention_5/query/add/ReadVariableOpReadVariableOpNtransformer_encoder_5_multi_head_attention_5_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0
6transformer_encoder_5/multi_head_attention_5/query/addAddV2Itransformer_encoder_5/multi_head_attention_5/query/einsum/Einsum:output:0Mtransformer_encoder_5/multi_head_attention_5/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2è
Mtransformer_encoder_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_encoder_5_multi_head_attention_5_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0§
>transformer_encoder_5/multi_head_attention_5/key/einsum/EinsumEinsum&token_and_position_embedding_5/add:z:0Utransformer_encoder_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabc,cde->abdeÐ
Ctransformer_encoder_5/multi_head_attention_5/key/add/ReadVariableOpReadVariableOpLtransformer_encoder_5_multi_head_attention_5_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0
4transformer_encoder_5/multi_head_attention_5/key/addAddV2Gtransformer_encoder_5/multi_head_attention_5/key/einsum/Einsum:output:0Ktransformer_encoder_5/multi_head_attention_5/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2ì
Otransformer_encoder_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_5_multi_head_attention_5_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0«
@transformer_encoder_5/multi_head_attention_5/value/einsum/EinsumEinsum&token_and_position_embedding_5/add:z:0Wtransformer_encoder_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabc,cde->abdeÔ
Etransformer_encoder_5/multi_head_attention_5/value/add/ReadVariableOpReadVariableOpNtransformer_encoder_5_multi_head_attention_5_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0
6transformer_encoder_5/multi_head_attention_5/value/addAddV2Itransformer_encoder_5/multi_head_attention_5/value/einsum/Einsum:output:0Mtransformer_encoder_5/multi_head_attention_5/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2w
2transformer_encoder_5/multi_head_attention_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>ê
0transformer_encoder_5/multi_head_attention_5/MulMul:transformer_encoder_5/multi_head_attention_5/query/add:z:0;transformer_encoder_5/multi_head_attention_5/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
:transformer_encoder_5/multi_head_attention_5/einsum/EinsumEinsum8transformer_encoder_5/multi_head_attention_5/key/add:z:04transformer_encoder_5/multi_head_attention_5/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//*
equationaecd,abcd->acbeÆ
<transformer_encoder_5/multi_head_attention_5/softmax/SoftmaxSoftmaxCtransformer_encoder_5/multi_head_attention_5/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//¬
<transformer_encoder_5/multi_head_attention_5/einsum_1/EinsumEinsumFtransformer_encoder_5/multi_head_attention_5/softmax/Softmax:softmax:0:transformer_encoder_5/multi_head_attention_5/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationacbe,aecd->abcd
Ztransformer_encoder_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpctransformer_encoder_5_multi_head_attention_5_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ü
Ktransformer_encoder_5/multi_head_attention_5/attention_output/einsum/EinsumEinsumEtransformer_encoder_5/multi_head_attention_5/einsum_1/Einsum:output:0btransformer_encoder_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabcd,cde->abeæ
Ptransformer_encoder_5/multi_head_attention_5/attention_output/add/ReadVariableOpReadVariableOpYtransformer_encoder_5_multi_head_attention_5_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0°
Atransformer_encoder_5/multi_head_attention_5/attention_output/addAddV2Ttransformer_encoder_5/multi_head_attention_5/attention_output/einsum/Einsum:output:0Xtransformer_encoder_5/multi_head_attention_5/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2s
.transformer_encoder_5/dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @é
,transformer_encoder_5/dropout_16/dropout/MulMulEtransformer_encoder_5/multi_head_attention_5/attention_output/add:z:07transformer_encoder_5/dropout_16/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2£
.transformer_encoder_5/dropout_16/dropout/ShapeShapeEtransformer_encoder_5/multi_head_attention_5/attention_output/add:z:0*
T0*
_output_shapes
:Ò
Etransformer_encoder_5/dropout_16/dropout/random_uniform/RandomUniformRandomUniform7transformer_encoder_5/dropout_16/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
dtype0|
7transformer_encoder_5/dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
5transformer_encoder_5/dropout_16/dropout/GreaterEqualGreaterEqualNtransformer_encoder_5/dropout_16/dropout/random_uniform/RandomUniform:output:0@transformer_encoder_5/dropout_16/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2µ
-transformer_encoder_5/dropout_16/dropout/CastCast9transformer_encoder_5/dropout_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ð
.transformer_encoder_5/dropout_16/dropout/Mul_1Mul0transformer_encoder_5/dropout_16/dropout/Mul:z:01transformer_encoder_5/dropout_16/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2´
transformer_encoder_5/addAddV2&token_and_position_embedding_5/add:z:02transformer_encoder_5/dropout_16/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
Ktransformer_encoder_5/layer_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ý
9transformer_encoder_5/layer_normalization_10/moments/meanMeantransformer_encoder_5/add:z:0Ttransformer_encoder_5/layer_normalization_10/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(Ë
Atransformer_encoder_5/layer_normalization_10/moments/StopGradientStopGradientBtransformer_encoder_5/layer_normalization_10/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ü
Ftransformer_encoder_5/layer_normalization_10/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_5/add:z:0Jtransformer_encoder_5/layer_normalization_10/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
Otransformer_encoder_5/layer_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:²
=transformer_encoder_5/layer_normalization_10/moments/varianceMeanJtransformer_encoder_5/layer_normalization_10/moments/SquaredDifference:z:0Xtransformer_encoder_5/layer_normalization_10/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(
<transformer_encoder_5/layer_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
:transformer_encoder_5/layer_normalization_10/batchnorm/addAddV2Ftransformer_encoder_5/layer_normalization_10/moments/variance:output:0Etransformer_encoder_5/layer_normalization_10/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/»
<transformer_encoder_5/layer_normalization_10/batchnorm/RsqrtRsqrt>transformer_encoder_5/layer_normalization_10/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/Ø
Itransformer_encoder_5/layer_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOpRtransformer_encoder_5_layer_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
:transformer_encoder_5/layer_normalization_10/batchnorm/mulMul@transformer_encoder_5/layer_normalization_10/batchnorm/Rsqrt:y:0Qtransformer_encoder_5/layer_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ø
<transformer_encoder_5/layer_normalization_10/batchnorm/mul_1Multransformer_encoder_5/add:z:0>transformer_encoder_5/layer_normalization_10/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2ý
<transformer_encoder_5/layer_normalization_10/batchnorm/mul_2MulBtransformer_encoder_5/layer_normalization_10/moments/mean:output:0>transformer_encoder_5/layer_normalization_10/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ð
Etransformer_encoder_5/layer_normalization_10/batchnorm/ReadVariableOpReadVariableOpNtransformer_encoder_5_layer_normalization_10_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
:transformer_encoder_5/layer_normalization_10/batchnorm/subSubMtransformer_encoder_5/layer_normalization_10/batchnorm/ReadVariableOp:value:0@transformer_encoder_5/layer_normalization_10/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2ý
<transformer_encoder_5/layer_normalization_10/batchnorm/add_1AddV2@transformer_encoder_5/layer_normalization_10/batchnorm/mul_1:z:0>transformer_encoder_5/layer_normalization_10/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ò
Dtransformer_encoder_5/sequential_5/dense_20/Tensordot/ReadVariableOpReadVariableOpMtransformer_encoder_5_sequential_5_dense_20_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0
:transformer_encoder_5/sequential_5/dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
:transformer_encoder_5/sequential_5/dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       «
;transformer_encoder_5/sequential_5/dense_20/Tensordot/ShapeShape@transformer_encoder_5/layer_normalization_10/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Ctransformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
>transformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2GatherV2Dtransformer_encoder_5/sequential_5/dense_20/Tensordot/Shape:output:0Ctransformer_encoder_5/sequential_5/dense_20/Tensordot/free:output:0Ltransformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Etransformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ï
@transformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2_1GatherV2Dtransformer_encoder_5/sequential_5/dense_20/Tensordot/Shape:output:0Ctransformer_encoder_5/sequential_5/dense_20/Tensordot/axes:output:0Ntransformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
;transformer_encoder_5/sequential_5/dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ò
:transformer_encoder_5/sequential_5/dense_20/Tensordot/ProdProdGtransformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2:output:0Dtransformer_encoder_5/sequential_5/dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: 
=transformer_encoder_5/sequential_5/dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ø
<transformer_encoder_5/sequential_5/dense_20/Tensordot/Prod_1ProdItransformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2_1:output:0Ftransformer_encoder_5/sequential_5/dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Atransformer_encoder_5/sequential_5/dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ì
<transformer_encoder_5/sequential_5/dense_20/Tensordot/concatConcatV2Ctransformer_encoder_5/sequential_5/dense_20/Tensordot/free:output:0Ctransformer_encoder_5/sequential_5/dense_20/Tensordot/axes:output:0Jtransformer_encoder_5/sequential_5/dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ý
;transformer_encoder_5/sequential_5/dense_20/Tensordot/stackPackCtransformer_encoder_5/sequential_5/dense_20/Tensordot/Prod:output:0Etransformer_encoder_5/sequential_5/dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
?transformer_encoder_5/sequential_5/dense_20/Tensordot/transpose	Transpose@transformer_encoder_5/layer_normalization_10/batchnorm/add_1:z:0Etransformer_encoder_5/sequential_5/dense_20/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
=transformer_encoder_5/sequential_5/dense_20/Tensordot/ReshapeReshapeCtransformer_encoder_5/sequential_5/dense_20/Tensordot/transpose:y:0Dtransformer_encoder_5/sequential_5/dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
<transformer_encoder_5/sequential_5/dense_20/Tensordot/MatMulMatMulFtransformer_encoder_5/sequential_5/dense_20/Tensordot/Reshape:output:0Ltransformer_encoder_5/sequential_5/dense_20/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
=transformer_encoder_5/sequential_5/dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
Ctransformer_encoder_5/sequential_5/dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
>transformer_encoder_5/sequential_5/dense_20/Tensordot/concat_1ConcatV2Gtransformer_encoder_5/sequential_5/dense_20/Tensordot/GatherV2:output:0Ftransformer_encoder_5/sequential_5/dense_20/Tensordot/Const_2:output:0Ltransformer_encoder_5/sequential_5/dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
5transformer_encoder_5/sequential_5/dense_20/TensordotReshapeFtransformer_encoder_5/sequential_5/dense_20/Tensordot/MatMul:product:0Gtransformer_encoder_5/sequential_5/dense_20/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ Ê
Btransformer_encoder_5/sequential_5/dense_20/BiasAdd/ReadVariableOpReadVariableOpKtransformer_encoder_5_sequential_5_dense_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
3transformer_encoder_5/sequential_5/dense_20/BiasAddBiasAdd>transformer_encoder_5/sequential_5/dense_20/Tensordot:output:0Jtransformer_encoder_5/sequential_5/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ ¬
0transformer_encoder_5/sequential_5/dense_20/ReluRelu<transformer_encoder_5/sequential_5/dense_20/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ Ò
Dtransformer_encoder_5/sequential_5/dense_21/Tensordot/ReadVariableOpReadVariableOpMtransformer_encoder_5_sequential_5_dense_21_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0
:transformer_encoder_5/sequential_5/dense_21/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
:transformer_encoder_5/sequential_5/dense_21/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ©
;transformer_encoder_5/sequential_5/dense_21/Tensordot/ShapeShape>transformer_encoder_5/sequential_5/dense_20/Relu:activations:0*
T0*
_output_shapes
:
Ctransformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
>transformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2GatherV2Dtransformer_encoder_5/sequential_5/dense_21/Tensordot/Shape:output:0Ctransformer_encoder_5/sequential_5/dense_21/Tensordot/free:output:0Ltransformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Etransformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ï
@transformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2_1GatherV2Dtransformer_encoder_5/sequential_5/dense_21/Tensordot/Shape:output:0Ctransformer_encoder_5/sequential_5/dense_21/Tensordot/axes:output:0Ntransformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
;transformer_encoder_5/sequential_5/dense_21/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ò
:transformer_encoder_5/sequential_5/dense_21/Tensordot/ProdProdGtransformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2:output:0Dtransformer_encoder_5/sequential_5/dense_21/Tensordot/Const:output:0*
T0*
_output_shapes
: 
=transformer_encoder_5/sequential_5/dense_21/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ø
<transformer_encoder_5/sequential_5/dense_21/Tensordot/Prod_1ProdItransformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2_1:output:0Ftransformer_encoder_5/sequential_5/dense_21/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Atransformer_encoder_5/sequential_5/dense_21/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ì
<transformer_encoder_5/sequential_5/dense_21/Tensordot/concatConcatV2Ctransformer_encoder_5/sequential_5/dense_21/Tensordot/free:output:0Ctransformer_encoder_5/sequential_5/dense_21/Tensordot/axes:output:0Jtransformer_encoder_5/sequential_5/dense_21/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ý
;transformer_encoder_5/sequential_5/dense_21/Tensordot/stackPackCtransformer_encoder_5/sequential_5/dense_21/Tensordot/Prod:output:0Etransformer_encoder_5/sequential_5/dense_21/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
?transformer_encoder_5/sequential_5/dense_21/Tensordot/transpose	Transpose>transformer_encoder_5/sequential_5/dense_20/Relu:activations:0Etransformer_encoder_5/sequential_5/dense_21/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ 
=transformer_encoder_5/sequential_5/dense_21/Tensordot/ReshapeReshapeCtransformer_encoder_5/sequential_5/dense_21/Tensordot/transpose:y:0Dtransformer_encoder_5/sequential_5/dense_21/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
<transformer_encoder_5/sequential_5/dense_21/Tensordot/MatMulMatMulFtransformer_encoder_5/sequential_5/dense_21/Tensordot/Reshape:output:0Ltransformer_encoder_5/sequential_5/dense_21/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
=transformer_encoder_5/sequential_5/dense_21/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Ctransformer_encoder_5/sequential_5/dense_21/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
>transformer_encoder_5/sequential_5/dense_21/Tensordot/concat_1ConcatV2Gtransformer_encoder_5/sequential_5/dense_21/Tensordot/GatherV2:output:0Ftransformer_encoder_5/sequential_5/dense_21/Tensordot/Const_2:output:0Ltransformer_encoder_5/sequential_5/dense_21/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
5transformer_encoder_5/sequential_5/dense_21/TensordotReshapeFtransformer_encoder_5/sequential_5/dense_21/Tensordot/MatMul:product:0Gtransformer_encoder_5/sequential_5/dense_21/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ê
Btransformer_encoder_5/sequential_5/dense_21/BiasAdd/ReadVariableOpReadVariableOpKtransformer_encoder_5_sequential_5_dense_21_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
3transformer_encoder_5/sequential_5/dense_21/BiasAddBiasAdd>transformer_encoder_5/sequential_5/dense_21/Tensordot:output:0Jtransformer_encoder_5/sequential_5/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2s
.transformer_encoder_5/dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @à
,transformer_encoder_5/dropout_17/dropout/MulMul<transformer_encoder_5/sequential_5/dense_21/BiasAdd:output:07transformer_encoder_5/dropout_17/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
.transformer_encoder_5/dropout_17/dropout/ShapeShape<transformer_encoder_5/sequential_5/dense_21/BiasAdd:output:0*
T0*
_output_shapes
:Ò
Etransformer_encoder_5/dropout_17/dropout/random_uniform/RandomUniformRandomUniform7transformer_encoder_5/dropout_17/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
dtype0|
7transformer_encoder_5/dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
5transformer_encoder_5/dropout_17/dropout/GreaterEqualGreaterEqualNtransformer_encoder_5/dropout_17/dropout/random_uniform/RandomUniform:output:0@transformer_encoder_5/dropout_17/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2µ
-transformer_encoder_5/dropout_17/dropout/CastCast9transformer_encoder_5/dropout_17/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ð
.transformer_encoder_5/dropout_17/dropout/Mul_1Mul0transformer_encoder_5/dropout_17/dropout/Mul:z:01transformer_encoder_5/dropout_17/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ð
transformer_encoder_5/add_1AddV2@transformer_encoder_5/layer_normalization_10/batchnorm/add_1:z:02transformer_encoder_5/dropout_17/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
Ktransformer_encoder_5/layer_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ÿ
9transformer_encoder_5/layer_normalization_11/moments/meanMeantransformer_encoder_5/add_1:z:0Ttransformer_encoder_5/layer_normalization_11/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(Ë
Atransformer_encoder_5/layer_normalization_11/moments/StopGradientStopGradientBtransformer_encoder_5/layer_normalization_11/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/þ
Ftransformer_encoder_5/layer_normalization_11/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_5/add_1:z:0Jtransformer_encoder_5/layer_normalization_11/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
Otransformer_encoder_5/layer_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:²
=transformer_encoder_5/layer_normalization_11/moments/varianceMeanJtransformer_encoder_5/layer_normalization_11/moments/SquaredDifference:z:0Xtransformer_encoder_5/layer_normalization_11/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(
<transformer_encoder_5/layer_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
:transformer_encoder_5/layer_normalization_11/batchnorm/addAddV2Ftransformer_encoder_5/layer_normalization_11/moments/variance:output:0Etransformer_encoder_5/layer_normalization_11/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/»
<transformer_encoder_5/layer_normalization_11/batchnorm/RsqrtRsqrt>transformer_encoder_5/layer_normalization_11/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/Ø
Itransformer_encoder_5/layer_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOpRtransformer_encoder_5_layer_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
:transformer_encoder_5/layer_normalization_11/batchnorm/mulMul@transformer_encoder_5/layer_normalization_11/batchnorm/Rsqrt:y:0Qtransformer_encoder_5/layer_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ú
<transformer_encoder_5/layer_normalization_11/batchnorm/mul_1Multransformer_encoder_5/add_1:z:0>transformer_encoder_5/layer_normalization_11/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2ý
<transformer_encoder_5/layer_normalization_11/batchnorm/mul_2MulBtransformer_encoder_5/layer_normalization_11/moments/mean:output:0>transformer_encoder_5/layer_normalization_11/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ð
Etransformer_encoder_5/layer_normalization_11/batchnorm/ReadVariableOpReadVariableOpNtransformer_encoder_5_layer_normalization_11_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
:transformer_encoder_5/layer_normalization_11/batchnorm/subSubMtransformer_encoder_5/layer_normalization_11/batchnorm/ReadVariableOp:value:0@transformer_encoder_5/layer_normalization_11/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2ý
<transformer_encoder_5/layer_normalization_11/batchnorm/add_1AddV2@transformer_encoder_5/layer_normalization_11/batchnorm/mul_1:z:0>transformer_encoder_5/layer_normalization_11/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2{
rnn_5/ShapeShape@transformer_encoder_5/layer_normalization_11/batchnorm/add_1:z:0*
T0*
_output_shapes
:c
rnn_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
rnn_5/strided_sliceStridedSlicernn_5/Shape:output:0"rnn_5/strided_slice/stack:output:0$rnn_5/strided_slice/stack_1:output:0$rnn_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
rnn_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
rnn_5/zeros/packedPackrnn_5/strided_slice:output:0rnn_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
rnn_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
rnn_5/zerosFillrnn_5/zeros/packed:output:0rnn_5/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.X
rnn_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
rnn_5/zeros_1/packedPackrnn_5/strided_slice:output:0rnn_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:X
rnn_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rnn_5/zeros_1Fillrnn_5/zeros_1/packed:output:0rnn_5/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.i
rnn_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ³
rnn_5/transpose	Transpose@transformer_encoder_5/layer_normalization_11/batchnorm/add_1:z:0rnn_5/transpose/perm:output:0*
T0*+
_output_shapes
:/ÿÿÿÿÿÿÿÿÿ2P
rnn_5/Shape_1Shapernn_5/transpose:y:0*
T0*
_output_shapes
:e
rnn_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
rnn_5/strided_slice_1StridedSlicernn_5/Shape_1:output:0$rnn_5/strided_slice_1/stack:output:0&rnn_5/strided_slice_1/stack_1:output:0&rnn_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!rnn_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÆ
rnn_5/TensorArrayV2TensorListReserve*rnn_5/TensorArrayV2/element_shape:output:0rnn_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
;rnn_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ò
-rnn_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn_5/transpose:y:0Drnn_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒe
rnn_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
rnn_5/strided_slice_2StridedSlicernn_5/transpose:y:0$rnn_5/strided_slice_2/stack:output:0&rnn_5/strided_slice_2/stack_1:output:0&rnn_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
'rnn_5/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp0rnn_5_lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0¦
rnn_5/lstm_cell_5/MatMulMatMulrnn_5/strided_slice_2:output:0/rnn_5/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)rnn_5/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp2rnn_5_lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0 
rnn_5/lstm_cell_5/MatMul_1MatMulrnn_5/zeros:output:01rnn_5/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
rnn_5/lstm_cell_5/addAddV2"rnn_5/lstm_cell_5/MatMul:product:0$rnn_5/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(rnn_5/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp1rnn_5_lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0¤
rnn_5/lstm_cell_5/BiasAddBiasAddrnn_5/lstm_cell_5/add:z:00rnn_5/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!rnn_5/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
rnn_5/lstm_cell_5/splitSplit*rnn_5/lstm_cell_5/split/split_dim:output:0"rnn_5/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
rnn_5/lstm_cell_5/SigmoidSigmoid rnn_5/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
rnn_5/lstm_cell_5/Sigmoid_1Sigmoid rnn_5/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_5/lstm_cell_5/mulMulrnn_5/lstm_cell_5/Sigmoid_1:y:0rnn_5/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
rnn_5/lstm_cell_5/TanhTanh rnn_5/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_5/lstm_cell_5/mul_1Mulrnn_5/lstm_cell_5/Sigmoid:y:0rnn_5/lstm_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_5/lstm_cell_5/add_1AddV2rnn_5/lstm_cell_5/mul:z:0rnn_5/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
rnn_5/lstm_cell_5/Sigmoid_2Sigmoid rnn_5/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
rnn_5/lstm_cell_5/Tanh_1Tanhrnn_5/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_5/lstm_cell_5/mul_2Mulrnn_5/lstm_cell_5/Sigmoid_2:y:0rnn_5/lstm_cell_5/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.t
#rnn_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   d
"rnn_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :×
rnn_5/TensorArrayV2_1TensorListReserve,rnn_5/TensorArrayV2_1/element_shape:output:0+rnn_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒL

rnn_5/timeConst*
_output_shapes
: *
dtype0*
value	B : i
rnn_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿZ
rnn_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ù
rnn_5/whileWhile!rnn_5/while/loop_counter:output:0'rnn_5/while/maximum_iterations:output:0rnn_5/time:output:0rnn_5/TensorArrayV2_1:handle:0rnn_5/zeros:output:0rnn_5/zeros_1:output:0rnn_5/strided_slice_1:output:0=rnn_5/TensorArrayUnstack/TensorListFromTensor:output_handle:00rnn_5_lstm_cell_5_matmul_readvariableop_resource2rnn_5_lstm_cell_5_matmul_1_readvariableop_resource1rnn_5_lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
rnn_5_while_body_177375479*&
condR
rnn_5_while_cond_177375478*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
6rnn_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   è
(rnn_5/TensorArrayV2Stack/TensorListStackTensorListStackrnn_5/while:output:3?rnn_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsn
rnn_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿg
rnn_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
rnn_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¥
rnn_5/strided_slice_3StridedSlice1rnn_5/TensorArrayV2Stack/TensorListStack:tensor:0$rnn_5/strided_slice_3/stack:output:0&rnn_5/strided_slice_3/stack_1:output:0&rnn_5/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maskk
rnn_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¨
rnn_5/transpose_1	Transpose1rnn_5/TensorArrayV2Stack/TensorListStack:tensor:0rnn_5/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes

:..*
dtype0
dense_22/MatMulMatMulrnn_5/strided_slice_3:output:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.b
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:.*
dtype0
dense_23/MatMulMatMuldense_22/Relu:activations:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_23/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp)^rnn_5/lstm_cell_5/BiasAdd/ReadVariableOp(^rnn_5/lstm_cell_5/MatMul/ReadVariableOp*^rnn_5/lstm_cell_5/MatMul_1/ReadVariableOp^rnn_5/while=^token_and_position_embedding_5/embedding_10/embedding_lookup=^token_and_position_embedding_5/embedding_11/embedding_lookupF^transformer_encoder_5/layer_normalization_10/batchnorm/ReadVariableOpJ^transformer_encoder_5/layer_normalization_10/batchnorm/mul/ReadVariableOpF^transformer_encoder_5/layer_normalization_11/batchnorm/ReadVariableOpJ^transformer_encoder_5/layer_normalization_11/batchnorm/mul/ReadVariableOpQ^transformer_encoder_5/multi_head_attention_5/attention_output/add/ReadVariableOp[^transformer_encoder_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpD^transformer_encoder_5/multi_head_attention_5/key/add/ReadVariableOpN^transformer_encoder_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpF^transformer_encoder_5/multi_head_attention_5/query/add/ReadVariableOpP^transformer_encoder_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpF^transformer_encoder_5/multi_head_attention_5/value/add/ReadVariableOpP^transformer_encoder_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOpC^transformer_encoder_5/sequential_5/dense_20/BiasAdd/ReadVariableOpE^transformer_encoder_5/sequential_5/dense_20/Tensordot/ReadVariableOpC^transformer_encoder_5/sequential_5/dense_21/BiasAdd/ReadVariableOpE^transformer_encoder_5/sequential_5/dense_21/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ/: : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2T
(rnn_5/lstm_cell_5/BiasAdd/ReadVariableOp(rnn_5/lstm_cell_5/BiasAdd/ReadVariableOp2R
'rnn_5/lstm_cell_5/MatMul/ReadVariableOp'rnn_5/lstm_cell_5/MatMul/ReadVariableOp2V
)rnn_5/lstm_cell_5/MatMul_1/ReadVariableOp)rnn_5/lstm_cell_5/MatMul_1/ReadVariableOp2
rnn_5/whilernn_5/while2|
<token_and_position_embedding_5/embedding_10/embedding_lookup<token_and_position_embedding_5/embedding_10/embedding_lookup2|
<token_and_position_embedding_5/embedding_11/embedding_lookup<token_and_position_embedding_5/embedding_11/embedding_lookup2
Etransformer_encoder_5/layer_normalization_10/batchnorm/ReadVariableOpEtransformer_encoder_5/layer_normalization_10/batchnorm/ReadVariableOp2
Itransformer_encoder_5/layer_normalization_10/batchnorm/mul/ReadVariableOpItransformer_encoder_5/layer_normalization_10/batchnorm/mul/ReadVariableOp2
Etransformer_encoder_5/layer_normalization_11/batchnorm/ReadVariableOpEtransformer_encoder_5/layer_normalization_11/batchnorm/ReadVariableOp2
Itransformer_encoder_5/layer_normalization_11/batchnorm/mul/ReadVariableOpItransformer_encoder_5/layer_normalization_11/batchnorm/mul/ReadVariableOp2¤
Ptransformer_encoder_5/multi_head_attention_5/attention_output/add/ReadVariableOpPtransformer_encoder_5/multi_head_attention_5/attention_output/add/ReadVariableOp2¸
Ztransformer_encoder_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpZtransformer_encoder_5/multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp2
Ctransformer_encoder_5/multi_head_attention_5/key/add/ReadVariableOpCtransformer_encoder_5/multi_head_attention_5/key/add/ReadVariableOp2
Mtransformer_encoder_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOpMtransformer_encoder_5/multi_head_attention_5/key/einsum/Einsum/ReadVariableOp2
Etransformer_encoder_5/multi_head_attention_5/query/add/ReadVariableOpEtransformer_encoder_5/multi_head_attention_5/query/add/ReadVariableOp2¢
Otransformer_encoder_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOpOtransformer_encoder_5/multi_head_attention_5/query/einsum/Einsum/ReadVariableOp2
Etransformer_encoder_5/multi_head_attention_5/value/add/ReadVariableOpEtransformer_encoder_5/multi_head_attention_5/value/add/ReadVariableOp2¢
Otransformer_encoder_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOpOtransformer_encoder_5/multi_head_attention_5/value/einsum/Einsum/ReadVariableOp2
Btransformer_encoder_5/sequential_5/dense_20/BiasAdd/ReadVariableOpBtransformer_encoder_5/sequential_5/dense_20/BiasAdd/ReadVariableOp2
Dtransformer_encoder_5/sequential_5/dense_20/Tensordot/ReadVariableOpDtransformer_encoder_5/sequential_5/dense_20/Tensordot/ReadVariableOp2
Btransformer_encoder_5/sequential_5/dense_21/BiasAdd/ReadVariableOpBtransformer_encoder_5/sequential_5/dense_21/BiasAdd/ReadVariableOp2
Dtransformer_encoder_5/sequential_5/dense_21/Tensordot/ReadVariableOpDtransformer_encoder_5/sequential_5/dense_21/Tensordot/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
 
_user_specified_nameinputs
ã?


rnn_5_while_body_177375479(
$rnn_5_while_rnn_5_while_loop_counter.
*rnn_5_while_rnn_5_while_maximum_iterations
rnn_5_while_placeholder
rnn_5_while_placeholder_1
rnn_5_while_placeholder_2
rnn_5_while_placeholder_3'
#rnn_5_while_rnn_5_strided_slice_1_0c
_rnn_5_while_tensorarrayv2read_tensorlistgetitem_rnn_5_tensorarrayunstack_tensorlistfromtensor_0K
8rnn_5_while_lstm_cell_5_matmul_readvariableop_resource_0:	2¸M
:rnn_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0:	.¸H
9rnn_5_while_lstm_cell_5_biasadd_readvariableop_resource_0:	¸
rnn_5_while_identity
rnn_5_while_identity_1
rnn_5_while_identity_2
rnn_5_while_identity_3
rnn_5_while_identity_4
rnn_5_while_identity_5%
!rnn_5_while_rnn_5_strided_slice_1a
]rnn_5_while_tensorarrayv2read_tensorlistgetitem_rnn_5_tensorarrayunstack_tensorlistfromtensorI
6rnn_5_while_lstm_cell_5_matmul_readvariableop_resource:	2¸K
8rnn_5_while_lstm_cell_5_matmul_1_readvariableop_resource:	.¸F
7rnn_5_while_lstm_cell_5_biasadd_readvariableop_resource:	¸¢.rnn_5/while/lstm_cell_5/BiasAdd/ReadVariableOp¢-rnn_5/while/lstm_cell_5/MatMul/ReadVariableOp¢/rnn_5/while/lstm_cell_5/MatMul_1/ReadVariableOp
=rnn_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ä
/rnn_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_rnn_5_while_tensorarrayv2read_tensorlistgetitem_rnn_5_tensorarrayunstack_tensorlistfromtensor_0rnn_5_while_placeholderFrnn_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0§
-rnn_5/while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp8rnn_5_while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0Ê
rnn_5/while/lstm_cell_5/MatMulMatMul6rnn_5/while/TensorArrayV2Read/TensorListGetItem:item:05rnn_5/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸«
/rnn_5/while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp:rnn_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0±
 rnn_5/while/lstm_cell_5/MatMul_1MatMulrnn_5_while_placeholder_27rnn_5/while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸­
rnn_5/while/lstm_cell_5/addAddV2(rnn_5/while/lstm_cell_5/MatMul:product:0*rnn_5/while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸¥
.rnn_5/while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp9rnn_5_while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¶
rnn_5/while/lstm_cell_5/BiasAddBiasAddrnn_5/while/lstm_cell_5/add:z:06rnn_5/while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸i
'rnn_5/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :þ
rnn_5/while/lstm_cell_5/splitSplit0rnn_5/while/lstm_cell_5/split/split_dim:output:0(rnn_5/while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_split
rnn_5/while/lstm_cell_5/SigmoidSigmoid&rnn_5/while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!rnn_5/while/lstm_cell_5/Sigmoid_1Sigmoid&rnn_5/while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_5/while/lstm_cell_5/mulMul%rnn_5/while/lstm_cell_5/Sigmoid_1:y:0rnn_5_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.~
rnn_5/while/lstm_cell_5/TanhTanh&rnn_5/while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_5/while/lstm_cell_5/mul_1Mul#rnn_5/while/lstm_cell_5/Sigmoid:y:0 rnn_5/while/lstm_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_5/while/lstm_cell_5/add_1AddV2rnn_5/while/lstm_cell_5/mul:z:0!rnn_5/while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!rnn_5/while/lstm_cell_5/Sigmoid_2Sigmoid&rnn_5/while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.{
rnn_5/while/lstm_cell_5/Tanh_1Tanh!rnn_5/while/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¡
rnn_5/while/lstm_cell_5/mul_2Mul%rnn_5/while/lstm_cell_5/Sigmoid_2:y:0"rnn_5/while/lstm_cell_5/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
6rnn_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
0rnn_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_5_while_placeholder_1?rnn_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0!rnn_5/while/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒS
rnn_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
rnn_5/while/addAddV2rnn_5_while_placeholderrnn_5/while/add/y:output:0*
T0*
_output_shapes
: U
rnn_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
rnn_5/while/add_1AddV2$rnn_5_while_rnn_5_while_loop_counterrnn_5/while/add_1/y:output:0*
T0*
_output_shapes
: k
rnn_5/while/IdentityIdentityrnn_5/while/add_1:z:0^rnn_5/while/NoOp*
T0*
_output_shapes
: 
rnn_5/while/Identity_1Identity*rnn_5_while_rnn_5_while_maximum_iterations^rnn_5/while/NoOp*
T0*
_output_shapes
: k
rnn_5/while/Identity_2Identityrnn_5/while/add:z:0^rnn_5/while/NoOp*
T0*
_output_shapes
: 
rnn_5/while/Identity_3Identity@rnn_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn_5/while/NoOp*
T0*
_output_shapes
: 
rnn_5/while/Identity_4Identity!rnn_5/while/lstm_cell_5/mul_2:z:0^rnn_5/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_5/while/Identity_5Identity!rnn_5/while/lstm_cell_5/add_1:z:0^rnn_5/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.å
rnn_5/while/NoOpNoOp/^rnn_5/while/lstm_cell_5/BiasAdd/ReadVariableOp.^rnn_5/while/lstm_cell_5/MatMul/ReadVariableOp0^rnn_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "5
rnn_5_while_identityrnn_5/while/Identity:output:0"9
rnn_5_while_identity_1rnn_5/while/Identity_1:output:0"9
rnn_5_while_identity_2rnn_5/while/Identity_2:output:0"9
rnn_5_while_identity_3rnn_5/while/Identity_3:output:0"9
rnn_5_while_identity_4rnn_5/while/Identity_4:output:0"9
rnn_5_while_identity_5rnn_5/while/Identity_5:output:0"t
7rnn_5_while_lstm_cell_5_biasadd_readvariableop_resource9rnn_5_while_lstm_cell_5_biasadd_readvariableop_resource_0"v
8rnn_5_while_lstm_cell_5_matmul_1_readvariableop_resource:rnn_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0"r
6rnn_5_while_lstm_cell_5_matmul_readvariableop_resource8rnn_5_while_lstm_cell_5_matmul_readvariableop_resource_0"H
!rnn_5_while_rnn_5_strided_slice_1#rnn_5_while_rnn_5_strided_slice_1_0"À
]rnn_5_while_tensorarrayv2read_tensorlistgetitem_rnn_5_tensorarrayunstack_tensorlistfromtensor_rnn_5_while_tensorarrayv2read_tensorlistgetitem_rnn_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2`
.rnn_5/while/lstm_cell_5/BiasAdd/ReadVariableOp.rnn_5/while/lstm_cell_5/BiasAdd/ReadVariableOp2^
-rnn_5/while/lstm_cell_5/MatMul/ReadVariableOp-rnn_5/while/lstm_cell_5/MatMul/ReadVariableOp2b
/rnn_5/while/lstm_cell_5/MatMul_1/ReadVariableOp/rnn_5/while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 
Ã

J__inference_lstm_cell_5_layer_call_and_return_conditional_losses_177373316

inputs

states
states_11
matmul_readvariableop_resource:	2¸3
 matmul_1_readvariableop_resource:	.¸.
biasadd_readvariableop_resource:	¸
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_namestates
$
ñ
while_body_177373331
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_5_177373355_0:	2¸0
while_lstm_cell_5_177373357_0:	.¸,
while_lstm_cell_5_177373359_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_5_177373355:	2¸.
while_lstm_cell_5_177373357:	.¸*
while_lstm_cell_5_177373359:	¸¢)while/lstm_cell_5/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0º
)while/lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_5_177373355_0while_lstm_cell_5_177373357_0while_lstm_cell_5_177373359_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_5_layer_call_and_return_conditional_losses_177373316r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:02while/lstm_cell_5/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity2while/lstm_cell_5/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/Identity_5Identity2while/lstm_cell_5/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x

while/NoOpNoOp*^while/lstm_cell_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_5_177373355while_lstm_cell_5_177373355_0"<
while_lstm_cell_5_177373357while_lstm_cell_5_177373357_0"<
while_lstm_cell_5_177373359while_lstm_cell_5_177373359_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2V
)while/lstm_cell_5/StatefulPartitionedCall)while/lstm_cell_5/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 
Ä
Ò
while_cond_177376485
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_177376485___redundant_placeholder07
3while_while_cond_177376485___redundant_placeholder17
3while_while_cond_177376485___redundant_placeholder27
3while_while_cond_177376485___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
Ä
Ò
while_cond_177374129
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_177374129___redundant_placeholder07
3while_while_cond_177374129___redundant_placeholder17
3while_while_cond_177374129___redundant_placeholder27
3while_while_cond_177374129___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
È

,__inference_dense_22_layer_call_fn_177376579

inputs
unknown:..
	unknown_0:.
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_22_layer_call_and_return_conditional_losses_177373961o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
ò
¯
B__inference_token_and_position_embedding_5_layer_call_fn_177375585
x
unknown:/2
	unknown_0:	2
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *f
faR_
]__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_177373632s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ/: : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/

_user_specified_namex
Ì
Û
0__inference_sequential_5_layer_call_fn_177373221
dense_20_input
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_20_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_5_layer_call_and_return_conditional_losses_177373197s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ/2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
(
_user_specified_namedense_20_input
ï
ø
/__inference_lstm_cell_5_layer_call_fn_177376783

inputs
states_0
states_1
unknown:	2¸
	unknown_0:	.¸
	unknown_1:	¸
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_5_layer_call_and_return_conditional_losses_177373463o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
states/1
Ë

J__inference_lstm_cell_5_layer_call_and_return_conditional_losses_177376815

inputs
states_0
states_11
matmul_readvariableop_resource:	2¸3
 matmul_1_readvariableop_resource:	.¸.
biasadd_readvariableop_resource:	¸
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
states/1
Ä
Ò
while_cond_177373522
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_177373522___redundant_placeholder07
3while_while_cond_177373522___redundant_placeholder17
3while_while_cond_177373522___redundant_placeholder27
3while_while_cond_177373522___redundant_placeholder3
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
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
´
Ó
0__inference_sequential_5_layer_call_fn_177376635

inputs
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_5_layer_call_and_return_conditional_losses_177373197s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ/2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
 
_user_specified_nameinputs
Í
ê
"model_5_rnn_5_while_cond_1773729588
4model_5_rnn_5_while_model_5_rnn_5_while_loop_counter>
:model_5_rnn_5_while_model_5_rnn_5_while_maximum_iterations#
model_5_rnn_5_while_placeholder%
!model_5_rnn_5_while_placeholder_1%
!model_5_rnn_5_while_placeholder_2%
!model_5_rnn_5_while_placeholder_3:
6model_5_rnn_5_while_less_model_5_rnn_5_strided_slice_1S
Omodel_5_rnn_5_while_model_5_rnn_5_while_cond_177372958___redundant_placeholder0S
Omodel_5_rnn_5_while_model_5_rnn_5_while_cond_177372958___redundant_placeholder1S
Omodel_5_rnn_5_while_model_5_rnn_5_while_cond_177372958___redundant_placeholder2S
Omodel_5_rnn_5_while_model_5_rnn_5_while_cond_177372958___redundant_placeholder3 
model_5_rnn_5_while_identity

model_5/rnn_5/while/LessLessmodel_5_rnn_5_while_placeholder6model_5_rnn_5_while_less_model_5_rnn_5_strided_slice_1*
T0*
_output_shapes
: g
model_5/rnn_5/while/IdentityIdentitymodel_5/rnn_5/while/Less:z:0*
T0
*
_output_shapes
: "E
model_5_rnn_5_while_identity%model_5/rnn_5/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
)
É
F__inference_model_5_layer_call_and_return_conditional_losses_177373984

inputs:
(token_and_position_embedding_5_177373633:/2;
(token_and_position_embedding_5_177373635:	25
transformer_encoder_5_177373766:221
transformer_encoder_5_177373768:25
transformer_encoder_5_177373770:221
transformer_encoder_5_177373772:25
transformer_encoder_5_177373774:221
transformer_encoder_5_177373776:25
transformer_encoder_5_177373778:22-
transformer_encoder_5_177373780:2-
transformer_encoder_5_177373782:2-
transformer_encoder_5_177373784:21
transformer_encoder_5_177373786:2 -
transformer_encoder_5_177373788: 1
transformer_encoder_5_177373790: 2-
transformer_encoder_5_177373792:2-
transformer_encoder_5_177373794:2-
transformer_encoder_5_177373796:2"
rnn_5_177373943:	2¸"
rnn_5_177373945:	.¸
rnn_5_177373947:	¸$
dense_22_177373962:.. 
dense_22_177373964:.$
dense_23_177373978:. 
dense_23_177373980:
identity¢ dense_22/StatefulPartitionedCall¢ dense_23/StatefulPartitionedCall¢rnn_5/StatefulPartitionedCall¢6token_and_position_embedding_5/StatefulPartitionedCall¢-transformer_encoder_5/StatefulPartitionedCallÕ
6token_and_position_embedding_5/StatefulPartitionedCallStatefulPartitionedCallinputs(token_and_position_embedding_5_177373633(token_and_position_embedding_5_177373635*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *f
faR_
]__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_177373632Ô
-transformer_encoder_5/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_5/StatefulPartitionedCall:output:0transformer_encoder_5_177373766transformer_encoder_5_177373768transformer_encoder_5_177373770transformer_encoder_5_177373772transformer_encoder_5_177373774transformer_encoder_5_177373776transformer_encoder_5_177373778transformer_encoder_5_177373780transformer_encoder_5_177373782transformer_encoder_5_177373784transformer_encoder_5_177373786transformer_encoder_5_177373788transformer_encoder_5_177373790transformer_encoder_5_177373792transformer_encoder_5_177373794transformer_encoder_5_177373796*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transformer_encoder_5_layer_call_and_return_conditional_losses_177373765°
rnn_5/StatefulPartitionedCallStatefulPartitionedCall6transformer_encoder_5/StatefulPartitionedCall:output:0rnn_5_177373943rnn_5_177373945rnn_5_177373947*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_rnn_5_layer_call_and_return_conditional_losses_177373942
 dense_22/StatefulPartitionedCallStatefulPartitionedCall&rnn_5/StatefulPartitionedCall:output:0dense_22_177373962dense_22_177373964*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_22_layer_call_and_return_conditional_losses_177373961
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_177373978dense_23_177373980*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_23_layer_call_and_return_conditional_losses_177373977x
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall^rnn_5/StatefulPartitionedCall7^token_and_position_embedding_5/StatefulPartitionedCall.^transformer_encoder_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ/: : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2>
rnn_5/StatefulPartitionedCallrnn_5/StatefulPartitionedCall2p
6token_and_position_embedding_5/StatefulPartitionedCall6token_and_position_embedding_5/StatefulPartitionedCall2^
-transformer_encoder_5/StatefulPartitionedCall-transformer_encoder_5/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
 
_user_specified_nameinputs
ù
¶
)__inference_rnn_5_layer_call_fn_177375983

inputs
unknown:	2¸
	unknown_0:	.¸
	unknown_1:	¸
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_rnn_5_layer_call_and_return_conditional_losses_177373942o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ/2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
 
_user_specified_nameinputs
¥J

D__inference_rnn_5_layer_call_and_return_conditional_losses_177376282
inputs_0=
*lstm_cell_5_matmul_readvariableop_resource:	2¸?
,lstm_cell_5_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_5_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_5/BiasAdd/ReadVariableOp¢!lstm_cell_5/MatMul/ReadVariableOp¢#lstm_cell_5/MatMul_1/ReadVariableOp¢while=
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
valueB:Ñ
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
value	B :.s
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
:ÿÿÿÿÿÿÿÿÿ.R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.w
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
:ÿÿÿÿÿÿÿÿÿ.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_5/TanhTanhlstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_5/Tanh_1Tanhlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_2:y:0lstm_cell_5/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
while_body_177376198* 
condR
while_cond_177376197*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.½
NoOpNoOp#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
Ó8
Ê
while_body_177376054
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_5_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_5_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_5_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_5_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_5_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_5_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_5/BiasAdd/ReadVariableOp¢'while/lstm_cell_5/MatMul/ReadVariableOp¢)while/lstm_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_5/TanhTanh while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0while/lstm_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_5/Tanh_1Tanhwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_2:y:0while/lstm_cell_5/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 
ì	
Ê
rnn_5_while_cond_177375165(
$rnn_5_while_rnn_5_while_loop_counter.
*rnn_5_while_rnn_5_while_maximum_iterations
rnn_5_while_placeholder
rnn_5_while_placeholder_1
rnn_5_while_placeholder_2
rnn_5_while_placeholder_3*
&rnn_5_while_less_rnn_5_strided_slice_1C
?rnn_5_while_rnn_5_while_cond_177375165___redundant_placeholder0C
?rnn_5_while_rnn_5_while_cond_177375165___redundant_placeholder1C
?rnn_5_while_rnn_5_while_cond_177375165___redundant_placeholder2C
?rnn_5_while_rnn_5_while_cond_177375165___redundant_placeholder3
rnn_5_while_identity
z
rnn_5/while/LessLessrnn_5_while_placeholder&rnn_5_while_less_rnn_5_strided_slice_1*
T0*
_output_shapes
: W
rnn_5/while/IdentityIdentityrnn_5/while/Less:z:0*
T0
*
_output_shapes
: "5
rnn_5_while_identityrnn_5/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
:
ä´
À0
"__inference__traced_save_177377201
file_prefix.
*savev2_dense_22_kernel_read_readvariableop,
(savev2_dense_22_bias_read_readvariableop.
*savev2_dense_23_kernel_read_readvariableop,
(savev2_dense_23_bias_read_readvariableopU
Qsavev2_token_and_position_embedding_5_embedding_10_embeddings_read_readvariableopU
Qsavev2_token_and_position_embedding_5_embedding_11_embeddings_read_readvariableopX
Tsavev2_transformer_encoder_5_multi_head_attention_5_query_kernel_read_readvariableopV
Rsavev2_transformer_encoder_5_multi_head_attention_5_query_bias_read_readvariableopV
Rsavev2_transformer_encoder_5_multi_head_attention_5_key_kernel_read_readvariableopT
Psavev2_transformer_encoder_5_multi_head_attention_5_key_bias_read_readvariableopX
Tsavev2_transformer_encoder_5_multi_head_attention_5_value_kernel_read_readvariableopV
Rsavev2_transformer_encoder_5_multi_head_attention_5_value_bias_read_readvariableopc
_savev2_transformer_encoder_5_multi_head_attention_5_attention_output_kernel_read_readvariableopa
]savev2_transformer_encoder_5_multi_head_attention_5_attention_output_bias_read_readvariableop.
*savev2_dense_20_kernel_read_readvariableop,
(savev2_dense_20_bias_read_readvariableop.
*savev2_dense_21_kernel_read_readvariableop,
(savev2_dense_21_bias_read_readvariableopQ
Msavev2_transformer_encoder_5_layer_normalization_10_gamma_read_readvariableopP
Lsavev2_transformer_encoder_5_layer_normalization_10_beta_read_readvariableopQ
Msavev2_transformer_encoder_5_layer_normalization_11_gamma_read_readvariableopP
Lsavev2_transformer_encoder_5_layer_normalization_11_beta_read_readvariableop7
3savev2_rnn_5_lstm_cell_5_kernel_read_readvariableopA
=savev2_rnn_5_lstm_cell_5_recurrent_kernel_read_readvariableop5
1savev2_rnn_5_lstm_cell_5_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_22_kernel_m_read_readvariableop3
/savev2_adam_dense_22_bias_m_read_readvariableop5
1savev2_adam_dense_23_kernel_m_read_readvariableop3
/savev2_adam_dense_23_bias_m_read_readvariableop\
Xsavev2_adam_token_and_position_embedding_5_embedding_10_embeddings_m_read_readvariableop\
Xsavev2_adam_token_and_position_embedding_5_embedding_11_embeddings_m_read_readvariableop_
[savev2_adam_transformer_encoder_5_multi_head_attention_5_query_kernel_m_read_readvariableop]
Ysavev2_adam_transformer_encoder_5_multi_head_attention_5_query_bias_m_read_readvariableop]
Ysavev2_adam_transformer_encoder_5_multi_head_attention_5_key_kernel_m_read_readvariableop[
Wsavev2_adam_transformer_encoder_5_multi_head_attention_5_key_bias_m_read_readvariableop_
[savev2_adam_transformer_encoder_5_multi_head_attention_5_value_kernel_m_read_readvariableop]
Ysavev2_adam_transformer_encoder_5_multi_head_attention_5_value_bias_m_read_readvariableopj
fsavev2_adam_transformer_encoder_5_multi_head_attention_5_attention_output_kernel_m_read_readvariableoph
dsavev2_adam_transformer_encoder_5_multi_head_attention_5_attention_output_bias_m_read_readvariableop5
1savev2_adam_dense_20_kernel_m_read_readvariableop3
/savev2_adam_dense_20_bias_m_read_readvariableop5
1savev2_adam_dense_21_kernel_m_read_readvariableop3
/savev2_adam_dense_21_bias_m_read_readvariableopX
Tsavev2_adam_transformer_encoder_5_layer_normalization_10_gamma_m_read_readvariableopW
Ssavev2_adam_transformer_encoder_5_layer_normalization_10_beta_m_read_readvariableopX
Tsavev2_adam_transformer_encoder_5_layer_normalization_11_gamma_m_read_readvariableopW
Ssavev2_adam_transformer_encoder_5_layer_normalization_11_beta_m_read_readvariableop>
:savev2_adam_rnn_5_lstm_cell_5_kernel_m_read_readvariableopH
Dsavev2_adam_rnn_5_lstm_cell_5_recurrent_kernel_m_read_readvariableop<
8savev2_adam_rnn_5_lstm_cell_5_bias_m_read_readvariableop5
1savev2_adam_dense_22_kernel_v_read_readvariableop3
/savev2_adam_dense_22_bias_v_read_readvariableop5
1savev2_adam_dense_23_kernel_v_read_readvariableop3
/savev2_adam_dense_23_bias_v_read_readvariableop\
Xsavev2_adam_token_and_position_embedding_5_embedding_10_embeddings_v_read_readvariableop\
Xsavev2_adam_token_and_position_embedding_5_embedding_11_embeddings_v_read_readvariableop_
[savev2_adam_transformer_encoder_5_multi_head_attention_5_query_kernel_v_read_readvariableop]
Ysavev2_adam_transformer_encoder_5_multi_head_attention_5_query_bias_v_read_readvariableop]
Ysavev2_adam_transformer_encoder_5_multi_head_attention_5_key_kernel_v_read_readvariableop[
Wsavev2_adam_transformer_encoder_5_multi_head_attention_5_key_bias_v_read_readvariableop_
[savev2_adam_transformer_encoder_5_multi_head_attention_5_value_kernel_v_read_readvariableop]
Ysavev2_adam_transformer_encoder_5_multi_head_attention_5_value_bias_v_read_readvariableopj
fsavev2_adam_transformer_encoder_5_multi_head_attention_5_attention_output_kernel_v_read_readvariableoph
dsavev2_adam_transformer_encoder_5_multi_head_attention_5_attention_output_bias_v_read_readvariableop5
1savev2_adam_dense_20_kernel_v_read_readvariableop3
/savev2_adam_dense_20_bias_v_read_readvariableop5
1savev2_adam_dense_21_kernel_v_read_readvariableop3
/savev2_adam_dense_21_bias_v_read_readvariableopX
Tsavev2_adam_transformer_encoder_5_layer_normalization_10_gamma_v_read_readvariableopW
Ssavev2_adam_transformer_encoder_5_layer_normalization_10_beta_v_read_readvariableopX
Tsavev2_adam_transformer_encoder_5_layer_normalization_11_gamma_v_read_readvariableopW
Ssavev2_adam_transformer_encoder_5_layer_normalization_11_beta_v_read_readvariableop>
:savev2_adam_rnn_5_lstm_cell_5_kernel_v_read_readvariableopH
Dsavev2_adam_rnn_5_lstm_cell_5_recurrent_kernel_v_read_readvariableop<
8savev2_adam_rnn_5_lstm_cell_5_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ì(
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*õ'
valueë'Bè'UB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*¿
valueµB²UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B /
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_22_kernel_read_readvariableop(savev2_dense_22_bias_read_readvariableop*savev2_dense_23_kernel_read_readvariableop(savev2_dense_23_bias_read_readvariableopQsavev2_token_and_position_embedding_5_embedding_10_embeddings_read_readvariableopQsavev2_token_and_position_embedding_5_embedding_11_embeddings_read_readvariableopTsavev2_transformer_encoder_5_multi_head_attention_5_query_kernel_read_readvariableopRsavev2_transformer_encoder_5_multi_head_attention_5_query_bias_read_readvariableopRsavev2_transformer_encoder_5_multi_head_attention_5_key_kernel_read_readvariableopPsavev2_transformer_encoder_5_multi_head_attention_5_key_bias_read_readvariableopTsavev2_transformer_encoder_5_multi_head_attention_5_value_kernel_read_readvariableopRsavev2_transformer_encoder_5_multi_head_attention_5_value_bias_read_readvariableop_savev2_transformer_encoder_5_multi_head_attention_5_attention_output_kernel_read_readvariableop]savev2_transformer_encoder_5_multi_head_attention_5_attention_output_bias_read_readvariableop*savev2_dense_20_kernel_read_readvariableop(savev2_dense_20_bias_read_readvariableop*savev2_dense_21_kernel_read_readvariableop(savev2_dense_21_bias_read_readvariableopMsavev2_transformer_encoder_5_layer_normalization_10_gamma_read_readvariableopLsavev2_transformer_encoder_5_layer_normalization_10_beta_read_readvariableopMsavev2_transformer_encoder_5_layer_normalization_11_gamma_read_readvariableopLsavev2_transformer_encoder_5_layer_normalization_11_beta_read_readvariableop3savev2_rnn_5_lstm_cell_5_kernel_read_readvariableop=savev2_rnn_5_lstm_cell_5_recurrent_kernel_read_readvariableop1savev2_rnn_5_lstm_cell_5_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_22_kernel_m_read_readvariableop/savev2_adam_dense_22_bias_m_read_readvariableop1savev2_adam_dense_23_kernel_m_read_readvariableop/savev2_adam_dense_23_bias_m_read_readvariableopXsavev2_adam_token_and_position_embedding_5_embedding_10_embeddings_m_read_readvariableopXsavev2_adam_token_and_position_embedding_5_embedding_11_embeddings_m_read_readvariableop[savev2_adam_transformer_encoder_5_multi_head_attention_5_query_kernel_m_read_readvariableopYsavev2_adam_transformer_encoder_5_multi_head_attention_5_query_bias_m_read_readvariableopYsavev2_adam_transformer_encoder_5_multi_head_attention_5_key_kernel_m_read_readvariableopWsavev2_adam_transformer_encoder_5_multi_head_attention_5_key_bias_m_read_readvariableop[savev2_adam_transformer_encoder_5_multi_head_attention_5_value_kernel_m_read_readvariableopYsavev2_adam_transformer_encoder_5_multi_head_attention_5_value_bias_m_read_readvariableopfsavev2_adam_transformer_encoder_5_multi_head_attention_5_attention_output_kernel_m_read_readvariableopdsavev2_adam_transformer_encoder_5_multi_head_attention_5_attention_output_bias_m_read_readvariableop1savev2_adam_dense_20_kernel_m_read_readvariableop/savev2_adam_dense_20_bias_m_read_readvariableop1savev2_adam_dense_21_kernel_m_read_readvariableop/savev2_adam_dense_21_bias_m_read_readvariableopTsavev2_adam_transformer_encoder_5_layer_normalization_10_gamma_m_read_readvariableopSsavev2_adam_transformer_encoder_5_layer_normalization_10_beta_m_read_readvariableopTsavev2_adam_transformer_encoder_5_layer_normalization_11_gamma_m_read_readvariableopSsavev2_adam_transformer_encoder_5_layer_normalization_11_beta_m_read_readvariableop:savev2_adam_rnn_5_lstm_cell_5_kernel_m_read_readvariableopDsavev2_adam_rnn_5_lstm_cell_5_recurrent_kernel_m_read_readvariableop8savev2_adam_rnn_5_lstm_cell_5_bias_m_read_readvariableop1savev2_adam_dense_22_kernel_v_read_readvariableop/savev2_adam_dense_22_bias_v_read_readvariableop1savev2_adam_dense_23_kernel_v_read_readvariableop/savev2_adam_dense_23_bias_v_read_readvariableopXsavev2_adam_token_and_position_embedding_5_embedding_10_embeddings_v_read_readvariableopXsavev2_adam_token_and_position_embedding_5_embedding_11_embeddings_v_read_readvariableop[savev2_adam_transformer_encoder_5_multi_head_attention_5_query_kernel_v_read_readvariableopYsavev2_adam_transformer_encoder_5_multi_head_attention_5_query_bias_v_read_readvariableopYsavev2_adam_transformer_encoder_5_multi_head_attention_5_key_kernel_v_read_readvariableopWsavev2_adam_transformer_encoder_5_multi_head_attention_5_key_bias_v_read_readvariableop[savev2_adam_transformer_encoder_5_multi_head_attention_5_value_kernel_v_read_readvariableopYsavev2_adam_transformer_encoder_5_multi_head_attention_5_value_bias_v_read_readvariableopfsavev2_adam_transformer_encoder_5_multi_head_attention_5_attention_output_kernel_v_read_readvariableopdsavev2_adam_transformer_encoder_5_multi_head_attention_5_attention_output_bias_v_read_readvariableop1savev2_adam_dense_20_kernel_v_read_readvariableop/savev2_adam_dense_20_bias_v_read_readvariableop1savev2_adam_dense_21_kernel_v_read_readvariableop/savev2_adam_dense_21_bias_v_read_readvariableopTsavev2_adam_transformer_encoder_5_layer_normalization_10_gamma_v_read_readvariableopSsavev2_adam_transformer_encoder_5_layer_normalization_10_beta_v_read_readvariableopTsavev2_adam_transformer_encoder_5_layer_normalization_11_gamma_v_read_readvariableopSsavev2_adam_transformer_encoder_5_layer_normalization_11_beta_v_read_readvariableop:savev2_adam_rnn_5_lstm_cell_5_kernel_v_read_readvariableopDsavev2_adam_rnn_5_lstm_cell_5_recurrent_kernel_v_read_readvariableop8savev2_adam_rnn_5_lstm_cell_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *c
dtypesY
W2U	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*Ý
_input_shapesË
È: :..:.:.::	2:/2:22:2:22:2:22:2:22:2:2 : : 2:2:2:2:2:2:	2¸:	.¸:¸: : : : : : : : : :..:.:.::	2:/2:22:2:22:2:22:2:22:2:2 : : 2:2:2:2:2:2:	2¸:	.¸:¸:..:.:.::	2:/2:22:2:22:2:22:2:22:2:2 : : 2:2:2:2:2:2:	2¸:	.¸:¸: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:..: 

_output_shapes
:.:$ 

_output_shapes

:.: 

_output_shapes
::%!

_output_shapes
:	2:$ 

_output_shapes

:/2:($
"
_output_shapes
:22:$ 

_output_shapes

:2:(	$
"
_output_shapes
:22:$
 

_output_shapes

:2:($
"
_output_shapes
:22:$ 

_output_shapes

:2:($
"
_output_shapes
:22: 

_output_shapes
:2:$ 

_output_shapes

:2 : 

_output_shapes
: :$ 

_output_shapes

: 2: 

_output_shapes
:2: 

_output_shapes
:2: 

_output_shapes
:2: 

_output_shapes
:2: 

_output_shapes
:2:%!

_output_shapes
:	2¸:%!

_output_shapes
:	.¸:!

_output_shapes	
:¸:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :$# 

_output_shapes

:..: $

_output_shapes
:.:$% 

_output_shapes

:.: &

_output_shapes
::%'!

_output_shapes
:	2:$( 

_output_shapes

:/2:()$
"
_output_shapes
:22:$* 

_output_shapes

:2:(+$
"
_output_shapes
:22:$, 

_output_shapes

:2:(-$
"
_output_shapes
:22:$. 

_output_shapes

:2:(/$
"
_output_shapes
:22: 0

_output_shapes
:2:$1 

_output_shapes

:2 : 2

_output_shapes
: :$3 

_output_shapes

: 2: 4

_output_shapes
:2: 5

_output_shapes
:2: 6

_output_shapes
:2: 7

_output_shapes
:2: 8

_output_shapes
:2:%9!

_output_shapes
:	2¸:%:!

_output_shapes
:	.¸:!;

_output_shapes	
:¸:$< 

_output_shapes

:..: =

_output_shapes
:.:$> 

_output_shapes

:.: ?

_output_shapes
::%@!

_output_shapes
:	2:$A 

_output_shapes

:/2:(B$
"
_output_shapes
:22:$C 

_output_shapes

:2:(D$
"
_output_shapes
:22:$E 

_output_shapes

:2:(F$
"
_output_shapes
:22:$G 

_output_shapes

:2:(H$
"
_output_shapes
:22: I

_output_shapes
:2:$J 

_output_shapes

:2 : K

_output_shapes
: :$L 

_output_shapes

: 2: M

_output_shapes
:2: N

_output_shapes
:2: O

_output_shapes
:2: P

_output_shapes
:2: Q

_output_shapes
:2:%R!

_output_shapes
:	2¸:%S!

_output_shapes
:	.¸:!T

_output_shapes	
:¸:U

_output_shapes
: 
ù
¶
)__inference_rnn_5_layer_call_fn_177375994

inputs
unknown:	2¸
	unknown_0:	.¸
	unknown_1:	¸
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_rnn_5_layer_call_and_return_conditional_losses_177374214o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ/2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
 
_user_specified_nameinputs
Ì
Û
0__inference_sequential_5_layer_call_fn_177373148
dense_20_input
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_20_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_5_layer_call_and_return_conditional_losses_177373137s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ/2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
(
_user_specified_namedense_20_input
Ó8
Ê
while_body_177376486
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_5_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_5_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_5_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_5_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_5_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_5_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_5/BiasAdd/ReadVariableOp¢'while/lstm_cell_5/MatMul/ReadVariableOp¢)while/lstm_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_5/TanhTanh while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0while/lstm_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_5/Tanh_1Tanhwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_2:y:0while/lstm_cell_5/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 
$
ñ
while_body_177373523
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_5_177373547_0:	2¸0
while_lstm_cell_5_177373549_0:	.¸,
while_lstm_cell_5_177373551_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_5_177373547:	2¸.
while_lstm_cell_5_177373549:	.¸*
while_lstm_cell_5_177373551:	¸¢)while/lstm_cell_5/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0º
)while/lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_5_177373547_0while_lstm_cell_5_177373549_0while_lstm_cell_5_177373551_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_5_layer_call_and_return_conditional_losses_177373463r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:02while/lstm_cell_5/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity2while/lstm_cell_5/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/Identity_5Identity2while/lstm_cell_5/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x

while/NoOpNoOp*^while/lstm_cell_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_5_177373547while_lstm_cell_5_177373547_0"<
while_lstm_cell_5_177373549while_lstm_cell_5_177373549_0"<
while_lstm_cell_5_177373551while_lstm_cell_5_177373551_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2V
)while/lstm_cell_5/StatefulPartitionedCall)while/lstm_cell_5/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 
)
Ê
F__inference_model_5_layer_call_and_return_conditional_losses_177374731
input_6:
(token_and_position_embedding_5_177374675:/2;
(token_and_position_embedding_5_177374677:	25
transformer_encoder_5_177374680:221
transformer_encoder_5_177374682:25
transformer_encoder_5_177374684:221
transformer_encoder_5_177374686:25
transformer_encoder_5_177374688:221
transformer_encoder_5_177374690:25
transformer_encoder_5_177374692:22-
transformer_encoder_5_177374694:2-
transformer_encoder_5_177374696:2-
transformer_encoder_5_177374698:21
transformer_encoder_5_177374700:2 -
transformer_encoder_5_177374702: 1
transformer_encoder_5_177374704: 2-
transformer_encoder_5_177374706:2-
transformer_encoder_5_177374708:2-
transformer_encoder_5_177374710:2"
rnn_5_177374713:	2¸"
rnn_5_177374715:	.¸
rnn_5_177374717:	¸$
dense_22_177374720:.. 
dense_22_177374722:.$
dense_23_177374725:. 
dense_23_177374727:
identity¢ dense_22/StatefulPartitionedCall¢ dense_23/StatefulPartitionedCall¢rnn_5/StatefulPartitionedCall¢6token_and_position_embedding_5/StatefulPartitionedCall¢-transformer_encoder_5/StatefulPartitionedCallÖ
6token_and_position_embedding_5/StatefulPartitionedCallStatefulPartitionedCallinput_6(token_and_position_embedding_5_177374675(token_and_position_embedding_5_177374677*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *f
faR_
]__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_177373632Ô
-transformer_encoder_5/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_5/StatefulPartitionedCall:output:0transformer_encoder_5_177374680transformer_encoder_5_177374682transformer_encoder_5_177374684transformer_encoder_5_177374686transformer_encoder_5_177374688transformer_encoder_5_177374690transformer_encoder_5_177374692transformer_encoder_5_177374694transformer_encoder_5_177374696transformer_encoder_5_177374698transformer_encoder_5_177374700transformer_encoder_5_177374702transformer_encoder_5_177374704transformer_encoder_5_177374706transformer_encoder_5_177374708transformer_encoder_5_177374710*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transformer_encoder_5_layer_call_and_return_conditional_losses_177373765°
rnn_5/StatefulPartitionedCallStatefulPartitionedCall6transformer_encoder_5/StatefulPartitionedCall:output:0rnn_5_177374713rnn_5_177374715rnn_5_177374717*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_rnn_5_layer_call_and_return_conditional_losses_177373942
 dense_22/StatefulPartitionedCallStatefulPartitionedCall&rnn_5/StatefulPartitionedCall:output:0dense_22_177374720dense_22_177374722*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_22_layer_call_and_return_conditional_losses_177373961
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_177374725dense_23_177374727*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_23_layer_call_and_return_conditional_losses_177373977x
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall^rnn_5/StatefulPartitionedCall7^token_and_position_embedding_5/StatefulPartitionedCall.^transformer_encoder_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ/: : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2>
rnn_5/StatefulPartitionedCallrnn_5/StatefulPartitionedCall2p
6token_and_position_embedding_5/StatefulPartitionedCall6token_and_position_embedding_5/StatefulPartitionedCall2^
-transformer_encoder_5/StatefulPartitionedCall-transformer_encoder_5/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
!
_user_specified_name	input_6
¥I

"model_5_rnn_5_while_body_1773729598
4model_5_rnn_5_while_model_5_rnn_5_while_loop_counter>
:model_5_rnn_5_while_model_5_rnn_5_while_maximum_iterations#
model_5_rnn_5_while_placeholder%
!model_5_rnn_5_while_placeholder_1%
!model_5_rnn_5_while_placeholder_2%
!model_5_rnn_5_while_placeholder_37
3model_5_rnn_5_while_model_5_rnn_5_strided_slice_1_0s
omodel_5_rnn_5_while_tensorarrayv2read_tensorlistgetitem_model_5_rnn_5_tensorarrayunstack_tensorlistfromtensor_0S
@model_5_rnn_5_while_lstm_cell_5_matmul_readvariableop_resource_0:	2¸U
Bmodel_5_rnn_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0:	.¸P
Amodel_5_rnn_5_while_lstm_cell_5_biasadd_readvariableop_resource_0:	¸ 
model_5_rnn_5_while_identity"
model_5_rnn_5_while_identity_1"
model_5_rnn_5_while_identity_2"
model_5_rnn_5_while_identity_3"
model_5_rnn_5_while_identity_4"
model_5_rnn_5_while_identity_55
1model_5_rnn_5_while_model_5_rnn_5_strided_slice_1q
mmodel_5_rnn_5_while_tensorarrayv2read_tensorlistgetitem_model_5_rnn_5_tensorarrayunstack_tensorlistfromtensorQ
>model_5_rnn_5_while_lstm_cell_5_matmul_readvariableop_resource:	2¸S
@model_5_rnn_5_while_lstm_cell_5_matmul_1_readvariableop_resource:	.¸N
?model_5_rnn_5_while_lstm_cell_5_biasadd_readvariableop_resource:	¸¢6model_5/rnn_5/while/lstm_cell_5/BiasAdd/ReadVariableOp¢5model_5/rnn_5/while/lstm_cell_5/MatMul/ReadVariableOp¢7model_5/rnn_5/while/lstm_cell_5/MatMul_1/ReadVariableOp
Emodel_5/rnn_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ì
7model_5/rnn_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemomodel_5_rnn_5_while_tensorarrayv2read_tensorlistgetitem_model_5_rnn_5_tensorarrayunstack_tensorlistfromtensor_0model_5_rnn_5_while_placeholderNmodel_5/rnn_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0·
5model_5/rnn_5/while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp@model_5_rnn_5_while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0â
&model_5/rnn_5/while/lstm_cell_5/MatMulMatMul>model_5/rnn_5/while/TensorArrayV2Read/TensorListGetItem:item:0=model_5/rnn_5/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸»
7model_5/rnn_5/while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOpBmodel_5_rnn_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0É
(model_5/rnn_5/while/lstm_cell_5/MatMul_1MatMul!model_5_rnn_5_while_placeholder_2?model_5/rnn_5/while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸Å
#model_5/rnn_5/while/lstm_cell_5/addAddV20model_5/rnn_5/while/lstm_cell_5/MatMul:product:02model_5/rnn_5/while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸µ
6model_5/rnn_5/while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOpAmodel_5_rnn_5_while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0Î
'model_5/rnn_5/while/lstm_cell_5/BiasAddBiasAdd'model_5/rnn_5/while/lstm_cell_5/add:z:0>model_5/rnn_5/while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸q
/model_5/rnn_5/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%model_5/rnn_5/while/lstm_cell_5/splitSplit8model_5/rnn_5/while/lstm_cell_5/split/split_dim:output:00model_5/rnn_5/while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_split
'model_5/rnn_5/while/lstm_cell_5/SigmoidSigmoid.model_5/rnn_5/while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
)model_5/rnn_5/while/lstm_cell_5/Sigmoid_1Sigmoid.model_5/rnn_5/while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.®
#model_5/rnn_5/while/lstm_cell_5/mulMul-model_5/rnn_5/while/lstm_cell_5/Sigmoid_1:y:0!model_5_rnn_5_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
$model_5/rnn_5/while/lstm_cell_5/TanhTanh.model_5/rnn_5/while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.µ
%model_5/rnn_5/while/lstm_cell_5/mul_1Mul+model_5/rnn_5/while/lstm_cell_5/Sigmoid:y:0(model_5/rnn_5/while/lstm_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.´
%model_5/rnn_5/while/lstm_cell_5/add_1AddV2'model_5/rnn_5/while/lstm_cell_5/mul:z:0)model_5/rnn_5/while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
)model_5/rnn_5/while/lstm_cell_5/Sigmoid_2Sigmoid.model_5/rnn_5/while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
&model_5/rnn_5/while/lstm_cell_5/Tanh_1Tanh)model_5/rnn_5/while/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¹
%model_5/rnn_5/while/lstm_cell_5/mul_2Mul-model_5/rnn_5/while/lstm_cell_5/Sigmoid_2:y:0*model_5/rnn_5/while/lstm_cell_5/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
>model_5/rnn_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ¤
8model_5/rnn_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!model_5_rnn_5_while_placeholder_1Gmodel_5/rnn_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0)model_5/rnn_5/while/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒ[
model_5/rnn_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
model_5/rnn_5/while/addAddV2model_5_rnn_5_while_placeholder"model_5/rnn_5/while/add/y:output:0*
T0*
_output_shapes
: ]
model_5/rnn_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
model_5/rnn_5/while/add_1AddV24model_5_rnn_5_while_model_5_rnn_5_while_loop_counter$model_5/rnn_5/while/add_1/y:output:0*
T0*
_output_shapes
: 
model_5/rnn_5/while/IdentityIdentitymodel_5/rnn_5/while/add_1:z:0^model_5/rnn_5/while/NoOp*
T0*
_output_shapes
: ¢
model_5/rnn_5/while/Identity_1Identity:model_5_rnn_5_while_model_5_rnn_5_while_maximum_iterations^model_5/rnn_5/while/NoOp*
T0*
_output_shapes
: 
model_5/rnn_5/while/Identity_2Identitymodel_5/rnn_5/while/add:z:0^model_5/rnn_5/while/NoOp*
T0*
_output_shapes
: °
model_5/rnn_5/while/Identity_3IdentityHmodel_5/rnn_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model_5/rnn_5/while/NoOp*
T0*
_output_shapes
: ¢
model_5/rnn_5/while/Identity_4Identity)model_5/rnn_5/while/lstm_cell_5/mul_2:z:0^model_5/rnn_5/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¢
model_5/rnn_5/while/Identity_5Identity)model_5/rnn_5/while/lstm_cell_5/add_1:z:0^model_5/rnn_5/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
model_5/rnn_5/while/NoOpNoOp7^model_5/rnn_5/while/lstm_cell_5/BiasAdd/ReadVariableOp6^model_5/rnn_5/while/lstm_cell_5/MatMul/ReadVariableOp8^model_5/rnn_5/while/lstm_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
model_5_rnn_5_while_identity%model_5/rnn_5/while/Identity:output:0"I
model_5_rnn_5_while_identity_1'model_5/rnn_5/while/Identity_1:output:0"I
model_5_rnn_5_while_identity_2'model_5/rnn_5/while/Identity_2:output:0"I
model_5_rnn_5_while_identity_3'model_5/rnn_5/while/Identity_3:output:0"I
model_5_rnn_5_while_identity_4'model_5/rnn_5/while/Identity_4:output:0"I
model_5_rnn_5_while_identity_5'model_5/rnn_5/while/Identity_5:output:0"
?model_5_rnn_5_while_lstm_cell_5_biasadd_readvariableop_resourceAmodel_5_rnn_5_while_lstm_cell_5_biasadd_readvariableop_resource_0"
@model_5_rnn_5_while_lstm_cell_5_matmul_1_readvariableop_resourceBmodel_5_rnn_5_while_lstm_cell_5_matmul_1_readvariableop_resource_0"
>model_5_rnn_5_while_lstm_cell_5_matmul_readvariableop_resource@model_5_rnn_5_while_lstm_cell_5_matmul_readvariableop_resource_0"h
1model_5_rnn_5_while_model_5_rnn_5_strided_slice_13model_5_rnn_5_while_model_5_rnn_5_strided_slice_1_0"à
mmodel_5_rnn_5_while_tensorarrayv2read_tensorlistgetitem_model_5_rnn_5_tensorarrayunstack_tensorlistfromtensoromodel_5_rnn_5_while_tensorarrayv2read_tensorlistgetitem_model_5_rnn_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2p
6model_5/rnn_5/while/lstm_cell_5/BiasAdd/ReadVariableOp6model_5/rnn_5/while/lstm_cell_5/BiasAdd/ReadVariableOp2n
5model_5/rnn_5/while/lstm_cell_5/MatMul/ReadVariableOp5model_5/rnn_5/while/lstm_cell_5/MatMul/ReadVariableOp2r
7model_5/rnn_5/while/lstm_cell_5/MatMul_1/ReadVariableOp7model_5/rnn_5/while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 
¼Ê
»
T__inference_transformer_encoder_5_layer_call_and_return_conditional_losses_177374403

inputsX
Bmulti_head_attention_5_query_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_5_query_add_readvariableop_resource:2V
@multi_head_attention_5_key_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_5_key_add_readvariableop_resource:2X
Bmulti_head_attention_5_value_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_5_value_add_readvariableop_resource:2c
Mmulti_head_attention_5_attention_output_einsum_einsum_readvariableop_resource:22Q
Cmulti_head_attention_5_attention_output_add_readvariableop_resource:2J
<layer_normalization_10_batchnorm_mul_readvariableop_resource:2F
8layer_normalization_10_batchnorm_readvariableop_resource:2I
7sequential_5_dense_20_tensordot_readvariableop_resource:2 C
5sequential_5_dense_20_biasadd_readvariableop_resource: I
7sequential_5_dense_21_tensordot_readvariableop_resource: 2C
5sequential_5_dense_21_biasadd_readvariableop_resource:2J
<layer_normalization_11_batchnorm_mul_readvariableop_resource:2F
8layer_normalization_11_batchnorm_readvariableop_resource:2
identity¢/layer_normalization_10/batchnorm/ReadVariableOp¢3layer_normalization_10/batchnorm/mul/ReadVariableOp¢/layer_normalization_11/batchnorm/ReadVariableOp¢3layer_normalization_11/batchnorm/mul/ReadVariableOp¢:multi_head_attention_5/attention_output/add/ReadVariableOp¢Dmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_5/key/add/ReadVariableOp¢7multi_head_attention_5/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_5/query/add/ReadVariableOp¢9multi_head_attention_5/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_5/value/add/ReadVariableOp¢9multi_head_attention_5/value/einsum/Einsum/ReadVariableOp¢,sequential_5/dense_20/BiasAdd/ReadVariableOp¢.sequential_5/dense_20/Tensordot/ReadVariableOp¢,sequential_5/dense_21/BiasAdd/ReadVariableOp¢.sequential_5/dense_21/Tensordot/ReadVariableOpÀ
9multi_head_attention_5/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_5_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_5/query/einsum/EinsumEinsuminputsAmulti_head_attention_5/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabc,cde->abde¨
/multi_head_attention_5/query/add/ReadVariableOpReadVariableOp8multi_head_attention_5_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_5/query/addAddV23multi_head_attention_5/query/einsum/Einsum:output:07multi_head_attention_5/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¼
7multi_head_attention_5/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_5_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention_5/key/einsum/EinsumEinsuminputs?multi_head_attention_5/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabc,cde->abde¤
-multi_head_attention_5/key/add/ReadVariableOpReadVariableOp6multi_head_attention_5_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention_5/key/addAddV21multi_head_attention_5/key/einsum/Einsum:output:05multi_head_attention_5/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2À
9multi_head_attention_5/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_5_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_5/value/einsum/EinsumEinsuminputsAmulti_head_attention_5/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabc,cde->abde¨
/multi_head_attention_5/value/add/ReadVariableOpReadVariableOp8multi_head_attention_5_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_5/value/addAddV23multi_head_attention_5/value/einsum/Einsum:output:07multi_head_attention_5/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2a
multi_head_attention_5/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>¨
multi_head_attention_5/MulMul$multi_head_attention_5/query/add:z:0%multi_head_attention_5/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ô
$multi_head_attention_5/einsum/EinsumEinsum"multi_head_attention_5/key/add:z:0multi_head_attention_5/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//*
equationaecd,abcd->acbe
&multi_head_attention_5/softmax/SoftmaxSoftmax-multi_head_attention_5/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//ê
&multi_head_attention_5/einsum_1/EinsumEinsum0multi_head_attention_5/softmax/Softmax:softmax:0$multi_head_attention_5/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_5_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
5multi_head_attention_5/attention_output/einsum/EinsumEinsum/multi_head_attention_5/einsum_1/Einsum:output:0Lmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
equationabcd,cde->abeº
:multi_head_attention_5/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_5_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0î
+multi_head_attention_5/attention_output/addAddV2>multi_head_attention_5/attention_output/einsum/Einsum:output:0Bmulti_head_attention_5/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2]
dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @§
dropout_16/dropout/MulMul/multi_head_attention_5/attention_output/add:z:0!dropout_16/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2w
dropout_16/dropout/ShapeShape/multi_head_attention_5/attention_output/add:z:0*
T0*
_output_shapes
:¦
/dropout_16/dropout/random_uniform/RandomUniformRandomUniform!dropout_16/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
dtype0f
!dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ë
dropout_16/dropout/GreaterEqualGreaterEqual8dropout_16/dropout/random_uniform/RandomUniform:output:0*dropout_16/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
dropout_16/dropout/CastCast#dropout_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
dropout_16/dropout/Mul_1Muldropout_16/dropout/Mul:z:0dropout_16/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2h
addAddV2inputsdropout_16/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
5layer_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
#layer_normalization_10/moments/meanMeanadd:z:0>layer_normalization_10/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(
+layer_normalization_10/moments/StopGradientStopGradient,layer_normalization_10/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/º
0layer_normalization_10/moments/SquaredDifferenceSquaredDifferenceadd:z:04layer_normalization_10/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
9layer_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ð
'layer_normalization_10/moments/varianceMean4layer_normalization_10/moments/SquaredDifference:z:0Blayer_normalization_10/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(k
&layer_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Æ
$layer_normalization_10/batchnorm/addAddV20layer_normalization_10/moments/variance:output:0/layer_normalization_10/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
&layer_normalization_10/batchnorm/RsqrtRsqrt(layer_normalization_10/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/¬
3layer_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ê
$layer_normalization_10/batchnorm/mulMul*layer_normalization_10/batchnorm/Rsqrt:y:0;layer_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
&layer_normalization_10/batchnorm/mul_1Muladd:z:0(layer_normalization_10/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2»
&layer_normalization_10/batchnorm/mul_2Mul,layer_normalization_10/moments/mean:output:0(layer_normalization_10/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¤
/layer_normalization_10/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_10_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Æ
$layer_normalization_10/batchnorm/subSub7layer_normalization_10/batchnorm/ReadVariableOp:value:0*layer_normalization_10/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2»
&layer_normalization_10/batchnorm/add_1AddV2*layer_normalization_10/batchnorm/mul_1:z:0(layer_normalization_10/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¦
.sequential_5/dense_20/Tensordot/ReadVariableOpReadVariableOp7sequential_5_dense_20_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0n
$sequential_5/dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_5/dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
%sequential_5/dense_20/Tensordot/ShapeShape*layer_normalization_10/batchnorm/add_1:z:0*
T0*
_output_shapes
:o
-sequential_5/dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_5/dense_20/Tensordot/GatherV2GatherV2.sequential_5/dense_20/Tensordot/Shape:output:0-sequential_5/dense_20/Tensordot/free:output:06sequential_5/dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_5/dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_5/dense_20/Tensordot/GatherV2_1GatherV2.sequential_5/dense_20/Tensordot/Shape:output:0-sequential_5/dense_20/Tensordot/axes:output:08sequential_5/dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_5/dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_5/dense_20/Tensordot/ProdProd1sequential_5/dense_20/Tensordot/GatherV2:output:0.sequential_5/dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_5/dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_5/dense_20/Tensordot/Prod_1Prod3sequential_5/dense_20/Tensordot/GatherV2_1:output:00sequential_5/dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_5/dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_5/dense_20/Tensordot/concatConcatV2-sequential_5/dense_20/Tensordot/free:output:0-sequential_5/dense_20/Tensordot/axes:output:04sequential_5/dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_5/dense_20/Tensordot/stackPack-sequential_5/dense_20/Tensordot/Prod:output:0/sequential_5/dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:É
)sequential_5/dense_20/Tensordot/transpose	Transpose*layer_normalization_10/batchnorm/add_1:z:0/sequential_5/dense_20/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ì
'sequential_5/dense_20/Tensordot/ReshapeReshape-sequential_5/dense_20/Tensordot/transpose:y:0.sequential_5/dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
&sequential_5/dense_20/Tensordot/MatMulMatMul0sequential_5/dense_20/Tensordot/Reshape:output:06sequential_5/dense_20/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
'sequential_5/dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: o
-sequential_5/dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_5/dense_20/Tensordot/concat_1ConcatV21sequential_5/dense_20/Tensordot/GatherV2:output:00sequential_5/dense_20/Tensordot/Const_2:output:06sequential_5/dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Å
sequential_5/dense_20/TensordotReshape0sequential_5/dense_20/Tensordot/MatMul:product:01sequential_5/dense_20/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ 
,sequential_5/dense_20/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¾
sequential_5/dense_20/BiasAddBiasAdd(sequential_5/dense_20/Tensordot:output:04sequential_5/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ 
sequential_5/dense_20/ReluRelu&sequential_5/dense_20/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ ¦
.sequential_5/dense_21/Tensordot/ReadVariableOpReadVariableOp7sequential_5_dense_21_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0n
$sequential_5/dense_21/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_5/dense_21/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_5/dense_21/Tensordot/ShapeShape(sequential_5/dense_20/Relu:activations:0*
T0*
_output_shapes
:o
-sequential_5/dense_21/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_5/dense_21/Tensordot/GatherV2GatherV2.sequential_5/dense_21/Tensordot/Shape:output:0-sequential_5/dense_21/Tensordot/free:output:06sequential_5/dense_21/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_5/dense_21/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_5/dense_21/Tensordot/GatherV2_1GatherV2.sequential_5/dense_21/Tensordot/Shape:output:0-sequential_5/dense_21/Tensordot/axes:output:08sequential_5/dense_21/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_5/dense_21/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_5/dense_21/Tensordot/ProdProd1sequential_5/dense_21/Tensordot/GatherV2:output:0.sequential_5/dense_21/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_5/dense_21/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_5/dense_21/Tensordot/Prod_1Prod3sequential_5/dense_21/Tensordot/GatherV2_1:output:00sequential_5/dense_21/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_5/dense_21/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_5/dense_21/Tensordot/concatConcatV2-sequential_5/dense_21/Tensordot/free:output:0-sequential_5/dense_21/Tensordot/axes:output:04sequential_5/dense_21/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_5/dense_21/Tensordot/stackPack-sequential_5/dense_21/Tensordot/Prod:output:0/sequential_5/dense_21/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ç
)sequential_5/dense_21/Tensordot/transpose	Transpose(sequential_5/dense_20/Relu:activations:0/sequential_5/dense_21/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ Ì
'sequential_5/dense_21/Tensordot/ReshapeReshape-sequential_5/dense_21/Tensordot/transpose:y:0.sequential_5/dense_21/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
&sequential_5/dense_21/Tensordot/MatMulMatMul0sequential_5/dense_21/Tensordot/Reshape:output:06sequential_5/dense_21/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
'sequential_5/dense_21/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2o
-sequential_5/dense_21/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_5/dense_21/Tensordot/concat_1ConcatV21sequential_5/dense_21/Tensordot/GatherV2:output:00sequential_5/dense_21/Tensordot/Const_2:output:06sequential_5/dense_21/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Å
sequential_5/dense_21/TensordotReshape0sequential_5/dense_21/Tensordot/MatMul:product:01sequential_5/dense_21/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
,sequential_5/dense_21/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_21_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0¾
sequential_5/dense_21/BiasAddBiasAdd(sequential_5/dense_21/Tensordot:output:04sequential_5/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2]
dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_17/dropout/MulMul&sequential_5/dense_21/BiasAdd:output:0!dropout_17/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2n
dropout_17/dropout/ShapeShape&sequential_5/dense_21/BiasAdd:output:0*
T0*
_output_shapes
:¦
/dropout_17/dropout/random_uniform/RandomUniformRandomUniform!dropout_17/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*
dtype0f
!dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ë
dropout_17/dropout/GreaterEqualGreaterEqual8dropout_17/dropout/random_uniform/RandomUniform:output:0*dropout_17/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
dropout_17/dropout/CastCast#dropout_17/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
dropout_17/dropout/Mul_1Muldropout_17/dropout/Mul:z:0dropout_17/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
add_1AddV2*layer_normalization_10/batchnorm/add_1:z:0dropout_17/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
5layer_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:½
#layer_normalization_11/moments/meanMean	add_1:z:0>layer_normalization_11/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(
+layer_normalization_11/moments/StopGradientStopGradient,layer_normalization_11/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/¼
0layer_normalization_11/moments/SquaredDifferenceSquaredDifference	add_1:z:04layer_normalization_11/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
9layer_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ð
'layer_normalization_11/moments/varianceMean4layer_normalization_11/moments/SquaredDifference:z:0Blayer_normalization_11/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/*
	keep_dims(k
&layer_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Æ
$layer_normalization_11/batchnorm/addAddV20layer_normalization_11/moments/variance:output:0/layer_normalization_11/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
&layer_normalization_11/batchnorm/RsqrtRsqrt(layer_normalization_11/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/¬
3layer_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ê
$layer_normalization_11/batchnorm/mulMul*layer_normalization_11/batchnorm/Rsqrt:y:0;layer_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
&layer_normalization_11/batchnorm/mul_1Mul	add_1:z:0(layer_normalization_11/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2»
&layer_normalization_11/batchnorm/mul_2Mul,layer_normalization_11/moments/mean:output:0(layer_normalization_11/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¤
/layer_normalization_11/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_11_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Æ
$layer_normalization_11/batchnorm/subSub7layer_normalization_11/batchnorm/ReadVariableOp:value:0*layer_normalization_11/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2»
&layer_normalization_11/batchnorm/add_1AddV2*layer_normalization_11/batchnorm/mul_1:z:0(layer_normalization_11/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2}
IdentityIdentity*layer_normalization_11/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2 
NoOpNoOp0^layer_normalization_10/batchnorm/ReadVariableOp4^layer_normalization_10/batchnorm/mul/ReadVariableOp0^layer_normalization_11/batchnorm/ReadVariableOp4^layer_normalization_11/batchnorm/mul/ReadVariableOp;^multi_head_attention_5/attention_output/add/ReadVariableOpE^multi_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_5/key/add/ReadVariableOp8^multi_head_attention_5/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_5/query/add/ReadVariableOp:^multi_head_attention_5/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_5/value/add/ReadVariableOp:^multi_head_attention_5/value/einsum/Einsum/ReadVariableOp-^sequential_5/dense_20/BiasAdd/ReadVariableOp/^sequential_5/dense_20/Tensordot/ReadVariableOp-^sequential_5/dense_21/BiasAdd/ReadVariableOp/^sequential_5/dense_21/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ/2: : : : : : : : : : : : : : : : 2b
/layer_normalization_10/batchnorm/ReadVariableOp/layer_normalization_10/batchnorm/ReadVariableOp2j
3layer_normalization_10/batchnorm/mul/ReadVariableOp3layer_normalization_10/batchnorm/mul/ReadVariableOp2b
/layer_normalization_11/batchnorm/ReadVariableOp/layer_normalization_11/batchnorm/ReadVariableOp2j
3layer_normalization_11/batchnorm/mul/ReadVariableOp3layer_normalization_11/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_5/attention_output/add/ReadVariableOp:multi_head_attention_5/attention_output/add/ReadVariableOp2
Dmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_5/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_5/key/add/ReadVariableOp-multi_head_attention_5/key/add/ReadVariableOp2r
7multi_head_attention_5/key/einsum/Einsum/ReadVariableOp7multi_head_attention_5/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_5/query/add/ReadVariableOp/multi_head_attention_5/query/add/ReadVariableOp2v
9multi_head_attention_5/query/einsum/Einsum/ReadVariableOp9multi_head_attention_5/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_5/value/add/ReadVariableOp/multi_head_attention_5/value/add/ReadVariableOp2v
9multi_head_attention_5/value/einsum/Einsum/ReadVariableOp9multi_head_attention_5/value/einsum/Einsum/ReadVariableOp2\
,sequential_5/dense_20/BiasAdd/ReadVariableOp,sequential_5/dense_20/BiasAdd/ReadVariableOp2`
.sequential_5/dense_20/Tensordot/ReadVariableOp.sequential_5/dense_20/Tensordot/ReadVariableOp2\
,sequential_5/dense_21/BiasAdd/ReadVariableOp,sequential_5/dense_21/BiasAdd/ReadVariableOp2`
.sequential_5/dense_21/Tensordot/ReadVariableOp.sequential_5/dense_21/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
 
_user_specified_nameinputs
Ø?
â
K__inference_sequential_5_layer_call_and_return_conditional_losses_177376692

inputs<
*dense_20_tensordot_readvariableop_resource:2 6
(dense_20_biasadd_readvariableop_resource: <
*dense_21_tensordot_readvariableop_resource: 26
(dense_21_biasadd_readvariableop_resource:2
identity¢dense_20/BiasAdd/ReadVariableOp¢!dense_20/Tensordot/ReadVariableOp¢dense_21/BiasAdd/ReadVariableOp¢!dense_21/Tensordot/ReadVariableOp
!dense_20/Tensordot/ReadVariableOpReadVariableOp*dense_20_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0a
dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       N
dense_20/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:b
 dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_20/Tensordot/GatherV2GatherV2!dense_20/Tensordot/Shape:output:0 dense_20/Tensordot/free:output:0)dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_20/Tensordot/GatherV2_1GatherV2!dense_20/Tensordot/Shape:output:0 dense_20/Tensordot/axes:output:0+dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_20/Tensordot/ProdProd$dense_20/Tensordot/GatherV2:output:0!dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_20/Tensordot/Prod_1Prod&dense_20/Tensordot/GatherV2_1:output:0#dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_20/Tensordot/concatConcatV2 dense_20/Tensordot/free:output:0 dense_20/Tensordot/axes:output:0'dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_20/Tensordot/stackPack dense_20/Tensordot/Prod:output:0"dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_20/Tensordot/transpose	Transposeinputs"dense_20/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¥
dense_20/Tensordot/ReshapeReshape dense_20/Tensordot/transpose:y:0!dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¥
dense_20/Tensordot/MatMulMatMul#dense_20/Tensordot/Reshape:output:0)dense_20/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ d
dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: b
 dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_20/Tensordot/concat_1ConcatV2$dense_20/Tensordot/GatherV2:output:0#dense_20/Tensordot/Const_2:output:0)dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_20/TensordotReshape#dense_20/Tensordot/MatMul:product:0$dense_20/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ 
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_20/BiasAddBiasAdddense_20/Tensordot:output:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ f
dense_20/ReluReludense_20/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ 
!dense_21/Tensordot/ReadVariableOpReadVariableOp*dense_21_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0a
dense_21/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_21/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_21/Tensordot/ShapeShapedense_20/Relu:activations:0*
T0*
_output_shapes
:b
 dense_21/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_21/Tensordot/GatherV2GatherV2!dense_21/Tensordot/Shape:output:0 dense_21/Tensordot/free:output:0)dense_21/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_21/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_21/Tensordot/GatherV2_1GatherV2!dense_21/Tensordot/Shape:output:0 dense_21/Tensordot/axes:output:0+dense_21/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_21/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_21/Tensordot/ProdProd$dense_21/Tensordot/GatherV2:output:0!dense_21/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_21/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_21/Tensordot/Prod_1Prod&dense_21/Tensordot/GatherV2_1:output:0#dense_21/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_21/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_21/Tensordot/concatConcatV2 dense_21/Tensordot/free:output:0 dense_21/Tensordot/axes:output:0'dense_21/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_21/Tensordot/stackPack dense_21/Tensordot/Prod:output:0"dense_21/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
: 
dense_21/Tensordot/transpose	Transposedense_20/Relu:activations:0"dense_21/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ ¥
dense_21/Tensordot/ReshapeReshape dense_21/Tensordot/transpose:y:0!dense_21/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¥
dense_21/Tensordot/MatMulMatMul#dense_21/Tensordot/Reshape:output:0)dense_21/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2d
dense_21/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2b
 dense_21/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_21/Tensordot/concat_1ConcatV2$dense_21/Tensordot/GatherV2:output:0#dense_21/Tensordot/Const_2:output:0)dense_21/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_21/TensordotReshape#dense_21/Tensordot/MatMul:product:0$dense_21/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
dense_21/BiasAddBiasAdddense_21/Tensordot:output:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2l
IdentityIdentitydense_21/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ò
NoOpNoOp ^dense_20/BiasAdd/ReadVariableOp"^dense_20/Tensordot/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp"^dense_21/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ/2: : : : 2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2F
!dense_20/Tensordot/ReadVariableOp!dense_20/Tensordot/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2F
!dense_21/Tensordot/ReadVariableOp!dense_21/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
 
_user_specified_nameinputs
Ê	
ø
G__inference_dense_23_layer_call_and_return_conditional_losses_177373977

inputs0
matmul_readvariableop_resource:.-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:.*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
Ñ
À
K__inference_sequential_5_layer_call_and_return_conditional_losses_177373137

inputs$
dense_20_177373095:2  
dense_20_177373097: $
dense_21_177373131: 2 
dense_21_177373133:2
identity¢ dense_20/StatefulPartitionedCall¢ dense_21/StatefulPartitionedCallý
 dense_20/StatefulPartitionedCallStatefulPartitionedCallinputsdense_20_177373095dense_20_177373097*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_20_layer_call_and_return_conditional_losses_177373094 
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_177373131dense_21_177373133*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_21_layer_call_and_return_conditional_losses_177373130|
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
NoOpNoOp!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ/2: : : : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
 
_user_specified_nameinputs
Ø?
â
K__inference_sequential_5_layer_call_and_return_conditional_losses_177376749

inputs<
*dense_20_tensordot_readvariableop_resource:2 6
(dense_20_biasadd_readvariableop_resource: <
*dense_21_tensordot_readvariableop_resource: 26
(dense_21_biasadd_readvariableop_resource:2
identity¢dense_20/BiasAdd/ReadVariableOp¢!dense_20/Tensordot/ReadVariableOp¢dense_21/BiasAdd/ReadVariableOp¢!dense_21/Tensordot/ReadVariableOp
!dense_20/Tensordot/ReadVariableOpReadVariableOp*dense_20_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0a
dense_20/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_20/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       N
dense_20/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:b
 dense_20/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_20/Tensordot/GatherV2GatherV2!dense_20/Tensordot/Shape:output:0 dense_20/Tensordot/free:output:0)dense_20/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_20/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_20/Tensordot/GatherV2_1GatherV2!dense_20/Tensordot/Shape:output:0 dense_20/Tensordot/axes:output:0+dense_20/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_20/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_20/Tensordot/ProdProd$dense_20/Tensordot/GatherV2:output:0!dense_20/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_20/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_20/Tensordot/Prod_1Prod&dense_20/Tensordot/GatherV2_1:output:0#dense_20/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_20/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_20/Tensordot/concatConcatV2 dense_20/Tensordot/free:output:0 dense_20/Tensordot/axes:output:0'dense_20/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_20/Tensordot/stackPack dense_20/Tensordot/Prod:output:0"dense_20/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_20/Tensordot/transpose	Transposeinputs"dense_20/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2¥
dense_20/Tensordot/ReshapeReshape dense_20/Tensordot/transpose:y:0!dense_20/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¥
dense_20/Tensordot/MatMulMatMul#dense_20/Tensordot/Reshape:output:0)dense_20/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ d
dense_20/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: b
 dense_20/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_20/Tensordot/concat_1ConcatV2$dense_20/Tensordot/GatherV2:output:0#dense_20/Tensordot/Const_2:output:0)dense_20/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_20/TensordotReshape#dense_20/Tensordot/MatMul:product:0$dense_20/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ 
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_20/BiasAddBiasAdddense_20/Tensordot:output:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ f
dense_20/ReluReludense_20/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ 
!dense_21/Tensordot/ReadVariableOpReadVariableOp*dense_21_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0a
dense_21/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_21/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_21/Tensordot/ShapeShapedense_20/Relu:activations:0*
T0*
_output_shapes
:b
 dense_21/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_21/Tensordot/GatherV2GatherV2!dense_21/Tensordot/Shape:output:0 dense_21/Tensordot/free:output:0)dense_21/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_21/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_21/Tensordot/GatherV2_1GatherV2!dense_21/Tensordot/Shape:output:0 dense_21/Tensordot/axes:output:0+dense_21/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_21/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_21/Tensordot/ProdProd$dense_21/Tensordot/GatherV2:output:0!dense_21/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_21/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_21/Tensordot/Prod_1Prod&dense_21/Tensordot/GatherV2_1:output:0#dense_21/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_21/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_21/Tensordot/concatConcatV2 dense_21/Tensordot/free:output:0 dense_21/Tensordot/axes:output:0'dense_21/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_21/Tensordot/stackPack dense_21/Tensordot/Prod:output:0"dense_21/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
: 
dense_21/Tensordot/transpose	Transposedense_20/Relu:activations:0"dense_21/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ ¥
dense_21/Tensordot/ReshapeReshape dense_21/Tensordot/transpose:y:0!dense_21/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¥
dense_21/Tensordot/MatMulMatMul#dense_21/Tensordot/Reshape:output:0)dense_21/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2d
dense_21/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2b
 dense_21/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_21/Tensordot/concat_1ConcatV2$dense_21/Tensordot/GatherV2:output:0#dense_21/Tensordot/Const_2:output:0)dense_21/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_21/TensordotReshape#dense_21/Tensordot/MatMul:product:0$dense_21/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
dense_21/BiasAddBiasAdddense_21/Tensordot:output:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2l
IdentityIdentitydense_21/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2Ò
NoOpNoOp ^dense_20/BiasAdd/ReadVariableOp"^dense_20/Tensordot/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp"^dense_21/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ/2: : : : 2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2F
!dense_20/Tensordot/ReadVariableOp!dense_20/Tensordot/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2F
!dense_21/Tensordot/ReadVariableOp!dense_21/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2
 
_user_specified_nameinputs
Î
þ
G__inference_dense_21_layer_call_and_return_conditional_losses_177373130

inputs3
!tensordot_readvariableop_resource: 2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ 
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ/ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/ 
 
_user_specified_nameinputs
Ó8
Ê
while_body_177376198
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_5_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_5_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_5_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_5_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_5_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_5_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_5/BiasAdd/ReadVariableOp¢'while/lstm_cell_5/MatMul/ReadVariableOp¢)while/lstm_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_5/TanhTanh while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0while/lstm_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_5/Tanh_1Tanhwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_2:y:0while/lstm_cell_5/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 
¥J

D__inference_rnn_5_layer_call_and_return_conditional_losses_177376138
inputs_0=
*lstm_cell_5_matmul_readvariableop_resource:	2¸?
,lstm_cell_5_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_5_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_5/BiasAdd/ReadVariableOp¢!lstm_cell_5/MatMul/ReadVariableOp¢#lstm_cell_5/MatMul_1/ReadVariableOp¢while=
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
valueB:Ñ
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
value	B :.s
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
:ÿÿÿÿÿÿÿÿÿ.R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.w
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
:ÿÿÿÿÿÿÿÿÿ.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_5/TanhTanhlstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_5/Tanh_1Tanhlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_2:y:0lstm_cell_5/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
while_body_177376054* 
condR
while_cond_177376053*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   Ö
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.½
NoOpNoOp#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
Ó8
Ê
while_body_177373858
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_5_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_5_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_5_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_5_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_5_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_5_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_5/BiasAdd/ReadVariableOp¢'while/lstm_cell_5/MatMul/ReadVariableOp¢)while/lstm_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_5/TanhTanh while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0while/lstm_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_5/Tanh_1Tanhwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_2:y:0while/lstm_cell_5/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ.:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.:

_output_shapes
: :

_output_shapes
: 
)
Ê
F__inference_model_5_layer_call_and_return_conditional_losses_177374790
input_6:
(token_and_position_embedding_5_177374734:/2;
(token_and_position_embedding_5_177374736:	25
transformer_encoder_5_177374739:221
transformer_encoder_5_177374741:25
transformer_encoder_5_177374743:221
transformer_encoder_5_177374745:25
transformer_encoder_5_177374747:221
transformer_encoder_5_177374749:25
transformer_encoder_5_177374751:22-
transformer_encoder_5_177374753:2-
transformer_encoder_5_177374755:2-
transformer_encoder_5_177374757:21
transformer_encoder_5_177374759:2 -
transformer_encoder_5_177374761: 1
transformer_encoder_5_177374763: 2-
transformer_encoder_5_177374765:2-
transformer_encoder_5_177374767:2-
transformer_encoder_5_177374769:2"
rnn_5_177374772:	2¸"
rnn_5_177374774:	.¸
rnn_5_177374776:	¸$
dense_22_177374779:.. 
dense_22_177374781:.$
dense_23_177374784:. 
dense_23_177374786:
identity¢ dense_22/StatefulPartitionedCall¢ dense_23/StatefulPartitionedCall¢rnn_5/StatefulPartitionedCall¢6token_and_position_embedding_5/StatefulPartitionedCall¢-transformer_encoder_5/StatefulPartitionedCallÖ
6token_and_position_embedding_5/StatefulPartitionedCallStatefulPartitionedCallinput_6(token_and_position_embedding_5_177374734(token_and_position_embedding_5_177374736*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *f
faR_
]__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_177373632Ô
-transformer_encoder_5/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_5/StatefulPartitionedCall:output:0transformer_encoder_5_177374739transformer_encoder_5_177374741transformer_encoder_5_177374743transformer_encoder_5_177374745transformer_encoder_5_177374747transformer_encoder_5_177374749transformer_encoder_5_177374751transformer_encoder_5_177374753transformer_encoder_5_177374755transformer_encoder_5_177374757transformer_encoder_5_177374759transformer_encoder_5_177374761transformer_encoder_5_177374763transformer_encoder_5_177374765transformer_encoder_5_177374767transformer_encoder_5_177374769*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transformer_encoder_5_layer_call_and_return_conditional_losses_177374403°
rnn_5/StatefulPartitionedCallStatefulPartitionedCall6transformer_encoder_5/StatefulPartitionedCall:output:0rnn_5_177374772rnn_5_177374774rnn_5_177374776*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_rnn_5_layer_call_and_return_conditional_losses_177374214
 dense_22/StatefulPartitionedCallStatefulPartitionedCall&rnn_5/StatefulPartitionedCall:output:0dense_22_177374779dense_22_177374781*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_22_layer_call_and_return_conditional_losses_177373961
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_177374784dense_23_177374786*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_23_layer_call_and_return_conditional_losses_177373977x
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall^rnn_5/StatefulPartitionedCall7^token_and_position_embedding_5/StatefulPartitionedCall.^transformer_encoder_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ/: : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2>
rnn_5/StatefulPartitionedCallrnn_5/StatefulPartitionedCall2p
6token_and_position_embedding_5/StatefulPartitionedCall6token_and_position_embedding_5/StatefulPartitionedCall2^
-transformer_encoder_5/StatefulPartitionedCall-transformer_encoder_5/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ/
!
_user_specified_name	input_6
ï
ø
/__inference_lstm_cell_5_layer_call_fn_177376766

inputs
states_0
states_1
unknown:	2¸
	unknown_0:	.¸
	unknown_1:	¸
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_lstm_cell_5_layer_call_and_return_conditional_losses_177373316o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
"
_user_specified_name
states/1

¸
)__inference_rnn_5_layer_call_fn_177375972
inputs_0
unknown:	2¸
	unknown_0:	.¸
	unknown_1:	¸
identity¢StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_rnn_5_layer_call_and_return_conditional_losses_177373592o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*«
serving_default
;
input_60
serving_default_input_6:0ÿÿÿÿÿÿÿÿÿ/<
dense_230
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:üË
³
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	token_emb
pos_emb"
_tf_keras_layer
ó
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
att
ffn
 
layernorm1
!
layernorm2
"dropout1
#dropout2"
_tf_keras_layer
Ã
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses
*cell
+
state_spec"
_tf_keras_rnn_layer
»
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias"
_tf_keras_layer
»
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias"
_tf_keras_layer
Þ
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
N18
O19
P20
221
322
:23
;24"
trackable_list_wrapper
Þ
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
N18
O19
P20
221
322
:23
;24"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
á
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_32ö
+__inference_model_5_layer_call_fn_177374037
+__inference_model_5_layer_call_fn_177374908
+__inference_model_5_layer_call_fn_177374963
+__inference_model_5_layer_call_fn_177374672¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zVtrace_0zWtrace_1zXtrace_2zYtrace_3
Í
Ztrace_0
[trace_1
\trace_2
]trace_32â
F__inference_model_5_layer_call_and_return_conditional_losses_177375263
F__inference_model_5_layer_call_and_return_conditional_losses_177375576
F__inference_model_5_layer_call_and_return_conditional_losses_177374731
F__inference_model_5_layer_call_and_return_conditional_losses_177374790¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zZtrace_0z[trace_1z\trace_2z]trace_3
ÏBÌ
$__inference__wrapped_model_177373056input_6"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ç
^iter

_beta_1

`beta_2
	adecay
blearning_rate2mý3mþ:mÿ;m<m=m>m?m@mAmBmCmDmEmFmGmHmImJmKmLmMmNmOmPm2v3v:v;v<v=v>v?v@vAvBv Cv¡Dv¢Ev£Fv¤Gv¥Hv¦Iv§Jv¨Kv©LvªMv«Nv¬Ov­Pv®"
	optimizer
,
cserving_default"
signature_map
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
­
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object

itrace_02ä
B__inference_token_and_position_embedding_5_layer_call_fn_177375585
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zitrace_0

jtrace_02ÿ
]__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_177375609
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zjtrace_0
µ
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
<
embeddings"
_tf_keras_layer
µ
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
=
embeddings"
_tf_keras_layer

>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15"
trackable_list_wrapper

>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15"
trackable_list_wrapper
 "
trackable_list_wrapper
­
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Þ
|trace_0
}trace_12§
9__inference_transformer_encoder_5_layer_call_fn_177375646
9__inference_transformer_encoder_5_layer_call_fn_177375683®
¥²¡
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z|trace_0z}trace_1

~trace_0
trace_12Ý
T__inference_transformer_encoder_5_layer_call_and_return_conditional_losses_177375810
T__inference_transformer_encoder_5_layer_call_and_return_conditional_losses_177375950®
¥²¡
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z~trace_0ztrace_1

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_query_dense

_key_dense
_value_dense
_softmax
_dropout_layer
_output_dense"
_tf_keras_layer

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ë
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	Jgamma
Kbeta"
_tf_keras_layer
Ë
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+ &call_and_return_all_conditional_losses
	¡axis
	Lgamma
Mbeta"
_tf_keras_layer
Ã
¢	variables
£trainable_variables
¤regularization_losses
¥	keras_api
¦__call__
+§&call_and_return_all_conditional_losses
¨_random_generator"
_tf_keras_layer
Ã
©	variables
ªtrainable_variables
«regularization_losses
¬	keras_api
­__call__
+®&call_and_return_all_conditional_losses
¯_random_generator"
_tf_keras_layer
5
N0
O1
P2"
trackable_list_wrapper
5
N0
O1
P2"
trackable_list_wrapper
 "
trackable_list_wrapper
¿
°states
±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object

¶trace_0
·trace_1
¸trace_2
¹trace_32
)__inference_rnn_5_layer_call_fn_177375961
)__inference_rnn_5_layer_call_fn_177375972
)__inference_rnn_5_layer_call_fn_177375983
)__inference_rnn_5_layer_call_fn_177375994å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¶trace_0z·trace_1z¸trace_2z¹trace_3
ó
ºtrace_0
»trace_1
¼trace_2
½trace_32
D__inference_rnn_5_layer_call_and_return_conditional_losses_177376138
D__inference_rnn_5_layer_call_and_return_conditional_losses_177376282
D__inference_rnn_5_layer_call_and_return_conditional_losses_177376426
D__inference_rnn_5_layer_call_and_return_conditional_losses_177376570å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zºtrace_0z»trace_1z¼trace_2z½trace_3

¾	variables
¿trainable_variables
Àregularization_losses
Á	keras_api
Â__call__
+Ã&call_and_return_all_conditional_losses
Ä_random_generator
Å
state_size

Nkernel
Orecurrent_kernel
Pbias"
_tf_keras_layer
 "
trackable_list_wrapper
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
²
Ænon_trainable_variables
Çlayers
Èmetrics
 Élayer_regularization_losses
Êlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
ò
Ëtrace_02Ó
,__inference_dense_22_layer_call_fn_177376579¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zËtrace_0

Ìtrace_02î
G__inference_dense_22_layer_call_and_return_conditional_losses_177376590¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÌtrace_0
!:..2dense_22/kernel
:.2dense_22/bias
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ínon_trainable_variables
Îlayers
Ïmetrics
 Ðlayer_regularization_losses
Ñlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
ò
Òtrace_02Ó
,__inference_dense_23_layer_call_fn_177376599¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÒtrace_0

Ótrace_02î
G__inference_dense_23_layer_call_and_return_conditional_losses_177376609¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÓtrace_0
!:.2dense_23/kernel
:2dense_23/bias
I:G	226token_and_position_embedding_5/embedding_10/embeddings
H:F/226token_and_position_embedding_5/embedding_11/embeddings
O:M2229transformer_encoder_5/multi_head_attention_5/query/kernel
I:G227transformer_encoder_5/multi_head_attention_5/query/bias
M:K2227transformer_encoder_5/multi_head_attention_5/key/kernel
G:E225transformer_encoder_5/multi_head_attention_5/key/bias
O:M2229transformer_encoder_5/multi_head_attention_5/value/kernel
I:G227transformer_encoder_5/multi_head_attention_5/value/bias
Z:X222Dtransformer_encoder_5/multi_head_attention_5/attention_output/kernel
P:N22Btransformer_encoder_5/multi_head_attention_5/attention_output/bias
!:2 2dense_20/kernel
: 2dense_20/bias
!: 22dense_21/kernel
:22dense_21/bias
@:>222transformer_encoder_5/layer_normalization_10/gamma
?:=221transformer_encoder_5/layer_normalization_10/beta
@:>222transformer_encoder_5/layer_normalization_11/gamma
?:=221transformer_encoder_5/layer_normalization_11/beta
+:)	2¸2rnn_5/lstm_cell_5/kernel
5:3	.¸2"rnn_5/lstm_cell_5/recurrent_kernel
%:#¸2rnn_5/lstm_cell_5/bias
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
0
Ô0
Õ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ýBú
+__inference_model_5_layer_call_fn_177374037input_6"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
üBù
+__inference_model_5_layer_call_fn_177374908inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
üBù
+__inference_model_5_layer_call_fn_177374963inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ýBú
+__inference_model_5_layer_call_fn_177374672input_6"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
F__inference_model_5_layer_call_and_return_conditional_losses_177375263inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
F__inference_model_5_layer_call_and_return_conditional_losses_177375576inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
F__inference_model_5_layer_call_and_return_conditional_losses_177374731input_6"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
F__inference_model_5_layer_call_and_return_conditional_losses_177374790input_6"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÎBË
'__inference_signature_wrapper_177374853input_6"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ìBé
B__inference_token_and_position_embedding_5_layer_call_fn_177375585x"
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
]__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_177375609x"
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
'
<0"
trackable_list_wrapper
'
<0"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Önon_trainable_variables
×layers
Ømetrics
 Ùlayer_regularization_losses
Úlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
'
=0"
trackable_list_wrapper
'
=0"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ûnon_trainable_variables
Ülayers
Ýmetrics
 Þlayer_regularization_losses
ßlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
J
0
1
 2
!3
"4
#5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ùBö
9__inference_transformer_encoder_5_layer_call_fn_177375646inputs"®
¥²¡
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ùBö
9__inference_transformer_encoder_5_layer_call_fn_177375683inputs"®
¥²¡
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_transformer_encoder_5_layer_call_and_return_conditional_losses_177375810inputs"®
¥²¡
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_transformer_encoder_5_layer_call_and_return_conditional_losses_177375950inputs"®
¥²¡
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
X
>0
?1
@2
A3
B4
C5
D6
E7"
trackable_list_wrapper
X
>0
?1
@2
A3
B4
C5
D6
E7"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ànon_trainable_variables
álayers
âmetrics
 ãlayer_regularization_losses
älayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
2
²
FullArgSpecx
argspm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults

 

 
p 
p 
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
²
FullArgSpecx
argspm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults

 

 
p 
p 
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô
å	variables
ætrainable_variables
çregularization_losses
è	keras_api
é__call__
+ê&call_and_return_all_conditional_losses
ëpartial_output_shape
ìfull_output_shape

>kernel
?bias"
_tf_keras_layer
ô
í	variables
îtrainable_variables
ïregularization_losses
ð	keras_api
ñ__call__
+ò&call_and_return_all_conditional_losses
ópartial_output_shape
ôfull_output_shape

@kernel
Abias"
_tf_keras_layer
ô
õ	variables
ötrainable_variables
÷regularization_losses
ø	keras_api
ù__call__
+ú&call_and_return_all_conditional_losses
ûpartial_output_shape
üfull_output_shape

Bkernel
Cbias"
_tf_keras_layer
«
ý	variables
þtrainable_variables
ÿregularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
ô
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
partial_output_shape
full_output_shape

Dkernel
Ebias"
_tf_keras_layer
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Fkernel
Gbias"
_tf_keras_layer
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Hkernel
Ibias"
_tf_keras_layer
<
F0
G1
H2
I3"
trackable_list_wrapper
<
F0
G1
H2
I3"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
 metrics
 ¡layer_regularization_losses
¢layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ý
£trace_0
¤trace_1
¥trace_2
¦trace_32
0__inference_sequential_5_layer_call_fn_177373148
0__inference_sequential_5_layer_call_fn_177376622
0__inference_sequential_5_layer_call_fn_177376635
0__inference_sequential_5_layer_call_fn_177373221¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z£trace_0z¤trace_1z¥trace_2z¦trace_3
é
§trace_0
¨trace_1
©trace_2
ªtrace_32ö
K__inference_sequential_5_layer_call_and_return_conditional_losses_177376692
K__inference_sequential_5_layer_call_and_return_conditional_losses_177376749
K__inference_sequential_5_layer_call_and_return_conditional_losses_177373235
K__inference_sequential_5_layer_call_and_return_conditional_losses_177373249¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z§trace_0z¨trace_1z©trace_2zªtrace_3
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
°non_trainable_variables
±layers
²metrics
 ³layer_regularization_losses
´layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
µnon_trainable_variables
¶layers
·metrics
 ¸layer_regularization_losses
¹layer_metrics
¢	variables
£trainable_variables
¤regularization_losses
¦__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ºnon_trainable_variables
»layers
¼metrics
 ½layer_regularization_losses
¾layer_metrics
©	variables
ªtrainable_variables
«regularization_losses
­__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
*0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
¢B
)__inference_rnn_5_layer_call_fn_177375961inputs/0"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¢B
)__inference_rnn_5_layer_call_fn_177375972inputs/0"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 B
)__inference_rnn_5_layer_call_fn_177375983inputs"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 B
)__inference_rnn_5_layer_call_fn_177375994inputs"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
½Bº
D__inference_rnn_5_layer_call_and_return_conditional_losses_177376138inputs/0"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
½Bº
D__inference_rnn_5_layer_call_and_return_conditional_losses_177376282inputs/0"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
»B¸
D__inference_rnn_5_layer_call_and_return_conditional_losses_177376426inputs"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
»B¸
D__inference_rnn_5_layer_call_and_return_conditional_losses_177376570inputs"å
Ü²Ø
FullArgSpecO
argsGD
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
5
N0
O1
P2"
trackable_list_wrapper
5
N0
O1
P2"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
¾	variables
¿trainable_variables
Àregularization_losses
Â__call__
+Ã&call_and_return_all_conditional_losses
'Ã"call_and_return_conditional_losses"
_generic_user_object
Ý
Ätrace_0
Åtrace_12¢
/__inference_lstm_cell_5_layer_call_fn_177376766
/__inference_lstm_cell_5_layer_call_fn_177376783½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÄtrace_0zÅtrace_1

Ætrace_0
Çtrace_12Ø
J__inference_lstm_cell_5_layer_call_and_return_conditional_losses_177376815
J__inference_lstm_cell_5_layer_call_and_return_conditional_losses_177376847½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÆtrace_0zÇtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
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
àBÝ
,__inference_dense_22_layer_call_fn_177376579inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_dense_22_layer_call_and_return_conditional_losses_177376590inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
àBÝ
,__inference_dense_23_layer_call_fn_177376599inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_dense_23_layer_call_and_return_conditional_losses_177376609inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
R
È	variables
É	keras_api

Êtotal

Ëcount"
_tf_keras_metric
c
Ì	variables
Í	keras_api

Îtotal

Ïcount
Ð
_fn_kwargs"
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
P
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ñnon_trainable_variables
Òlayers
Ómetrics
 Ôlayer_regularization_losses
Õlayer_metrics
å	variables
ætrainable_variables
çregularization_losses
é__call__
+ê&call_and_return_all_conditional_losses
'ê"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Önon_trainable_variables
×layers
Ømetrics
 Ùlayer_regularization_losses
Úlayer_metrics
í	variables
îtrainable_variables
ïregularization_losses
ñ__call__
+ò&call_and_return_all_conditional_losses
'ò"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ûnon_trainable_variables
Ülayers
Ýmetrics
 Þlayer_regularization_losses
ßlayer_metrics
õ	variables
ötrainable_variables
÷regularization_losses
ù__call__
+ú&call_and_return_all_conditional_losses
'ú"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ànon_trainable_variables
álayers
âmetrics
 ãlayer_regularization_losses
älayer_metrics
ý	variables
þtrainable_variables
ÿregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ånon_trainable_variables
ælayers
çmetrics
 èlayer_regularization_losses
élayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
"
_generic_user_object
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ênon_trainable_variables
ëlayers
ìmetrics
 ílayer_regularization_losses
îlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
¸
ïnon_trainable_variables
ðlayers
ñmetrics
 òlayer_regularization_losses
ólayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ò
ôtrace_02Ó
,__inference_dense_20_layer_call_fn_177376856¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zôtrace_0

õtrace_02î
G__inference_dense_20_layer_call_and_return_conditional_losses_177376887¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zõtrace_0
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
önon_trainable_variables
÷layers
ømetrics
 ùlayer_regularization_losses
úlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ò
ûtrace_02Ó
,__inference_dense_21_layer_call_fn_177376896¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zûtrace_0

ütrace_02î
G__inference_dense_21_layer_call_and_return_conditional_losses_177376926¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zütrace_0
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
0__inference_sequential_5_layer_call_fn_177373148dense_20_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bþ
0__inference_sequential_5_layer_call_fn_177376622inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bþ
0__inference_sequential_5_layer_call_fn_177376635inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
0__inference_sequential_5_layer_call_fn_177373221dense_20_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
K__inference_sequential_5_layer_call_and_return_conditional_losses_177376692inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
K__inference_sequential_5_layer_call_and_return_conditional_losses_177376749inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¤B¡
K__inference_sequential_5_layer_call_and_return_conditional_losses_177373235dense_20_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¤B¡
K__inference_sequential_5_layer_call_and_return_conditional_losses_177373249dense_20_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
B
/__inference_lstm_cell_5_layer_call_fn_177376766inputsstates/0states/1"½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
/__inference_lstm_cell_5_layer_call_fn_177376783inputsstates/0states/1"½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
­Bª
J__inference_lstm_cell_5_layer_call_and_return_conditional_losses_177376815inputsstates/0states/1"½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
­Bª
J__inference_lstm_cell_5_layer_call_and_return_conditional_losses_177376847inputsstates/0states/1"½
´²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
0
Ê0
Ë1"
trackable_list_wrapper
.
È	variables"
_generic_user_object
:  (2total
:  (2count
0
Î0
Ï1"
trackable_list_wrapper
.
Ì	variables"
_generic_user_object
:  (2total
:  (2count
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
àBÝ
,__inference_dense_20_layer_call_fn_177376856inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_dense_20_layer_call_and_return_conditional_losses_177376887inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
àBÝ
,__inference_dense_21_layer_call_fn_177376896inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_dense_21_layer_call_and_return_conditional_losses_177376926inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
&:$..2Adam/dense_22/kernel/m
 :.2Adam/dense_22/bias/m
&:$.2Adam/dense_23/kernel/m
 :2Adam/dense_23/bias/m
N:L	22=Adam/token_and_position_embedding_5/embedding_10/embeddings/m
M:K/22=Adam/token_and_position_embedding_5/embedding_11/embeddings/m
T:R222@Adam/transformer_encoder_5/multi_head_attention_5/query/kernel/m
N:L22>Adam/transformer_encoder_5/multi_head_attention_5/query/bias/m
R:P222>Adam/transformer_encoder_5/multi_head_attention_5/key/kernel/m
L:J22<Adam/transformer_encoder_5/multi_head_attention_5/key/bias/m
T:R222@Adam/transformer_encoder_5/multi_head_attention_5/value/kernel/m
N:L22>Adam/transformer_encoder_5/multi_head_attention_5/value/bias/m
_:]222KAdam/transformer_encoder_5/multi_head_attention_5/attention_output/kernel/m
U:S22IAdam/transformer_encoder_5/multi_head_attention_5/attention_output/bias/m
&:$2 2Adam/dense_20/kernel/m
 : 2Adam/dense_20/bias/m
&:$ 22Adam/dense_21/kernel/m
 :22Adam/dense_21/bias/m
E:C229Adam/transformer_encoder_5/layer_normalization_10/gamma/m
D:B228Adam/transformer_encoder_5/layer_normalization_10/beta/m
E:C229Adam/transformer_encoder_5/layer_normalization_11/gamma/m
D:B228Adam/transformer_encoder_5/layer_normalization_11/beta/m
0:.	2¸2Adam/rnn_5/lstm_cell_5/kernel/m
::8	.¸2)Adam/rnn_5/lstm_cell_5/recurrent_kernel/m
*:(¸2Adam/rnn_5/lstm_cell_5/bias/m
&:$..2Adam/dense_22/kernel/v
 :.2Adam/dense_22/bias/v
&:$.2Adam/dense_23/kernel/v
 :2Adam/dense_23/bias/v
N:L	22=Adam/token_and_position_embedding_5/embedding_10/embeddings/v
M:K/22=Adam/token_and_position_embedding_5/embedding_11/embeddings/v
T:R222@Adam/transformer_encoder_5/multi_head_attention_5/query/kernel/v
N:L22>Adam/transformer_encoder_5/multi_head_attention_5/query/bias/v
R:P222>Adam/transformer_encoder_5/multi_head_attention_5/key/kernel/v
L:J22<Adam/transformer_encoder_5/multi_head_attention_5/key/bias/v
T:R222@Adam/transformer_encoder_5/multi_head_attention_5/value/kernel/v
N:L22>Adam/transformer_encoder_5/multi_head_attention_5/value/bias/v
_:]222KAdam/transformer_encoder_5/multi_head_attention_5/attention_output/kernel/v
U:S22IAdam/transformer_encoder_5/multi_head_attention_5/attention_output/bias/v
&:$2 2Adam/dense_20/kernel/v
 : 2Adam/dense_20/bias/v
&:$ 22Adam/dense_21/kernel/v
 :22Adam/dense_21/bias/v
E:C229Adam/transformer_encoder_5/layer_normalization_10/gamma/v
D:B228Adam/transformer_encoder_5/layer_normalization_10/beta/v
E:C229Adam/transformer_encoder_5/layer_normalization_11/gamma/v
D:B228Adam/transformer_encoder_5/layer_normalization_11/beta/v
0:.	2¸2Adam/rnn_5/lstm_cell_5/kernel/v
::8	.¸2)Adam/rnn_5/lstm_cell_5/recurrent_kernel/v
*:(¸2Adam/rnn_5/lstm_cell_5/bias/v«
$__inference__wrapped_model_177373056=<>?@ABCDEJKFGHILMNOP23:;0¢-
&¢#
!
input_6ÿÿÿÿÿÿÿÿÿ/
ª "3ª0
.
dense_23"
dense_23ÿÿÿÿÿÿÿÿÿ¯
G__inference_dense_20_layer_call_and_return_conditional_losses_177376887dFG3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ/2
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ/ 
 
,__inference_dense_20_layer_call_fn_177376856WFG3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ/2
ª "ÿÿÿÿÿÿÿÿÿ/ ¯
G__inference_dense_21_layer_call_and_return_conditional_losses_177376926dHI3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ/ 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ/2
 
,__inference_dense_21_layer_call_fn_177376896WHI3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ/ 
ª "ÿÿÿÿÿÿÿÿÿ/2§
G__inference_dense_22_layer_call_and_return_conditional_losses_177376590\23/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ.
 
,__inference_dense_22_layer_call_fn_177376579O23/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "ÿÿÿÿÿÿÿÿÿ.§
G__inference_dense_23_layer_call_and_return_conditional_losses_177376609\:;/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_dense_23_layer_call_fn_177376599O:;/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "ÿÿÿÿÿÿÿÿÿÌ
J__inference_lstm_cell_5_layer_call_and_return_conditional_losses_177376815ýNOP¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ.
"
states/1ÿÿÿÿÿÿÿÿÿ.
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ.
EB

0/1/0ÿÿÿÿÿÿÿÿÿ.

0/1/1ÿÿÿÿÿÿÿÿÿ.
 Ì
J__inference_lstm_cell_5_layer_call_and_return_conditional_losses_177376847ýNOP¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ.
"
states/1ÿÿÿÿÿÿÿÿÿ.
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ.
EB

0/1/0ÿÿÿÿÿÿÿÿÿ.

0/1/1ÿÿÿÿÿÿÿÿÿ.
 ¡
/__inference_lstm_cell_5_layer_call_fn_177376766íNOP¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ.
"
states/1ÿÿÿÿÿÿÿÿÿ.
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ.
A>

1/0ÿÿÿÿÿÿÿÿÿ.

1/1ÿÿÿÿÿÿÿÿÿ.¡
/__inference_lstm_cell_5_layer_call_fn_177376783íNOP¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ.
"
states/1ÿÿÿÿÿÿÿÿÿ.
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ.
A>

1/0ÿÿÿÿÿÿÿÿÿ.

1/1ÿÿÿÿÿÿÿÿÿ.Æ
F__inference_model_5_layer_call_and_return_conditional_losses_177374731|=<>?@ABCDEJKFGHILMNOP23:;8¢5
.¢+
!
input_6ÿÿÿÿÿÿÿÿÿ/
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Æ
F__inference_model_5_layer_call_and_return_conditional_losses_177374790|=<>?@ABCDEJKFGHILMNOP23:;8¢5
.¢+
!
input_6ÿÿÿÿÿÿÿÿÿ/
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Å
F__inference_model_5_layer_call_and_return_conditional_losses_177375263{=<>?@ABCDEJKFGHILMNOP23:;7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ/
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Å
F__inference_model_5_layer_call_and_return_conditional_losses_177375576{=<>?@ABCDEJKFGHILMNOP23:;7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ/
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_model_5_layer_call_fn_177374037o=<>?@ABCDEJKFGHILMNOP23:;8¢5
.¢+
!
input_6ÿÿÿÿÿÿÿÿÿ/
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_model_5_layer_call_fn_177374672o=<>?@ABCDEJKFGHILMNOP23:;8¢5
.¢+
!
input_6ÿÿÿÿÿÿÿÿÿ/
p

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_model_5_layer_call_fn_177374908n=<>?@ABCDEJKFGHILMNOP23:;7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ/
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_model_5_layer_call_fn_177374963n=<>?@ABCDEJKFGHILMNOP23:;7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ/
p

 
ª "ÿÿÿÿÿÿÿÿÿÊ
D__inference_rnn_5_layer_call_and_return_conditional_losses_177376138NOPS¢P
I¢F
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p 

 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ.
 Ê
D__inference_rnn_5_layer_call_and_return_conditional_losses_177376282NOPS¢P
I¢F
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p

 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ.
 ¹
D__inference_rnn_5_layer_call_and_return_conditional_losses_177376426qNOPC¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ/2

 
p 

 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ.
 ¹
D__inference_rnn_5_layer_call_and_return_conditional_losses_177376570qNOPC¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ/2

 
p

 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ.
 ¡
)__inference_rnn_5_layer_call_fn_177375961tNOPS¢P
I¢F
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p 

 

 
ª "ÿÿÿÿÿÿÿÿÿ.¡
)__inference_rnn_5_layer_call_fn_177375972tNOPS¢P
I¢F
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p

 

 
ª "ÿÿÿÿÿÿÿÿÿ.
)__inference_rnn_5_layer_call_fn_177375983dNOPC¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ/2

 
p 

 

 
ª "ÿÿÿÿÿÿÿÿÿ.
)__inference_rnn_5_layer_call_fn_177375994dNOPC¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ/2

 
p

 

 
ª "ÿÿÿÿÿÿÿÿÿ.Å
K__inference_sequential_5_layer_call_and_return_conditional_losses_177373235vFGHIC¢@
9¢6
,)
dense_20_inputÿÿÿÿÿÿÿÿÿ/2
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ/2
 Å
K__inference_sequential_5_layer_call_and_return_conditional_losses_177373249vFGHIC¢@
9¢6
,)
dense_20_inputÿÿÿÿÿÿÿÿÿ/2
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ/2
 ½
K__inference_sequential_5_layer_call_and_return_conditional_losses_177376692nFGHI;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ/2
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ/2
 ½
K__inference_sequential_5_layer_call_and_return_conditional_losses_177376749nFGHI;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ/2
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ/2
 
0__inference_sequential_5_layer_call_fn_177373148iFGHIC¢@
9¢6
,)
dense_20_inputÿÿÿÿÿÿÿÿÿ/2
p 

 
ª "ÿÿÿÿÿÿÿÿÿ/2
0__inference_sequential_5_layer_call_fn_177373221iFGHIC¢@
9¢6
,)
dense_20_inputÿÿÿÿÿÿÿÿÿ/2
p

 
ª "ÿÿÿÿÿÿÿÿÿ/2
0__inference_sequential_5_layer_call_fn_177376622aFGHI;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ/2
p 

 
ª "ÿÿÿÿÿÿÿÿÿ/2
0__inference_sequential_5_layer_call_fn_177376635aFGHI;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ/2
p

 
ª "ÿÿÿÿÿÿÿÿÿ/2¹
'__inference_signature_wrapper_177374853=<>?@ABCDEJKFGHILMNOP23:;;¢8
¢ 
1ª.
,
input_6!
input_6ÿÿÿÿÿÿÿÿÿ/"3ª0
.
dense_23"
dense_23ÿÿÿÿÿÿÿÿÿ¼
]__inference_token_and_position_embedding_5_layer_call_and_return_conditional_losses_177375609[=<*¢'
 ¢

xÿÿÿÿÿÿÿÿÿ/
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ/2
 
B__inference_token_and_position_embedding_5_layer_call_fn_177375585N=<*¢'
 ¢

xÿÿÿÿÿÿÿÿÿ/
ª "ÿÿÿÿÿÿÿÿÿ/2Î
T__inference_transformer_encoder_5_layer_call_and_return_conditional_losses_177375810v>?@ABCDEJKFGHILM7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ/2
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ/2
 Î
T__inference_transformer_encoder_5_layer_call_and_return_conditional_losses_177375950v>?@ABCDEJKFGHILM7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ/2
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ/2
 ¦
9__inference_transformer_encoder_5_layer_call_fn_177375646i>?@ABCDEJKFGHILM7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ/2
p 
ª "ÿÿÿÿÿÿÿÿÿ/2¦
9__inference_transformer_encoder_5_layer_call_fn_177375683i>?@ABCDEJKFGHILM7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ/2
p
ª "ÿÿÿÿÿÿÿÿÿ/2