Ë,
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
"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8Ü(

Adam/rnn_3/lstm_cell_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:¸*.
shared_nameAdam/rnn_3/lstm_cell_3/bias/v

1Adam/rnn_3/lstm_cell_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/rnn_3/lstm_cell_3/bias/v*
_output_shapes	
:¸*
dtype0
¯
)Adam/rnn_3/lstm_cell_3/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.¸*:
shared_name+)Adam/rnn_3/lstm_cell_3/recurrent_kernel/v
¨
=Adam/rnn_3/lstm_cell_3/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp)Adam/rnn_3/lstm_cell_3/recurrent_kernel/v*
_output_shapes
:	.¸*
dtype0

Adam/rnn_3/lstm_cell_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2¸*0
shared_name!Adam/rnn_3/lstm_cell_3/kernel/v

3Adam/rnn_3/lstm_cell_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/rnn_3/lstm_cell_3/kernel/v*
_output_shapes
:	2¸*
dtype0
Æ
7Adam/transformer_encoder_3/layer_normalization_7/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*H
shared_name97Adam/transformer_encoder_3/layer_normalization_7/beta/v
¿
KAdam/transformer_encoder_3/layer_normalization_7/beta/v/Read/ReadVariableOpReadVariableOp7Adam/transformer_encoder_3/layer_normalization_7/beta/v*
_output_shapes
:2*
dtype0
È
8Adam/transformer_encoder_3/layer_normalization_7/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*I
shared_name:8Adam/transformer_encoder_3/layer_normalization_7/gamma/v
Á
LAdam/transformer_encoder_3/layer_normalization_7/gamma/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder_3/layer_normalization_7/gamma/v*
_output_shapes
:2*
dtype0
Æ
7Adam/transformer_encoder_3/layer_normalization_6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*H
shared_name97Adam/transformer_encoder_3/layer_normalization_6/beta/v
¿
KAdam/transformer_encoder_3/layer_normalization_6/beta/v/Read/ReadVariableOpReadVariableOp7Adam/transformer_encoder_3/layer_normalization_6/beta/v*
_output_shapes
:2*
dtype0
È
8Adam/transformer_encoder_3/layer_normalization_6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*I
shared_name:8Adam/transformer_encoder_3/layer_normalization_6/gamma/v
Á
LAdam/transformer_encoder_3/layer_normalization_6/gamma/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder_3/layer_normalization_6/gamma/v*
_output_shapes
:2*
dtype0

Adam/dense_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_13/bias/v
y
(Adam/dense_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/v*
_output_shapes
:2*
dtype0

Adam/dense_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 2*'
shared_nameAdam/dense_13/kernel/v

*Adam/dense_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/v*
_output_shapes

: 2*
dtype0

Adam/dense_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_12/bias/v
y
(Adam/dense_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/v*
_output_shapes
: *
dtype0

Adam/dense_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2 *'
shared_nameAdam/dense_12/kernel/v

*Adam/dense_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/v*
_output_shapes

:2 *
dtype0
ê
IAdam/transformer_encoder_3/multi_head_attention_3/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*Z
shared_nameKIAdam/transformer_encoder_3/multi_head_attention_3/attention_output/bias/v
ã
]Adam/transformer_encoder_3/multi_head_attention_3/attention_output/bias/v/Read/ReadVariableOpReadVariableOpIAdam/transformer_encoder_3/multi_head_attention_3/attention_output/bias/v*
_output_shapes
:2*
dtype0
ö
KAdam/transformer_encoder_3/multi_head_attention_3/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*\
shared_nameMKAdam/transformer_encoder_3/multi_head_attention_3/attention_output/kernel/v
ï
_Adam/transformer_encoder_3/multi_head_attention_3/attention_output/kernel/v/Read/ReadVariableOpReadVariableOpKAdam/transformer_encoder_3/multi_head_attention_3/attention_output/kernel/v*"
_output_shapes
:22*
dtype0
Ø
>Adam/transformer_encoder_3/multi_head_attention_3/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_3/multi_head_attention_3/value/bias/v
Ñ
RAdam/transformer_encoder_3/multi_head_attention_3/value/bias/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_3/multi_head_attention_3/value/bias/v*
_output_shapes

:2*
dtype0
à
@Adam/transformer_encoder_3/multi_head_attention_3/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_3/multi_head_attention_3/value/kernel/v
Ù
TAdam/transformer_encoder_3/multi_head_attention_3/value/kernel/v/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_3/multi_head_attention_3/value/kernel/v*"
_output_shapes
:22*
dtype0
Ô
<Adam/transformer_encoder_3/multi_head_attention_3/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*M
shared_name><Adam/transformer_encoder_3/multi_head_attention_3/key/bias/v
Í
PAdam/transformer_encoder_3/multi_head_attention_3/key/bias/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_encoder_3/multi_head_attention_3/key/bias/v*
_output_shapes

:2*
dtype0
Ü
>Adam/transformer_encoder_3/multi_head_attention_3/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*O
shared_name@>Adam/transformer_encoder_3/multi_head_attention_3/key/kernel/v
Õ
RAdam/transformer_encoder_3/multi_head_attention_3/key/kernel/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_3/multi_head_attention_3/key/kernel/v*"
_output_shapes
:22*
dtype0
Ø
>Adam/transformer_encoder_3/multi_head_attention_3/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_3/multi_head_attention_3/query/bias/v
Ñ
RAdam/transformer_encoder_3/multi_head_attention_3/query/bias/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_3/multi_head_attention_3/query/bias/v*
_output_shapes

:2*
dtype0
à
@Adam/transformer_encoder_3/multi_head_attention_3/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_3/multi_head_attention_3/query/kernel/v
Ù
TAdam/transformer_encoder_3/multi_head_attention_3/query/kernel/v/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_3/multi_head_attention_3/query/kernel/v*"
_output_shapes
:22*
dtype0
Ô
<Adam/token_and_position_embedding_3/embedding_7/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:12*M
shared_name><Adam/token_and_position_embedding_3/embedding_7/embeddings/v
Í
PAdam/token_and_position_embedding_3/embedding_7/embeddings/v/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_3/embedding_7/embeddings/v*
_output_shapes

:12*
dtype0
Ô
<Adam/token_and_position_embedding_3/embedding_6/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*M
shared_name><Adam/token_and_position_embedding_3/embedding_6/embeddings/v
Í
PAdam/token_and_position_embedding_3/embedding_6/embeddings/v/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_3/embedding_6/embeddings/v*
_output_shapes

:2*
dtype0

Adam/dense_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_15/bias/v
y
(Adam/dense_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/v*
_output_shapes
:*
dtype0

Adam/dense_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.*'
shared_nameAdam/dense_15/kernel/v

*Adam/dense_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/v*
_output_shapes

:.*
dtype0

Adam/dense_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*%
shared_nameAdam/dense_14/bias/v
y
(Adam/dense_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/v*
_output_shapes
:.*
dtype0

Adam/dense_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:..*'
shared_nameAdam/dense_14/kernel/v

*Adam/dense_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/v*
_output_shapes

:..*
dtype0

Adam/rnn_3/lstm_cell_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:¸*.
shared_nameAdam/rnn_3/lstm_cell_3/bias/m

1Adam/rnn_3/lstm_cell_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/rnn_3/lstm_cell_3/bias/m*
_output_shapes	
:¸*
dtype0
¯
)Adam/rnn_3/lstm_cell_3/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.¸*:
shared_name+)Adam/rnn_3/lstm_cell_3/recurrent_kernel/m
¨
=Adam/rnn_3/lstm_cell_3/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp)Adam/rnn_3/lstm_cell_3/recurrent_kernel/m*
_output_shapes
:	.¸*
dtype0

Adam/rnn_3/lstm_cell_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2¸*0
shared_name!Adam/rnn_3/lstm_cell_3/kernel/m

3Adam/rnn_3/lstm_cell_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/rnn_3/lstm_cell_3/kernel/m*
_output_shapes
:	2¸*
dtype0
Æ
7Adam/transformer_encoder_3/layer_normalization_7/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*H
shared_name97Adam/transformer_encoder_3/layer_normalization_7/beta/m
¿
KAdam/transformer_encoder_3/layer_normalization_7/beta/m/Read/ReadVariableOpReadVariableOp7Adam/transformer_encoder_3/layer_normalization_7/beta/m*
_output_shapes
:2*
dtype0
È
8Adam/transformer_encoder_3/layer_normalization_7/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*I
shared_name:8Adam/transformer_encoder_3/layer_normalization_7/gamma/m
Á
LAdam/transformer_encoder_3/layer_normalization_7/gamma/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder_3/layer_normalization_7/gamma/m*
_output_shapes
:2*
dtype0
Æ
7Adam/transformer_encoder_3/layer_normalization_6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*H
shared_name97Adam/transformer_encoder_3/layer_normalization_6/beta/m
¿
KAdam/transformer_encoder_3/layer_normalization_6/beta/m/Read/ReadVariableOpReadVariableOp7Adam/transformer_encoder_3/layer_normalization_6/beta/m*
_output_shapes
:2*
dtype0
È
8Adam/transformer_encoder_3/layer_normalization_6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*I
shared_name:8Adam/transformer_encoder_3/layer_normalization_6/gamma/m
Á
LAdam/transformer_encoder_3/layer_normalization_6/gamma/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder_3/layer_normalization_6/gamma/m*
_output_shapes
:2*
dtype0

Adam/dense_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_13/bias/m
y
(Adam/dense_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/m*
_output_shapes
:2*
dtype0

Adam/dense_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 2*'
shared_nameAdam/dense_13/kernel/m

*Adam/dense_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/m*
_output_shapes

: 2*
dtype0

Adam/dense_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_12/bias/m
y
(Adam/dense_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/m*
_output_shapes
: *
dtype0

Adam/dense_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2 *'
shared_nameAdam/dense_12/kernel/m

*Adam/dense_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/m*
_output_shapes

:2 *
dtype0
ê
IAdam/transformer_encoder_3/multi_head_attention_3/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*Z
shared_nameKIAdam/transformer_encoder_3/multi_head_attention_3/attention_output/bias/m
ã
]Adam/transformer_encoder_3/multi_head_attention_3/attention_output/bias/m/Read/ReadVariableOpReadVariableOpIAdam/transformer_encoder_3/multi_head_attention_3/attention_output/bias/m*
_output_shapes
:2*
dtype0
ö
KAdam/transformer_encoder_3/multi_head_attention_3/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*\
shared_nameMKAdam/transformer_encoder_3/multi_head_attention_3/attention_output/kernel/m
ï
_Adam/transformer_encoder_3/multi_head_attention_3/attention_output/kernel/m/Read/ReadVariableOpReadVariableOpKAdam/transformer_encoder_3/multi_head_attention_3/attention_output/kernel/m*"
_output_shapes
:22*
dtype0
Ø
>Adam/transformer_encoder_3/multi_head_attention_3/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_3/multi_head_attention_3/value/bias/m
Ñ
RAdam/transformer_encoder_3/multi_head_attention_3/value/bias/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_3/multi_head_attention_3/value/bias/m*
_output_shapes

:2*
dtype0
à
@Adam/transformer_encoder_3/multi_head_attention_3/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_3/multi_head_attention_3/value/kernel/m
Ù
TAdam/transformer_encoder_3/multi_head_attention_3/value/kernel/m/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_3/multi_head_attention_3/value/kernel/m*"
_output_shapes
:22*
dtype0
Ô
<Adam/transformer_encoder_3/multi_head_attention_3/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*M
shared_name><Adam/transformer_encoder_3/multi_head_attention_3/key/bias/m
Í
PAdam/transformer_encoder_3/multi_head_attention_3/key/bias/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_encoder_3/multi_head_attention_3/key/bias/m*
_output_shapes

:2*
dtype0
Ü
>Adam/transformer_encoder_3/multi_head_attention_3/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*O
shared_name@>Adam/transformer_encoder_3/multi_head_attention_3/key/kernel/m
Õ
RAdam/transformer_encoder_3/multi_head_attention_3/key/kernel/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_3/multi_head_attention_3/key/kernel/m*"
_output_shapes
:22*
dtype0
Ø
>Adam/transformer_encoder_3/multi_head_attention_3/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_3/multi_head_attention_3/query/bias/m
Ñ
RAdam/transformer_encoder_3/multi_head_attention_3/query/bias/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_3/multi_head_attention_3/query/bias/m*
_output_shapes

:2*
dtype0
à
@Adam/transformer_encoder_3/multi_head_attention_3/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_3/multi_head_attention_3/query/kernel/m
Ù
TAdam/transformer_encoder_3/multi_head_attention_3/query/kernel/m/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_3/multi_head_attention_3/query/kernel/m*"
_output_shapes
:22*
dtype0
Ô
<Adam/token_and_position_embedding_3/embedding_7/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:12*M
shared_name><Adam/token_and_position_embedding_3/embedding_7/embeddings/m
Í
PAdam/token_and_position_embedding_3/embedding_7/embeddings/m/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_3/embedding_7/embeddings/m*
_output_shapes

:12*
dtype0
Ô
<Adam/token_and_position_embedding_3/embedding_6/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*M
shared_name><Adam/token_and_position_embedding_3/embedding_6/embeddings/m
Í
PAdam/token_and_position_embedding_3/embedding_6/embeddings/m/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_3/embedding_6/embeddings/m*
_output_shapes

:2*
dtype0

Adam/dense_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_15/bias/m
y
(Adam/dense_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/m*
_output_shapes
:*
dtype0

Adam/dense_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.*'
shared_nameAdam/dense_15/kernel/m

*Adam/dense_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/m*
_output_shapes

:.*
dtype0

Adam/dense_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*%
shared_nameAdam/dense_14/bias/m
y
(Adam/dense_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/m*
_output_shapes
:.*
dtype0

Adam/dense_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:..*'
shared_nameAdam/dense_14/kernel/m

*Adam/dense_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/m*
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
rnn_3/lstm_cell_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:¸*'
shared_namernn_3/lstm_cell_3/bias
~
*rnn_3/lstm_cell_3/bias/Read/ReadVariableOpReadVariableOprnn_3/lstm_cell_3/bias*
_output_shapes	
:¸*
dtype0
¡
"rnn_3/lstm_cell_3/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.¸*3
shared_name$"rnn_3/lstm_cell_3/recurrent_kernel

6rnn_3/lstm_cell_3/recurrent_kernel/Read/ReadVariableOpReadVariableOp"rnn_3/lstm_cell_3/recurrent_kernel*
_output_shapes
:	.¸*
dtype0

rnn_3/lstm_cell_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2¸*)
shared_namernn_3/lstm_cell_3/kernel

,rnn_3/lstm_cell_3/kernel/Read/ReadVariableOpReadVariableOprnn_3/lstm_cell_3/kernel*
_output_shapes
:	2¸*
dtype0
¸
0transformer_encoder_3/layer_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*A
shared_name20transformer_encoder_3/layer_normalization_7/beta
±
Dtransformer_encoder_3/layer_normalization_7/beta/Read/ReadVariableOpReadVariableOp0transformer_encoder_3/layer_normalization_7/beta*
_output_shapes
:2*
dtype0
º
1transformer_encoder_3/layer_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*B
shared_name31transformer_encoder_3/layer_normalization_7/gamma
³
Etransformer_encoder_3/layer_normalization_7/gamma/Read/ReadVariableOpReadVariableOp1transformer_encoder_3/layer_normalization_7/gamma*
_output_shapes
:2*
dtype0
¸
0transformer_encoder_3/layer_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*A
shared_name20transformer_encoder_3/layer_normalization_6/beta
±
Dtransformer_encoder_3/layer_normalization_6/beta/Read/ReadVariableOpReadVariableOp0transformer_encoder_3/layer_normalization_6/beta*
_output_shapes
:2*
dtype0
º
1transformer_encoder_3/layer_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*B
shared_name31transformer_encoder_3/layer_normalization_6/gamma
³
Etransformer_encoder_3/layer_normalization_6/gamma/Read/ReadVariableOpReadVariableOp1transformer_encoder_3/layer_normalization_6/gamma*
_output_shapes
:2*
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:2*
dtype0
z
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 2* 
shared_namedense_13/kernel
s
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes

: 2*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
: *
dtype0
z
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2 * 
shared_namedense_12/kernel
s
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes

:2 *
dtype0
Ü
Btransformer_encoder_3/multi_head_attention_3/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*S
shared_nameDBtransformer_encoder_3/multi_head_attention_3/attention_output/bias
Õ
Vtransformer_encoder_3/multi_head_attention_3/attention_output/bias/Read/ReadVariableOpReadVariableOpBtransformer_encoder_3/multi_head_attention_3/attention_output/bias*
_output_shapes
:2*
dtype0
è
Dtransformer_encoder_3/multi_head_attention_3/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*U
shared_nameFDtransformer_encoder_3/multi_head_attention_3/attention_output/kernel
á
Xtransformer_encoder_3/multi_head_attention_3/attention_output/kernel/Read/ReadVariableOpReadVariableOpDtransformer_encoder_3/multi_head_attention_3/attention_output/kernel*"
_output_shapes
:22*
dtype0
Ê
7transformer_encoder_3/multi_head_attention_3/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*H
shared_name97transformer_encoder_3/multi_head_attention_3/value/bias
Ã
Ktransformer_encoder_3/multi_head_attention_3/value/bias/Read/ReadVariableOpReadVariableOp7transformer_encoder_3/multi_head_attention_3/value/bias*
_output_shapes

:2*
dtype0
Ò
9transformer_encoder_3/multi_head_attention_3/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*J
shared_name;9transformer_encoder_3/multi_head_attention_3/value/kernel
Ë
Mtransformer_encoder_3/multi_head_attention_3/value/kernel/Read/ReadVariableOpReadVariableOp9transformer_encoder_3/multi_head_attention_3/value/kernel*"
_output_shapes
:22*
dtype0
Æ
5transformer_encoder_3/multi_head_attention_3/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*F
shared_name75transformer_encoder_3/multi_head_attention_3/key/bias
¿
Itransformer_encoder_3/multi_head_attention_3/key/bias/Read/ReadVariableOpReadVariableOp5transformer_encoder_3/multi_head_attention_3/key/bias*
_output_shapes

:2*
dtype0
Î
7transformer_encoder_3/multi_head_attention_3/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*H
shared_name97transformer_encoder_3/multi_head_attention_3/key/kernel
Ç
Ktransformer_encoder_3/multi_head_attention_3/key/kernel/Read/ReadVariableOpReadVariableOp7transformer_encoder_3/multi_head_attention_3/key/kernel*"
_output_shapes
:22*
dtype0
Ê
7transformer_encoder_3/multi_head_attention_3/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*H
shared_name97transformer_encoder_3/multi_head_attention_3/query/bias
Ã
Ktransformer_encoder_3/multi_head_attention_3/query/bias/Read/ReadVariableOpReadVariableOp7transformer_encoder_3/multi_head_attention_3/query/bias*
_output_shapes

:2*
dtype0
Ò
9transformer_encoder_3/multi_head_attention_3/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*J
shared_name;9transformer_encoder_3/multi_head_attention_3/query/kernel
Ë
Mtransformer_encoder_3/multi_head_attention_3/query/kernel/Read/ReadVariableOpReadVariableOp9transformer_encoder_3/multi_head_attention_3/query/kernel*"
_output_shapes
:22*
dtype0
Æ
5token_and_position_embedding_3/embedding_7/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:12*F
shared_name75token_and_position_embedding_3/embedding_7/embeddings
¿
Itoken_and_position_embedding_3/embedding_7/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_3/embedding_7/embeddings*
_output_shapes

:12*
dtype0
Æ
5token_and_position_embedding_3/embedding_6/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*F
shared_name75token_and_position_embedding_3/embedding_6/embeddings
¿
Itoken_and_position_embedding_3/embedding_6/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_3/embedding_6/embeddings*
_output_shapes

:2*
dtype0
r
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_15/bias
k
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes
:*
dtype0
z
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.* 
shared_namedense_15/kernel
s
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
_output_shapes

:.*
dtype0
r
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*
shared_namedense_14/bias
k
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes
:.*
dtype0
z
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:..* 
shared_namedense_14/kernel
s
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
_output_shapes

:..*
dtype0
z
serving_default_input_4Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ1
×

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_45token_and_position_embedding_3/embedding_7/embeddings5token_and_position_embedding_3/embedding_6/embeddings9transformer_encoder_3/multi_head_attention_3/query/kernel7transformer_encoder_3/multi_head_attention_3/query/bias7transformer_encoder_3/multi_head_attention_3/key/kernel5transformer_encoder_3/multi_head_attention_3/key/bias9transformer_encoder_3/multi_head_attention_3/value/kernel7transformer_encoder_3/multi_head_attention_3/value/biasDtransformer_encoder_3/multi_head_attention_3/attention_output/kernelBtransformer_encoder_3/multi_head_attention_3/attention_output/bias1transformer_encoder_3/layer_normalization_6/gamma0transformer_encoder_3/layer_normalization_6/betadense_12/kerneldense_12/biasdense_13/kerneldense_13/bias1transformer_encoder_3/layer_normalization_7/gamma0transformer_encoder_3/layer_normalization_7/betarnn_3/lstm_cell_3/kernel"rnn_3/lstm_cell_3/recurrent_kernelrnn_3/lstm_cell_3/biasdense_14/kerneldense_14/biasdense_15/kerneldense_15/bias*%
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
'__inference_signature_wrapper_126272685

NoOpNoOp
ÓË
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ë
valueËBþÊ BöÊ
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
VARIABLE_VALUEdense_14/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_14/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_15/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_15/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5token_and_position_embedding_3/embedding_6/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5token_and_position_embedding_3/embedding_7/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE9transformer_encoder_3/multi_head_attention_3/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7transformer_encoder_3/multi_head_attention_3/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7transformer_encoder_3/multi_head_attention_3/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5transformer_encoder_3/multi_head_attention_3/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE9transformer_encoder_3/multi_head_attention_3/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7transformer_encoder_3/multi_head_attention_3/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEDtransformer_encoder_3/multi_head_attention_3/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEBtransformer_encoder_3/multi_head_attention_3/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_12/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_12/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_13/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_13/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1transformer_encoder_3/layer_normalization_6/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0transformer_encoder_3/layer_normalization_6/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1transformer_encoder_3/layer_normalization_7/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0transformer_encoder_3/layer_normalization_7/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUErnn_3/lstm_cell_3/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"rnn_3/lstm_cell_3/recurrent_kernel'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUErnn_3/lstm_cell_3/bias'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/dense_14/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_14/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_15/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_15/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/token_and_position_embedding_3/embedding_6/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/token_and_position_embedding_3/embedding_7/embeddings/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_3/multi_head_attention_3/query/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_3/multi_head_attention_3/query/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_3/multi_head_attention_3/key/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/transformer_encoder_3/multi_head_attention_3/key/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_3/multi_head_attention_3/value/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_3/multi_head_attention_3/value/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¨¡
VARIABLE_VALUEKAdam/transformer_encoder_3/multi_head_attention_3/attention_output/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¦
VARIABLE_VALUEIAdam/transformer_encoder_3/multi_head_attention_3/attention_output/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_12/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_12/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_13/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_13/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/transformer_encoder_3/layer_normalization_6/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE7Adam/transformer_encoder_3/layer_normalization_6/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/transformer_encoder_3/layer_normalization_7/gamma/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE7Adam/transformer_encoder_3/layer_normalization_7/beta/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/rnn_3/lstm_cell_3/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/rnn_3/lstm_cell_3/recurrent_kernel/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/rnn_3/lstm_cell_3/bias/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_14/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_14/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_15/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_15/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/token_and_position_embedding_3/embedding_6/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/token_and_position_embedding_3/embedding_7/embeddings/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_3/multi_head_attention_3/query/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_3/multi_head_attention_3/query/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_3/multi_head_attention_3/key/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/transformer_encoder_3/multi_head_attention_3/key/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_3/multi_head_attention_3/value/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_3/multi_head_attention_3/value/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¨¡
VARIABLE_VALUEKAdam/transformer_encoder_3/multi_head_attention_3/attention_output/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¦
VARIABLE_VALUEIAdam/transformer_encoder_3/multi_head_attention_3/attention_output/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_12/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_12/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_13/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_13/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/transformer_encoder_3/layer_normalization_6/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE7Adam/transformer_encoder_3/layer_normalization_6/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/transformer_encoder_3/layer_normalization_7/gamma/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE7Adam/transformer_encoder_3/layer_normalization_7/beta/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/rnn_3/lstm_cell_3/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/rnn_3/lstm_cell_3/recurrent_kernel/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/rnn_3/lstm_cell_3/bias/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
+
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOpItoken_and_position_embedding_3/embedding_6/embeddings/Read/ReadVariableOpItoken_and_position_embedding_3/embedding_7/embeddings/Read/ReadVariableOpMtransformer_encoder_3/multi_head_attention_3/query/kernel/Read/ReadVariableOpKtransformer_encoder_3/multi_head_attention_3/query/bias/Read/ReadVariableOpKtransformer_encoder_3/multi_head_attention_3/key/kernel/Read/ReadVariableOpItransformer_encoder_3/multi_head_attention_3/key/bias/Read/ReadVariableOpMtransformer_encoder_3/multi_head_attention_3/value/kernel/Read/ReadVariableOpKtransformer_encoder_3/multi_head_attention_3/value/bias/Read/ReadVariableOpXtransformer_encoder_3/multi_head_attention_3/attention_output/kernel/Read/ReadVariableOpVtransformer_encoder_3/multi_head_attention_3/attention_output/bias/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOpEtransformer_encoder_3/layer_normalization_6/gamma/Read/ReadVariableOpDtransformer_encoder_3/layer_normalization_6/beta/Read/ReadVariableOpEtransformer_encoder_3/layer_normalization_7/gamma/Read/ReadVariableOpDtransformer_encoder_3/layer_normalization_7/beta/Read/ReadVariableOp,rnn_3/lstm_cell_3/kernel/Read/ReadVariableOp6rnn_3/lstm_cell_3/recurrent_kernel/Read/ReadVariableOp*rnn_3/lstm_cell_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_14/kernel/m/Read/ReadVariableOp(Adam/dense_14/bias/m/Read/ReadVariableOp*Adam/dense_15/kernel/m/Read/ReadVariableOp(Adam/dense_15/bias/m/Read/ReadVariableOpPAdam/token_and_position_embedding_3/embedding_6/embeddings/m/Read/ReadVariableOpPAdam/token_and_position_embedding_3/embedding_7/embeddings/m/Read/ReadVariableOpTAdam/transformer_encoder_3/multi_head_attention_3/query/kernel/m/Read/ReadVariableOpRAdam/transformer_encoder_3/multi_head_attention_3/query/bias/m/Read/ReadVariableOpRAdam/transformer_encoder_3/multi_head_attention_3/key/kernel/m/Read/ReadVariableOpPAdam/transformer_encoder_3/multi_head_attention_3/key/bias/m/Read/ReadVariableOpTAdam/transformer_encoder_3/multi_head_attention_3/value/kernel/m/Read/ReadVariableOpRAdam/transformer_encoder_3/multi_head_attention_3/value/bias/m/Read/ReadVariableOp_Adam/transformer_encoder_3/multi_head_attention_3/attention_output/kernel/m/Read/ReadVariableOp]Adam/transformer_encoder_3/multi_head_attention_3/attention_output/bias/m/Read/ReadVariableOp*Adam/dense_12/kernel/m/Read/ReadVariableOp(Adam/dense_12/bias/m/Read/ReadVariableOp*Adam/dense_13/kernel/m/Read/ReadVariableOp(Adam/dense_13/bias/m/Read/ReadVariableOpLAdam/transformer_encoder_3/layer_normalization_6/gamma/m/Read/ReadVariableOpKAdam/transformer_encoder_3/layer_normalization_6/beta/m/Read/ReadVariableOpLAdam/transformer_encoder_3/layer_normalization_7/gamma/m/Read/ReadVariableOpKAdam/transformer_encoder_3/layer_normalization_7/beta/m/Read/ReadVariableOp3Adam/rnn_3/lstm_cell_3/kernel/m/Read/ReadVariableOp=Adam/rnn_3/lstm_cell_3/recurrent_kernel/m/Read/ReadVariableOp1Adam/rnn_3/lstm_cell_3/bias/m/Read/ReadVariableOp*Adam/dense_14/kernel/v/Read/ReadVariableOp(Adam/dense_14/bias/v/Read/ReadVariableOp*Adam/dense_15/kernel/v/Read/ReadVariableOp(Adam/dense_15/bias/v/Read/ReadVariableOpPAdam/token_and_position_embedding_3/embedding_6/embeddings/v/Read/ReadVariableOpPAdam/token_and_position_embedding_3/embedding_7/embeddings/v/Read/ReadVariableOpTAdam/transformer_encoder_3/multi_head_attention_3/query/kernel/v/Read/ReadVariableOpRAdam/transformer_encoder_3/multi_head_attention_3/query/bias/v/Read/ReadVariableOpRAdam/transformer_encoder_3/multi_head_attention_3/key/kernel/v/Read/ReadVariableOpPAdam/transformer_encoder_3/multi_head_attention_3/key/bias/v/Read/ReadVariableOpTAdam/transformer_encoder_3/multi_head_attention_3/value/kernel/v/Read/ReadVariableOpRAdam/transformer_encoder_3/multi_head_attention_3/value/bias/v/Read/ReadVariableOp_Adam/transformer_encoder_3/multi_head_attention_3/attention_output/kernel/v/Read/ReadVariableOp]Adam/transformer_encoder_3/multi_head_attention_3/attention_output/bias/v/Read/ReadVariableOp*Adam/dense_12/kernel/v/Read/ReadVariableOp(Adam/dense_12/bias/v/Read/ReadVariableOp*Adam/dense_13/kernel/v/Read/ReadVariableOp(Adam/dense_13/bias/v/Read/ReadVariableOpLAdam/transformer_encoder_3/layer_normalization_6/gamma/v/Read/ReadVariableOpKAdam/transformer_encoder_3/layer_normalization_6/beta/v/Read/ReadVariableOpLAdam/transformer_encoder_3/layer_normalization_7/gamma/v/Read/ReadVariableOpKAdam/transformer_encoder_3/layer_normalization_7/beta/v/Read/ReadVariableOp3Adam/rnn_3/lstm_cell_3/kernel/v/Read/ReadVariableOp=Adam/rnn_3/lstm_cell_3/recurrent_kernel/v/Read/ReadVariableOp1Adam/rnn_3/lstm_cell_3/bias/v/Read/ReadVariableOpConst*a
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
"__inference__traced_save_126275033

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_14/kerneldense_14/biasdense_15/kerneldense_15/bias5token_and_position_embedding_3/embedding_6/embeddings5token_and_position_embedding_3/embedding_7/embeddings9transformer_encoder_3/multi_head_attention_3/query/kernel7transformer_encoder_3/multi_head_attention_3/query/bias7transformer_encoder_3/multi_head_attention_3/key/kernel5transformer_encoder_3/multi_head_attention_3/key/bias9transformer_encoder_3/multi_head_attention_3/value/kernel7transformer_encoder_3/multi_head_attention_3/value/biasDtransformer_encoder_3/multi_head_attention_3/attention_output/kernelBtransformer_encoder_3/multi_head_attention_3/attention_output/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/bias1transformer_encoder_3/layer_normalization_6/gamma0transformer_encoder_3/layer_normalization_6/beta1transformer_encoder_3/layer_normalization_7/gamma0transformer_encoder_3/layer_normalization_7/betarnn_3/lstm_cell_3/kernel"rnn_3/lstm_cell_3/recurrent_kernelrnn_3/lstm_cell_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_14/kernel/mAdam/dense_14/bias/mAdam/dense_15/kernel/mAdam/dense_15/bias/m<Adam/token_and_position_embedding_3/embedding_6/embeddings/m<Adam/token_and_position_embedding_3/embedding_7/embeddings/m@Adam/transformer_encoder_3/multi_head_attention_3/query/kernel/m>Adam/transformer_encoder_3/multi_head_attention_3/query/bias/m>Adam/transformer_encoder_3/multi_head_attention_3/key/kernel/m<Adam/transformer_encoder_3/multi_head_attention_3/key/bias/m@Adam/transformer_encoder_3/multi_head_attention_3/value/kernel/m>Adam/transformer_encoder_3/multi_head_attention_3/value/bias/mKAdam/transformer_encoder_3/multi_head_attention_3/attention_output/kernel/mIAdam/transformer_encoder_3/multi_head_attention_3/attention_output/bias/mAdam/dense_12/kernel/mAdam/dense_12/bias/mAdam/dense_13/kernel/mAdam/dense_13/bias/m8Adam/transformer_encoder_3/layer_normalization_6/gamma/m7Adam/transformer_encoder_3/layer_normalization_6/beta/m8Adam/transformer_encoder_3/layer_normalization_7/gamma/m7Adam/transformer_encoder_3/layer_normalization_7/beta/mAdam/rnn_3/lstm_cell_3/kernel/m)Adam/rnn_3/lstm_cell_3/recurrent_kernel/mAdam/rnn_3/lstm_cell_3/bias/mAdam/dense_14/kernel/vAdam/dense_14/bias/vAdam/dense_15/kernel/vAdam/dense_15/bias/v<Adam/token_and_position_embedding_3/embedding_6/embeddings/v<Adam/token_and_position_embedding_3/embedding_7/embeddings/v@Adam/transformer_encoder_3/multi_head_attention_3/query/kernel/v>Adam/transformer_encoder_3/multi_head_attention_3/query/bias/v>Adam/transformer_encoder_3/multi_head_attention_3/key/kernel/v<Adam/transformer_encoder_3/multi_head_attention_3/key/bias/v@Adam/transformer_encoder_3/multi_head_attention_3/value/kernel/v>Adam/transformer_encoder_3/multi_head_attention_3/value/bias/vKAdam/transformer_encoder_3/multi_head_attention_3/attention_output/kernel/vIAdam/transformer_encoder_3/multi_head_attention_3/attention_output/bias/vAdam/dense_12/kernel/vAdam/dense_12/bias/vAdam/dense_13/kernel/vAdam/dense_13/bias/v8Adam/transformer_encoder_3/layer_normalization_6/gamma/v7Adam/transformer_encoder_3/layer_normalization_6/beta/v8Adam/transformer_encoder_3/layer_normalization_7/gamma/v7Adam/transformer_encoder_3/layer_normalization_7/beta/vAdam/rnn_3/lstm_cell_3/kernel/v)Adam/rnn_3/lstm_cell_3/recurrent_kernel/vAdam/rnn_3/lstm_cell_3/bias/v*`
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
%__inference__traced_restore_126275295«$
¥J

D__inference_rnn_3_layer_call_and_return_conditional_losses_126274114
inputs_0=
*lstm_cell_3_matmul_readvariableop_resource:	2¸?
,lstm_cell_3_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_3_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_3/BiasAdd/ReadVariableOp¢!lstm_cell_3/MatMul/ReadVariableOp¢#lstm_cell_3/MatMul_1/ReadVariableOp¢while=
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
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_3/mulMullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_3/TanhTanhlstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_3/add_1AddV2lstm_cell_3/mul:z:0lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
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
while_body_126274030* 
condR
while_cond_126274029*K
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
NoOpNoOp#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
Ü
¹
9__inference_transformer_encoder_3_layer_call_fn_126273478

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
:ÿÿÿÿÿÿÿÿÿ12*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transformer_encoder_3_layer_call_and_return_conditional_losses_126271597s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ12: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
 
_user_specified_nameinputs
¦
þ
G__inference_dense_12_layer_call_and_return_conditional_losses_126270926

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
:ÿÿÿÿÿÿÿÿÿ12
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
:ÿÿÿÿÿÿÿÿÿ1 r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ12: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
 
_user_specified_nameinputs

¸
)__inference_rnn_3_layer_call_fn_126273804
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
D__inference_rnn_3_layer_call_and_return_conditional_losses_126271424o
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
é
È
K__inference_sequential_3_layer_call_and_return_conditional_losses_126271067
dense_12_input$
dense_12_126271056:2  
dense_12_126271058: $
dense_13_126271061: 2 
dense_13_126271063:2
identity¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall
 dense_12/StatefulPartitionedCallStatefulPartitionedCalldense_12_inputdense_12_126271056dense_12_126271058*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_12_layer_call_and_return_conditional_losses_126270926 
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_126271061dense_13_126271063*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_13_layer_call_and_return_conditional_losses_126270962|
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ12: : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
(
_user_specified_namedense_12_input


ø
G__inference_dense_14_layer_call_and_return_conditional_losses_126271793

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
ï
ø
/__inference_lstm_cell_3_layer_call_fn_126274598

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
J__inference_lstm_cell_3_layer_call_and_return_conditional_losses_126271148o
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
Å
°
+__inference_model_3_layer_call_fn_126272740

inputs
unknown:12
	unknown_0:2
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
F__inference_model_3_layer_call_and_return_conditional_losses_126271816o
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
E:ÿÿÿÿÿÿÿÿÿ1: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
 
_user_specified_nameinputs
í
Ô!
$__inference__wrapped_model_126270888
input_4_
Mmodel_3_token_and_position_embedding_3_embedding_7_embedding_lookup_126270599:12_
Mmodel_3_token_and_position_embedding_3_embedding_6_embedding_lookup_126270605:2v
`model_3_transformer_encoder_3_multi_head_attention_3_query_einsum_einsum_readvariableop_resource:22h
Vmodel_3_transformer_encoder_3_multi_head_attention_3_query_add_readvariableop_resource:2t
^model_3_transformer_encoder_3_multi_head_attention_3_key_einsum_einsum_readvariableop_resource:22f
Tmodel_3_transformer_encoder_3_multi_head_attention_3_key_add_readvariableop_resource:2v
`model_3_transformer_encoder_3_multi_head_attention_3_value_einsum_einsum_readvariableop_resource:22h
Vmodel_3_transformer_encoder_3_multi_head_attention_3_value_add_readvariableop_resource:2
kmodel_3_transformer_encoder_3_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource:22o
amodel_3_transformer_encoder_3_multi_head_attention_3_attention_output_add_readvariableop_resource:2g
Ymodel_3_transformer_encoder_3_layer_normalization_6_batchnorm_mul_readvariableop_resource:2c
Umodel_3_transformer_encoder_3_layer_normalization_6_batchnorm_readvariableop_resource:2g
Umodel_3_transformer_encoder_3_sequential_3_dense_12_tensordot_readvariableop_resource:2 a
Smodel_3_transformer_encoder_3_sequential_3_dense_12_biasadd_readvariableop_resource: g
Umodel_3_transformer_encoder_3_sequential_3_dense_13_tensordot_readvariableop_resource: 2a
Smodel_3_transformer_encoder_3_sequential_3_dense_13_biasadd_readvariableop_resource:2g
Ymodel_3_transformer_encoder_3_layer_normalization_7_batchnorm_mul_readvariableop_resource:2c
Umodel_3_transformer_encoder_3_layer_normalization_7_batchnorm_readvariableop_resource:2K
8model_3_rnn_3_lstm_cell_3_matmul_readvariableop_resource:	2¸M
:model_3_rnn_3_lstm_cell_3_matmul_1_readvariableop_resource:	.¸H
9model_3_rnn_3_lstm_cell_3_biasadd_readvariableop_resource:	¸A
/model_3_dense_14_matmul_readvariableop_resource:..>
0model_3_dense_14_biasadd_readvariableop_resource:.A
/model_3_dense_15_matmul_readvariableop_resource:.>
0model_3_dense_15_biasadd_readvariableop_resource:
identity¢'model_3/dense_14/BiasAdd/ReadVariableOp¢&model_3/dense_14/MatMul/ReadVariableOp¢'model_3/dense_15/BiasAdd/ReadVariableOp¢&model_3/dense_15/MatMul/ReadVariableOp¢0model_3/rnn_3/lstm_cell_3/BiasAdd/ReadVariableOp¢/model_3/rnn_3/lstm_cell_3/MatMul/ReadVariableOp¢1model_3/rnn_3/lstm_cell_3/MatMul_1/ReadVariableOp¢model_3/rnn_3/while¢Cmodel_3/token_and_position_embedding_3/embedding_6/embedding_lookup¢Cmodel_3/token_and_position_embedding_3/embedding_7/embedding_lookup¢Lmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/ReadVariableOp¢Pmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/mul/ReadVariableOp¢Lmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/ReadVariableOp¢Pmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/mul/ReadVariableOp¢Xmodel_3/transformer_encoder_3/multi_head_attention_3/attention_output/add/ReadVariableOp¢bmodel_3/transformer_encoder_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp¢Kmodel_3/transformer_encoder_3/multi_head_attention_3/key/add/ReadVariableOp¢Umodel_3/transformer_encoder_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp¢Mmodel_3/transformer_encoder_3/multi_head_attention_3/query/add/ReadVariableOp¢Wmodel_3/transformer_encoder_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp¢Mmodel_3/transformer_encoder_3/multi_head_attention_3/value/add/ReadVariableOp¢Wmodel_3/transformer_encoder_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp¢Jmodel_3/transformer_encoder_3/sequential_3/dense_12/BiasAdd/ReadVariableOp¢Lmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/ReadVariableOp¢Jmodel_3/transformer_encoder_3/sequential_3/dense_13/BiasAdd/ReadVariableOp¢Lmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/ReadVariableOpc
,model_3/token_and_position_embedding_3/ShapeShapeinput_4*
T0*
_output_shapes
:
:model_3/token_and_position_embedding_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
<model_3/token_and_position_embedding_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<model_3/token_and_position_embedding_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4model_3/token_and_position_embedding_3/strided_sliceStridedSlice5model_3/token_and_position_embedding_3/Shape:output:0Cmodel_3/token_and_position_embedding_3/strided_slice/stack:output:0Emodel_3/token_and_position_embedding_3/strided_slice/stack_1:output:0Emodel_3/token_and_position_embedding_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
2model_3/token_and_position_embedding_3/range/startConst*
_output_shapes
: *
dtype0*
value	B : t
2model_3/token_and_position_embedding_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
,model_3/token_and_position_embedding_3/rangeRange;model_3/token_and_position_embedding_3/range/start:output:0=model_3/token_and_position_embedding_3/strided_slice:output:0;model_3/token_and_position_embedding_3/range/delta:output:0*
_output_shapes
:1ú
Cmodel_3/token_and_position_embedding_3/embedding_7/embedding_lookupResourceGatherMmodel_3_token_and_position_embedding_3_embedding_7_embedding_lookup_1262705995model_3/token_and_position_embedding_3/range:output:0*
Tindices0*`
_classV
TRloc:@model_3/token_and_position_embedding_3/embedding_7/embedding_lookup/126270599*
_output_shapes

:12*
dtype0±
Lmodel_3/token_and_position_embedding_3/embedding_7/embedding_lookup/IdentityIdentityLmodel_3/token_and_position_embedding_3/embedding_7/embedding_lookup:output:0*
T0*`
_classV
TRloc:@model_3/token_and_position_embedding_3/embedding_7/embedding_lookup/126270599*
_output_shapes

:12Ú
Nmodel_3/token_and_position_embedding_3/embedding_7/embedding_lookup/Identity_1IdentityUmodel_3/token_and_position_embedding_3/embedding_7/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:12
7model_3/token_and_position_embedding_3/embedding_6/CastCastinput_4*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
Cmodel_3/token_and_position_embedding_3/embedding_6/embedding_lookupResourceGatherMmodel_3_token_and_position_embedding_3_embedding_6_embedding_lookup_126270605;model_3/token_and_position_embedding_3/embedding_6/Cast:y:0*
Tindices0*`
_classV
TRloc:@model_3/token_and_position_embedding_3/embedding_6/embedding_lookup/126270605*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
dtype0¾
Lmodel_3/token_and_position_embedding_3/embedding_6/embedding_lookup/IdentityIdentityLmodel_3/token_and_position_embedding_3/embedding_6/embedding_lookup:output:0*
T0*`
_classV
TRloc:@model_3/token_and_position_embedding_3/embedding_6/embedding_lookup/126270605*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12ç
Nmodel_3/token_and_position_embedding_3/embedding_6/embedding_lookup/Identity_1IdentityUmodel_3/token_and_position_embedding_3/embedding_6/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
*model_3/token_and_position_embedding_3/addAddV2Wmodel_3/token_and_position_embedding_3/embedding_6/embedding_lookup/Identity_1:output:0Wmodel_3/token_and_position_embedding_3/embedding_7/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12ü
Wmodel_3/transformer_encoder_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOp`model_3_transformer_encoder_3_multi_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ã
Hmodel_3/transformer_encoder_3/multi_head_attention_3/query/einsum/EinsumEinsum.model_3/token_and_position_embedding_3/add:z:0_model_3/transformer_encoder_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabc,cde->abdeä
Mmodel_3/transformer_encoder_3/multi_head_attention_3/query/add/ReadVariableOpReadVariableOpVmodel_3_transformer_encoder_3_multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0«
>model_3/transformer_encoder_3/multi_head_attention_3/query/addAddV2Qmodel_3/transformer_encoder_3/multi_head_attention_3/query/einsum/Einsum:output:0Umodel_3/transformer_encoder_3/multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12ø
Umodel_3/transformer_encoder_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOp^model_3_transformer_encoder_3_multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0¿
Fmodel_3/transformer_encoder_3/multi_head_attention_3/key/einsum/EinsumEinsum.model_3/token_and_position_embedding_3/add:z:0]model_3/transformer_encoder_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabc,cde->abdeà
Kmodel_3/transformer_encoder_3/multi_head_attention_3/key/add/ReadVariableOpReadVariableOpTmodel_3_transformer_encoder_3_multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0¥
<model_3/transformer_encoder_3/multi_head_attention_3/key/addAddV2Omodel_3/transformer_encoder_3/multi_head_attention_3/key/einsum/Einsum:output:0Smodel_3/transformer_encoder_3/multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12ü
Wmodel_3/transformer_encoder_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOp`model_3_transformer_encoder_3_multi_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ã
Hmodel_3/transformer_encoder_3/multi_head_attention_3/value/einsum/EinsumEinsum.model_3/token_and_position_embedding_3/add:z:0_model_3/transformer_encoder_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabc,cde->abdeä
Mmodel_3/transformer_encoder_3/multi_head_attention_3/value/add/ReadVariableOpReadVariableOpVmodel_3_transformer_encoder_3_multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0«
>model_3/transformer_encoder_3/multi_head_attention_3/value/addAddV2Qmodel_3/transformer_encoder_3/multi_head_attention_3/value/einsum/Einsum:output:0Umodel_3/transformer_encoder_3/multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
:model_3/transformer_encoder_3/multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>
8model_3/transformer_encoder_3/multi_head_attention_3/MulMulBmodel_3/transformer_encoder_3/multi_head_attention_3/query/add:z:0Cmodel_3/transformer_encoder_3/multi_head_attention_3/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12®
Bmodel_3/transformer_encoder_3/multi_head_attention_3/einsum/EinsumEinsum@model_3/transformer_encoder_3/multi_head_attention_3/key/add:z:0<model_3/transformer_encoder_3/multi_head_attention_3/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11*
equationaecd,abcd->acbeÖ
Dmodel_3/transformer_encoder_3/multi_head_attention_3/softmax/SoftmaxSoftmaxKmodel_3/transformer_encoder_3/multi_head_attention_3/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11Û
Emodel_3/transformer_encoder_3/multi_head_attention_3/dropout/IdentityIdentityNmodel_3/transformer_encoder_3/multi_head_attention_3/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11Ä
Dmodel_3/transformer_encoder_3/multi_head_attention_3/einsum_1/EinsumEinsumNmodel_3/transformer_encoder_3/multi_head_attention_3/dropout/Identity:output:0Bmodel_3/transformer_encoder_3/multi_head_attention_3/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationacbe,aecd->abcd
bmodel_3/transformer_encoder_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpkmodel_3_transformer_encoder_3_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ô
Smodel_3/transformer_encoder_3/multi_head_attention_3/attention_output/einsum/EinsumEinsumMmodel_3/transformer_encoder_3/multi_head_attention_3/einsum_1/Einsum:output:0jmodel_3/transformer_encoder_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabcd,cde->abeö
Xmodel_3/transformer_encoder_3/multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpamodel_3_transformer_encoder_3_multi_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0È
Imodel_3/transformer_encoder_3/multi_head_attention_3/attention_output/addAddV2\model_3/transformer_encoder_3/multi_head_attention_3/attention_output/einsum/Einsum:output:0`model_3/transformer_encoder_3/multi_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Â
1model_3/transformer_encoder_3/dropout_12/IdentityIdentityMmodel_3/transformer_encoder_3/multi_head_attention_3/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ì
!model_3/transformer_encoder_3/addAddV2.model_3/token_and_position_embedding_3/add:z:0:model_3/transformer_encoder_3/dropout_12/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
Rmodel_3/transformer_encoder_3/layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
@model_3/transformer_encoder_3/layer_normalization_6/moments/meanMean%model_3/transformer_encoder_3/add:z:0[model_3/transformer_encoder_3/layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(Ù
Hmodel_3/transformer_encoder_3/layer_normalization_6/moments/StopGradientStopGradientImodel_3/transformer_encoder_3/layer_normalization_6/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
Mmodel_3/transformer_encoder_3/layer_normalization_6/moments/SquaredDifferenceSquaredDifference%model_3/transformer_encoder_3/add:z:0Qmodel_3/transformer_encoder_3/layer_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12 
Vmodel_3/transformer_encoder_3/layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ç
Dmodel_3/transformer_encoder_3/layer_normalization_6/moments/varianceMeanQmodel_3/transformer_encoder_3/layer_normalization_6/moments/SquaredDifference:z:0_model_3/transformer_encoder_3/layer_normalization_6/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(
Cmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
Amodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/addAddV2Mmodel_3/transformer_encoder_3/layer_normalization_6/moments/variance:output:0Lmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1É
Cmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/RsqrtRsqrtEmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1æ
Pmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpYmodel_3_transformer_encoder_3_layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0¡
Amodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/mulMulGmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/Rsqrt:y:0Xmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12î
Cmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/mul_1Mul%model_3/transformer_encoder_3/add:z:0Emodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
Cmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/mul_2MulImodel_3/transformer_encoder_3/layer_normalization_6/moments/mean:output:0Emodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Þ
Lmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/ReadVariableOpReadVariableOpUmodel_3_transformer_encoder_3_layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
Amodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/subSubTmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/ReadVariableOp:value:0Gmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
Cmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/add_1AddV2Gmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/mul_1:z:0Emodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12â
Lmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/ReadVariableOpReadVariableOpUmodel_3_transformer_encoder_3_sequential_3_dense_12_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0
Bmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
Bmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       º
Cmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/ShapeShapeGmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Kmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Fmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2GatherV2Lmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/Shape:output:0Kmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/free:output:0Tmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Mmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Hmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2_1GatherV2Lmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/Shape:output:0Kmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/axes:output:0Vmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Cmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Bmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/ProdProdOmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2:output:0Lmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: 
Emodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Dmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/Prod_1ProdQmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2_1:output:0Nmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Imodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ì
Dmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/concatConcatV2Kmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/free:output:0Kmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/axes:output:0Rmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
Cmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/stackPackKmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/Prod:output:0Mmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¢
Gmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/transpose	TransposeGmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/add_1:z:0Mmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¦
Emodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/ReshapeReshapeKmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/transpose:y:0Lmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¦
Dmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/MatMulMatMulNmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/Reshape:output:0Tmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
Emodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
Kmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Fmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/concat_1ConcatV2Omodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2:output:0Nmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/Const_2:output:0Tmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
=model_3/transformer_encoder_3/sequential_3/dense_12/TensordotReshapeNmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/MatMul:product:0Omodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 Ú
Jmodel_3/transformer_encoder_3/sequential_3/dense_12/BiasAdd/ReadVariableOpReadVariableOpSmodel_3_transformer_encoder_3_sequential_3_dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
;model_3/transformer_encoder_3/sequential_3/dense_12/BiasAddBiasAddFmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot:output:0Rmodel_3/transformer_encoder_3/sequential_3/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 ¼
8model_3/transformer_encoder_3/sequential_3/dense_12/ReluReluDmodel_3/transformer_encoder_3/sequential_3/dense_12/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 â
Lmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/ReadVariableOpReadVariableOpUmodel_3_transformer_encoder_3_sequential_3_dense_13_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0
Bmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
Bmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ¹
Cmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/ShapeShapeFmodel_3/transformer_encoder_3/sequential_3/dense_12/Relu:activations:0*
T0*
_output_shapes
:
Kmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Fmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2GatherV2Lmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/Shape:output:0Kmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/free:output:0Tmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Mmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Hmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2_1GatherV2Lmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/Shape:output:0Kmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/axes:output:0Vmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Cmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Bmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/ProdProdOmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2:output:0Lmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/Const:output:0*
T0*
_output_shapes
: 
Emodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Dmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/Prod_1ProdQmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2_1:output:0Nmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Imodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ì
Dmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/concatConcatV2Kmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/free:output:0Kmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/axes:output:0Rmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
Cmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/stackPackKmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/Prod:output:0Mmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¡
Gmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/transpose	TransposeFmodel_3/transformer_encoder_3/sequential_3/dense_12/Relu:activations:0Mmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 ¦
Emodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/ReshapeReshapeKmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/transpose:y:0Lmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¦
Dmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/MatMulMatMulNmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/Reshape:output:0Tmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Emodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Kmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Fmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/concat_1ConcatV2Omodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2:output:0Nmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/Const_2:output:0Tmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
=model_3/transformer_encoder_3/sequential_3/dense_13/TensordotReshapeNmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/MatMul:product:0Omodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ú
Jmodel_3/transformer_encoder_3/sequential_3/dense_13/BiasAdd/ReadVariableOpReadVariableOpSmodel_3_transformer_encoder_3_sequential_3_dense_13_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
;model_3/transformer_encoder_3/sequential_3/dense_13/BiasAddBiasAddFmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot:output:0Rmodel_3/transformer_encoder_3/sequential_3/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¹
1model_3/transformer_encoder_3/dropout_13/IdentityIdentityDmodel_3/transformer_encoder_3/sequential_3/dense_13/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12ç
#model_3/transformer_encoder_3/add_1AddV2Gmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/add_1:z:0:model_3/transformer_encoder_3/dropout_13/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
Rmodel_3/transformer_encoder_3/layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
@model_3/transformer_encoder_3/layer_normalization_7/moments/meanMean'model_3/transformer_encoder_3/add_1:z:0[model_3/transformer_encoder_3/layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(Ù
Hmodel_3/transformer_encoder_3/layer_normalization_7/moments/StopGradientStopGradientImodel_3/transformer_encoder_3/layer_normalization_7/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
Mmodel_3/transformer_encoder_3/layer_normalization_7/moments/SquaredDifferenceSquaredDifference'model_3/transformer_encoder_3/add_1:z:0Qmodel_3/transformer_encoder_3/layer_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12 
Vmodel_3/transformer_encoder_3/layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ç
Dmodel_3/transformer_encoder_3/layer_normalization_7/moments/varianceMeanQmodel_3/transformer_encoder_3/layer_normalization_7/moments/SquaredDifference:z:0_model_3/transformer_encoder_3/layer_normalization_7/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(
Cmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
Amodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/addAddV2Mmodel_3/transformer_encoder_3/layer_normalization_7/moments/variance:output:0Lmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1É
Cmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/RsqrtRsqrtEmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1æ
Pmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpYmodel_3_transformer_encoder_3_layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0¡
Amodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/mulMulGmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/Rsqrt:y:0Xmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12ð
Cmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/mul_1Mul'model_3/transformer_encoder_3/add_1:z:0Emodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
Cmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/mul_2MulImodel_3/transformer_encoder_3/layer_normalization_7/moments/mean:output:0Emodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Þ
Lmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/ReadVariableOpReadVariableOpUmodel_3_transformer_encoder_3_layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
Amodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/subSubTmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/ReadVariableOp:value:0Gmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
Cmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/add_1AddV2Gmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/mul_1:z:0Emodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
model_3/rnn_3/ShapeShapeGmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/add_1:z:0*
T0*
_output_shapes
:k
!model_3/rnn_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#model_3/rnn_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#model_3/rnn_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
model_3/rnn_3/strided_sliceStridedSlicemodel_3/rnn_3/Shape:output:0*model_3/rnn_3/strided_slice/stack:output:0,model_3/rnn_3/strided_slice/stack_1:output:0,model_3/rnn_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
model_3/rnn_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
model_3/rnn_3/zeros/packedPack$model_3/rnn_3/strided_slice:output:0%model_3/rnn_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
model_3/rnn_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
model_3/rnn_3/zerosFill#model_3/rnn_3/zeros/packed:output:0"model_3/rnn_3/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.`
model_3/rnn_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.¡
model_3/rnn_3/zeros_1/packedPack$model_3/rnn_3/strided_slice:output:0'model_3/rnn_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:`
model_3/rnn_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
model_3/rnn_3/zeros_1Fill%model_3/rnn_3/zeros_1/packed:output:0$model_3/rnn_3/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.q
model_3/rnn_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ê
model_3/rnn_3/transpose	TransposeGmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/add_1:z:0%model_3/rnn_3/transpose/perm:output:0*
T0*+
_output_shapes
:1ÿÿÿÿÿÿÿÿÿ2`
model_3/rnn_3/Shape_1Shapemodel_3/rnn_3/transpose:y:0*
T0*
_output_shapes
:m
#model_3/rnn_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%model_3/rnn_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%model_3/rnn_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
model_3/rnn_3/strided_slice_1StridedSlicemodel_3/rnn_3/Shape_1:output:0,model_3/rnn_3/strided_slice_1/stack:output:0.model_3/rnn_3/strided_slice_1/stack_1:output:0.model_3/rnn_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)model_3/rnn_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÞ
model_3/rnn_3/TensorArrayV2TensorListReserve2model_3/rnn_3/TensorArrayV2/element_shape:output:0&model_3/rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Cmodel_3/rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
5model_3/rnn_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel_3/rnn_3/transpose:y:0Lmodel_3/rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒm
#model_3/rnn_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%model_3/rnn_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%model_3/rnn_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
model_3/rnn_3/strided_slice_2StridedSlicemodel_3/rnn_3/transpose:y:0,model_3/rnn_3/strided_slice_2/stack:output:0.model_3/rnn_3/strided_slice_2/stack_1:output:0.model_3/rnn_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask©
/model_3/rnn_3/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp8model_3_rnn_3_lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0¾
 model_3/rnn_3/lstm_cell_3/MatMulMatMul&model_3/rnn_3/strided_slice_2:output:07model_3/rnn_3/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸­
1model_3/rnn_3/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp:model_3_rnn_3_lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0¸
"model_3/rnn_3/lstm_cell_3/MatMul_1MatMulmodel_3/rnn_3/zeros:output:09model_3/rnn_3/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸³
model_3/rnn_3/lstm_cell_3/addAddV2*model_3/rnn_3/lstm_cell_3/MatMul:product:0,model_3/rnn_3/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸§
0model_3/rnn_3/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp9model_3_rnn_3_lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0¼
!model_3/rnn_3/lstm_cell_3/BiasAddBiasAdd!model_3/rnn_3/lstm_cell_3/add:z:08model_3/rnn_3/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸k
)model_3/rnn_3/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
model_3/rnn_3/lstm_cell_3/splitSplit2model_3/rnn_3/lstm_cell_3/split/split_dim:output:0*model_3/rnn_3/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_split
!model_3/rnn_3/lstm_cell_3/SigmoidSigmoid(model_3/rnn_3/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
#model_3/rnn_3/lstm_cell_3/Sigmoid_1Sigmoid(model_3/rnn_3/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
model_3/rnn_3/lstm_cell_3/mulMul'model_3/rnn_3/lstm_cell_3/Sigmoid_1:y:0model_3/rnn_3/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
model_3/rnn_3/lstm_cell_3/TanhTanh(model_3/rnn_3/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.£
model_3/rnn_3/lstm_cell_3/mul_1Mul%model_3/rnn_3/lstm_cell_3/Sigmoid:y:0"model_3/rnn_3/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¢
model_3/rnn_3/lstm_cell_3/add_1AddV2!model_3/rnn_3/lstm_cell_3/mul:z:0#model_3/rnn_3/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
#model_3/rnn_3/lstm_cell_3/Sigmoid_2Sigmoid(model_3/rnn_3/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 model_3/rnn_3/lstm_cell_3/Tanh_1Tanh#model_3/rnn_3/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.§
model_3/rnn_3/lstm_cell_3/mul_2Mul'model_3/rnn_3/lstm_cell_3/Sigmoid_2:y:0$model_3/rnn_3/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.|
+model_3/rnn_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   l
*model_3/rnn_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ï
model_3/rnn_3/TensorArrayV2_1TensorListReserve4model_3/rnn_3/TensorArrayV2_1/element_shape:output:03model_3/rnn_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒT
model_3/rnn_3/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&model_3/rnn_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿb
 model_3/rnn_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : É
model_3/rnn_3/whileWhile)model_3/rnn_3/while/loop_counter:output:0/model_3/rnn_3/while/maximum_iterations:output:0model_3/rnn_3/time:output:0&model_3/rnn_3/TensorArrayV2_1:handle:0model_3/rnn_3/zeros:output:0model_3/rnn_3/zeros_1:output:0&model_3/rnn_3/strided_slice_1:output:0Emodel_3/rnn_3/TensorArrayUnstack/TensorListFromTensor:output_handle:08model_3_rnn_3_lstm_cell_3_matmul_readvariableop_resource:model_3_rnn_3_lstm_cell_3_matmul_1_readvariableop_resource9model_3_rnn_3_lstm_cell_3_biasadd_readvariableop_resource*
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
"model_3_rnn_3_while_body_126270791*.
cond&R$
"model_3_rnn_3_while_cond_126270790*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
>model_3/rnn_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   
0model_3/rnn_3/TensorArrayV2Stack/TensorListStackTensorListStackmodel_3/rnn_3/while:output:3Gmodel_3/rnn_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsv
#model_3/rnn_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%model_3/rnn_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%model_3/rnn_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Í
model_3/rnn_3/strided_slice_3StridedSlice9model_3/rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0,model_3/rnn_3/strided_slice_3/stack:output:0.model_3/rnn_3/strided_slice_3/stack_1:output:0.model_3/rnn_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_masks
model_3/rnn_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          À
model_3/rnn_3/transpose_1	Transpose9model_3/rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0'model_3/rnn_3/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
&model_3/dense_14/MatMul/ReadVariableOpReadVariableOp/model_3_dense_14_matmul_readvariableop_resource*
_output_shapes

:..*
dtype0«
model_3/dense_14/MatMulMatMul&model_3/rnn_3/strided_slice_3:output:0.model_3/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
'model_3/dense_14/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_14_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0©
model_3/dense_14/BiasAddBiasAdd!model_3/dense_14/MatMul:product:0/model_3/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
model_3/dense_14/ReluRelu!model_3/dense_14/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
&model_3/dense_15/MatMul/ReadVariableOpReadVariableOp/model_3_dense_15_matmul_readvariableop_resource*
_output_shapes

:.*
dtype0¨
model_3/dense_15/MatMulMatMul#model_3/dense_14/Relu:activations:0.model_3/dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'model_3/dense_15/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0©
model_3/dense_15/BiasAddBiasAdd!model_3/dense_15/MatMul:product:0/model_3/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
IdentityIdentity!model_3/dense_15/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÝ
NoOpNoOp(^model_3/dense_14/BiasAdd/ReadVariableOp'^model_3/dense_14/MatMul/ReadVariableOp(^model_3/dense_15/BiasAdd/ReadVariableOp'^model_3/dense_15/MatMul/ReadVariableOp1^model_3/rnn_3/lstm_cell_3/BiasAdd/ReadVariableOp0^model_3/rnn_3/lstm_cell_3/MatMul/ReadVariableOp2^model_3/rnn_3/lstm_cell_3/MatMul_1/ReadVariableOp^model_3/rnn_3/whileD^model_3/token_and_position_embedding_3/embedding_6/embedding_lookupD^model_3/token_and_position_embedding_3/embedding_7/embedding_lookupM^model_3/transformer_encoder_3/layer_normalization_6/batchnorm/ReadVariableOpQ^model_3/transformer_encoder_3/layer_normalization_6/batchnorm/mul/ReadVariableOpM^model_3/transformer_encoder_3/layer_normalization_7/batchnorm/ReadVariableOpQ^model_3/transformer_encoder_3/layer_normalization_7/batchnorm/mul/ReadVariableOpY^model_3/transformer_encoder_3/multi_head_attention_3/attention_output/add/ReadVariableOpc^model_3/transformer_encoder_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpL^model_3/transformer_encoder_3/multi_head_attention_3/key/add/ReadVariableOpV^model_3/transformer_encoder_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpN^model_3/transformer_encoder_3/multi_head_attention_3/query/add/ReadVariableOpX^model_3/transformer_encoder_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpN^model_3/transformer_encoder_3/multi_head_attention_3/value/add/ReadVariableOpX^model_3/transformer_encoder_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpK^model_3/transformer_encoder_3/sequential_3/dense_12/BiasAdd/ReadVariableOpM^model_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/ReadVariableOpK^model_3/transformer_encoder_3/sequential_3/dense_13/BiasAdd/ReadVariableOpM^model_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ1: : : : : : : : : : : : : : : : : : : : : : : : : 2R
'model_3/dense_14/BiasAdd/ReadVariableOp'model_3/dense_14/BiasAdd/ReadVariableOp2P
&model_3/dense_14/MatMul/ReadVariableOp&model_3/dense_14/MatMul/ReadVariableOp2R
'model_3/dense_15/BiasAdd/ReadVariableOp'model_3/dense_15/BiasAdd/ReadVariableOp2P
&model_3/dense_15/MatMul/ReadVariableOp&model_3/dense_15/MatMul/ReadVariableOp2d
0model_3/rnn_3/lstm_cell_3/BiasAdd/ReadVariableOp0model_3/rnn_3/lstm_cell_3/BiasAdd/ReadVariableOp2b
/model_3/rnn_3/lstm_cell_3/MatMul/ReadVariableOp/model_3/rnn_3/lstm_cell_3/MatMul/ReadVariableOp2f
1model_3/rnn_3/lstm_cell_3/MatMul_1/ReadVariableOp1model_3/rnn_3/lstm_cell_3/MatMul_1/ReadVariableOp2*
model_3/rnn_3/whilemodel_3/rnn_3/while2
Cmodel_3/token_and_position_embedding_3/embedding_6/embedding_lookupCmodel_3/token_and_position_embedding_3/embedding_6/embedding_lookup2
Cmodel_3/token_and_position_embedding_3/embedding_7/embedding_lookupCmodel_3/token_and_position_embedding_3/embedding_7/embedding_lookup2
Lmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/ReadVariableOpLmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/ReadVariableOp2¤
Pmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/mul/ReadVariableOpPmodel_3/transformer_encoder_3/layer_normalization_6/batchnorm/mul/ReadVariableOp2
Lmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/ReadVariableOpLmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/ReadVariableOp2¤
Pmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/mul/ReadVariableOpPmodel_3/transformer_encoder_3/layer_normalization_7/batchnorm/mul/ReadVariableOp2´
Xmodel_3/transformer_encoder_3/multi_head_attention_3/attention_output/add/ReadVariableOpXmodel_3/transformer_encoder_3/multi_head_attention_3/attention_output/add/ReadVariableOp2È
bmodel_3/transformer_encoder_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpbmodel_3/transformer_encoder_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2
Kmodel_3/transformer_encoder_3/multi_head_attention_3/key/add/ReadVariableOpKmodel_3/transformer_encoder_3/multi_head_attention_3/key/add/ReadVariableOp2®
Umodel_3/transformer_encoder_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpUmodel_3/transformer_encoder_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2
Mmodel_3/transformer_encoder_3/multi_head_attention_3/query/add/ReadVariableOpMmodel_3/transformer_encoder_3/multi_head_attention_3/query/add/ReadVariableOp2²
Wmodel_3/transformer_encoder_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpWmodel_3/transformer_encoder_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2
Mmodel_3/transformer_encoder_3/multi_head_attention_3/value/add/ReadVariableOpMmodel_3/transformer_encoder_3/multi_head_attention_3/value/add/ReadVariableOp2²
Wmodel_3/transformer_encoder_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpWmodel_3/transformer_encoder_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2
Jmodel_3/transformer_encoder_3/sequential_3/dense_12/BiasAdd/ReadVariableOpJmodel_3/transformer_encoder_3/sequential_3/dense_12/BiasAdd/ReadVariableOp2
Lmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/ReadVariableOpLmodel_3/transformer_encoder_3/sequential_3/dense_12/Tensordot/ReadVariableOp2
Jmodel_3/transformer_encoder_3/sequential_3/dense_13/BiasAdd/ReadVariableOpJmodel_3/transformer_encoder_3/sequential_3/dense_13/BiasAdd/ReadVariableOp2
Lmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/ReadVariableOpLmodel_3/transformer_encoder_3/sequential_3/dense_13/Tensordot/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
!
_user_specified_name	input_4
Ê	
ø
G__inference_dense_15_layer_call_and_return_conditional_losses_126274441

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
Ä
Ò
while_cond_126274173
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_126274173___redundant_placeholder07
3while_while_cond_126274173___redundant_placeholder17
3while_while_cond_126274173___redundant_placeholder27
3while_while_cond_126274173___redundant_placeholder3
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
Ã

J__inference_lstm_cell_3_layer_call_and_return_conditional_losses_126271295

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
È

,__inference_dense_15_layer_call_fn_126274431

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
G__inference_dense_15_layer_call_and_return_conditional_losses_126271809o
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
Ë

J__inference_lstm_cell_3_layer_call_and_return_conditional_losses_126274679

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
J

D__inference_rnn_3_layer_call_and_return_conditional_losses_126271774

inputs=
*lstm_cell_3_matmul_readvariableop_resource:	2¸?
,lstm_cell_3_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_3_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_3/BiasAdd/ReadVariableOp¢!lstm_cell_3/MatMul/ReadVariableOp¢#lstm_cell_3/MatMul_1/ReadVariableOp¢while;
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
:1ÿÿÿÿÿÿÿÿÿ2D
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
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_3/mulMullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_3/TanhTanhlstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_3/add_1AddV2lstm_cell_3/mul:z:0lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
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
while_body_126271690* 
condR
while_cond_126271689*K
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
NoOpNoOp#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ12: : : 2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
 
_user_specified_nameinputs
¶8

D__inference_rnn_3_layer_call_and_return_conditional_losses_126271232

inputs(
lstm_cell_3_126271149:	2¸(
lstm_cell_3_126271151:	.¸$
lstm_cell_3_126271153:	¸
identity¢#lstm_cell_3/StatefulPartitionedCall¢while;
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
#lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_3_126271149lstm_cell_3_126271151lstm_cell_3_126271153*
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
J__inference_lstm_cell_3_layer_call_and_return_conditional_losses_126271148n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_3_126271149lstm_cell_3_126271151lstm_cell_3_126271153*
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
while_body_126271163* 
condR
while_cond_126271162*K
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
NoOpNoOp$^lstm_cell_3/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_3/StatefulPartitionedCall#lstm_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ä
Ò
while_cond_126271689
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_126271689___redundant_placeholder07
3while_while_cond_126271689___redundant_placeholder17
3while_while_cond_126271689___redundant_placeholder27
3while_while_cond_126271689___redundant_placeholder3
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
Ë

J__inference_lstm_cell_3_layer_call_and_return_conditional_losses_126274647

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
ã?


rnn_3_while_body_126272998(
$rnn_3_while_rnn_3_while_loop_counter.
*rnn_3_while_rnn_3_while_maximum_iterations
rnn_3_while_placeholder
rnn_3_while_placeholder_1
rnn_3_while_placeholder_2
rnn_3_while_placeholder_3'
#rnn_3_while_rnn_3_strided_slice_1_0c
_rnn_3_while_tensorarrayv2read_tensorlistgetitem_rnn_3_tensorarrayunstack_tensorlistfromtensor_0K
8rnn_3_while_lstm_cell_3_matmul_readvariableop_resource_0:	2¸M
:rnn_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0:	.¸H
9rnn_3_while_lstm_cell_3_biasadd_readvariableop_resource_0:	¸
rnn_3_while_identity
rnn_3_while_identity_1
rnn_3_while_identity_2
rnn_3_while_identity_3
rnn_3_while_identity_4
rnn_3_while_identity_5%
!rnn_3_while_rnn_3_strided_slice_1a
]rnn_3_while_tensorarrayv2read_tensorlistgetitem_rnn_3_tensorarrayunstack_tensorlistfromtensorI
6rnn_3_while_lstm_cell_3_matmul_readvariableop_resource:	2¸K
8rnn_3_while_lstm_cell_3_matmul_1_readvariableop_resource:	.¸F
7rnn_3_while_lstm_cell_3_biasadd_readvariableop_resource:	¸¢.rnn_3/while/lstm_cell_3/BiasAdd/ReadVariableOp¢-rnn_3/while/lstm_cell_3/MatMul/ReadVariableOp¢/rnn_3/while/lstm_cell_3/MatMul_1/ReadVariableOp
=rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ä
/rnn_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_rnn_3_while_tensorarrayv2read_tensorlistgetitem_rnn_3_tensorarrayunstack_tensorlistfromtensor_0rnn_3_while_placeholderFrnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0§
-rnn_3/while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp8rnn_3_while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0Ê
rnn_3/while/lstm_cell_3/MatMulMatMul6rnn_3/while/TensorArrayV2Read/TensorListGetItem:item:05rnn_3/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸«
/rnn_3/while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp:rnn_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0±
 rnn_3/while/lstm_cell_3/MatMul_1MatMulrnn_3_while_placeholder_27rnn_3/while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸­
rnn_3/while/lstm_cell_3/addAddV2(rnn_3/while/lstm_cell_3/MatMul:product:0*rnn_3/while/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸¥
.rnn_3/while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp9rnn_3_while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¶
rnn_3/while/lstm_cell_3/BiasAddBiasAddrnn_3/while/lstm_cell_3/add:z:06rnn_3/while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸i
'rnn_3/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :þ
rnn_3/while/lstm_cell_3/splitSplit0rnn_3/while/lstm_cell_3/split/split_dim:output:0(rnn_3/while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_split
rnn_3/while/lstm_cell_3/SigmoidSigmoid&rnn_3/while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!rnn_3/while/lstm_cell_3/Sigmoid_1Sigmoid&rnn_3/while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_3/while/lstm_cell_3/mulMul%rnn_3/while/lstm_cell_3/Sigmoid_1:y:0rnn_3_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.~
rnn_3/while/lstm_cell_3/TanhTanh&rnn_3/while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_3/while/lstm_cell_3/mul_1Mul#rnn_3/while/lstm_cell_3/Sigmoid:y:0 rnn_3/while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_3/while/lstm_cell_3/add_1AddV2rnn_3/while/lstm_cell_3/mul:z:0!rnn_3/while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!rnn_3/while/lstm_cell_3/Sigmoid_2Sigmoid&rnn_3/while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.{
rnn_3/while/lstm_cell_3/Tanh_1Tanh!rnn_3/while/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¡
rnn_3/while/lstm_cell_3/mul_2Mul%rnn_3/while/lstm_cell_3/Sigmoid_2:y:0"rnn_3/while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
6rnn_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
0rnn_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_3_while_placeholder_1?rnn_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0!rnn_3/while/lstm_cell_3/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒS
rnn_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
rnn_3/while/addAddV2rnn_3_while_placeholderrnn_3/while/add/y:output:0*
T0*
_output_shapes
: U
rnn_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
rnn_3/while/add_1AddV2$rnn_3_while_rnn_3_while_loop_counterrnn_3/while/add_1/y:output:0*
T0*
_output_shapes
: k
rnn_3/while/IdentityIdentityrnn_3/while/add_1:z:0^rnn_3/while/NoOp*
T0*
_output_shapes
: 
rnn_3/while/Identity_1Identity*rnn_3_while_rnn_3_while_maximum_iterations^rnn_3/while/NoOp*
T0*
_output_shapes
: k
rnn_3/while/Identity_2Identityrnn_3/while/add:z:0^rnn_3/while/NoOp*
T0*
_output_shapes
: 
rnn_3/while/Identity_3Identity@rnn_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn_3/while/NoOp*
T0*
_output_shapes
: 
rnn_3/while/Identity_4Identity!rnn_3/while/lstm_cell_3/mul_2:z:0^rnn_3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_3/while/Identity_5Identity!rnn_3/while/lstm_cell_3/add_1:z:0^rnn_3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.å
rnn_3/while/NoOpNoOp/^rnn_3/while/lstm_cell_3/BiasAdd/ReadVariableOp.^rnn_3/while/lstm_cell_3/MatMul/ReadVariableOp0^rnn_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "5
rnn_3_while_identityrnn_3/while/Identity:output:0"9
rnn_3_while_identity_1rnn_3/while/Identity_1:output:0"9
rnn_3_while_identity_2rnn_3/while/Identity_2:output:0"9
rnn_3_while_identity_3rnn_3/while/Identity_3:output:0"9
rnn_3_while_identity_4rnn_3/while/Identity_4:output:0"9
rnn_3_while_identity_5rnn_3/while/Identity_5:output:0"t
7rnn_3_while_lstm_cell_3_biasadd_readvariableop_resource9rnn_3_while_lstm_cell_3_biasadd_readvariableop_resource_0"v
8rnn_3_while_lstm_cell_3_matmul_1_readvariableop_resource:rnn_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0"r
6rnn_3_while_lstm_cell_3_matmul_readvariableop_resource8rnn_3_while_lstm_cell_3_matmul_readvariableop_resource_0"H
!rnn_3_while_rnn_3_strided_slice_1#rnn_3_while_rnn_3_strided_slice_1_0"À
]rnn_3_while_tensorarrayv2read_tensorlistgetitem_rnn_3_tensorarrayunstack_tensorlistfromtensor_rnn_3_while_tensorarrayv2read_tensorlistgetitem_rnn_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2`
.rnn_3/while/lstm_cell_3/BiasAdd/ReadVariableOp.rnn_3/while/lstm_cell_3/BiasAdd/ReadVariableOp2^
-rnn_3/while/lstm_cell_3/MatMul/ReadVariableOp-rnn_3/while/lstm_cell_3/MatMul/ReadVariableOp2b
/rnn_3/while/lstm_cell_3/MatMul_1/ReadVariableOp/rnn_3/while/lstm_cell_3/MatMul_1/ReadVariableOp: 
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
¢
©
]__inference_token_and_position_embedding_3_layer_call_and_return_conditional_losses_126271464
x8
&embedding_7_embedding_lookup_126271451:128
&embedding_6_embedding_lookup_126271457:2
identity¢embedding_6/embedding_lookup¢embedding_7/embedding_lookup6
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
:1Þ
embedding_7/embedding_lookupResourceGather&embedding_7_embedding_lookup_126271451range:output:0*
Tindices0*9
_class/
-+loc:@embedding_7/embedding_lookup/126271451*
_output_shapes

:12*
dtype0¼
%embedding_7/embedding_lookup/IdentityIdentity%embedding_7/embedding_lookup:output:0*
T0*9
_class/
-+loc:@embedding_7/embedding_lookup/126271451*
_output_shapes

:12
'embedding_7/embedding_lookup/Identity_1Identity.embedding_7/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:12\
embedding_6/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1ñ
embedding_6/embedding_lookupResourceGather&embedding_6_embedding_lookup_126271457embedding_6/Cast:y:0*
Tindices0*9
_class/
-+loc:@embedding_6/embedding_lookup/126271457*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
dtype0É
%embedding_6/embedding_lookup/IdentityIdentity%embedding_6/embedding_lookup:output:0*
T0*9
_class/
-+loc:@embedding_6/embedding_lookup/126271457*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
'embedding_6/embedding_lookup/Identity_1Identity.embedding_6/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¦
addAddV20embedding_6/embedding_lookup/Identity_1:output:00embedding_7/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Z
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
NoOpNoOp^embedding_6/embedding_lookup^embedding_7/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ1: : 2<
embedding_6/embedding_lookupembedding_6/embedding_lookup2<
embedding_7/embedding_lookupembedding_7/embedding_lookup:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1

_user_specified_namex

Ü
F__inference_model_3_layer_call_and_return_conditional_losses_126273408

inputsW
Etoken_and_position_embedding_3_embedding_7_embedding_lookup_126273106:12W
Etoken_and_position_embedding_3_embedding_6_embedding_lookup_126273112:2n
Xtransformer_encoder_3_multi_head_attention_3_query_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_3_multi_head_attention_3_query_add_readvariableop_resource:2l
Vtransformer_encoder_3_multi_head_attention_3_key_einsum_einsum_readvariableop_resource:22^
Ltransformer_encoder_3_multi_head_attention_3_key_add_readvariableop_resource:2n
Xtransformer_encoder_3_multi_head_attention_3_value_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_3_multi_head_attention_3_value_add_readvariableop_resource:2y
ctransformer_encoder_3_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource:22g
Ytransformer_encoder_3_multi_head_attention_3_attention_output_add_readvariableop_resource:2_
Qtransformer_encoder_3_layer_normalization_6_batchnorm_mul_readvariableop_resource:2[
Mtransformer_encoder_3_layer_normalization_6_batchnorm_readvariableop_resource:2_
Mtransformer_encoder_3_sequential_3_dense_12_tensordot_readvariableop_resource:2 Y
Ktransformer_encoder_3_sequential_3_dense_12_biasadd_readvariableop_resource: _
Mtransformer_encoder_3_sequential_3_dense_13_tensordot_readvariableop_resource: 2Y
Ktransformer_encoder_3_sequential_3_dense_13_biasadd_readvariableop_resource:2_
Qtransformer_encoder_3_layer_normalization_7_batchnorm_mul_readvariableop_resource:2[
Mtransformer_encoder_3_layer_normalization_7_batchnorm_readvariableop_resource:2C
0rnn_3_lstm_cell_3_matmul_readvariableop_resource:	2¸E
2rnn_3_lstm_cell_3_matmul_1_readvariableop_resource:	.¸@
1rnn_3_lstm_cell_3_biasadd_readvariableop_resource:	¸9
'dense_14_matmul_readvariableop_resource:..6
(dense_14_biasadd_readvariableop_resource:.9
'dense_15_matmul_readvariableop_resource:.6
(dense_15_biasadd_readvariableop_resource:
identity¢dense_14/BiasAdd/ReadVariableOp¢dense_14/MatMul/ReadVariableOp¢dense_15/BiasAdd/ReadVariableOp¢dense_15/MatMul/ReadVariableOp¢(rnn_3/lstm_cell_3/BiasAdd/ReadVariableOp¢'rnn_3/lstm_cell_3/MatMul/ReadVariableOp¢)rnn_3/lstm_cell_3/MatMul_1/ReadVariableOp¢rnn_3/while¢;token_and_position_embedding_3/embedding_6/embedding_lookup¢;token_and_position_embedding_3/embedding_7/embedding_lookup¢Dtransformer_encoder_3/layer_normalization_6/batchnorm/ReadVariableOp¢Htransformer_encoder_3/layer_normalization_6/batchnorm/mul/ReadVariableOp¢Dtransformer_encoder_3/layer_normalization_7/batchnorm/ReadVariableOp¢Htransformer_encoder_3/layer_normalization_7/batchnorm/mul/ReadVariableOp¢Ptransformer_encoder_3/multi_head_attention_3/attention_output/add/ReadVariableOp¢Ztransformer_encoder_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp¢Ctransformer_encoder_3/multi_head_attention_3/key/add/ReadVariableOp¢Mtransformer_encoder_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp¢Etransformer_encoder_3/multi_head_attention_3/query/add/ReadVariableOp¢Otransformer_encoder_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp¢Etransformer_encoder_3/multi_head_attention_3/value/add/ReadVariableOp¢Otransformer_encoder_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp¢Btransformer_encoder_3/sequential_3/dense_12/BiasAdd/ReadVariableOp¢Dtransformer_encoder_3/sequential_3/dense_12/Tensordot/ReadVariableOp¢Btransformer_encoder_3/sequential_3/dense_13/BiasAdd/ReadVariableOp¢Dtransformer_encoder_3/sequential_3/dense_13/Tensordot/ReadVariableOpZ
$token_and_position_embedding_3/ShapeShapeinputs*
T0*
_output_shapes
:
2token_and_position_embedding_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ~
4token_and_position_embedding_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,token_and_position_embedding_3/strided_sliceStridedSlice-token_and_position_embedding_3/Shape:output:0;token_and_position_embedding_3/strided_slice/stack:output:0=token_and_position_embedding_3/strided_slice/stack_1:output:0=token_and_position_embedding_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_3/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ê
$token_and_position_embedding_3/rangeRange3token_and_position_embedding_3/range/start:output:05token_and_position_embedding_3/strided_slice:output:03token_and_position_embedding_3/range/delta:output:0*
_output_shapes
:1Ú
;token_and_position_embedding_3/embedding_7/embedding_lookupResourceGatherEtoken_and_position_embedding_3_embedding_7_embedding_lookup_126273106-token_and_position_embedding_3/range:output:0*
Tindices0*X
_classN
LJloc:@token_and_position_embedding_3/embedding_7/embedding_lookup/126273106*
_output_shapes

:12*
dtype0
Dtoken_and_position_embedding_3/embedding_7/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_3/embedding_7/embedding_lookup:output:0*
T0*X
_classN
LJloc:@token_and_position_embedding_3/embedding_7/embedding_lookup/126273106*
_output_shapes

:12Ê
Ftoken_and_position_embedding_3/embedding_7/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_3/embedding_7/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:12
/token_and_position_embedding_3/embedding_6/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1í
;token_and_position_embedding_3/embedding_6/embedding_lookupResourceGatherEtoken_and_position_embedding_3_embedding_6_embedding_lookup_1262731123token_and_position_embedding_3/embedding_6/Cast:y:0*
Tindices0*X
_classN
LJloc:@token_and_position_embedding_3/embedding_6/embedding_lookup/126273112*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
dtype0¦
Dtoken_and_position_embedding_3/embedding_6/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_3/embedding_6/embedding_lookup:output:0*
T0*X
_classN
LJloc:@token_and_position_embedding_3/embedding_6/embedding_lookup/126273112*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12×
Ftoken_and_position_embedding_3/embedding_6/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_3/embedding_6/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
"token_and_position_embedding_3/addAddV2Otoken_and_position_embedding_3/embedding_6/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_3/embedding_7/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12ì
Otransformer_encoder_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_3_multi_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0«
@transformer_encoder_3/multi_head_attention_3/query/einsum/EinsumEinsum&token_and_position_embedding_3/add:z:0Wtransformer_encoder_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabc,cde->abdeÔ
Etransformer_encoder_3/multi_head_attention_3/query/add/ReadVariableOpReadVariableOpNtransformer_encoder_3_multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0
6transformer_encoder_3/multi_head_attention_3/query/addAddV2Itransformer_encoder_3/multi_head_attention_3/query/einsum/Einsum:output:0Mtransformer_encoder_3/multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12è
Mtransformer_encoder_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_encoder_3_multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0§
>transformer_encoder_3/multi_head_attention_3/key/einsum/EinsumEinsum&token_and_position_embedding_3/add:z:0Utransformer_encoder_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabc,cde->abdeÐ
Ctransformer_encoder_3/multi_head_attention_3/key/add/ReadVariableOpReadVariableOpLtransformer_encoder_3_multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0
4transformer_encoder_3/multi_head_attention_3/key/addAddV2Gtransformer_encoder_3/multi_head_attention_3/key/einsum/Einsum:output:0Ktransformer_encoder_3/multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12ì
Otransformer_encoder_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_3_multi_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0«
@transformer_encoder_3/multi_head_attention_3/value/einsum/EinsumEinsum&token_and_position_embedding_3/add:z:0Wtransformer_encoder_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabc,cde->abdeÔ
Etransformer_encoder_3/multi_head_attention_3/value/add/ReadVariableOpReadVariableOpNtransformer_encoder_3_multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0
6transformer_encoder_3/multi_head_attention_3/value/addAddV2Itransformer_encoder_3/multi_head_attention_3/value/einsum/Einsum:output:0Mtransformer_encoder_3/multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12w
2transformer_encoder_3/multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>ê
0transformer_encoder_3/multi_head_attention_3/MulMul:transformer_encoder_3/multi_head_attention_3/query/add:z:0;transformer_encoder_3/multi_head_attention_3/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
:transformer_encoder_3/multi_head_attention_3/einsum/EinsumEinsum8transformer_encoder_3/multi_head_attention_3/key/add:z:04transformer_encoder_3/multi_head_attention_3/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11*
equationaecd,abcd->acbeÆ
<transformer_encoder_3/multi_head_attention_3/softmax/SoftmaxSoftmaxCtransformer_encoder_3/multi_head_attention_3/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11¬
<transformer_encoder_3/multi_head_attention_3/einsum_1/EinsumEinsumFtransformer_encoder_3/multi_head_attention_3/softmax/Softmax:softmax:0:transformer_encoder_3/multi_head_attention_3/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationacbe,aecd->abcd
Ztransformer_encoder_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpctransformer_encoder_3_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ü
Ktransformer_encoder_3/multi_head_attention_3/attention_output/einsum/EinsumEinsumEtransformer_encoder_3/multi_head_attention_3/einsum_1/Einsum:output:0btransformer_encoder_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabcd,cde->abeæ
Ptransformer_encoder_3/multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpYtransformer_encoder_3_multi_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0°
Atransformer_encoder_3/multi_head_attention_3/attention_output/addAddV2Ttransformer_encoder_3/multi_head_attention_3/attention_output/einsum/Einsum:output:0Xtransformer_encoder_3/multi_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12s
.transformer_encoder_3/dropout_12/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @é
,transformer_encoder_3/dropout_12/dropout/MulMulEtransformer_encoder_3/multi_head_attention_3/attention_output/add:z:07transformer_encoder_3/dropout_12/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12£
.transformer_encoder_3/dropout_12/dropout/ShapeShapeEtransformer_encoder_3/multi_head_attention_3/attention_output/add:z:0*
T0*
_output_shapes
:Ò
Etransformer_encoder_3/dropout_12/dropout/random_uniform/RandomUniformRandomUniform7transformer_encoder_3/dropout_12/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
dtype0|
7transformer_encoder_3/dropout_12/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
5transformer_encoder_3/dropout_12/dropout/GreaterEqualGreaterEqualNtransformer_encoder_3/dropout_12/dropout/random_uniform/RandomUniform:output:0@transformer_encoder_3/dropout_12/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12µ
-transformer_encoder_3/dropout_12/dropout/CastCast9transformer_encoder_3/dropout_12/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ð
.transformer_encoder_3/dropout_12/dropout/Mul_1Mul0transformer_encoder_3/dropout_12/dropout/Mul:z:01transformer_encoder_3/dropout_12/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12´
transformer_encoder_3/addAddV2&token_and_position_embedding_3/add:z:02transformer_encoder_3/dropout_12/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
Jtransformer_encoder_3/layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:û
8transformer_encoder_3/layer_normalization_6/moments/meanMeantransformer_encoder_3/add:z:0Stransformer_encoder_3/layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(É
@transformer_encoder_3/layer_normalization_6/moments/StopGradientStopGradientAtransformer_encoder_3/layer_normalization_6/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1ú
Etransformer_encoder_3/layer_normalization_6/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_3/add:z:0Itransformer_encoder_3/layer_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
Ntransformer_encoder_3/layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¯
<transformer_encoder_3/layer_normalization_6/moments/varianceMeanItransformer_encoder_3/layer_normalization_6/moments/SquaredDifference:z:0Wtransformer_encoder_3/layer_normalization_6/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(
;transformer_encoder_3/layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
9transformer_encoder_3/layer_normalization_6/batchnorm/addAddV2Etransformer_encoder_3/layer_normalization_6/moments/variance:output:0Dtransformer_encoder_3/layer_normalization_6/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1¹
;transformer_encoder_3/layer_normalization_6/batchnorm/RsqrtRsqrt=transformer_encoder_3/layer_normalization_6/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1Ö
Htransformer_encoder_3/layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpQtransformer_encoder_3_layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_3/layer_normalization_6/batchnorm/mulMul?transformer_encoder_3/layer_normalization_6/batchnorm/Rsqrt:y:0Ptransformer_encoder_3/layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ö
;transformer_encoder_3/layer_normalization_6/batchnorm/mul_1Multransformer_encoder_3/add:z:0=transformer_encoder_3/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12ú
;transformer_encoder_3/layer_normalization_6/batchnorm/mul_2MulAtransformer_encoder_3/layer_normalization_6/moments/mean:output:0=transformer_encoder_3/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Î
Dtransformer_encoder_3/layer_normalization_6/batchnorm/ReadVariableOpReadVariableOpMtransformer_encoder_3_layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_3/layer_normalization_6/batchnorm/subSubLtransformer_encoder_3/layer_normalization_6/batchnorm/ReadVariableOp:value:0?transformer_encoder_3/layer_normalization_6/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12ú
;transformer_encoder_3/layer_normalization_6/batchnorm/add_1AddV2?transformer_encoder_3/layer_normalization_6/batchnorm/mul_1:z:0=transformer_encoder_3/layer_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ò
Dtransformer_encoder_3/sequential_3/dense_12/Tensordot/ReadVariableOpReadVariableOpMtransformer_encoder_3_sequential_3_dense_12_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0
:transformer_encoder_3/sequential_3/dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
:transformer_encoder_3/sequential_3/dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ª
;transformer_encoder_3/sequential_3/dense_12/Tensordot/ShapeShape?transformer_encoder_3/layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Ctransformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
>transformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2GatherV2Dtransformer_encoder_3/sequential_3/dense_12/Tensordot/Shape:output:0Ctransformer_encoder_3/sequential_3/dense_12/Tensordot/free:output:0Ltransformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Etransformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ï
@transformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2_1GatherV2Dtransformer_encoder_3/sequential_3/dense_12/Tensordot/Shape:output:0Ctransformer_encoder_3/sequential_3/dense_12/Tensordot/axes:output:0Ntransformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
;transformer_encoder_3/sequential_3/dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ò
:transformer_encoder_3/sequential_3/dense_12/Tensordot/ProdProdGtransformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2:output:0Dtransformer_encoder_3/sequential_3/dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: 
=transformer_encoder_3/sequential_3/dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ø
<transformer_encoder_3/sequential_3/dense_12/Tensordot/Prod_1ProdItransformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2_1:output:0Ftransformer_encoder_3/sequential_3/dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Atransformer_encoder_3/sequential_3/dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ì
<transformer_encoder_3/sequential_3/dense_12/Tensordot/concatConcatV2Ctransformer_encoder_3/sequential_3/dense_12/Tensordot/free:output:0Ctransformer_encoder_3/sequential_3/dense_12/Tensordot/axes:output:0Jtransformer_encoder_3/sequential_3/dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ý
;transformer_encoder_3/sequential_3/dense_12/Tensordot/stackPackCtransformer_encoder_3/sequential_3/dense_12/Tensordot/Prod:output:0Etransformer_encoder_3/sequential_3/dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
?transformer_encoder_3/sequential_3/dense_12/Tensordot/transpose	Transpose?transformer_encoder_3/layer_normalization_6/batchnorm/add_1:z:0Etransformer_encoder_3/sequential_3/dense_12/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
=transformer_encoder_3/sequential_3/dense_12/Tensordot/ReshapeReshapeCtransformer_encoder_3/sequential_3/dense_12/Tensordot/transpose:y:0Dtransformer_encoder_3/sequential_3/dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
<transformer_encoder_3/sequential_3/dense_12/Tensordot/MatMulMatMulFtransformer_encoder_3/sequential_3/dense_12/Tensordot/Reshape:output:0Ltransformer_encoder_3/sequential_3/dense_12/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
=transformer_encoder_3/sequential_3/dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
Ctransformer_encoder_3/sequential_3/dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
>transformer_encoder_3/sequential_3/dense_12/Tensordot/concat_1ConcatV2Gtransformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2:output:0Ftransformer_encoder_3/sequential_3/dense_12/Tensordot/Const_2:output:0Ltransformer_encoder_3/sequential_3/dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
5transformer_encoder_3/sequential_3/dense_12/TensordotReshapeFtransformer_encoder_3/sequential_3/dense_12/Tensordot/MatMul:product:0Gtransformer_encoder_3/sequential_3/dense_12/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 Ê
Btransformer_encoder_3/sequential_3/dense_12/BiasAdd/ReadVariableOpReadVariableOpKtransformer_encoder_3_sequential_3_dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
3transformer_encoder_3/sequential_3/dense_12/BiasAddBiasAdd>transformer_encoder_3/sequential_3/dense_12/Tensordot:output:0Jtransformer_encoder_3/sequential_3/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 ¬
0transformer_encoder_3/sequential_3/dense_12/ReluRelu<transformer_encoder_3/sequential_3/dense_12/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 Ò
Dtransformer_encoder_3/sequential_3/dense_13/Tensordot/ReadVariableOpReadVariableOpMtransformer_encoder_3_sequential_3_dense_13_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0
:transformer_encoder_3/sequential_3/dense_13/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
:transformer_encoder_3/sequential_3/dense_13/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ©
;transformer_encoder_3/sequential_3/dense_13/Tensordot/ShapeShape>transformer_encoder_3/sequential_3/dense_12/Relu:activations:0*
T0*
_output_shapes
:
Ctransformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
>transformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2GatherV2Dtransformer_encoder_3/sequential_3/dense_13/Tensordot/Shape:output:0Ctransformer_encoder_3/sequential_3/dense_13/Tensordot/free:output:0Ltransformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Etransformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ï
@transformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2_1GatherV2Dtransformer_encoder_3/sequential_3/dense_13/Tensordot/Shape:output:0Ctransformer_encoder_3/sequential_3/dense_13/Tensordot/axes:output:0Ntransformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
;transformer_encoder_3/sequential_3/dense_13/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ò
:transformer_encoder_3/sequential_3/dense_13/Tensordot/ProdProdGtransformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2:output:0Dtransformer_encoder_3/sequential_3/dense_13/Tensordot/Const:output:0*
T0*
_output_shapes
: 
=transformer_encoder_3/sequential_3/dense_13/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ø
<transformer_encoder_3/sequential_3/dense_13/Tensordot/Prod_1ProdItransformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2_1:output:0Ftransformer_encoder_3/sequential_3/dense_13/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Atransformer_encoder_3/sequential_3/dense_13/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ì
<transformer_encoder_3/sequential_3/dense_13/Tensordot/concatConcatV2Ctransformer_encoder_3/sequential_3/dense_13/Tensordot/free:output:0Ctransformer_encoder_3/sequential_3/dense_13/Tensordot/axes:output:0Jtransformer_encoder_3/sequential_3/dense_13/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ý
;transformer_encoder_3/sequential_3/dense_13/Tensordot/stackPackCtransformer_encoder_3/sequential_3/dense_13/Tensordot/Prod:output:0Etransformer_encoder_3/sequential_3/dense_13/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
?transformer_encoder_3/sequential_3/dense_13/Tensordot/transpose	Transpose>transformer_encoder_3/sequential_3/dense_12/Relu:activations:0Etransformer_encoder_3/sequential_3/dense_13/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 
=transformer_encoder_3/sequential_3/dense_13/Tensordot/ReshapeReshapeCtransformer_encoder_3/sequential_3/dense_13/Tensordot/transpose:y:0Dtransformer_encoder_3/sequential_3/dense_13/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
<transformer_encoder_3/sequential_3/dense_13/Tensordot/MatMulMatMulFtransformer_encoder_3/sequential_3/dense_13/Tensordot/Reshape:output:0Ltransformer_encoder_3/sequential_3/dense_13/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
=transformer_encoder_3/sequential_3/dense_13/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Ctransformer_encoder_3/sequential_3/dense_13/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
>transformer_encoder_3/sequential_3/dense_13/Tensordot/concat_1ConcatV2Gtransformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2:output:0Ftransformer_encoder_3/sequential_3/dense_13/Tensordot/Const_2:output:0Ltransformer_encoder_3/sequential_3/dense_13/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
5transformer_encoder_3/sequential_3/dense_13/TensordotReshapeFtransformer_encoder_3/sequential_3/dense_13/Tensordot/MatMul:product:0Gtransformer_encoder_3/sequential_3/dense_13/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ê
Btransformer_encoder_3/sequential_3/dense_13/BiasAdd/ReadVariableOpReadVariableOpKtransformer_encoder_3_sequential_3_dense_13_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
3transformer_encoder_3/sequential_3/dense_13/BiasAddBiasAdd>transformer_encoder_3/sequential_3/dense_13/Tensordot:output:0Jtransformer_encoder_3/sequential_3/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12s
.transformer_encoder_3/dropout_13/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @à
,transformer_encoder_3/dropout_13/dropout/MulMul<transformer_encoder_3/sequential_3/dense_13/BiasAdd:output:07transformer_encoder_3/dropout_13/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
.transformer_encoder_3/dropout_13/dropout/ShapeShape<transformer_encoder_3/sequential_3/dense_13/BiasAdd:output:0*
T0*
_output_shapes
:Ò
Etransformer_encoder_3/dropout_13/dropout/random_uniform/RandomUniformRandomUniform7transformer_encoder_3/dropout_13/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
dtype0|
7transformer_encoder_3/dropout_13/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
5transformer_encoder_3/dropout_13/dropout/GreaterEqualGreaterEqualNtransformer_encoder_3/dropout_13/dropout/random_uniform/RandomUniform:output:0@transformer_encoder_3/dropout_13/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12µ
-transformer_encoder_3/dropout_13/dropout/CastCast9transformer_encoder_3/dropout_13/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ð
.transformer_encoder_3/dropout_13/dropout/Mul_1Mul0transformer_encoder_3/dropout_13/dropout/Mul:z:01transformer_encoder_3/dropout_13/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ï
transformer_encoder_3/add_1AddV2?transformer_encoder_3/layer_normalization_6/batchnorm/add_1:z:02transformer_encoder_3/dropout_13/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
Jtransformer_encoder_3/layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ý
8transformer_encoder_3/layer_normalization_7/moments/meanMeantransformer_encoder_3/add_1:z:0Stransformer_encoder_3/layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(É
@transformer_encoder_3/layer_normalization_7/moments/StopGradientStopGradientAtransformer_encoder_3/layer_normalization_7/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1ü
Etransformer_encoder_3/layer_normalization_7/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_3/add_1:z:0Itransformer_encoder_3/layer_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
Ntransformer_encoder_3/layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¯
<transformer_encoder_3/layer_normalization_7/moments/varianceMeanItransformer_encoder_3/layer_normalization_7/moments/SquaredDifference:z:0Wtransformer_encoder_3/layer_normalization_7/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(
;transformer_encoder_3/layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
9transformer_encoder_3/layer_normalization_7/batchnorm/addAddV2Etransformer_encoder_3/layer_normalization_7/moments/variance:output:0Dtransformer_encoder_3/layer_normalization_7/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1¹
;transformer_encoder_3/layer_normalization_7/batchnorm/RsqrtRsqrt=transformer_encoder_3/layer_normalization_7/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1Ö
Htransformer_encoder_3/layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpQtransformer_encoder_3_layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_3/layer_normalization_7/batchnorm/mulMul?transformer_encoder_3/layer_normalization_7/batchnorm/Rsqrt:y:0Ptransformer_encoder_3/layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ø
;transformer_encoder_3/layer_normalization_7/batchnorm/mul_1Multransformer_encoder_3/add_1:z:0=transformer_encoder_3/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12ú
;transformer_encoder_3/layer_normalization_7/batchnorm/mul_2MulAtransformer_encoder_3/layer_normalization_7/moments/mean:output:0=transformer_encoder_3/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Î
Dtransformer_encoder_3/layer_normalization_7/batchnorm/ReadVariableOpReadVariableOpMtransformer_encoder_3_layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_3/layer_normalization_7/batchnorm/subSubLtransformer_encoder_3/layer_normalization_7/batchnorm/ReadVariableOp:value:0?transformer_encoder_3/layer_normalization_7/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12ú
;transformer_encoder_3/layer_normalization_7/batchnorm/add_1AddV2?transformer_encoder_3/layer_normalization_7/batchnorm/mul_1:z:0=transformer_encoder_3/layer_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12z
rnn_3/ShapeShape?transformer_encoder_3/layer_normalization_7/batchnorm/add_1:z:0*
T0*
_output_shapes
:c
rnn_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
rnn_3/strided_sliceStridedSlicernn_3/Shape:output:0"rnn_3/strided_slice/stack:output:0$rnn_3/strided_slice/stack_1:output:0$rnn_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
rnn_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
rnn_3/zeros/packedPackrnn_3/strided_slice:output:0rnn_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
rnn_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
rnn_3/zerosFillrnn_3/zeros/packed:output:0rnn_3/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.X
rnn_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
rnn_3/zeros_1/packedPackrnn_3/strided_slice:output:0rnn_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:X
rnn_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rnn_3/zeros_1Fillrnn_3/zeros_1/packed:output:0rnn_3/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.i
rnn_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ²
rnn_3/transpose	Transpose?transformer_encoder_3/layer_normalization_7/batchnorm/add_1:z:0rnn_3/transpose/perm:output:0*
T0*+
_output_shapes
:1ÿÿÿÿÿÿÿÿÿ2P
rnn_3/Shape_1Shapernn_3/transpose:y:0*
T0*
_output_shapes
:e
rnn_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
rnn_3/strided_slice_1StridedSlicernn_3/Shape_1:output:0$rnn_3/strided_slice_1/stack:output:0&rnn_3/strided_slice_1/stack_1:output:0&rnn_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!rnn_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÆ
rnn_3/TensorArrayV2TensorListReserve*rnn_3/TensorArrayV2/element_shape:output:0rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
;rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ò
-rnn_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn_3/transpose:y:0Drnn_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒe
rnn_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
rnn_3/strided_slice_2StridedSlicernn_3/transpose:y:0$rnn_3/strided_slice_2/stack:output:0&rnn_3/strided_slice_2/stack_1:output:0&rnn_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
'rnn_3/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp0rnn_3_lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0¦
rnn_3/lstm_cell_3/MatMulMatMulrnn_3/strided_slice_2:output:0/rnn_3/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)rnn_3/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp2rnn_3_lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0 
rnn_3/lstm_cell_3/MatMul_1MatMulrnn_3/zeros:output:01rnn_3/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
rnn_3/lstm_cell_3/addAddV2"rnn_3/lstm_cell_3/MatMul:product:0$rnn_3/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(rnn_3/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp1rnn_3_lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0¤
rnn_3/lstm_cell_3/BiasAddBiasAddrnn_3/lstm_cell_3/add:z:00rnn_3/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!rnn_3/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
rnn_3/lstm_cell_3/splitSplit*rnn_3/lstm_cell_3/split/split_dim:output:0"rnn_3/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
rnn_3/lstm_cell_3/SigmoidSigmoid rnn_3/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
rnn_3/lstm_cell_3/Sigmoid_1Sigmoid rnn_3/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_3/lstm_cell_3/mulMulrnn_3/lstm_cell_3/Sigmoid_1:y:0rnn_3/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
rnn_3/lstm_cell_3/TanhTanh rnn_3/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_3/lstm_cell_3/mul_1Mulrnn_3/lstm_cell_3/Sigmoid:y:0rnn_3/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_3/lstm_cell_3/add_1AddV2rnn_3/lstm_cell_3/mul:z:0rnn_3/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
rnn_3/lstm_cell_3/Sigmoid_2Sigmoid rnn_3/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
rnn_3/lstm_cell_3/Tanh_1Tanhrnn_3/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_3/lstm_cell_3/mul_2Mulrnn_3/lstm_cell_3/Sigmoid_2:y:0rnn_3/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.t
#rnn_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   d
"rnn_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :×
rnn_3/TensorArrayV2_1TensorListReserve,rnn_3/TensorArrayV2_1/element_shape:output:0+rnn_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒL

rnn_3/timeConst*
_output_shapes
: *
dtype0*
value	B : i
rnn_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿZ
rnn_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ù
rnn_3/whileWhile!rnn_3/while/loop_counter:output:0'rnn_3/while/maximum_iterations:output:0rnn_3/time:output:0rnn_3/TensorArrayV2_1:handle:0rnn_3/zeros:output:0rnn_3/zeros_1:output:0rnn_3/strided_slice_1:output:0=rnn_3/TensorArrayUnstack/TensorListFromTensor:output_handle:00rnn_3_lstm_cell_3_matmul_readvariableop_resource2rnn_3_lstm_cell_3_matmul_1_readvariableop_resource1rnn_3_lstm_cell_3_biasadd_readvariableop_resource*
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
rnn_3_while_body_126273311*&
condR
rnn_3_while_cond_126273310*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
6rnn_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   è
(rnn_3/TensorArrayV2Stack/TensorListStackTensorListStackrnn_3/while:output:3?rnn_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsn
rnn_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿg
rnn_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
rnn_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¥
rnn_3/strided_slice_3StridedSlice1rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0$rnn_3/strided_slice_3/stack:output:0&rnn_3/strided_slice_3/stack_1:output:0&rnn_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maskk
rnn_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¨
rnn_3/transpose_1	Transpose1rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0rnn_3/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:..*
dtype0
dense_14/MatMulMatMulrnn_3/strided_slice_3:output:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.b
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:.*
dtype0
dense_15/MatMulMatMuldense_14/Relu:activations:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_15/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp)^rnn_3/lstm_cell_3/BiasAdd/ReadVariableOp(^rnn_3/lstm_cell_3/MatMul/ReadVariableOp*^rnn_3/lstm_cell_3/MatMul_1/ReadVariableOp^rnn_3/while<^token_and_position_embedding_3/embedding_6/embedding_lookup<^token_and_position_embedding_3/embedding_7/embedding_lookupE^transformer_encoder_3/layer_normalization_6/batchnorm/ReadVariableOpI^transformer_encoder_3/layer_normalization_6/batchnorm/mul/ReadVariableOpE^transformer_encoder_3/layer_normalization_7/batchnorm/ReadVariableOpI^transformer_encoder_3/layer_normalization_7/batchnorm/mul/ReadVariableOpQ^transformer_encoder_3/multi_head_attention_3/attention_output/add/ReadVariableOp[^transformer_encoder_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpD^transformer_encoder_3/multi_head_attention_3/key/add/ReadVariableOpN^transformer_encoder_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpF^transformer_encoder_3/multi_head_attention_3/query/add/ReadVariableOpP^transformer_encoder_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpF^transformer_encoder_3/multi_head_attention_3/value/add/ReadVariableOpP^transformer_encoder_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpC^transformer_encoder_3/sequential_3/dense_12/BiasAdd/ReadVariableOpE^transformer_encoder_3/sequential_3/dense_12/Tensordot/ReadVariableOpC^transformer_encoder_3/sequential_3/dense_13/BiasAdd/ReadVariableOpE^transformer_encoder_3/sequential_3/dense_13/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ1: : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2T
(rnn_3/lstm_cell_3/BiasAdd/ReadVariableOp(rnn_3/lstm_cell_3/BiasAdd/ReadVariableOp2R
'rnn_3/lstm_cell_3/MatMul/ReadVariableOp'rnn_3/lstm_cell_3/MatMul/ReadVariableOp2V
)rnn_3/lstm_cell_3/MatMul_1/ReadVariableOp)rnn_3/lstm_cell_3/MatMul_1/ReadVariableOp2
rnn_3/whilernn_3/while2z
;token_and_position_embedding_3/embedding_6/embedding_lookup;token_and_position_embedding_3/embedding_6/embedding_lookup2z
;token_and_position_embedding_3/embedding_7/embedding_lookup;token_and_position_embedding_3/embedding_7/embedding_lookup2
Dtransformer_encoder_3/layer_normalization_6/batchnorm/ReadVariableOpDtransformer_encoder_3/layer_normalization_6/batchnorm/ReadVariableOp2
Htransformer_encoder_3/layer_normalization_6/batchnorm/mul/ReadVariableOpHtransformer_encoder_3/layer_normalization_6/batchnorm/mul/ReadVariableOp2
Dtransformer_encoder_3/layer_normalization_7/batchnorm/ReadVariableOpDtransformer_encoder_3/layer_normalization_7/batchnorm/ReadVariableOp2
Htransformer_encoder_3/layer_normalization_7/batchnorm/mul/ReadVariableOpHtransformer_encoder_3/layer_normalization_7/batchnorm/mul/ReadVariableOp2¤
Ptransformer_encoder_3/multi_head_attention_3/attention_output/add/ReadVariableOpPtransformer_encoder_3/multi_head_attention_3/attention_output/add/ReadVariableOp2¸
Ztransformer_encoder_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpZtransformer_encoder_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2
Ctransformer_encoder_3/multi_head_attention_3/key/add/ReadVariableOpCtransformer_encoder_3/multi_head_attention_3/key/add/ReadVariableOp2
Mtransformer_encoder_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpMtransformer_encoder_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2
Etransformer_encoder_3/multi_head_attention_3/query/add/ReadVariableOpEtransformer_encoder_3/multi_head_attention_3/query/add/ReadVariableOp2¢
Otransformer_encoder_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpOtransformer_encoder_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2
Etransformer_encoder_3/multi_head_attention_3/value/add/ReadVariableOpEtransformer_encoder_3/multi_head_attention_3/value/add/ReadVariableOp2¢
Otransformer_encoder_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpOtransformer_encoder_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2
Btransformer_encoder_3/sequential_3/dense_12/BiasAdd/ReadVariableOpBtransformer_encoder_3/sequential_3/dense_12/BiasAdd/ReadVariableOp2
Dtransformer_encoder_3/sequential_3/dense_12/Tensordot/ReadVariableOpDtransformer_encoder_3/sequential_3/dense_12/Tensordot/ReadVariableOp2
Btransformer_encoder_3/sequential_3/dense_13/BiasAdd/ReadVariableOpBtransformer_encoder_3/sequential_3/dense_13/BiasAdd/ReadVariableOp2
Dtransformer_encoder_3/sequential_3/dense_13/Tensordot/ReadVariableOpDtransformer_encoder_3/sequential_3/dense_13/Tensordot/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
 
_user_specified_nameinputs
Í
ê
"model_3_rnn_3_while_cond_1262707908
4model_3_rnn_3_while_model_3_rnn_3_while_loop_counter>
:model_3_rnn_3_while_model_3_rnn_3_while_maximum_iterations#
model_3_rnn_3_while_placeholder%
!model_3_rnn_3_while_placeholder_1%
!model_3_rnn_3_while_placeholder_2%
!model_3_rnn_3_while_placeholder_3:
6model_3_rnn_3_while_less_model_3_rnn_3_strided_slice_1S
Omodel_3_rnn_3_while_model_3_rnn_3_while_cond_126270790___redundant_placeholder0S
Omodel_3_rnn_3_while_model_3_rnn_3_while_cond_126270790___redundant_placeholder1S
Omodel_3_rnn_3_while_model_3_rnn_3_while_cond_126270790___redundant_placeholder2S
Omodel_3_rnn_3_while_model_3_rnn_3_while_cond_126270790___redundant_placeholder3 
model_3_rnn_3_while_identity

model_3/rnn_3/while/LessLessmodel_3_rnn_3_while_placeholder6model_3_rnn_3_while_less_model_3_rnn_3_strided_slice_1*
T0*
_output_shapes
: g
model_3/rnn_3/while/IdentityIdentitymodel_3/rnn_3/while/Less:z:0*
T0
*
_output_shapes
: "E
model_3_rnn_3_while_identity%model_3/rnn_3/while/Identity:output:0*(
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
Ì
Û
0__inference_sequential_3_layer_call_fn_126271053
dense_12_input
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_12_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_3_layer_call_and_return_conditional_losses_126271029s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ12: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
(
_user_specified_namedense_12_input
Ø

,__inference_dense_12_layer_call_fn_126274688

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
:ÿÿÿÿÿÿÿÿÿ1 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_12_layer_call_and_return_conditional_losses_126270926s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ12: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
 
_user_specified_nameinputs
¶8

D__inference_rnn_3_layer_call_and_return_conditional_losses_126271424

inputs(
lstm_cell_3_126271341:	2¸(
lstm_cell_3_126271343:	.¸$
lstm_cell_3_126271345:	¸
identity¢#lstm_cell_3/StatefulPartitionedCall¢while;
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
#lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_3_126271341lstm_cell_3_126271343lstm_cell_3_126271345*
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
J__inference_lstm_cell_3_layer_call_and_return_conditional_losses_126271295n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_3_126271341lstm_cell_3_126271343lstm_cell_3_126271345*
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
while_body_126271355* 
condR
while_cond_126271354*K
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
NoOpNoOp$^lstm_cell_3/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_3/StatefulPartitionedCall#lstm_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ñ
®
B__inference_token_and_position_embedding_3_layer_call_fn_126273417
x
unknown:12
	unknown_0:2
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *f
faR_
]__inference_token_and_position_embedding_3_layer_call_and_return_conditional_losses_126271464s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ1: : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1

_user_specified_namex
¢
©
]__inference_token_and_position_embedding_3_layer_call_and_return_conditional_losses_126273441
x8
&embedding_7_embedding_lookup_126273428:128
&embedding_6_embedding_lookup_126273434:2
identity¢embedding_6/embedding_lookup¢embedding_7/embedding_lookup6
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
:1Þ
embedding_7/embedding_lookupResourceGather&embedding_7_embedding_lookup_126273428range:output:0*
Tindices0*9
_class/
-+loc:@embedding_7/embedding_lookup/126273428*
_output_shapes

:12*
dtype0¼
%embedding_7/embedding_lookup/IdentityIdentity%embedding_7/embedding_lookup:output:0*
T0*9
_class/
-+loc:@embedding_7/embedding_lookup/126273428*
_output_shapes

:12
'embedding_7/embedding_lookup/Identity_1Identity.embedding_7/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:12\
embedding_6/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1ñ
embedding_6/embedding_lookupResourceGather&embedding_6_embedding_lookup_126273434embedding_6/Cast:y:0*
Tindices0*9
_class/
-+loc:@embedding_6/embedding_lookup/126273434*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
dtype0É
%embedding_6/embedding_lookup/IdentityIdentity%embedding_6/embedding_lookup:output:0*
T0*9
_class/
-+loc:@embedding_6/embedding_lookup/126273434*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
'embedding_6/embedding_lookup/Identity_1Identity.embedding_6/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¦
addAddV20embedding_6/embedding_lookup/Identity_1:output:00embedding_7/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Z
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
NoOpNoOp^embedding_6/embedding_lookup^embedding_7/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ1: : 2<
embedding_6/embedding_lookupembedding_6/embedding_lookup2<
embedding_7/embedding_lookupembedding_7/embedding_lookup:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1

_user_specified_namex
º´
®0
"__inference__traced_save_126275033
file_prefix.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableopT
Psavev2_token_and_position_embedding_3_embedding_6_embeddings_read_readvariableopT
Psavev2_token_and_position_embedding_3_embedding_7_embeddings_read_readvariableopX
Tsavev2_transformer_encoder_3_multi_head_attention_3_query_kernel_read_readvariableopV
Rsavev2_transformer_encoder_3_multi_head_attention_3_query_bias_read_readvariableopV
Rsavev2_transformer_encoder_3_multi_head_attention_3_key_kernel_read_readvariableopT
Psavev2_transformer_encoder_3_multi_head_attention_3_key_bias_read_readvariableopX
Tsavev2_transformer_encoder_3_multi_head_attention_3_value_kernel_read_readvariableopV
Rsavev2_transformer_encoder_3_multi_head_attention_3_value_bias_read_readvariableopc
_savev2_transformer_encoder_3_multi_head_attention_3_attention_output_kernel_read_readvariableopa
]savev2_transformer_encoder_3_multi_head_attention_3_attention_output_bias_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableopP
Lsavev2_transformer_encoder_3_layer_normalization_6_gamma_read_readvariableopO
Ksavev2_transformer_encoder_3_layer_normalization_6_beta_read_readvariableopP
Lsavev2_transformer_encoder_3_layer_normalization_7_gamma_read_readvariableopO
Ksavev2_transformer_encoder_3_layer_normalization_7_beta_read_readvariableop7
3savev2_rnn_3_lstm_cell_3_kernel_read_readvariableopA
=savev2_rnn_3_lstm_cell_3_recurrent_kernel_read_readvariableop5
1savev2_rnn_3_lstm_cell_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_14_kernel_m_read_readvariableop3
/savev2_adam_dense_14_bias_m_read_readvariableop5
1savev2_adam_dense_15_kernel_m_read_readvariableop3
/savev2_adam_dense_15_bias_m_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_3_embedding_6_embeddings_m_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_3_embedding_7_embeddings_m_read_readvariableop_
[savev2_adam_transformer_encoder_3_multi_head_attention_3_query_kernel_m_read_readvariableop]
Ysavev2_adam_transformer_encoder_3_multi_head_attention_3_query_bias_m_read_readvariableop]
Ysavev2_adam_transformer_encoder_3_multi_head_attention_3_key_kernel_m_read_readvariableop[
Wsavev2_adam_transformer_encoder_3_multi_head_attention_3_key_bias_m_read_readvariableop_
[savev2_adam_transformer_encoder_3_multi_head_attention_3_value_kernel_m_read_readvariableop]
Ysavev2_adam_transformer_encoder_3_multi_head_attention_3_value_bias_m_read_readvariableopj
fsavev2_adam_transformer_encoder_3_multi_head_attention_3_attention_output_kernel_m_read_readvariableoph
dsavev2_adam_transformer_encoder_3_multi_head_attention_3_attention_output_bias_m_read_readvariableop5
1savev2_adam_dense_12_kernel_m_read_readvariableop3
/savev2_adam_dense_12_bias_m_read_readvariableop5
1savev2_adam_dense_13_kernel_m_read_readvariableop3
/savev2_adam_dense_13_bias_m_read_readvariableopW
Ssavev2_adam_transformer_encoder_3_layer_normalization_6_gamma_m_read_readvariableopV
Rsavev2_adam_transformer_encoder_3_layer_normalization_6_beta_m_read_readvariableopW
Ssavev2_adam_transformer_encoder_3_layer_normalization_7_gamma_m_read_readvariableopV
Rsavev2_adam_transformer_encoder_3_layer_normalization_7_beta_m_read_readvariableop>
:savev2_adam_rnn_3_lstm_cell_3_kernel_m_read_readvariableopH
Dsavev2_adam_rnn_3_lstm_cell_3_recurrent_kernel_m_read_readvariableop<
8savev2_adam_rnn_3_lstm_cell_3_bias_m_read_readvariableop5
1savev2_adam_dense_14_kernel_v_read_readvariableop3
/savev2_adam_dense_14_bias_v_read_readvariableop5
1savev2_adam_dense_15_kernel_v_read_readvariableop3
/savev2_adam_dense_15_bias_v_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_3_embedding_6_embeddings_v_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_3_embedding_7_embeddings_v_read_readvariableop_
[savev2_adam_transformer_encoder_3_multi_head_attention_3_query_kernel_v_read_readvariableop]
Ysavev2_adam_transformer_encoder_3_multi_head_attention_3_query_bias_v_read_readvariableop]
Ysavev2_adam_transformer_encoder_3_multi_head_attention_3_key_kernel_v_read_readvariableop[
Wsavev2_adam_transformer_encoder_3_multi_head_attention_3_key_bias_v_read_readvariableop_
[savev2_adam_transformer_encoder_3_multi_head_attention_3_value_kernel_v_read_readvariableop]
Ysavev2_adam_transformer_encoder_3_multi_head_attention_3_value_bias_v_read_readvariableopj
fsavev2_adam_transformer_encoder_3_multi_head_attention_3_attention_output_kernel_v_read_readvariableoph
dsavev2_adam_transformer_encoder_3_multi_head_attention_3_attention_output_bias_v_read_readvariableop5
1savev2_adam_dense_12_kernel_v_read_readvariableop3
/savev2_adam_dense_12_bias_v_read_readvariableop5
1savev2_adam_dense_13_kernel_v_read_readvariableop3
/savev2_adam_dense_13_bias_v_read_readvariableopW
Ssavev2_adam_transformer_encoder_3_layer_normalization_6_gamma_v_read_readvariableopV
Rsavev2_adam_transformer_encoder_3_layer_normalization_6_beta_v_read_readvariableopW
Ssavev2_adam_transformer_encoder_3_layer_normalization_7_gamma_v_read_readvariableopV
Rsavev2_adam_transformer_encoder_3_layer_normalization_7_beta_v_read_readvariableop>
:savev2_adam_rnn_3_lstm_cell_3_kernel_v_read_readvariableopH
Dsavev2_adam_rnn_3_lstm_cell_3_recurrent_kernel_v_read_readvariableop<
8savev2_adam_rnn_3_lstm_cell_3_bias_v_read_readvariableop
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
valueµB²UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ó.
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableopPsavev2_token_and_position_embedding_3_embedding_6_embeddings_read_readvariableopPsavev2_token_and_position_embedding_3_embedding_7_embeddings_read_readvariableopTsavev2_transformer_encoder_3_multi_head_attention_3_query_kernel_read_readvariableopRsavev2_transformer_encoder_3_multi_head_attention_3_query_bias_read_readvariableopRsavev2_transformer_encoder_3_multi_head_attention_3_key_kernel_read_readvariableopPsavev2_transformer_encoder_3_multi_head_attention_3_key_bias_read_readvariableopTsavev2_transformer_encoder_3_multi_head_attention_3_value_kernel_read_readvariableopRsavev2_transformer_encoder_3_multi_head_attention_3_value_bias_read_readvariableop_savev2_transformer_encoder_3_multi_head_attention_3_attention_output_kernel_read_readvariableop]savev2_transformer_encoder_3_multi_head_attention_3_attention_output_bias_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableopLsavev2_transformer_encoder_3_layer_normalization_6_gamma_read_readvariableopKsavev2_transformer_encoder_3_layer_normalization_6_beta_read_readvariableopLsavev2_transformer_encoder_3_layer_normalization_7_gamma_read_readvariableopKsavev2_transformer_encoder_3_layer_normalization_7_beta_read_readvariableop3savev2_rnn_3_lstm_cell_3_kernel_read_readvariableop=savev2_rnn_3_lstm_cell_3_recurrent_kernel_read_readvariableop1savev2_rnn_3_lstm_cell_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_14_kernel_m_read_readvariableop/savev2_adam_dense_14_bias_m_read_readvariableop1savev2_adam_dense_15_kernel_m_read_readvariableop/savev2_adam_dense_15_bias_m_read_readvariableopWsavev2_adam_token_and_position_embedding_3_embedding_6_embeddings_m_read_readvariableopWsavev2_adam_token_and_position_embedding_3_embedding_7_embeddings_m_read_readvariableop[savev2_adam_transformer_encoder_3_multi_head_attention_3_query_kernel_m_read_readvariableopYsavev2_adam_transformer_encoder_3_multi_head_attention_3_query_bias_m_read_readvariableopYsavev2_adam_transformer_encoder_3_multi_head_attention_3_key_kernel_m_read_readvariableopWsavev2_adam_transformer_encoder_3_multi_head_attention_3_key_bias_m_read_readvariableop[savev2_adam_transformer_encoder_3_multi_head_attention_3_value_kernel_m_read_readvariableopYsavev2_adam_transformer_encoder_3_multi_head_attention_3_value_bias_m_read_readvariableopfsavev2_adam_transformer_encoder_3_multi_head_attention_3_attention_output_kernel_m_read_readvariableopdsavev2_adam_transformer_encoder_3_multi_head_attention_3_attention_output_bias_m_read_readvariableop1savev2_adam_dense_12_kernel_m_read_readvariableop/savev2_adam_dense_12_bias_m_read_readvariableop1savev2_adam_dense_13_kernel_m_read_readvariableop/savev2_adam_dense_13_bias_m_read_readvariableopSsavev2_adam_transformer_encoder_3_layer_normalization_6_gamma_m_read_readvariableopRsavev2_adam_transformer_encoder_3_layer_normalization_6_beta_m_read_readvariableopSsavev2_adam_transformer_encoder_3_layer_normalization_7_gamma_m_read_readvariableopRsavev2_adam_transformer_encoder_3_layer_normalization_7_beta_m_read_readvariableop:savev2_adam_rnn_3_lstm_cell_3_kernel_m_read_readvariableopDsavev2_adam_rnn_3_lstm_cell_3_recurrent_kernel_m_read_readvariableop8savev2_adam_rnn_3_lstm_cell_3_bias_m_read_readvariableop1savev2_adam_dense_14_kernel_v_read_readvariableop/savev2_adam_dense_14_bias_v_read_readvariableop1savev2_adam_dense_15_kernel_v_read_readvariableop/savev2_adam_dense_15_bias_v_read_readvariableopWsavev2_adam_token_and_position_embedding_3_embedding_6_embeddings_v_read_readvariableopWsavev2_adam_token_and_position_embedding_3_embedding_7_embeddings_v_read_readvariableop[savev2_adam_transformer_encoder_3_multi_head_attention_3_query_kernel_v_read_readvariableopYsavev2_adam_transformer_encoder_3_multi_head_attention_3_query_bias_v_read_readvariableopYsavev2_adam_transformer_encoder_3_multi_head_attention_3_key_kernel_v_read_readvariableopWsavev2_adam_transformer_encoder_3_multi_head_attention_3_key_bias_v_read_readvariableop[savev2_adam_transformer_encoder_3_multi_head_attention_3_value_kernel_v_read_readvariableopYsavev2_adam_transformer_encoder_3_multi_head_attention_3_value_bias_v_read_readvariableopfsavev2_adam_transformer_encoder_3_multi_head_attention_3_attention_output_kernel_v_read_readvariableopdsavev2_adam_transformer_encoder_3_multi_head_attention_3_attention_output_bias_v_read_readvariableop1savev2_adam_dense_12_kernel_v_read_readvariableop/savev2_adam_dense_12_bias_v_read_readvariableop1savev2_adam_dense_13_kernel_v_read_readvariableop/savev2_adam_dense_13_bias_v_read_readvariableopSsavev2_adam_transformer_encoder_3_layer_normalization_6_gamma_v_read_readvariableopRsavev2_adam_transformer_encoder_3_layer_normalization_6_beta_v_read_readvariableopSsavev2_adam_transformer_encoder_3_layer_normalization_7_gamma_v_read_readvariableopRsavev2_adam_transformer_encoder_3_layer_normalization_7_beta_v_read_readvariableop:savev2_adam_rnn_3_lstm_cell_3_kernel_v_read_readvariableopDsavev2_adam_rnn_3_lstm_cell_3_recurrent_kernel_v_read_readvariableop8savev2_adam_rnn_3_lstm_cell_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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

identity_1Identity_1:output:0*Ú
_input_shapesÈ
Å: :..:.:.::2:12:22:2:22:2:22:2:22:2:2 : : 2:2:2:2:2:2:	2¸:	.¸:¸: : : : : : : : : :..:.:.::2:12:22:2:22:2:22:2:22:2:2 : : 2:2:2:2:2:2:	2¸:	.¸:¸:..:.:.::2:12:22:2:22:2:22:2:22:2:2 : : 2:2:2:2:2:2:	2¸:	.¸:¸: 2(
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
::$ 

_output_shapes

:2:$ 

_output_shapes

:12:($
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
::$' 

_output_shapes

:2:$( 

_output_shapes

:12:()$
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
::$@ 

_output_shapes

:2:$A 

_output_shapes

:12:(B$
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
Ó8
Ê
while_body_126273886
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_3_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_3_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_3_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_3_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_3_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_3_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_3/BiasAdd/ReadVariableOp¢'while/lstm_cell_3/MatMul/ReadVariableOp¢)while/lstm_cell_3/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/mulMulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_3/TanhTanh while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul:z:0while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_3/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_3/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 
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
Î
þ
G__inference_dense_13_layer_call_and_return_conditional_losses_126270962

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
:ÿÿÿÿÿÿÿÿÿ1 
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
:ÿÿÿÿÿÿÿÿÿ12r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ1 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 
 
_user_specified_nameinputs
èá
ðA
%__inference__traced_restore_126275295
file_prefix2
 assignvariableop_dense_14_kernel:...
 assignvariableop_1_dense_14_bias:.4
"assignvariableop_2_dense_15_kernel:..
 assignvariableop_3_dense_15_bias:Z
Hassignvariableop_4_token_and_position_embedding_3_embedding_6_embeddings:2Z
Hassignvariableop_5_token_and_position_embedding_3_embedding_7_embeddings:12b
Lassignvariableop_6_transformer_encoder_3_multi_head_attention_3_query_kernel:22\
Jassignvariableop_7_transformer_encoder_3_multi_head_attention_3_query_bias:2`
Jassignvariableop_8_transformer_encoder_3_multi_head_attention_3_key_kernel:22Z
Hassignvariableop_9_transformer_encoder_3_multi_head_attention_3_key_bias:2c
Massignvariableop_10_transformer_encoder_3_multi_head_attention_3_value_kernel:22]
Kassignvariableop_11_transformer_encoder_3_multi_head_attention_3_value_bias:2n
Xassignvariableop_12_transformer_encoder_3_multi_head_attention_3_attention_output_kernel:22d
Vassignvariableop_13_transformer_encoder_3_multi_head_attention_3_attention_output_bias:25
#assignvariableop_14_dense_12_kernel:2 /
!assignvariableop_15_dense_12_bias: 5
#assignvariableop_16_dense_13_kernel: 2/
!assignvariableop_17_dense_13_bias:2S
Eassignvariableop_18_transformer_encoder_3_layer_normalization_6_gamma:2R
Dassignvariableop_19_transformer_encoder_3_layer_normalization_6_beta:2S
Eassignvariableop_20_transformer_encoder_3_layer_normalization_7_gamma:2R
Dassignvariableop_21_transformer_encoder_3_layer_normalization_7_beta:2?
,assignvariableop_22_rnn_3_lstm_cell_3_kernel:	2¸I
6assignvariableop_23_rnn_3_lstm_cell_3_recurrent_kernel:	.¸9
*assignvariableop_24_rnn_3_lstm_cell_3_bias:	¸'
assignvariableop_25_adam_iter:	 )
assignvariableop_26_adam_beta_1: )
assignvariableop_27_adam_beta_2: (
assignvariableop_28_adam_decay: 0
&assignvariableop_29_adam_learning_rate: %
assignvariableop_30_total_1: %
assignvariableop_31_count_1: #
assignvariableop_32_total: #
assignvariableop_33_count: <
*assignvariableop_34_adam_dense_14_kernel_m:..6
(assignvariableop_35_adam_dense_14_bias_m:.<
*assignvariableop_36_adam_dense_15_kernel_m:.6
(assignvariableop_37_adam_dense_15_bias_m:b
Passignvariableop_38_adam_token_and_position_embedding_3_embedding_6_embeddings_m:2b
Passignvariableop_39_adam_token_and_position_embedding_3_embedding_7_embeddings_m:12j
Tassignvariableop_40_adam_transformer_encoder_3_multi_head_attention_3_query_kernel_m:22d
Rassignvariableop_41_adam_transformer_encoder_3_multi_head_attention_3_query_bias_m:2h
Rassignvariableop_42_adam_transformer_encoder_3_multi_head_attention_3_key_kernel_m:22b
Passignvariableop_43_adam_transformer_encoder_3_multi_head_attention_3_key_bias_m:2j
Tassignvariableop_44_adam_transformer_encoder_3_multi_head_attention_3_value_kernel_m:22d
Rassignvariableop_45_adam_transformer_encoder_3_multi_head_attention_3_value_bias_m:2u
_assignvariableop_46_adam_transformer_encoder_3_multi_head_attention_3_attention_output_kernel_m:22k
]assignvariableop_47_adam_transformer_encoder_3_multi_head_attention_3_attention_output_bias_m:2<
*assignvariableop_48_adam_dense_12_kernel_m:2 6
(assignvariableop_49_adam_dense_12_bias_m: <
*assignvariableop_50_adam_dense_13_kernel_m: 26
(assignvariableop_51_adam_dense_13_bias_m:2Z
Lassignvariableop_52_adam_transformer_encoder_3_layer_normalization_6_gamma_m:2Y
Kassignvariableop_53_adam_transformer_encoder_3_layer_normalization_6_beta_m:2Z
Lassignvariableop_54_adam_transformer_encoder_3_layer_normalization_7_gamma_m:2Y
Kassignvariableop_55_adam_transformer_encoder_3_layer_normalization_7_beta_m:2F
3assignvariableop_56_adam_rnn_3_lstm_cell_3_kernel_m:	2¸P
=assignvariableop_57_adam_rnn_3_lstm_cell_3_recurrent_kernel_m:	.¸@
1assignvariableop_58_adam_rnn_3_lstm_cell_3_bias_m:	¸<
*assignvariableop_59_adam_dense_14_kernel_v:..6
(assignvariableop_60_adam_dense_14_bias_v:.<
*assignvariableop_61_adam_dense_15_kernel_v:.6
(assignvariableop_62_adam_dense_15_bias_v:b
Passignvariableop_63_adam_token_and_position_embedding_3_embedding_6_embeddings_v:2b
Passignvariableop_64_adam_token_and_position_embedding_3_embedding_7_embeddings_v:12j
Tassignvariableop_65_adam_transformer_encoder_3_multi_head_attention_3_query_kernel_v:22d
Rassignvariableop_66_adam_transformer_encoder_3_multi_head_attention_3_query_bias_v:2h
Rassignvariableop_67_adam_transformer_encoder_3_multi_head_attention_3_key_kernel_v:22b
Passignvariableop_68_adam_transformer_encoder_3_multi_head_attention_3_key_bias_v:2j
Tassignvariableop_69_adam_transformer_encoder_3_multi_head_attention_3_value_kernel_v:22d
Rassignvariableop_70_adam_transformer_encoder_3_multi_head_attention_3_value_bias_v:2u
_assignvariableop_71_adam_transformer_encoder_3_multi_head_attention_3_attention_output_kernel_v:22k
]assignvariableop_72_adam_transformer_encoder_3_multi_head_attention_3_attention_output_bias_v:2<
*assignvariableop_73_adam_dense_12_kernel_v:2 6
(assignvariableop_74_adam_dense_12_bias_v: <
*assignvariableop_75_adam_dense_13_kernel_v: 26
(assignvariableop_76_adam_dense_13_bias_v:2Z
Lassignvariableop_77_adam_transformer_encoder_3_layer_normalization_6_gamma_v:2Y
Kassignvariableop_78_adam_transformer_encoder_3_layer_normalization_6_beta_v:2Z
Lassignvariableop_79_adam_transformer_encoder_3_layer_normalization_7_gamma_v:2Y
Kassignvariableop_80_adam_transformer_encoder_3_layer_normalization_7_beta_v:2F
3assignvariableop_81_adam_rnn_3_lstm_cell_3_kernel_v:	2¸P
=assignvariableop_82_adam_rnn_3_lstm_cell_3_recurrent_kernel_v:	.¸@
1assignvariableop_83_adam_rnn_3_lstm_cell_3_bias_v:	¸
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
AssignVariableOpAssignVariableOp assignvariableop_dense_14_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_14_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_15_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_15_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_4AssignVariableOpHassignvariableop_4_token_and_position_embedding_3_embedding_6_embeddingsIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_5AssignVariableOpHassignvariableop_5_token_and_position_embedding_3_embedding_7_embeddingsIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_6AssignVariableOpLassignvariableop_6_transformer_encoder_3_multi_head_attention_3_query_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_7AssignVariableOpJassignvariableop_7_transformer_encoder_3_multi_head_attention_3_query_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_8AssignVariableOpJassignvariableop_8_transformer_encoder_3_multi_head_attention_3_key_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_9AssignVariableOpHassignvariableop_9_transformer_encoder_3_multi_head_attention_3_key_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:¾
AssignVariableOp_10AssignVariableOpMassignvariableop_10_transformer_encoder_3_multi_head_attention_3_value_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_11AssignVariableOpKassignvariableop_11_transformer_encoder_3_multi_head_attention_3_value_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_12AssignVariableOpXassignvariableop_12_transformer_encoder_3_multi_head_attention_3_attention_output_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ç
AssignVariableOp_13AssignVariableOpVassignvariableop_13_transformer_encoder_3_multi_head_attention_3_attention_output_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_12_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_12_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp#assignvariableop_16_dense_13_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp!assignvariableop_17_dense_13_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_18AssignVariableOpEassignvariableop_18_transformer_encoder_3_layer_normalization_6_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_19AssignVariableOpDassignvariableop_19_transformer_encoder_3_layer_normalization_6_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_20AssignVariableOpEassignvariableop_20_transformer_encoder_3_layer_normalization_7_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_21AssignVariableOpDassignvariableop_21_transformer_encoder_3_layer_normalization_7_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp,assignvariableop_22_rnn_3_lstm_cell_3_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_23AssignVariableOp6assignvariableop_23_rnn_3_lstm_cell_3_recurrent_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp*assignvariableop_24_rnn_3_lstm_cell_3_biasIdentity_24:output:0"/device:CPU:0*
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
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_dense_14_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_dense_14_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_dense_15_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_dense_15_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_38AssignVariableOpPassignvariableop_38_adam_token_and_position_embedding_3_embedding_6_embeddings_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_39AssignVariableOpPassignvariableop_39_adam_token_and_position_embedding_3_embedding_7_embeddings_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_40AssignVariableOpTassignvariableop_40_adam_transformer_encoder_3_multi_head_attention_3_query_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_41AssignVariableOpRassignvariableop_41_adam_transformer_encoder_3_multi_head_attention_3_query_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_42AssignVariableOpRassignvariableop_42_adam_transformer_encoder_3_multi_head_attention_3_key_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_43AssignVariableOpPassignvariableop_43_adam_transformer_encoder_3_multi_head_attention_3_key_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_44AssignVariableOpTassignvariableop_44_adam_transformer_encoder_3_multi_head_attention_3_value_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_45AssignVariableOpRassignvariableop_45_adam_transformer_encoder_3_multi_head_attention_3_value_bias_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ð
AssignVariableOp_46AssignVariableOp_assignvariableop_46_adam_transformer_encoder_3_multi_head_attention_3_attention_output_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Î
AssignVariableOp_47AssignVariableOp]assignvariableop_47_adam_transformer_encoder_3_multi_head_attention_3_attention_output_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp*assignvariableop_48_adam_dense_12_kernel_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_dense_12_bias_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp*assignvariableop_50_adam_dense_13_kernel_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp(assignvariableop_51_adam_dense_13_bias_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_52AssignVariableOpLassignvariableop_52_adam_transformer_encoder_3_layer_normalization_6_gamma_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_53AssignVariableOpKassignvariableop_53_adam_transformer_encoder_3_layer_normalization_6_beta_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_54AssignVariableOpLassignvariableop_54_adam_transformer_encoder_3_layer_normalization_7_gamma_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_55AssignVariableOpKassignvariableop_55_adam_transformer_encoder_3_layer_normalization_7_beta_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_56AssignVariableOp3assignvariableop_56_adam_rnn_3_lstm_cell_3_kernel_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_57AssignVariableOp=assignvariableop_57_adam_rnn_3_lstm_cell_3_recurrent_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_58AssignVariableOp1assignvariableop_58_adam_rnn_3_lstm_cell_3_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_dense_14_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_dense_14_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp*assignvariableop_61_adam_dense_15_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp(assignvariableop_62_adam_dense_15_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_63AssignVariableOpPassignvariableop_63_adam_token_and_position_embedding_3_embedding_6_embeddings_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_64AssignVariableOpPassignvariableop_64_adam_token_and_position_embedding_3_embedding_7_embeddings_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_65AssignVariableOpTassignvariableop_65_adam_transformer_encoder_3_multi_head_attention_3_query_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_66AssignVariableOpRassignvariableop_66_adam_transformer_encoder_3_multi_head_attention_3_query_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_67AssignVariableOpRassignvariableop_67_adam_transformer_encoder_3_multi_head_attention_3_key_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_68AssignVariableOpPassignvariableop_68_adam_transformer_encoder_3_multi_head_attention_3_key_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_69AssignVariableOpTassignvariableop_69_adam_transformer_encoder_3_multi_head_attention_3_value_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_70AssignVariableOpRassignvariableop_70_adam_transformer_encoder_3_multi_head_attention_3_value_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:Ð
AssignVariableOp_71AssignVariableOp_assignvariableop_71_adam_transformer_encoder_3_multi_head_attention_3_attention_output_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:Î
AssignVariableOp_72AssignVariableOp]assignvariableop_72_adam_transformer_encoder_3_multi_head_attention_3_attention_output_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_73AssignVariableOp*assignvariableop_73_adam_dense_12_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_74AssignVariableOp(assignvariableop_74_adam_dense_12_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_75AssignVariableOp*assignvariableop_75_adam_dense_13_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_76AssignVariableOp(assignvariableop_76_adam_dense_13_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_77AssignVariableOpLassignvariableop_77_adam_transformer_encoder_3_layer_normalization_6_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_78AssignVariableOpKassignvariableop_78_adam_transformer_encoder_3_layer_normalization_6_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_79AssignVariableOpLassignvariableop_79_adam_transformer_encoder_3_layer_normalization_7_gamma_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_80AssignVariableOpKassignvariableop_80_adam_transformer_encoder_3_layer_normalization_7_beta_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_81AssignVariableOp3assignvariableop_81_adam_rnn_3_lstm_cell_3_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_82AssignVariableOp=assignvariableop_82_adam_rnn_3_lstm_cell_3_recurrent_kernel_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_83AssignVariableOp1assignvariableop_83_adam_rnn_3_lstm_cell_3_bias_vIdentity_83:output:0"/device:CPU:0*
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
¥I

"model_3_rnn_3_while_body_1262707918
4model_3_rnn_3_while_model_3_rnn_3_while_loop_counter>
:model_3_rnn_3_while_model_3_rnn_3_while_maximum_iterations#
model_3_rnn_3_while_placeholder%
!model_3_rnn_3_while_placeholder_1%
!model_3_rnn_3_while_placeholder_2%
!model_3_rnn_3_while_placeholder_37
3model_3_rnn_3_while_model_3_rnn_3_strided_slice_1_0s
omodel_3_rnn_3_while_tensorarrayv2read_tensorlistgetitem_model_3_rnn_3_tensorarrayunstack_tensorlistfromtensor_0S
@model_3_rnn_3_while_lstm_cell_3_matmul_readvariableop_resource_0:	2¸U
Bmodel_3_rnn_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0:	.¸P
Amodel_3_rnn_3_while_lstm_cell_3_biasadd_readvariableop_resource_0:	¸ 
model_3_rnn_3_while_identity"
model_3_rnn_3_while_identity_1"
model_3_rnn_3_while_identity_2"
model_3_rnn_3_while_identity_3"
model_3_rnn_3_while_identity_4"
model_3_rnn_3_while_identity_55
1model_3_rnn_3_while_model_3_rnn_3_strided_slice_1q
mmodel_3_rnn_3_while_tensorarrayv2read_tensorlistgetitem_model_3_rnn_3_tensorarrayunstack_tensorlistfromtensorQ
>model_3_rnn_3_while_lstm_cell_3_matmul_readvariableop_resource:	2¸S
@model_3_rnn_3_while_lstm_cell_3_matmul_1_readvariableop_resource:	.¸N
?model_3_rnn_3_while_lstm_cell_3_biasadd_readvariableop_resource:	¸¢6model_3/rnn_3/while/lstm_cell_3/BiasAdd/ReadVariableOp¢5model_3/rnn_3/while/lstm_cell_3/MatMul/ReadVariableOp¢7model_3/rnn_3/while/lstm_cell_3/MatMul_1/ReadVariableOp
Emodel_3/rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ì
7model_3/rnn_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemomodel_3_rnn_3_while_tensorarrayv2read_tensorlistgetitem_model_3_rnn_3_tensorarrayunstack_tensorlistfromtensor_0model_3_rnn_3_while_placeholderNmodel_3/rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0·
5model_3/rnn_3/while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp@model_3_rnn_3_while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0â
&model_3/rnn_3/while/lstm_cell_3/MatMulMatMul>model_3/rnn_3/while/TensorArrayV2Read/TensorListGetItem:item:0=model_3/rnn_3/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸»
7model_3/rnn_3/while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOpBmodel_3_rnn_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0É
(model_3/rnn_3/while/lstm_cell_3/MatMul_1MatMul!model_3_rnn_3_while_placeholder_2?model_3/rnn_3/while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸Å
#model_3/rnn_3/while/lstm_cell_3/addAddV20model_3/rnn_3/while/lstm_cell_3/MatMul:product:02model_3/rnn_3/while/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸µ
6model_3/rnn_3/while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOpAmodel_3_rnn_3_while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0Î
'model_3/rnn_3/while/lstm_cell_3/BiasAddBiasAdd'model_3/rnn_3/while/lstm_cell_3/add:z:0>model_3/rnn_3/while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸q
/model_3/rnn_3/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%model_3/rnn_3/while/lstm_cell_3/splitSplit8model_3/rnn_3/while/lstm_cell_3/split/split_dim:output:00model_3/rnn_3/while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_split
'model_3/rnn_3/while/lstm_cell_3/SigmoidSigmoid.model_3/rnn_3/while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
)model_3/rnn_3/while/lstm_cell_3/Sigmoid_1Sigmoid.model_3/rnn_3/while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.®
#model_3/rnn_3/while/lstm_cell_3/mulMul-model_3/rnn_3/while/lstm_cell_3/Sigmoid_1:y:0!model_3_rnn_3_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
$model_3/rnn_3/while/lstm_cell_3/TanhTanh.model_3/rnn_3/while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.µ
%model_3/rnn_3/while/lstm_cell_3/mul_1Mul+model_3/rnn_3/while/lstm_cell_3/Sigmoid:y:0(model_3/rnn_3/while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.´
%model_3/rnn_3/while/lstm_cell_3/add_1AddV2'model_3/rnn_3/while/lstm_cell_3/mul:z:0)model_3/rnn_3/while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
)model_3/rnn_3/while/lstm_cell_3/Sigmoid_2Sigmoid.model_3/rnn_3/while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
&model_3/rnn_3/while/lstm_cell_3/Tanh_1Tanh)model_3/rnn_3/while/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¹
%model_3/rnn_3/while/lstm_cell_3/mul_2Mul-model_3/rnn_3/while/lstm_cell_3/Sigmoid_2:y:0*model_3/rnn_3/while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
>model_3/rnn_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ¤
8model_3/rnn_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!model_3_rnn_3_while_placeholder_1Gmodel_3/rnn_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0)model_3/rnn_3/while/lstm_cell_3/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒ[
model_3/rnn_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
model_3/rnn_3/while/addAddV2model_3_rnn_3_while_placeholder"model_3/rnn_3/while/add/y:output:0*
T0*
_output_shapes
: ]
model_3/rnn_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
model_3/rnn_3/while/add_1AddV24model_3_rnn_3_while_model_3_rnn_3_while_loop_counter$model_3/rnn_3/while/add_1/y:output:0*
T0*
_output_shapes
: 
model_3/rnn_3/while/IdentityIdentitymodel_3/rnn_3/while/add_1:z:0^model_3/rnn_3/while/NoOp*
T0*
_output_shapes
: ¢
model_3/rnn_3/while/Identity_1Identity:model_3_rnn_3_while_model_3_rnn_3_while_maximum_iterations^model_3/rnn_3/while/NoOp*
T0*
_output_shapes
: 
model_3/rnn_3/while/Identity_2Identitymodel_3/rnn_3/while/add:z:0^model_3/rnn_3/while/NoOp*
T0*
_output_shapes
: °
model_3/rnn_3/while/Identity_3IdentityHmodel_3/rnn_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model_3/rnn_3/while/NoOp*
T0*
_output_shapes
: ¢
model_3/rnn_3/while/Identity_4Identity)model_3/rnn_3/while/lstm_cell_3/mul_2:z:0^model_3/rnn_3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¢
model_3/rnn_3/while/Identity_5Identity)model_3/rnn_3/while/lstm_cell_3/add_1:z:0^model_3/rnn_3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
model_3/rnn_3/while/NoOpNoOp7^model_3/rnn_3/while/lstm_cell_3/BiasAdd/ReadVariableOp6^model_3/rnn_3/while/lstm_cell_3/MatMul/ReadVariableOp8^model_3/rnn_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
model_3_rnn_3_while_identity%model_3/rnn_3/while/Identity:output:0"I
model_3_rnn_3_while_identity_1'model_3/rnn_3/while/Identity_1:output:0"I
model_3_rnn_3_while_identity_2'model_3/rnn_3/while/Identity_2:output:0"I
model_3_rnn_3_while_identity_3'model_3/rnn_3/while/Identity_3:output:0"I
model_3_rnn_3_while_identity_4'model_3/rnn_3/while/Identity_4:output:0"I
model_3_rnn_3_while_identity_5'model_3/rnn_3/while/Identity_5:output:0"
?model_3_rnn_3_while_lstm_cell_3_biasadd_readvariableop_resourceAmodel_3_rnn_3_while_lstm_cell_3_biasadd_readvariableop_resource_0"
@model_3_rnn_3_while_lstm_cell_3_matmul_1_readvariableop_resourceBmodel_3_rnn_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0"
>model_3_rnn_3_while_lstm_cell_3_matmul_readvariableop_resource@model_3_rnn_3_while_lstm_cell_3_matmul_readvariableop_resource_0"h
1model_3_rnn_3_while_model_3_rnn_3_strided_slice_13model_3_rnn_3_while_model_3_rnn_3_strided_slice_1_0"à
mmodel_3_rnn_3_while_tensorarrayv2read_tensorlistgetitem_model_3_rnn_3_tensorarrayunstack_tensorlistfromtensoromodel_3_rnn_3_while_tensorarrayv2read_tensorlistgetitem_model_3_rnn_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2p
6model_3/rnn_3/while/lstm_cell_3/BiasAdd/ReadVariableOp6model_3/rnn_3/while/lstm_cell_3/BiasAdd/ReadVariableOp2n
5model_3/rnn_3/while/lstm_cell_3/MatMul/ReadVariableOp5model_3/rnn_3/while/lstm_cell_3/MatMul/ReadVariableOp2r
7model_3/rnn_3/while/lstm_cell_3/MatMul_1/ReadVariableOp7model_3/rnn_3/while/lstm_cell_3/MatMul_1/ReadVariableOp: 
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
while_body_126271355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_3_126271379_0:	2¸0
while_lstm_cell_3_126271381_0:	.¸,
while_lstm_cell_3_126271383_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_3_126271379:	2¸.
while_lstm_cell_3_126271381:	.¸*
while_lstm_cell_3_126271383:	¸¢)while/lstm_cell_3/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0º
)while/lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_3_126271379_0while_lstm_cell_3_126271381_0while_lstm_cell_3_126271383_0*
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
J__inference_lstm_cell_3_layer_call_and_return_conditional_losses_126271295r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:02while/lstm_cell_3/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_3/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/Identity_5Identity2while/lstm_cell_3/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x

while/NoOpNoOp*^while/lstm_cell_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_3_126271379while_lstm_cell_3_126271379_0"<
while_lstm_cell_3_126271381while_lstm_cell_3_126271381_0"<
while_lstm_cell_3_126271383while_lstm_cell_3_126271383_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2V
)while/lstm_cell_3/StatefulPartitionedCall)while/lstm_cell_3/StatefulPartitionedCall: 
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
»
³
T__inference_transformer_encoder_3_layer_call_and_return_conditional_losses_126271597

inputsX
Bmulti_head_attention_3_query_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_3_query_add_readvariableop_resource:2V
@multi_head_attention_3_key_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_3_key_add_readvariableop_resource:2X
Bmulti_head_attention_3_value_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_3_value_add_readvariableop_resource:2c
Mmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resource:22Q
Cmulti_head_attention_3_attention_output_add_readvariableop_resource:2I
;layer_normalization_6_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_6_batchnorm_readvariableop_resource:2I
7sequential_3_dense_12_tensordot_readvariableop_resource:2 C
5sequential_3_dense_12_biasadd_readvariableop_resource: I
7sequential_3_dense_13_tensordot_readvariableop_resource: 2C
5sequential_3_dense_13_biasadd_readvariableop_resource:2I
;layer_normalization_7_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_7_batchnorm_readvariableop_resource:2
identity¢.layer_normalization_6/batchnorm/ReadVariableOp¢2layer_normalization_6/batchnorm/mul/ReadVariableOp¢.layer_normalization_7/batchnorm/ReadVariableOp¢2layer_normalization_7/batchnorm/mul/ReadVariableOp¢:multi_head_attention_3/attention_output/add/ReadVariableOp¢Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_3/key/add/ReadVariableOp¢7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_3/query/add/ReadVariableOp¢9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_3/value/add/ReadVariableOp¢9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp¢,sequential_3/dense_12/BiasAdd/ReadVariableOp¢.sequential_3/dense_12/Tensordot/ReadVariableOp¢,sequential_3/dense_13/BiasAdd/ReadVariableOp¢.sequential_3/dense_13/Tensordot/ReadVariableOpÀ
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_3/query/einsum/EinsumEinsuminputsAmulti_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabc,cde->abde¨
/multi_head_attention_3/query/add/ReadVariableOpReadVariableOp8multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_3/query/addAddV23multi_head_attention_3/query/einsum/Einsum:output:07multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¼
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention_3/key/einsum/EinsumEinsuminputs?multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabc,cde->abde¤
-multi_head_attention_3/key/add/ReadVariableOpReadVariableOp6multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention_3/key/addAddV21multi_head_attention_3/key/einsum/Einsum:output:05multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12À
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_3/value/einsum/EinsumEinsuminputsAmulti_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabc,cde->abde¨
/multi_head_attention_3/value/add/ReadVariableOpReadVariableOp8multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_3/value/addAddV23multi_head_attention_3/value/einsum/Einsum:output:07multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12a
multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>¨
multi_head_attention_3/MulMul$multi_head_attention_3/query/add:z:0%multi_head_attention_3/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ô
$multi_head_attention_3/einsum/EinsumEinsum"multi_head_attention_3/key/add:z:0multi_head_attention_3/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11*
equationaecd,abcd->acbe
&multi_head_attention_3/softmax/SoftmaxSoftmax-multi_head_attention_3/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11
'multi_head_attention_3/dropout/IdentityIdentity0multi_head_attention_3/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11ê
&multi_head_attention_3/einsum_1/EinsumEinsum0multi_head_attention_3/dropout/Identity:output:0$multi_head_attention_3/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
5multi_head_attention_3/attention_output/einsum/EinsumEinsum/multi_head_attention_3/einsum_1/Einsum:output:0Lmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabcd,cde->abeº
:multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0î
+multi_head_attention_3/attention_output/addAddV2>multi_head_attention_3/attention_output/einsum/Einsum:output:0Bmulti_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
dropout_12/IdentityIdentity/multi_head_attention_3/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12h
addAddV2inputsdropout_12/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12~
4layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¹
"layer_normalization_6/moments/meanMeanadd:z:0=layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(
*layer_normalization_6/moments/StopGradientStopGradient+layer_normalization_6/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1¸
/layer_normalization_6/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
8layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_6/moments/varianceMean3layer_normalization_6/moments/SquaredDifference:z:0Alayer_normalization_6/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(j
%layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_6/batchnorm/addAddV2/layer_normalization_6/moments/variance:output:0.layer_normalization_6/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
%layer_normalization_6/batchnorm/RsqrtRsqrt'layer_normalization_6/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1ª
2layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_6/batchnorm/mulMul)layer_normalization_6/batchnorm/Rsqrt:y:0:layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
%layer_normalization_6/batchnorm/mul_1Muladd:z:0'layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¸
%layer_normalization_6/batchnorm/mul_2Mul+layer_normalization_6/moments/mean:output:0'layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¢
.layer_normalization_6/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_6/batchnorm/subSub6layer_normalization_6/batchnorm/ReadVariableOp:value:0)layer_normalization_6/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¸
%layer_normalization_6/batchnorm/add_1AddV2)layer_normalization_6/batchnorm/mul_1:z:0'layer_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¦
.sequential_3/dense_12/Tensordot/ReadVariableOpReadVariableOp7sequential_3_dense_12_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0n
$sequential_3/dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_3/dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
%sequential_3/dense_12/Tensordot/ShapeShape)layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:o
-sequential_3/dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_3/dense_12/Tensordot/GatherV2GatherV2.sequential_3/dense_12/Tensordot/Shape:output:0-sequential_3/dense_12/Tensordot/free:output:06sequential_3/dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_3/dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_3/dense_12/Tensordot/GatherV2_1GatherV2.sequential_3/dense_12/Tensordot/Shape:output:0-sequential_3/dense_12/Tensordot/axes:output:08sequential_3/dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_3/dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_3/dense_12/Tensordot/ProdProd1sequential_3/dense_12/Tensordot/GatherV2:output:0.sequential_3/dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_3/dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_3/dense_12/Tensordot/Prod_1Prod3sequential_3/dense_12/Tensordot/GatherV2_1:output:00sequential_3/dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_3/dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_3/dense_12/Tensordot/concatConcatV2-sequential_3/dense_12/Tensordot/free:output:0-sequential_3/dense_12/Tensordot/axes:output:04sequential_3/dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_3/dense_12/Tensordot/stackPack-sequential_3/dense_12/Tensordot/Prod:output:0/sequential_3/dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:È
)sequential_3/dense_12/Tensordot/transpose	Transpose)layer_normalization_6/batchnorm/add_1:z:0/sequential_3/dense_12/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ì
'sequential_3/dense_12/Tensordot/ReshapeReshape-sequential_3/dense_12/Tensordot/transpose:y:0.sequential_3/dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
&sequential_3/dense_12/Tensordot/MatMulMatMul0sequential_3/dense_12/Tensordot/Reshape:output:06sequential_3/dense_12/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
'sequential_3/dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: o
-sequential_3/dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_3/dense_12/Tensordot/concat_1ConcatV21sequential_3/dense_12/Tensordot/GatherV2:output:00sequential_3/dense_12/Tensordot/Const_2:output:06sequential_3/dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Å
sequential_3/dense_12/TensordotReshape0sequential_3/dense_12/Tensordot/MatMul:product:01sequential_3/dense_12/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 
,sequential_3/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¾
sequential_3/dense_12/BiasAddBiasAdd(sequential_3/dense_12/Tensordot:output:04sequential_3/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 
sequential_3/dense_12/ReluRelu&sequential_3/dense_12/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 ¦
.sequential_3/dense_13/Tensordot/ReadVariableOpReadVariableOp7sequential_3_dense_13_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0n
$sequential_3/dense_13/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_3/dense_13/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_3/dense_13/Tensordot/ShapeShape(sequential_3/dense_12/Relu:activations:0*
T0*
_output_shapes
:o
-sequential_3/dense_13/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_3/dense_13/Tensordot/GatherV2GatherV2.sequential_3/dense_13/Tensordot/Shape:output:0-sequential_3/dense_13/Tensordot/free:output:06sequential_3/dense_13/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_3/dense_13/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_3/dense_13/Tensordot/GatherV2_1GatherV2.sequential_3/dense_13/Tensordot/Shape:output:0-sequential_3/dense_13/Tensordot/axes:output:08sequential_3/dense_13/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_3/dense_13/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_3/dense_13/Tensordot/ProdProd1sequential_3/dense_13/Tensordot/GatherV2:output:0.sequential_3/dense_13/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_3/dense_13/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_3/dense_13/Tensordot/Prod_1Prod3sequential_3/dense_13/Tensordot/GatherV2_1:output:00sequential_3/dense_13/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_3/dense_13/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_3/dense_13/Tensordot/concatConcatV2-sequential_3/dense_13/Tensordot/free:output:0-sequential_3/dense_13/Tensordot/axes:output:04sequential_3/dense_13/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_3/dense_13/Tensordot/stackPack-sequential_3/dense_13/Tensordot/Prod:output:0/sequential_3/dense_13/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ç
)sequential_3/dense_13/Tensordot/transpose	Transpose(sequential_3/dense_12/Relu:activations:0/sequential_3/dense_13/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 Ì
'sequential_3/dense_13/Tensordot/ReshapeReshape-sequential_3/dense_13/Tensordot/transpose:y:0.sequential_3/dense_13/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
&sequential_3/dense_13/Tensordot/MatMulMatMul0sequential_3/dense_13/Tensordot/Reshape:output:06sequential_3/dense_13/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
'sequential_3/dense_13/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2o
-sequential_3/dense_13/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_3/dense_13/Tensordot/concat_1ConcatV21sequential_3/dense_13/Tensordot/GatherV2:output:00sequential_3/dense_13/Tensordot/Const_2:output:06sequential_3/dense_13/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Å
sequential_3/dense_13/TensordotReshape0sequential_3/dense_13/Tensordot/MatMul:product:01sequential_3/dense_13/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
,sequential_3/dense_13/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_13_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0¾
sequential_3/dense_13/BiasAddBiasAdd(sequential_3/dense_13/Tensordot:output:04sequential_3/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12}
dropout_13/IdentityIdentity&sequential_3/dense_13/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
add_1AddV2)layer_normalization_6/batchnorm/add_1:z:0dropout_13/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12~
4layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
"layer_normalization_7/moments/meanMean	add_1:z:0=layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(
*layer_normalization_7/moments/StopGradientStopGradient+layer_normalization_7/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1º
/layer_normalization_7/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
8layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_7/moments/varianceMean3layer_normalization_7/moments/SquaredDifference:z:0Alayer_normalization_7/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(j
%layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_7/batchnorm/addAddV2/layer_normalization_7/moments/variance:output:0.layer_normalization_7/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
%layer_normalization_7/batchnorm/RsqrtRsqrt'layer_normalization_7/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1ª
2layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_7/batchnorm/mulMul)layer_normalization_7/batchnorm/Rsqrt:y:0:layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
%layer_normalization_7/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¸
%layer_normalization_7/batchnorm/mul_2Mul+layer_normalization_7/moments/mean:output:0'layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¢
.layer_normalization_7/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_7/batchnorm/subSub6layer_normalization_7/batchnorm/ReadVariableOp:value:0)layer_normalization_7/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¸
%layer_normalization_7/batchnorm/add_1AddV2)layer_normalization_7/batchnorm/mul_1:z:0'layer_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12|
IdentityIdentity)layer_normalization_7/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
NoOpNoOp/^layer_normalization_6/batchnorm/ReadVariableOp3^layer_normalization_6/batchnorm/mul/ReadVariableOp/^layer_normalization_7/batchnorm/ReadVariableOp3^layer_normalization_7/batchnorm/mul/ReadVariableOp;^multi_head_attention_3/attention_output/add/ReadVariableOpE^multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_3/key/add/ReadVariableOp8^multi_head_attention_3/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/query/add/ReadVariableOp:^multi_head_attention_3/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/value/add/ReadVariableOp:^multi_head_attention_3/value/einsum/Einsum/ReadVariableOp-^sequential_3/dense_12/BiasAdd/ReadVariableOp/^sequential_3/dense_12/Tensordot/ReadVariableOp-^sequential_3/dense_13/BiasAdd/ReadVariableOp/^sequential_3/dense_13/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ12: : : : : : : : : : : : : : : : 2`
.layer_normalization_6/batchnorm/ReadVariableOp.layer_normalization_6/batchnorm/ReadVariableOp2h
2layer_normalization_6/batchnorm/mul/ReadVariableOp2layer_normalization_6/batchnorm/mul/ReadVariableOp2`
.layer_normalization_7/batchnorm/ReadVariableOp.layer_normalization_7/batchnorm/ReadVariableOp2h
2layer_normalization_7/batchnorm/mul/ReadVariableOp2layer_normalization_7/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_3/attention_output/add/ReadVariableOp:multi_head_attention_3/attention_output/add/ReadVariableOp2
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_3/key/add/ReadVariableOp-multi_head_attention_3/key/add/ReadVariableOp2r
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/query/add/ReadVariableOp/multi_head_attention_3/query/add/ReadVariableOp2v
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/value/add/ReadVariableOp/multi_head_attention_3/value/add/ReadVariableOp2v
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2\
,sequential_3/dense_12/BiasAdd/ReadVariableOp,sequential_3/dense_12/BiasAdd/ReadVariableOp2`
.sequential_3/dense_12/Tensordot/ReadVariableOp.sequential_3/dense_12/Tensordot/ReadVariableOp2\
,sequential_3/dense_13/BiasAdd/ReadVariableOp,sequential_3/dense_13/BiasAdd/ReadVariableOp2`
.sequential_3/dense_13/Tensordot/ReadVariableOp.sequential_3/dense_13/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
 
_user_specified_nameinputs
Ã

J__inference_lstm_cell_3_layer_call_and_return_conditional_losses_126271148

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
J

D__inference_rnn_3_layer_call_and_return_conditional_losses_126274258

inputs=
*lstm_cell_3_matmul_readvariableop_resource:	2¸?
,lstm_cell_3_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_3_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_3/BiasAdd/ReadVariableOp¢!lstm_cell_3/MatMul/ReadVariableOp¢#lstm_cell_3/MatMul_1/ReadVariableOp¢while;
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
:1ÿÿÿÿÿÿÿÿÿ2D
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
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_3/mulMullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_3/TanhTanhlstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_3/add_1AddV2lstm_cell_3/mul:z:0lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
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
while_body_126274174* 
condR
while_cond_126274173*K
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
NoOpNoOp#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ12: : : 2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
 
_user_specified_nameinputs

¸
)__inference_rnn_3_layer_call_fn_126273793
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
D__inference_rnn_3_layer_call_and_return_conditional_losses_126271232o
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
Ó8
Ê
while_body_126274318
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_3_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_3_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_3_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_3_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_3_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_3_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_3/BiasAdd/ReadVariableOp¢'while/lstm_cell_3/MatMul/ReadVariableOp¢)while/lstm_cell_3/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/mulMulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_3/TanhTanh while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul:z:0while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_3/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_3/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 
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
Ó8
Ê
while_body_126274030
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_3_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_3_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_3_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_3_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_3_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_3_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_3/BiasAdd/ReadVariableOp¢'while/lstm_cell_3/MatMul/ReadVariableOp¢)while/lstm_cell_3/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/mulMulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_3/TanhTanh while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul:z:0while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_3/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_3/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 
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
È
±
+__inference_model_3_layer_call_fn_126271869
input_4
unknown:12
	unknown_0:2
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
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
F__inference_model_3_layer_call_and_return_conditional_losses_126271816o
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
E:ÿÿÿÿÿÿÿÿÿ1: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
!
_user_specified_name	input_4
Ü
¹
9__inference_transformer_encoder_3_layer_call_fn_126273515

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
:ÿÿÿÿÿÿÿÿÿ12*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transformer_encoder_3_layer_call_and_return_conditional_losses_126272235s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ12: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
 
_user_specified_nameinputs
Ä
Ò
while_cond_126274029
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_126274029___redundant_placeholder07
3while_while_cond_126274029___redundant_placeholder17
3while_while_cond_126274029___redundant_placeholder27
3while_while_cond_126274029___redundant_placeholder3
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
ÞÉ
³
T__inference_transformer_encoder_3_layer_call_and_return_conditional_losses_126272235

inputsX
Bmulti_head_attention_3_query_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_3_query_add_readvariableop_resource:2V
@multi_head_attention_3_key_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_3_key_add_readvariableop_resource:2X
Bmulti_head_attention_3_value_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_3_value_add_readvariableop_resource:2c
Mmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resource:22Q
Cmulti_head_attention_3_attention_output_add_readvariableop_resource:2I
;layer_normalization_6_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_6_batchnorm_readvariableop_resource:2I
7sequential_3_dense_12_tensordot_readvariableop_resource:2 C
5sequential_3_dense_12_biasadd_readvariableop_resource: I
7sequential_3_dense_13_tensordot_readvariableop_resource: 2C
5sequential_3_dense_13_biasadd_readvariableop_resource:2I
;layer_normalization_7_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_7_batchnorm_readvariableop_resource:2
identity¢.layer_normalization_6/batchnorm/ReadVariableOp¢2layer_normalization_6/batchnorm/mul/ReadVariableOp¢.layer_normalization_7/batchnorm/ReadVariableOp¢2layer_normalization_7/batchnorm/mul/ReadVariableOp¢:multi_head_attention_3/attention_output/add/ReadVariableOp¢Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_3/key/add/ReadVariableOp¢7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_3/query/add/ReadVariableOp¢9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_3/value/add/ReadVariableOp¢9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp¢,sequential_3/dense_12/BiasAdd/ReadVariableOp¢.sequential_3/dense_12/Tensordot/ReadVariableOp¢,sequential_3/dense_13/BiasAdd/ReadVariableOp¢.sequential_3/dense_13/Tensordot/ReadVariableOpÀ
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_3/query/einsum/EinsumEinsuminputsAmulti_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabc,cde->abde¨
/multi_head_attention_3/query/add/ReadVariableOpReadVariableOp8multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_3/query/addAddV23multi_head_attention_3/query/einsum/Einsum:output:07multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¼
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention_3/key/einsum/EinsumEinsuminputs?multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabc,cde->abde¤
-multi_head_attention_3/key/add/ReadVariableOpReadVariableOp6multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention_3/key/addAddV21multi_head_attention_3/key/einsum/Einsum:output:05multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12À
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_3/value/einsum/EinsumEinsuminputsAmulti_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabc,cde->abde¨
/multi_head_attention_3/value/add/ReadVariableOpReadVariableOp8multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_3/value/addAddV23multi_head_attention_3/value/einsum/Einsum:output:07multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12a
multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>¨
multi_head_attention_3/MulMul$multi_head_attention_3/query/add:z:0%multi_head_attention_3/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ô
$multi_head_attention_3/einsum/EinsumEinsum"multi_head_attention_3/key/add:z:0multi_head_attention_3/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11*
equationaecd,abcd->acbe
&multi_head_attention_3/softmax/SoftmaxSoftmax-multi_head_attention_3/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11ê
&multi_head_attention_3/einsum_1/EinsumEinsum0multi_head_attention_3/softmax/Softmax:softmax:0$multi_head_attention_3/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
5multi_head_attention_3/attention_output/einsum/EinsumEinsum/multi_head_attention_3/einsum_1/Einsum:output:0Lmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabcd,cde->abeº
:multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0î
+multi_head_attention_3/attention_output/addAddV2>multi_head_attention_3/attention_output/einsum/Einsum:output:0Bmulti_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12]
dropout_12/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @§
dropout_12/dropout/MulMul/multi_head_attention_3/attention_output/add:z:0!dropout_12/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12w
dropout_12/dropout/ShapeShape/multi_head_attention_3/attention_output/add:z:0*
T0*
_output_shapes
:¦
/dropout_12/dropout/random_uniform/RandomUniformRandomUniform!dropout_12/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
dtype0f
!dropout_12/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ë
dropout_12/dropout/GreaterEqualGreaterEqual8dropout_12/dropout/random_uniform/RandomUniform:output:0*dropout_12/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
dropout_12/dropout/CastCast#dropout_12/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
dropout_12/dropout/Mul_1Muldropout_12/dropout/Mul:z:0dropout_12/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12h
addAddV2inputsdropout_12/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12~
4layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¹
"layer_normalization_6/moments/meanMeanadd:z:0=layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(
*layer_normalization_6/moments/StopGradientStopGradient+layer_normalization_6/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1¸
/layer_normalization_6/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
8layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_6/moments/varianceMean3layer_normalization_6/moments/SquaredDifference:z:0Alayer_normalization_6/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(j
%layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_6/batchnorm/addAddV2/layer_normalization_6/moments/variance:output:0.layer_normalization_6/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
%layer_normalization_6/batchnorm/RsqrtRsqrt'layer_normalization_6/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1ª
2layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_6/batchnorm/mulMul)layer_normalization_6/batchnorm/Rsqrt:y:0:layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
%layer_normalization_6/batchnorm/mul_1Muladd:z:0'layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¸
%layer_normalization_6/batchnorm/mul_2Mul+layer_normalization_6/moments/mean:output:0'layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¢
.layer_normalization_6/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_6/batchnorm/subSub6layer_normalization_6/batchnorm/ReadVariableOp:value:0)layer_normalization_6/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¸
%layer_normalization_6/batchnorm/add_1AddV2)layer_normalization_6/batchnorm/mul_1:z:0'layer_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¦
.sequential_3/dense_12/Tensordot/ReadVariableOpReadVariableOp7sequential_3_dense_12_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0n
$sequential_3/dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_3/dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
%sequential_3/dense_12/Tensordot/ShapeShape)layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:o
-sequential_3/dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_3/dense_12/Tensordot/GatherV2GatherV2.sequential_3/dense_12/Tensordot/Shape:output:0-sequential_3/dense_12/Tensordot/free:output:06sequential_3/dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_3/dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_3/dense_12/Tensordot/GatherV2_1GatherV2.sequential_3/dense_12/Tensordot/Shape:output:0-sequential_3/dense_12/Tensordot/axes:output:08sequential_3/dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_3/dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_3/dense_12/Tensordot/ProdProd1sequential_3/dense_12/Tensordot/GatherV2:output:0.sequential_3/dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_3/dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_3/dense_12/Tensordot/Prod_1Prod3sequential_3/dense_12/Tensordot/GatherV2_1:output:00sequential_3/dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_3/dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_3/dense_12/Tensordot/concatConcatV2-sequential_3/dense_12/Tensordot/free:output:0-sequential_3/dense_12/Tensordot/axes:output:04sequential_3/dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_3/dense_12/Tensordot/stackPack-sequential_3/dense_12/Tensordot/Prod:output:0/sequential_3/dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:È
)sequential_3/dense_12/Tensordot/transpose	Transpose)layer_normalization_6/batchnorm/add_1:z:0/sequential_3/dense_12/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ì
'sequential_3/dense_12/Tensordot/ReshapeReshape-sequential_3/dense_12/Tensordot/transpose:y:0.sequential_3/dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
&sequential_3/dense_12/Tensordot/MatMulMatMul0sequential_3/dense_12/Tensordot/Reshape:output:06sequential_3/dense_12/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
'sequential_3/dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: o
-sequential_3/dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_3/dense_12/Tensordot/concat_1ConcatV21sequential_3/dense_12/Tensordot/GatherV2:output:00sequential_3/dense_12/Tensordot/Const_2:output:06sequential_3/dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Å
sequential_3/dense_12/TensordotReshape0sequential_3/dense_12/Tensordot/MatMul:product:01sequential_3/dense_12/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 
,sequential_3/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¾
sequential_3/dense_12/BiasAddBiasAdd(sequential_3/dense_12/Tensordot:output:04sequential_3/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 
sequential_3/dense_12/ReluRelu&sequential_3/dense_12/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 ¦
.sequential_3/dense_13/Tensordot/ReadVariableOpReadVariableOp7sequential_3_dense_13_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0n
$sequential_3/dense_13/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_3/dense_13/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_3/dense_13/Tensordot/ShapeShape(sequential_3/dense_12/Relu:activations:0*
T0*
_output_shapes
:o
-sequential_3/dense_13/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_3/dense_13/Tensordot/GatherV2GatherV2.sequential_3/dense_13/Tensordot/Shape:output:0-sequential_3/dense_13/Tensordot/free:output:06sequential_3/dense_13/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_3/dense_13/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_3/dense_13/Tensordot/GatherV2_1GatherV2.sequential_3/dense_13/Tensordot/Shape:output:0-sequential_3/dense_13/Tensordot/axes:output:08sequential_3/dense_13/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_3/dense_13/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_3/dense_13/Tensordot/ProdProd1sequential_3/dense_13/Tensordot/GatherV2:output:0.sequential_3/dense_13/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_3/dense_13/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_3/dense_13/Tensordot/Prod_1Prod3sequential_3/dense_13/Tensordot/GatherV2_1:output:00sequential_3/dense_13/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_3/dense_13/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_3/dense_13/Tensordot/concatConcatV2-sequential_3/dense_13/Tensordot/free:output:0-sequential_3/dense_13/Tensordot/axes:output:04sequential_3/dense_13/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_3/dense_13/Tensordot/stackPack-sequential_3/dense_13/Tensordot/Prod:output:0/sequential_3/dense_13/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ç
)sequential_3/dense_13/Tensordot/transpose	Transpose(sequential_3/dense_12/Relu:activations:0/sequential_3/dense_13/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 Ì
'sequential_3/dense_13/Tensordot/ReshapeReshape-sequential_3/dense_13/Tensordot/transpose:y:0.sequential_3/dense_13/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
&sequential_3/dense_13/Tensordot/MatMulMatMul0sequential_3/dense_13/Tensordot/Reshape:output:06sequential_3/dense_13/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
'sequential_3/dense_13/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2o
-sequential_3/dense_13/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_3/dense_13/Tensordot/concat_1ConcatV21sequential_3/dense_13/Tensordot/GatherV2:output:00sequential_3/dense_13/Tensordot/Const_2:output:06sequential_3/dense_13/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Å
sequential_3/dense_13/TensordotReshape0sequential_3/dense_13/Tensordot/MatMul:product:01sequential_3/dense_13/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
,sequential_3/dense_13/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_13_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0¾
sequential_3/dense_13/BiasAddBiasAdd(sequential_3/dense_13/Tensordot:output:04sequential_3/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12]
dropout_13/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_13/dropout/MulMul&sequential_3/dense_13/BiasAdd:output:0!dropout_13/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12n
dropout_13/dropout/ShapeShape&sequential_3/dense_13/BiasAdd:output:0*
T0*
_output_shapes
:¦
/dropout_13/dropout/random_uniform/RandomUniformRandomUniform!dropout_13/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
dtype0f
!dropout_13/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ë
dropout_13/dropout/GreaterEqualGreaterEqual8dropout_13/dropout/random_uniform/RandomUniform:output:0*dropout_13/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
dropout_13/dropout/CastCast#dropout_13/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
dropout_13/dropout/Mul_1Muldropout_13/dropout/Mul:z:0dropout_13/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
add_1AddV2)layer_normalization_6/batchnorm/add_1:z:0dropout_13/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12~
4layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
"layer_normalization_7/moments/meanMean	add_1:z:0=layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(
*layer_normalization_7/moments/StopGradientStopGradient+layer_normalization_7/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1º
/layer_normalization_7/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
8layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_7/moments/varianceMean3layer_normalization_7/moments/SquaredDifference:z:0Alayer_normalization_7/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(j
%layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_7/batchnorm/addAddV2/layer_normalization_7/moments/variance:output:0.layer_normalization_7/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
%layer_normalization_7/batchnorm/RsqrtRsqrt'layer_normalization_7/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1ª
2layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_7/batchnorm/mulMul)layer_normalization_7/batchnorm/Rsqrt:y:0:layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
%layer_normalization_7/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¸
%layer_normalization_7/batchnorm/mul_2Mul+layer_normalization_7/moments/mean:output:0'layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¢
.layer_normalization_7/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_7/batchnorm/subSub6layer_normalization_7/batchnorm/ReadVariableOp:value:0)layer_normalization_7/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¸
%layer_normalization_7/batchnorm/add_1AddV2)layer_normalization_7/batchnorm/mul_1:z:0'layer_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12|
IdentityIdentity)layer_normalization_7/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
NoOpNoOp/^layer_normalization_6/batchnorm/ReadVariableOp3^layer_normalization_6/batchnorm/mul/ReadVariableOp/^layer_normalization_7/batchnorm/ReadVariableOp3^layer_normalization_7/batchnorm/mul/ReadVariableOp;^multi_head_attention_3/attention_output/add/ReadVariableOpE^multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_3/key/add/ReadVariableOp8^multi_head_attention_3/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/query/add/ReadVariableOp:^multi_head_attention_3/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/value/add/ReadVariableOp:^multi_head_attention_3/value/einsum/Einsum/ReadVariableOp-^sequential_3/dense_12/BiasAdd/ReadVariableOp/^sequential_3/dense_12/Tensordot/ReadVariableOp-^sequential_3/dense_13/BiasAdd/ReadVariableOp/^sequential_3/dense_13/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ12: : : : : : : : : : : : : : : : 2`
.layer_normalization_6/batchnorm/ReadVariableOp.layer_normalization_6/batchnorm/ReadVariableOp2h
2layer_normalization_6/batchnorm/mul/ReadVariableOp2layer_normalization_6/batchnorm/mul/ReadVariableOp2`
.layer_normalization_7/batchnorm/ReadVariableOp.layer_normalization_7/batchnorm/ReadVariableOp2h
2layer_normalization_7/batchnorm/mul/ReadVariableOp2layer_normalization_7/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_3/attention_output/add/ReadVariableOp:multi_head_attention_3/attention_output/add/ReadVariableOp2
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_3/key/add/ReadVariableOp-multi_head_attention_3/key/add/ReadVariableOp2r
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/query/add/ReadVariableOp/multi_head_attention_3/query/add/ReadVariableOp2v
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/value/add/ReadVariableOp/multi_head_attention_3/value/add/ReadVariableOp2v
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2\
,sequential_3/dense_12/BiasAdd/ReadVariableOp,sequential_3/dense_12/BiasAdd/ReadVariableOp2`
.sequential_3/dense_12/Tensordot/ReadVariableOp.sequential_3/dense_12/Tensordot/ReadVariableOp2\
,sequential_3/dense_13/BiasAdd/ReadVariableOp,sequential_3/dense_13/BiasAdd/ReadVariableOp2`
.sequential_3/dense_13/Tensordot/ReadVariableOp.sequential_3/dense_13/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
 
_user_specified_nameinputs
Ä
Ò
while_cond_126271961
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_126271961___redundant_placeholder07
3while_while_cond_126271961___redundant_placeholder17
3while_while_cond_126271961___redundant_placeholder27
3while_while_cond_126271961___redundant_placeholder3
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
ù
¶
)__inference_rnn_3_layer_call_fn_126273815

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
D__inference_rnn_3_layer_call_and_return_conditional_losses_126271774o
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
:ÿÿÿÿÿÿÿÿÿ12: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
 
_user_specified_nameinputs
Ó8
Ê
while_body_126274174
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_3_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_3_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_3_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_3_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_3_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_3_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_3/BiasAdd/ReadVariableOp¢'while/lstm_cell_3/MatMul/ReadVariableOp¢)while/lstm_cell_3/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/mulMulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_3/TanhTanh while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul:z:0while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_3/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_3/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 
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
Ñ
À
K__inference_sequential_3_layer_call_and_return_conditional_losses_126270969

inputs$
dense_12_126270927:2  
dense_12_126270929: $
dense_13_126270963: 2 
dense_13_126270965:2
identity¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCallý
 dense_12/StatefulPartitionedCallStatefulPartitionedCallinputsdense_12_126270927dense_12_126270929*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_12_layer_call_and_return_conditional_losses_126270926 
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_126270963dense_13_126270965*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_13_layer_call_and_return_conditional_losses_126270962|
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ12: : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
 
_user_specified_nameinputs
Ø?
â
K__inference_sequential_3_layer_call_and_return_conditional_losses_126274524

inputs<
*dense_12_tensordot_readvariableop_resource:2 6
(dense_12_biasadd_readvariableop_resource: <
*dense_13_tensordot_readvariableop_resource: 26
(dense_13_biasadd_readvariableop_resource:2
identity¢dense_12/BiasAdd/ReadVariableOp¢!dense_12/Tensordot/ReadVariableOp¢dense_13/BiasAdd/ReadVariableOp¢!dense_13/Tensordot/ReadVariableOp
!dense_12/Tensordot/ReadVariableOpReadVariableOp*dense_12_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0a
dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       N
dense_12/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:b
 dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_12/Tensordot/GatherV2GatherV2!dense_12/Tensordot/Shape:output:0 dense_12/Tensordot/free:output:0)dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_12/Tensordot/GatherV2_1GatherV2!dense_12/Tensordot/Shape:output:0 dense_12/Tensordot/axes:output:0+dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_12/Tensordot/ProdProd$dense_12/Tensordot/GatherV2:output:0!dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_12/Tensordot/Prod_1Prod&dense_12/Tensordot/GatherV2_1:output:0#dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_12/Tensordot/concatConcatV2 dense_12/Tensordot/free:output:0 dense_12/Tensordot/axes:output:0'dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_12/Tensordot/stackPack dense_12/Tensordot/Prod:output:0"dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_12/Tensordot/transpose	Transposeinputs"dense_12/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¥
dense_12/Tensordot/ReshapeReshape dense_12/Tensordot/transpose:y:0!dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¥
dense_12/Tensordot/MatMulMatMul#dense_12/Tensordot/Reshape:output:0)dense_12/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ d
dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: b
 dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_12/Tensordot/concat_1ConcatV2$dense_12/Tensordot/GatherV2:output:0#dense_12/Tensordot/Const_2:output:0)dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_12/TensordotReshape#dense_12/Tensordot/MatMul:product:0$dense_12/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_12/BiasAddBiasAdddense_12/Tensordot:output:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 f
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 
!dense_13/Tensordot/ReadVariableOpReadVariableOp*dense_13_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0a
dense_13/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_13/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_13/Tensordot/ShapeShapedense_12/Relu:activations:0*
T0*
_output_shapes
:b
 dense_13/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_13/Tensordot/GatherV2GatherV2!dense_13/Tensordot/Shape:output:0 dense_13/Tensordot/free:output:0)dense_13/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_13/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_13/Tensordot/GatherV2_1GatherV2!dense_13/Tensordot/Shape:output:0 dense_13/Tensordot/axes:output:0+dense_13/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_13/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_13/Tensordot/ProdProd$dense_13/Tensordot/GatherV2:output:0!dense_13/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_13/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_13/Tensordot/Prod_1Prod&dense_13/Tensordot/GatherV2_1:output:0#dense_13/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_13/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_13/Tensordot/concatConcatV2 dense_13/Tensordot/free:output:0 dense_13/Tensordot/axes:output:0'dense_13/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_13/Tensordot/stackPack dense_13/Tensordot/Prod:output:0"dense_13/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
: 
dense_13/Tensordot/transpose	Transposedense_12/Relu:activations:0"dense_13/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 ¥
dense_13/Tensordot/ReshapeReshape dense_13/Tensordot/transpose:y:0!dense_13/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¥
dense_13/Tensordot/MatMulMatMul#dense_13/Tensordot/Reshape:output:0)dense_13/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2d
dense_13/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2b
 dense_13/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_13/Tensordot/concat_1ConcatV2$dense_13/Tensordot/GatherV2:output:0#dense_13/Tensordot/Const_2:output:0)dense_13/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_13/TensordotReshape#dense_13/Tensordot/MatMul:product:0$dense_13/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
dense_13/BiasAddBiasAdddense_13/Tensordot:output:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12l
IdentityIdentitydense_13/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ò
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp"^dense_12/Tensordot/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp"^dense_13/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ12: : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2F
!dense_12/Tensordot/ReadVariableOp!dense_12/Tensordot/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2F
!dense_13/Tensordot/ReadVariableOp!dense_13/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
 
_user_specified_nameinputs
Ì
Û
0__inference_sequential_3_layer_call_fn_126270980
dense_12_input
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_12_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_3_layer_call_and_return_conditional_losses_126270969s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ12: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
(
_user_specified_namedense_12_input
´
Ó
0__inference_sequential_3_layer_call_fn_126274454

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
:ÿÿÿÿÿÿÿÿÿ12*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_3_layer_call_and_return_conditional_losses_126270969s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ12: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
 
_user_specified_nameinputs


ø
G__inference_dense_14_layer_call_and_return_conditional_losses_126274422

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
Ä
Ò
while_cond_126274317
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_126274317___redundant_placeholder07
3while_while_cond_126274317___redundant_placeholder17
3while_while_cond_126274317___redundant_placeholder27
3while_while_cond_126274317___redundant_placeholder3
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
ÞÉ
³
T__inference_transformer_encoder_3_layer_call_and_return_conditional_losses_126273782

inputsX
Bmulti_head_attention_3_query_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_3_query_add_readvariableop_resource:2V
@multi_head_attention_3_key_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_3_key_add_readvariableop_resource:2X
Bmulti_head_attention_3_value_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_3_value_add_readvariableop_resource:2c
Mmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resource:22Q
Cmulti_head_attention_3_attention_output_add_readvariableop_resource:2I
;layer_normalization_6_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_6_batchnorm_readvariableop_resource:2I
7sequential_3_dense_12_tensordot_readvariableop_resource:2 C
5sequential_3_dense_12_biasadd_readvariableop_resource: I
7sequential_3_dense_13_tensordot_readvariableop_resource: 2C
5sequential_3_dense_13_biasadd_readvariableop_resource:2I
;layer_normalization_7_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_7_batchnorm_readvariableop_resource:2
identity¢.layer_normalization_6/batchnorm/ReadVariableOp¢2layer_normalization_6/batchnorm/mul/ReadVariableOp¢.layer_normalization_7/batchnorm/ReadVariableOp¢2layer_normalization_7/batchnorm/mul/ReadVariableOp¢:multi_head_attention_3/attention_output/add/ReadVariableOp¢Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_3/key/add/ReadVariableOp¢7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_3/query/add/ReadVariableOp¢9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_3/value/add/ReadVariableOp¢9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp¢,sequential_3/dense_12/BiasAdd/ReadVariableOp¢.sequential_3/dense_12/Tensordot/ReadVariableOp¢,sequential_3/dense_13/BiasAdd/ReadVariableOp¢.sequential_3/dense_13/Tensordot/ReadVariableOpÀ
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_3/query/einsum/EinsumEinsuminputsAmulti_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabc,cde->abde¨
/multi_head_attention_3/query/add/ReadVariableOpReadVariableOp8multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_3/query/addAddV23multi_head_attention_3/query/einsum/Einsum:output:07multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¼
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention_3/key/einsum/EinsumEinsuminputs?multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabc,cde->abde¤
-multi_head_attention_3/key/add/ReadVariableOpReadVariableOp6multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention_3/key/addAddV21multi_head_attention_3/key/einsum/Einsum:output:05multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12À
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_3/value/einsum/EinsumEinsuminputsAmulti_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabc,cde->abde¨
/multi_head_attention_3/value/add/ReadVariableOpReadVariableOp8multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_3/value/addAddV23multi_head_attention_3/value/einsum/Einsum:output:07multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12a
multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>¨
multi_head_attention_3/MulMul$multi_head_attention_3/query/add:z:0%multi_head_attention_3/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ô
$multi_head_attention_3/einsum/EinsumEinsum"multi_head_attention_3/key/add:z:0multi_head_attention_3/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11*
equationaecd,abcd->acbe
&multi_head_attention_3/softmax/SoftmaxSoftmax-multi_head_attention_3/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11ê
&multi_head_attention_3/einsum_1/EinsumEinsum0multi_head_attention_3/softmax/Softmax:softmax:0$multi_head_attention_3/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
5multi_head_attention_3/attention_output/einsum/EinsumEinsum/multi_head_attention_3/einsum_1/Einsum:output:0Lmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabcd,cde->abeº
:multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0î
+multi_head_attention_3/attention_output/addAddV2>multi_head_attention_3/attention_output/einsum/Einsum:output:0Bmulti_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12]
dropout_12/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @§
dropout_12/dropout/MulMul/multi_head_attention_3/attention_output/add:z:0!dropout_12/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12w
dropout_12/dropout/ShapeShape/multi_head_attention_3/attention_output/add:z:0*
T0*
_output_shapes
:¦
/dropout_12/dropout/random_uniform/RandomUniformRandomUniform!dropout_12/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
dtype0f
!dropout_12/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ë
dropout_12/dropout/GreaterEqualGreaterEqual8dropout_12/dropout/random_uniform/RandomUniform:output:0*dropout_12/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
dropout_12/dropout/CastCast#dropout_12/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
dropout_12/dropout/Mul_1Muldropout_12/dropout/Mul:z:0dropout_12/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12h
addAddV2inputsdropout_12/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12~
4layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¹
"layer_normalization_6/moments/meanMeanadd:z:0=layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(
*layer_normalization_6/moments/StopGradientStopGradient+layer_normalization_6/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1¸
/layer_normalization_6/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
8layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_6/moments/varianceMean3layer_normalization_6/moments/SquaredDifference:z:0Alayer_normalization_6/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(j
%layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_6/batchnorm/addAddV2/layer_normalization_6/moments/variance:output:0.layer_normalization_6/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
%layer_normalization_6/batchnorm/RsqrtRsqrt'layer_normalization_6/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1ª
2layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_6/batchnorm/mulMul)layer_normalization_6/batchnorm/Rsqrt:y:0:layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
%layer_normalization_6/batchnorm/mul_1Muladd:z:0'layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¸
%layer_normalization_6/batchnorm/mul_2Mul+layer_normalization_6/moments/mean:output:0'layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¢
.layer_normalization_6/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_6/batchnorm/subSub6layer_normalization_6/batchnorm/ReadVariableOp:value:0)layer_normalization_6/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¸
%layer_normalization_6/batchnorm/add_1AddV2)layer_normalization_6/batchnorm/mul_1:z:0'layer_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¦
.sequential_3/dense_12/Tensordot/ReadVariableOpReadVariableOp7sequential_3_dense_12_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0n
$sequential_3/dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_3/dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
%sequential_3/dense_12/Tensordot/ShapeShape)layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:o
-sequential_3/dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_3/dense_12/Tensordot/GatherV2GatherV2.sequential_3/dense_12/Tensordot/Shape:output:0-sequential_3/dense_12/Tensordot/free:output:06sequential_3/dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_3/dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_3/dense_12/Tensordot/GatherV2_1GatherV2.sequential_3/dense_12/Tensordot/Shape:output:0-sequential_3/dense_12/Tensordot/axes:output:08sequential_3/dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_3/dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_3/dense_12/Tensordot/ProdProd1sequential_3/dense_12/Tensordot/GatherV2:output:0.sequential_3/dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_3/dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_3/dense_12/Tensordot/Prod_1Prod3sequential_3/dense_12/Tensordot/GatherV2_1:output:00sequential_3/dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_3/dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_3/dense_12/Tensordot/concatConcatV2-sequential_3/dense_12/Tensordot/free:output:0-sequential_3/dense_12/Tensordot/axes:output:04sequential_3/dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_3/dense_12/Tensordot/stackPack-sequential_3/dense_12/Tensordot/Prod:output:0/sequential_3/dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:È
)sequential_3/dense_12/Tensordot/transpose	Transpose)layer_normalization_6/batchnorm/add_1:z:0/sequential_3/dense_12/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ì
'sequential_3/dense_12/Tensordot/ReshapeReshape-sequential_3/dense_12/Tensordot/transpose:y:0.sequential_3/dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
&sequential_3/dense_12/Tensordot/MatMulMatMul0sequential_3/dense_12/Tensordot/Reshape:output:06sequential_3/dense_12/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
'sequential_3/dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: o
-sequential_3/dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_3/dense_12/Tensordot/concat_1ConcatV21sequential_3/dense_12/Tensordot/GatherV2:output:00sequential_3/dense_12/Tensordot/Const_2:output:06sequential_3/dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Å
sequential_3/dense_12/TensordotReshape0sequential_3/dense_12/Tensordot/MatMul:product:01sequential_3/dense_12/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 
,sequential_3/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¾
sequential_3/dense_12/BiasAddBiasAdd(sequential_3/dense_12/Tensordot:output:04sequential_3/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 
sequential_3/dense_12/ReluRelu&sequential_3/dense_12/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 ¦
.sequential_3/dense_13/Tensordot/ReadVariableOpReadVariableOp7sequential_3_dense_13_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0n
$sequential_3/dense_13/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_3/dense_13/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_3/dense_13/Tensordot/ShapeShape(sequential_3/dense_12/Relu:activations:0*
T0*
_output_shapes
:o
-sequential_3/dense_13/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_3/dense_13/Tensordot/GatherV2GatherV2.sequential_3/dense_13/Tensordot/Shape:output:0-sequential_3/dense_13/Tensordot/free:output:06sequential_3/dense_13/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_3/dense_13/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_3/dense_13/Tensordot/GatherV2_1GatherV2.sequential_3/dense_13/Tensordot/Shape:output:0-sequential_3/dense_13/Tensordot/axes:output:08sequential_3/dense_13/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_3/dense_13/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_3/dense_13/Tensordot/ProdProd1sequential_3/dense_13/Tensordot/GatherV2:output:0.sequential_3/dense_13/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_3/dense_13/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_3/dense_13/Tensordot/Prod_1Prod3sequential_3/dense_13/Tensordot/GatherV2_1:output:00sequential_3/dense_13/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_3/dense_13/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_3/dense_13/Tensordot/concatConcatV2-sequential_3/dense_13/Tensordot/free:output:0-sequential_3/dense_13/Tensordot/axes:output:04sequential_3/dense_13/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_3/dense_13/Tensordot/stackPack-sequential_3/dense_13/Tensordot/Prod:output:0/sequential_3/dense_13/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ç
)sequential_3/dense_13/Tensordot/transpose	Transpose(sequential_3/dense_12/Relu:activations:0/sequential_3/dense_13/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 Ì
'sequential_3/dense_13/Tensordot/ReshapeReshape-sequential_3/dense_13/Tensordot/transpose:y:0.sequential_3/dense_13/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
&sequential_3/dense_13/Tensordot/MatMulMatMul0sequential_3/dense_13/Tensordot/Reshape:output:06sequential_3/dense_13/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
'sequential_3/dense_13/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2o
-sequential_3/dense_13/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_3/dense_13/Tensordot/concat_1ConcatV21sequential_3/dense_13/Tensordot/GatherV2:output:00sequential_3/dense_13/Tensordot/Const_2:output:06sequential_3/dense_13/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Å
sequential_3/dense_13/TensordotReshape0sequential_3/dense_13/Tensordot/MatMul:product:01sequential_3/dense_13/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
,sequential_3/dense_13/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_13_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0¾
sequential_3/dense_13/BiasAddBiasAdd(sequential_3/dense_13/Tensordot:output:04sequential_3/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12]
dropout_13/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_13/dropout/MulMul&sequential_3/dense_13/BiasAdd:output:0!dropout_13/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12n
dropout_13/dropout/ShapeShape&sequential_3/dense_13/BiasAdd:output:0*
T0*
_output_shapes
:¦
/dropout_13/dropout/random_uniform/RandomUniformRandomUniform!dropout_13/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
dtype0f
!dropout_13/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ë
dropout_13/dropout/GreaterEqualGreaterEqual8dropout_13/dropout/random_uniform/RandomUniform:output:0*dropout_13/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
dropout_13/dropout/CastCast#dropout_13/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
dropout_13/dropout/Mul_1Muldropout_13/dropout/Mul:z:0dropout_13/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
add_1AddV2)layer_normalization_6/batchnorm/add_1:z:0dropout_13/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12~
4layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
"layer_normalization_7/moments/meanMean	add_1:z:0=layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(
*layer_normalization_7/moments/StopGradientStopGradient+layer_normalization_7/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1º
/layer_normalization_7/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
8layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_7/moments/varianceMean3layer_normalization_7/moments/SquaredDifference:z:0Alayer_normalization_7/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(j
%layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_7/batchnorm/addAddV2/layer_normalization_7/moments/variance:output:0.layer_normalization_7/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
%layer_normalization_7/batchnorm/RsqrtRsqrt'layer_normalization_7/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1ª
2layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_7/batchnorm/mulMul)layer_normalization_7/batchnorm/Rsqrt:y:0:layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
%layer_normalization_7/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¸
%layer_normalization_7/batchnorm/mul_2Mul+layer_normalization_7/moments/mean:output:0'layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¢
.layer_normalization_7/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_7/batchnorm/subSub6layer_normalization_7/batchnorm/ReadVariableOp:value:0)layer_normalization_7/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¸
%layer_normalization_7/batchnorm/add_1AddV2)layer_normalization_7/batchnorm/mul_1:z:0'layer_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12|
IdentityIdentity)layer_normalization_7/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
NoOpNoOp/^layer_normalization_6/batchnorm/ReadVariableOp3^layer_normalization_6/batchnorm/mul/ReadVariableOp/^layer_normalization_7/batchnorm/ReadVariableOp3^layer_normalization_7/batchnorm/mul/ReadVariableOp;^multi_head_attention_3/attention_output/add/ReadVariableOpE^multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_3/key/add/ReadVariableOp8^multi_head_attention_3/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/query/add/ReadVariableOp:^multi_head_attention_3/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/value/add/ReadVariableOp:^multi_head_attention_3/value/einsum/Einsum/ReadVariableOp-^sequential_3/dense_12/BiasAdd/ReadVariableOp/^sequential_3/dense_12/Tensordot/ReadVariableOp-^sequential_3/dense_13/BiasAdd/ReadVariableOp/^sequential_3/dense_13/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ12: : : : : : : : : : : : : : : : 2`
.layer_normalization_6/batchnorm/ReadVariableOp.layer_normalization_6/batchnorm/ReadVariableOp2h
2layer_normalization_6/batchnorm/mul/ReadVariableOp2layer_normalization_6/batchnorm/mul/ReadVariableOp2`
.layer_normalization_7/batchnorm/ReadVariableOp.layer_normalization_7/batchnorm/ReadVariableOp2h
2layer_normalization_7/batchnorm/mul/ReadVariableOp2layer_normalization_7/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_3/attention_output/add/ReadVariableOp:multi_head_attention_3/attention_output/add/ReadVariableOp2
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_3/key/add/ReadVariableOp-multi_head_attention_3/key/add/ReadVariableOp2r
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/query/add/ReadVariableOp/multi_head_attention_3/query/add/ReadVariableOp2v
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/value/add/ReadVariableOp/multi_head_attention_3/value/add/ReadVariableOp2v
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2\
,sequential_3/dense_12/BiasAdd/ReadVariableOp,sequential_3/dense_12/BiasAdd/ReadVariableOp2`
.sequential_3/dense_12/Tensordot/ReadVariableOp.sequential_3/dense_12/Tensordot/ReadVariableOp2\
,sequential_3/dense_13/BiasAdd/ReadVariableOp,sequential_3/dense_13/BiasAdd/ReadVariableOp2`
.sequential_3/dense_13/Tensordot/ReadVariableOp.sequential_3/dense_13/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
 
_user_specified_nameinputs
é
È
K__inference_sequential_3_layer_call_and_return_conditional_losses_126271081
dense_12_input$
dense_12_126271070:2  
dense_12_126271072: $
dense_13_126271075: 2 
dense_13_126271077:2
identity¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall
 dense_12/StatefulPartitionedCallStatefulPartitionedCalldense_12_inputdense_12_126271070dense_12_126271072*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_12_layer_call_and_return_conditional_losses_126270926 
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_126271075dense_13_126271077*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_13_layer_call_and_return_conditional_losses_126270962|
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ12: : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
(
_user_specified_namedense_12_input
¦
þ
G__inference_dense_12_layer_call_and_return_conditional_losses_126274719

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
:ÿÿÿÿÿÿÿÿÿ12
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
:ÿÿÿÿÿÿÿÿÿ1 r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ12: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
 
_user_specified_nameinputs
Ê	
ø
G__inference_dense_15_layer_call_and_return_conditional_losses_126271809

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
J

D__inference_rnn_3_layer_call_and_return_conditional_losses_126274402

inputs=
*lstm_cell_3_matmul_readvariableop_resource:	2¸?
,lstm_cell_3_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_3_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_3/BiasAdd/ReadVariableOp¢!lstm_cell_3/MatMul/ReadVariableOp¢#lstm_cell_3/MatMul_1/ReadVariableOp¢while;
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
:1ÿÿÿÿÿÿÿÿÿ2D
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
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_3/mulMullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_3/TanhTanhlstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_3/add_1AddV2lstm_cell_3/mul:z:0lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
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
while_body_126274318* 
condR
while_cond_126274317*K
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
NoOpNoOp#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ12: : : 2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
 
_user_specified_nameinputs
J

D__inference_rnn_3_layer_call_and_return_conditional_losses_126272046

inputs=
*lstm_cell_3_matmul_readvariableop_resource:	2¸?
,lstm_cell_3_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_3_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_3/BiasAdd/ReadVariableOp¢!lstm_cell_3/MatMul/ReadVariableOp¢#lstm_cell_3/MatMul_1/ReadVariableOp¢while;
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
:1ÿÿÿÿÿÿÿÿÿ2D
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
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_3/mulMullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_3/TanhTanhlstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_3/add_1AddV2lstm_cell_3/mul:z:0lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
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
while_body_126271962* 
condR
while_cond_126271961*K
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
NoOpNoOp#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ12: : : 2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
 
_user_specified_nameinputs
Î
þ
G__inference_dense_13_layer_call_and_return_conditional_losses_126274758

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
:ÿÿÿÿÿÿÿÿÿ1 
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
:ÿÿÿÿÿÿÿÿÿ12r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ1 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 
 
_user_specified_nameinputs
Ó8
Ê
while_body_126271690
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_3_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_3_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_3_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_3_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_3_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_3_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_3/BiasAdd/ReadVariableOp¢'while/lstm_cell_3/MatMul/ReadVariableOp¢)while/lstm_cell_3/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/mulMulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_3/TanhTanh while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul:z:0while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_3/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_3/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 
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
while_cond_126271354
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_126271354___redundant_placeholder07
3while_while_cond_126271354___redundant_placeholder17
3while_while_cond_126271354___redundant_placeholder27
3while_while_cond_126271354___redundant_placeholder3
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
¥J

D__inference_rnn_3_layer_call_and_return_conditional_losses_126273970
inputs_0=
*lstm_cell_3_matmul_readvariableop_resource:	2¸?
,lstm_cell_3_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_3_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_3/BiasAdd/ReadVariableOp¢!lstm_cell_3/MatMul/ReadVariableOp¢#lstm_cell_3/MatMul_1/ReadVariableOp¢while=
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
!lstm_cell_3/MatMul/ReadVariableOpReadVariableOp*lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0)lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_3/MatMul_1MatMulzeros:output:0+lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_3/addAddV2lstm_cell_3/MatMul:product:0lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_3/BiasAddBiasAddlstm_cell_3/add:z:0*lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_3/SigmoidSigmoidlstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_3/mulMullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_3/TanhTanhlstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_3/mul_1Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_3/add_1AddV2lstm_cell_3/mul:z:0lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_3/mul_2Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_3_matmul_readvariableop_resource,lstm_cell_3_matmul_1_readvariableop_resource+lstm_cell_3_biasadd_readvariableop_resource*
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
while_body_126273886* 
condR
while_cond_126273885*K
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
NoOpNoOp#^lstm_cell_3/BiasAdd/ReadVariableOp"^lstm_cell_3/MatMul/ReadVariableOp$^lstm_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2H
"lstm_cell_3/BiasAdd/ReadVariableOp"lstm_cell_3/BiasAdd/ReadVariableOp2F
!lstm_cell_3/MatMul/ReadVariableOp!lstm_cell_3/MatMul/ReadVariableOp2J
#lstm_cell_3/MatMul_1/ReadVariableOp#lstm_cell_3/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
È
±
+__inference_model_3_layer_call_fn_126272504
input_4
unknown:12
	unknown_0:2
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
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
F__inference_model_3_layer_call_and_return_conditional_losses_126272396o
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
E:ÿÿÿÿÿÿÿÿÿ1: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
!
_user_specified_name	input_4
ã?


rnn_3_while_body_126273311(
$rnn_3_while_rnn_3_while_loop_counter.
*rnn_3_while_rnn_3_while_maximum_iterations
rnn_3_while_placeholder
rnn_3_while_placeholder_1
rnn_3_while_placeholder_2
rnn_3_while_placeholder_3'
#rnn_3_while_rnn_3_strided_slice_1_0c
_rnn_3_while_tensorarrayv2read_tensorlistgetitem_rnn_3_tensorarrayunstack_tensorlistfromtensor_0K
8rnn_3_while_lstm_cell_3_matmul_readvariableop_resource_0:	2¸M
:rnn_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0:	.¸H
9rnn_3_while_lstm_cell_3_biasadd_readvariableop_resource_0:	¸
rnn_3_while_identity
rnn_3_while_identity_1
rnn_3_while_identity_2
rnn_3_while_identity_3
rnn_3_while_identity_4
rnn_3_while_identity_5%
!rnn_3_while_rnn_3_strided_slice_1a
]rnn_3_while_tensorarrayv2read_tensorlistgetitem_rnn_3_tensorarrayunstack_tensorlistfromtensorI
6rnn_3_while_lstm_cell_3_matmul_readvariableop_resource:	2¸K
8rnn_3_while_lstm_cell_3_matmul_1_readvariableop_resource:	.¸F
7rnn_3_while_lstm_cell_3_biasadd_readvariableop_resource:	¸¢.rnn_3/while/lstm_cell_3/BiasAdd/ReadVariableOp¢-rnn_3/while/lstm_cell_3/MatMul/ReadVariableOp¢/rnn_3/while/lstm_cell_3/MatMul_1/ReadVariableOp
=rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ä
/rnn_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_rnn_3_while_tensorarrayv2read_tensorlistgetitem_rnn_3_tensorarrayunstack_tensorlistfromtensor_0rnn_3_while_placeholderFrnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0§
-rnn_3/while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp8rnn_3_while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0Ê
rnn_3/while/lstm_cell_3/MatMulMatMul6rnn_3/while/TensorArrayV2Read/TensorListGetItem:item:05rnn_3/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸«
/rnn_3/while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp:rnn_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0±
 rnn_3/while/lstm_cell_3/MatMul_1MatMulrnn_3_while_placeholder_27rnn_3/while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸­
rnn_3/while/lstm_cell_3/addAddV2(rnn_3/while/lstm_cell_3/MatMul:product:0*rnn_3/while/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸¥
.rnn_3/while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp9rnn_3_while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¶
rnn_3/while/lstm_cell_3/BiasAddBiasAddrnn_3/while/lstm_cell_3/add:z:06rnn_3/while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸i
'rnn_3/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :þ
rnn_3/while/lstm_cell_3/splitSplit0rnn_3/while/lstm_cell_3/split/split_dim:output:0(rnn_3/while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_split
rnn_3/while/lstm_cell_3/SigmoidSigmoid&rnn_3/while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!rnn_3/while/lstm_cell_3/Sigmoid_1Sigmoid&rnn_3/while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_3/while/lstm_cell_3/mulMul%rnn_3/while/lstm_cell_3/Sigmoid_1:y:0rnn_3_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.~
rnn_3/while/lstm_cell_3/TanhTanh&rnn_3/while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_3/while/lstm_cell_3/mul_1Mul#rnn_3/while/lstm_cell_3/Sigmoid:y:0 rnn_3/while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_3/while/lstm_cell_3/add_1AddV2rnn_3/while/lstm_cell_3/mul:z:0!rnn_3/while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!rnn_3/while/lstm_cell_3/Sigmoid_2Sigmoid&rnn_3/while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.{
rnn_3/while/lstm_cell_3/Tanh_1Tanh!rnn_3/while/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¡
rnn_3/while/lstm_cell_3/mul_2Mul%rnn_3/while/lstm_cell_3/Sigmoid_2:y:0"rnn_3/while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
6rnn_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
0rnn_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_3_while_placeholder_1?rnn_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0!rnn_3/while/lstm_cell_3/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒS
rnn_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
rnn_3/while/addAddV2rnn_3_while_placeholderrnn_3/while/add/y:output:0*
T0*
_output_shapes
: U
rnn_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
rnn_3/while/add_1AddV2$rnn_3_while_rnn_3_while_loop_counterrnn_3/while/add_1/y:output:0*
T0*
_output_shapes
: k
rnn_3/while/IdentityIdentityrnn_3/while/add_1:z:0^rnn_3/while/NoOp*
T0*
_output_shapes
: 
rnn_3/while/Identity_1Identity*rnn_3_while_rnn_3_while_maximum_iterations^rnn_3/while/NoOp*
T0*
_output_shapes
: k
rnn_3/while/Identity_2Identityrnn_3/while/add:z:0^rnn_3/while/NoOp*
T0*
_output_shapes
: 
rnn_3/while/Identity_3Identity@rnn_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn_3/while/NoOp*
T0*
_output_shapes
: 
rnn_3/while/Identity_4Identity!rnn_3/while/lstm_cell_3/mul_2:z:0^rnn_3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_3/while/Identity_5Identity!rnn_3/while/lstm_cell_3/add_1:z:0^rnn_3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.å
rnn_3/while/NoOpNoOp/^rnn_3/while/lstm_cell_3/BiasAdd/ReadVariableOp.^rnn_3/while/lstm_cell_3/MatMul/ReadVariableOp0^rnn_3/while/lstm_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "5
rnn_3_while_identityrnn_3/while/Identity:output:0"9
rnn_3_while_identity_1rnn_3/while/Identity_1:output:0"9
rnn_3_while_identity_2rnn_3/while/Identity_2:output:0"9
rnn_3_while_identity_3rnn_3/while/Identity_3:output:0"9
rnn_3_while_identity_4rnn_3/while/Identity_4:output:0"9
rnn_3_while_identity_5rnn_3/while/Identity_5:output:0"t
7rnn_3_while_lstm_cell_3_biasadd_readvariableop_resource9rnn_3_while_lstm_cell_3_biasadd_readvariableop_resource_0"v
8rnn_3_while_lstm_cell_3_matmul_1_readvariableop_resource:rnn_3_while_lstm_cell_3_matmul_1_readvariableop_resource_0"r
6rnn_3_while_lstm_cell_3_matmul_readvariableop_resource8rnn_3_while_lstm_cell_3_matmul_readvariableop_resource_0"H
!rnn_3_while_rnn_3_strided_slice_1#rnn_3_while_rnn_3_strided_slice_1_0"À
]rnn_3_while_tensorarrayv2read_tensorlistgetitem_rnn_3_tensorarrayunstack_tensorlistfromtensor_rnn_3_while_tensorarrayv2read_tensorlistgetitem_rnn_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2`
.rnn_3/while/lstm_cell_3/BiasAdd/ReadVariableOp.rnn_3/while/lstm_cell_3/BiasAdd/ReadVariableOp2^
-rnn_3/while/lstm_cell_3/MatMul/ReadVariableOp-rnn_3/while/lstm_cell_3/MatMul/ReadVariableOp2b
/rnn_3/while/lstm_cell_3/MatMul_1/ReadVariableOp/rnn_3/while/lstm_cell_3/MatMul_1/ReadVariableOp: 
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
rnn_3_while_cond_126273310(
$rnn_3_while_rnn_3_while_loop_counter.
*rnn_3_while_rnn_3_while_maximum_iterations
rnn_3_while_placeholder
rnn_3_while_placeholder_1
rnn_3_while_placeholder_2
rnn_3_while_placeholder_3*
&rnn_3_while_less_rnn_3_strided_slice_1C
?rnn_3_while_rnn_3_while_cond_126273310___redundant_placeholder0C
?rnn_3_while_rnn_3_while_cond_126273310___redundant_placeholder1C
?rnn_3_while_rnn_3_while_cond_126273310___redundant_placeholder2C
?rnn_3_while_rnn_3_while_cond_126273310___redundant_placeholder3
rnn_3_while_identity
z
rnn_3/while/LessLessrnn_3_while_placeholder&rnn_3_while_less_rnn_3_strided_slice_1*
T0*
_output_shapes
: W
rnn_3/while/IdentityIdentityrnn_3/while/Less:z:0*
T0
*
_output_shapes
: "5
rnn_3_while_identityrnn_3/while/Identity:output:0*(
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
ï
ø
/__inference_lstm_cell_3_layer_call_fn_126274615

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
J__inference_lstm_cell_3_layer_call_and_return_conditional_losses_126271295o
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
È

,__inference_dense_14_layer_call_fn_126274411

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
G__inference_dense_14_layer_call_and_return_conditional_losses_126271793o
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
»
³
T__inference_transformer_encoder_3_layer_call_and_return_conditional_losses_126273642

inputsX
Bmulti_head_attention_3_query_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_3_query_add_readvariableop_resource:2V
@multi_head_attention_3_key_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_3_key_add_readvariableop_resource:2X
Bmulti_head_attention_3_value_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_3_value_add_readvariableop_resource:2c
Mmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resource:22Q
Cmulti_head_attention_3_attention_output_add_readvariableop_resource:2I
;layer_normalization_6_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_6_batchnorm_readvariableop_resource:2I
7sequential_3_dense_12_tensordot_readvariableop_resource:2 C
5sequential_3_dense_12_biasadd_readvariableop_resource: I
7sequential_3_dense_13_tensordot_readvariableop_resource: 2C
5sequential_3_dense_13_biasadd_readvariableop_resource:2I
;layer_normalization_7_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_7_batchnorm_readvariableop_resource:2
identity¢.layer_normalization_6/batchnorm/ReadVariableOp¢2layer_normalization_6/batchnorm/mul/ReadVariableOp¢.layer_normalization_7/batchnorm/ReadVariableOp¢2layer_normalization_7/batchnorm/mul/ReadVariableOp¢:multi_head_attention_3/attention_output/add/ReadVariableOp¢Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_3/key/add/ReadVariableOp¢7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_3/query/add/ReadVariableOp¢9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_3/value/add/ReadVariableOp¢9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp¢,sequential_3/dense_12/BiasAdd/ReadVariableOp¢.sequential_3/dense_12/Tensordot/ReadVariableOp¢,sequential_3/dense_13/BiasAdd/ReadVariableOp¢.sequential_3/dense_13/Tensordot/ReadVariableOpÀ
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_3/query/einsum/EinsumEinsuminputsAmulti_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabc,cde->abde¨
/multi_head_attention_3/query/add/ReadVariableOpReadVariableOp8multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_3/query/addAddV23multi_head_attention_3/query/einsum/Einsum:output:07multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¼
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention_3/key/einsum/EinsumEinsuminputs?multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabc,cde->abde¤
-multi_head_attention_3/key/add/ReadVariableOpReadVariableOp6multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention_3/key/addAddV21multi_head_attention_3/key/einsum/Einsum:output:05multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12À
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_3/value/einsum/EinsumEinsuminputsAmulti_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabc,cde->abde¨
/multi_head_attention_3/value/add/ReadVariableOpReadVariableOp8multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_3/value/addAddV23multi_head_attention_3/value/einsum/Einsum:output:07multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12a
multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>¨
multi_head_attention_3/MulMul$multi_head_attention_3/query/add:z:0%multi_head_attention_3/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ô
$multi_head_attention_3/einsum/EinsumEinsum"multi_head_attention_3/key/add:z:0multi_head_attention_3/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11*
equationaecd,abcd->acbe
&multi_head_attention_3/softmax/SoftmaxSoftmax-multi_head_attention_3/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11
'multi_head_attention_3/dropout/IdentityIdentity0multi_head_attention_3/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11ê
&multi_head_attention_3/einsum_1/EinsumEinsum0multi_head_attention_3/dropout/Identity:output:0$multi_head_attention_3/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
5multi_head_attention_3/attention_output/einsum/EinsumEinsum/multi_head_attention_3/einsum_1/Einsum:output:0Lmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabcd,cde->abeº
:multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0î
+multi_head_attention_3/attention_output/addAddV2>multi_head_attention_3/attention_output/einsum/Einsum:output:0Bmulti_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
dropout_12/IdentityIdentity/multi_head_attention_3/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12h
addAddV2inputsdropout_12/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12~
4layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¹
"layer_normalization_6/moments/meanMeanadd:z:0=layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(
*layer_normalization_6/moments/StopGradientStopGradient+layer_normalization_6/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1¸
/layer_normalization_6/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
8layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_6/moments/varianceMean3layer_normalization_6/moments/SquaredDifference:z:0Alayer_normalization_6/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(j
%layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_6/batchnorm/addAddV2/layer_normalization_6/moments/variance:output:0.layer_normalization_6/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
%layer_normalization_6/batchnorm/RsqrtRsqrt'layer_normalization_6/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1ª
2layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_6/batchnorm/mulMul)layer_normalization_6/batchnorm/Rsqrt:y:0:layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
%layer_normalization_6/batchnorm/mul_1Muladd:z:0'layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¸
%layer_normalization_6/batchnorm/mul_2Mul+layer_normalization_6/moments/mean:output:0'layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¢
.layer_normalization_6/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_6/batchnorm/subSub6layer_normalization_6/batchnorm/ReadVariableOp:value:0)layer_normalization_6/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¸
%layer_normalization_6/batchnorm/add_1AddV2)layer_normalization_6/batchnorm/mul_1:z:0'layer_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¦
.sequential_3/dense_12/Tensordot/ReadVariableOpReadVariableOp7sequential_3_dense_12_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0n
$sequential_3/dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_3/dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
%sequential_3/dense_12/Tensordot/ShapeShape)layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:o
-sequential_3/dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_3/dense_12/Tensordot/GatherV2GatherV2.sequential_3/dense_12/Tensordot/Shape:output:0-sequential_3/dense_12/Tensordot/free:output:06sequential_3/dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_3/dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_3/dense_12/Tensordot/GatherV2_1GatherV2.sequential_3/dense_12/Tensordot/Shape:output:0-sequential_3/dense_12/Tensordot/axes:output:08sequential_3/dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_3/dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_3/dense_12/Tensordot/ProdProd1sequential_3/dense_12/Tensordot/GatherV2:output:0.sequential_3/dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_3/dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_3/dense_12/Tensordot/Prod_1Prod3sequential_3/dense_12/Tensordot/GatherV2_1:output:00sequential_3/dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_3/dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_3/dense_12/Tensordot/concatConcatV2-sequential_3/dense_12/Tensordot/free:output:0-sequential_3/dense_12/Tensordot/axes:output:04sequential_3/dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_3/dense_12/Tensordot/stackPack-sequential_3/dense_12/Tensordot/Prod:output:0/sequential_3/dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:È
)sequential_3/dense_12/Tensordot/transpose	Transpose)layer_normalization_6/batchnorm/add_1:z:0/sequential_3/dense_12/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ì
'sequential_3/dense_12/Tensordot/ReshapeReshape-sequential_3/dense_12/Tensordot/transpose:y:0.sequential_3/dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
&sequential_3/dense_12/Tensordot/MatMulMatMul0sequential_3/dense_12/Tensordot/Reshape:output:06sequential_3/dense_12/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ q
'sequential_3/dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: o
-sequential_3/dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_3/dense_12/Tensordot/concat_1ConcatV21sequential_3/dense_12/Tensordot/GatherV2:output:00sequential_3/dense_12/Tensordot/Const_2:output:06sequential_3/dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Å
sequential_3/dense_12/TensordotReshape0sequential_3/dense_12/Tensordot/MatMul:product:01sequential_3/dense_12/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 
,sequential_3/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¾
sequential_3/dense_12/BiasAddBiasAdd(sequential_3/dense_12/Tensordot:output:04sequential_3/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 
sequential_3/dense_12/ReluRelu&sequential_3/dense_12/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 ¦
.sequential_3/dense_13/Tensordot/ReadVariableOpReadVariableOp7sequential_3_dense_13_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0n
$sequential_3/dense_13/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_3/dense_13/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_3/dense_13/Tensordot/ShapeShape(sequential_3/dense_12/Relu:activations:0*
T0*
_output_shapes
:o
-sequential_3/dense_13/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_3/dense_13/Tensordot/GatherV2GatherV2.sequential_3/dense_13/Tensordot/Shape:output:0-sequential_3/dense_13/Tensordot/free:output:06sequential_3/dense_13/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_3/dense_13/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_3/dense_13/Tensordot/GatherV2_1GatherV2.sequential_3/dense_13/Tensordot/Shape:output:0-sequential_3/dense_13/Tensordot/axes:output:08sequential_3/dense_13/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_3/dense_13/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_3/dense_13/Tensordot/ProdProd1sequential_3/dense_13/Tensordot/GatherV2:output:0.sequential_3/dense_13/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_3/dense_13/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_3/dense_13/Tensordot/Prod_1Prod3sequential_3/dense_13/Tensordot/GatherV2_1:output:00sequential_3/dense_13/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_3/dense_13/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_3/dense_13/Tensordot/concatConcatV2-sequential_3/dense_13/Tensordot/free:output:0-sequential_3/dense_13/Tensordot/axes:output:04sequential_3/dense_13/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_3/dense_13/Tensordot/stackPack-sequential_3/dense_13/Tensordot/Prod:output:0/sequential_3/dense_13/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ç
)sequential_3/dense_13/Tensordot/transpose	Transpose(sequential_3/dense_12/Relu:activations:0/sequential_3/dense_13/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 Ì
'sequential_3/dense_13/Tensordot/ReshapeReshape-sequential_3/dense_13/Tensordot/transpose:y:0.sequential_3/dense_13/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
&sequential_3/dense_13/Tensordot/MatMulMatMul0sequential_3/dense_13/Tensordot/Reshape:output:06sequential_3/dense_13/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2q
'sequential_3/dense_13/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2o
-sequential_3/dense_13/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_3/dense_13/Tensordot/concat_1ConcatV21sequential_3/dense_13/Tensordot/GatherV2:output:00sequential_3/dense_13/Tensordot/Const_2:output:06sequential_3/dense_13/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Å
sequential_3/dense_13/TensordotReshape0sequential_3/dense_13/Tensordot/MatMul:product:01sequential_3/dense_13/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
,sequential_3/dense_13/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_13_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0¾
sequential_3/dense_13/BiasAddBiasAdd(sequential_3/dense_13/Tensordot:output:04sequential_3/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12}
dropout_13/IdentityIdentity&sequential_3/dense_13/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
add_1AddV2)layer_normalization_6/batchnorm/add_1:z:0dropout_13/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12~
4layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
"layer_normalization_7/moments/meanMean	add_1:z:0=layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(
*layer_normalization_7/moments/StopGradientStopGradient+layer_normalization_7/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1º
/layer_normalization_7/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
8layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_7/moments/varianceMean3layer_normalization_7/moments/SquaredDifference:z:0Alayer_normalization_7/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(j
%layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_7/batchnorm/addAddV2/layer_normalization_7/moments/variance:output:0.layer_normalization_7/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
%layer_normalization_7/batchnorm/RsqrtRsqrt'layer_normalization_7/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1ª
2layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_7/batchnorm/mulMul)layer_normalization_7/batchnorm/Rsqrt:y:0:layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
%layer_normalization_7/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¸
%layer_normalization_7/batchnorm/mul_2Mul+layer_normalization_7/moments/mean:output:0'layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¢
.layer_normalization_7/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_7/batchnorm/subSub6layer_normalization_7/batchnorm/ReadVariableOp:value:0)layer_normalization_7/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¸
%layer_normalization_7/batchnorm/add_1AddV2)layer_normalization_7/batchnorm/mul_1:z:0'layer_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12|
IdentityIdentity)layer_normalization_7/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
NoOpNoOp/^layer_normalization_6/batchnorm/ReadVariableOp3^layer_normalization_6/batchnorm/mul/ReadVariableOp/^layer_normalization_7/batchnorm/ReadVariableOp3^layer_normalization_7/batchnorm/mul/ReadVariableOp;^multi_head_attention_3/attention_output/add/ReadVariableOpE^multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_3/key/add/ReadVariableOp8^multi_head_attention_3/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/query/add/ReadVariableOp:^multi_head_attention_3/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_3/value/add/ReadVariableOp:^multi_head_attention_3/value/einsum/Einsum/ReadVariableOp-^sequential_3/dense_12/BiasAdd/ReadVariableOp/^sequential_3/dense_12/Tensordot/ReadVariableOp-^sequential_3/dense_13/BiasAdd/ReadVariableOp/^sequential_3/dense_13/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ12: : : : : : : : : : : : : : : : 2`
.layer_normalization_6/batchnorm/ReadVariableOp.layer_normalization_6/batchnorm/ReadVariableOp2h
2layer_normalization_6/batchnorm/mul/ReadVariableOp2layer_normalization_6/batchnorm/mul/ReadVariableOp2`
.layer_normalization_7/batchnorm/ReadVariableOp.layer_normalization_7/batchnorm/ReadVariableOp2h
2layer_normalization_7/batchnorm/mul/ReadVariableOp2layer_normalization_7/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_3/attention_output/add/ReadVariableOp:multi_head_attention_3/attention_output/add/ReadVariableOp2
Dmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_3/key/add/ReadVariableOp-multi_head_attention_3/key/add/ReadVariableOp2r
7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp7multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/query/add/ReadVariableOp/multi_head_attention_3/query/add/ReadVariableOp2v
9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp9multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_3/value/add/ReadVariableOp/multi_head_attention_3/value/add/ReadVariableOp2v
9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp9multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2\
,sequential_3/dense_12/BiasAdd/ReadVariableOp,sequential_3/dense_12/BiasAdd/ReadVariableOp2`
.sequential_3/dense_12/Tensordot/ReadVariableOp.sequential_3/dense_12/Tensordot/ReadVariableOp2\
,sequential_3/dense_13/BiasAdd/ReadVariableOp,sequential_3/dense_13/BiasAdd/ReadVariableOp2`
.sequential_3/dense_13/Tensordot/ReadVariableOp.sequential_3/dense_13/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
 
_user_specified_nameinputs
Å
°
+__inference_model_3_layer_call_fn_126272795

inputs
unknown:12
	unknown_0:2
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
F__inference_model_3_layer_call_and_return_conditional_losses_126272396o
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
E:ÿÿÿÿÿÿÿÿÿ1: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
 
_user_specified_nameinputs
Ñ
À
K__inference_sequential_3_layer_call_and_return_conditional_losses_126271029

inputs$
dense_12_126271018:2  
dense_12_126271020: $
dense_13_126271023: 2 
dense_13_126271025:2
identity¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCallý
 dense_12/StatefulPartitionedCallStatefulPartitionedCallinputsdense_12_126271018dense_12_126271020*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_12_layer_call_and_return_conditional_losses_126270926 
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_126271023dense_13_126271025*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_13_layer_call_and_return_conditional_losses_126270962|
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
NoOpNoOp!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ12: : : : 2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
 
_user_specified_nameinputs
)
È
F__inference_model_3_layer_call_and_return_conditional_losses_126271816

inputs:
(token_and_position_embedding_3_126271465:12:
(token_and_position_embedding_3_126271467:25
transformer_encoder_3_126271598:221
transformer_encoder_3_126271600:25
transformer_encoder_3_126271602:221
transformer_encoder_3_126271604:25
transformer_encoder_3_126271606:221
transformer_encoder_3_126271608:25
transformer_encoder_3_126271610:22-
transformer_encoder_3_126271612:2-
transformer_encoder_3_126271614:2-
transformer_encoder_3_126271616:21
transformer_encoder_3_126271618:2 -
transformer_encoder_3_126271620: 1
transformer_encoder_3_126271622: 2-
transformer_encoder_3_126271624:2-
transformer_encoder_3_126271626:2-
transformer_encoder_3_126271628:2"
rnn_3_126271775:	2¸"
rnn_3_126271777:	.¸
rnn_3_126271779:	¸$
dense_14_126271794:.. 
dense_14_126271796:.$
dense_15_126271810:. 
dense_15_126271812:
identity¢ dense_14/StatefulPartitionedCall¢ dense_15/StatefulPartitionedCall¢rnn_3/StatefulPartitionedCall¢6token_and_position_embedding_3/StatefulPartitionedCall¢-transformer_encoder_3/StatefulPartitionedCallÕ
6token_and_position_embedding_3/StatefulPartitionedCallStatefulPartitionedCallinputs(token_and_position_embedding_3_126271465(token_and_position_embedding_3_126271467*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *f
faR_
]__inference_token_and_position_embedding_3_layer_call_and_return_conditional_losses_126271464Ô
-transformer_encoder_3/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_3/StatefulPartitionedCall:output:0transformer_encoder_3_126271598transformer_encoder_3_126271600transformer_encoder_3_126271602transformer_encoder_3_126271604transformer_encoder_3_126271606transformer_encoder_3_126271608transformer_encoder_3_126271610transformer_encoder_3_126271612transformer_encoder_3_126271614transformer_encoder_3_126271616transformer_encoder_3_126271618transformer_encoder_3_126271620transformer_encoder_3_126271622transformer_encoder_3_126271624transformer_encoder_3_126271626transformer_encoder_3_126271628*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transformer_encoder_3_layer_call_and_return_conditional_losses_126271597°
rnn_3/StatefulPartitionedCallStatefulPartitionedCall6transformer_encoder_3/StatefulPartitionedCall:output:0rnn_3_126271775rnn_3_126271777rnn_3_126271779*
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
D__inference_rnn_3_layer_call_and_return_conditional_losses_126271774
 dense_14/StatefulPartitionedCallStatefulPartitionedCall&rnn_3/StatefulPartitionedCall:output:0dense_14_126271794dense_14_126271796*
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
G__inference_dense_14_layer_call_and_return_conditional_losses_126271793
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_15_126271810dense_15_126271812*
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
G__inference_dense_15_layer_call_and_return_conditional_losses_126271809x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall^rnn_3/StatefulPartitionedCall7^token_and_position_embedding_3/StatefulPartitionedCall.^transformer_encoder_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ1: : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2>
rnn_3/StatefulPartitionedCallrnn_3/StatefulPartitionedCall2p
6token_and_position_embedding_3/StatefulPartitionedCall6token_and_position_embedding_3/StatefulPartitionedCall2^
-transformer_encoder_3/StatefulPartitionedCall-transformer_encoder_3/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
 
_user_specified_nameinputs
Ø?
â
K__inference_sequential_3_layer_call_and_return_conditional_losses_126274581

inputs<
*dense_12_tensordot_readvariableop_resource:2 6
(dense_12_biasadd_readvariableop_resource: <
*dense_13_tensordot_readvariableop_resource: 26
(dense_13_biasadd_readvariableop_resource:2
identity¢dense_12/BiasAdd/ReadVariableOp¢!dense_12/Tensordot/ReadVariableOp¢dense_13/BiasAdd/ReadVariableOp¢!dense_13/Tensordot/ReadVariableOp
!dense_12/Tensordot/ReadVariableOpReadVariableOp*dense_12_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0a
dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       N
dense_12/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:b
 dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_12/Tensordot/GatherV2GatherV2!dense_12/Tensordot/Shape:output:0 dense_12/Tensordot/free:output:0)dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_12/Tensordot/GatherV2_1GatherV2!dense_12/Tensordot/Shape:output:0 dense_12/Tensordot/axes:output:0+dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_12/Tensordot/ProdProd$dense_12/Tensordot/GatherV2:output:0!dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_12/Tensordot/Prod_1Prod&dense_12/Tensordot/GatherV2_1:output:0#dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_12/Tensordot/concatConcatV2 dense_12/Tensordot/free:output:0 dense_12/Tensordot/axes:output:0'dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_12/Tensordot/stackPack dense_12/Tensordot/Prod:output:0"dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_12/Tensordot/transpose	Transposeinputs"dense_12/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12¥
dense_12/Tensordot/ReshapeReshape dense_12/Tensordot/transpose:y:0!dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¥
dense_12/Tensordot/MatMulMatMul#dense_12/Tensordot/Reshape:output:0)dense_12/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ d
dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: b
 dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_12/Tensordot/concat_1ConcatV2$dense_12/Tensordot/GatherV2:output:0#dense_12/Tensordot/Const_2:output:0)dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_12/TensordotReshape#dense_12/Tensordot/MatMul:product:0$dense_12/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_12/BiasAddBiasAdddense_12/Tensordot:output:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 f
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 
!dense_13/Tensordot/ReadVariableOpReadVariableOp*dense_13_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0a
dense_13/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_13/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_13/Tensordot/ShapeShapedense_12/Relu:activations:0*
T0*
_output_shapes
:b
 dense_13/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_13/Tensordot/GatherV2GatherV2!dense_13/Tensordot/Shape:output:0 dense_13/Tensordot/free:output:0)dense_13/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_13/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_13/Tensordot/GatherV2_1GatherV2!dense_13/Tensordot/Shape:output:0 dense_13/Tensordot/axes:output:0+dense_13/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_13/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_13/Tensordot/ProdProd$dense_13/Tensordot/GatherV2:output:0!dense_13/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_13/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_13/Tensordot/Prod_1Prod&dense_13/Tensordot/GatherV2_1:output:0#dense_13/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_13/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_13/Tensordot/concatConcatV2 dense_13/Tensordot/free:output:0 dense_13/Tensordot/axes:output:0'dense_13/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_13/Tensordot/stackPack dense_13/Tensordot/Prod:output:0"dense_13/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
: 
dense_13/Tensordot/transpose	Transposedense_12/Relu:activations:0"dense_13/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 ¥
dense_13/Tensordot/ReshapeReshape dense_13/Tensordot/transpose:y:0!dense_13/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¥
dense_13/Tensordot/MatMulMatMul#dense_13/Tensordot/Reshape:output:0)dense_13/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2d
dense_13/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2b
 dense_13/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_13/Tensordot/concat_1ConcatV2$dense_13/Tensordot/GatherV2:output:0#dense_13/Tensordot/Const_2:output:0)dense_13/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_13/TensordotReshape#dense_13/Tensordot/MatMul:product:0$dense_13/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
dense_13/BiasAddBiasAdddense_13/Tensordot:output:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12l
IdentityIdentitydense_13/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ò
NoOpNoOp ^dense_12/BiasAdd/ReadVariableOp"^dense_12/Tensordot/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp"^dense_13/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ12: : : : 2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2F
!dense_12/Tensordot/ReadVariableOp!dense_12/Tensordot/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2F
!dense_13/Tensordot/ReadVariableOp!dense_13/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
 
_user_specified_nameinputs
Ø

,__inference_dense_13_layer_call_fn_126274728

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
:ÿÿÿÿÿÿÿÿÿ12*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_13_layer_call_and_return_conditional_losses_126270962s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ1 : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 
 
_user_specified_nameinputs
)
É
F__inference_model_3_layer_call_and_return_conditional_losses_126272622
input_4:
(token_and_position_embedding_3_126272566:12:
(token_and_position_embedding_3_126272568:25
transformer_encoder_3_126272571:221
transformer_encoder_3_126272573:25
transformer_encoder_3_126272575:221
transformer_encoder_3_126272577:25
transformer_encoder_3_126272579:221
transformer_encoder_3_126272581:25
transformer_encoder_3_126272583:22-
transformer_encoder_3_126272585:2-
transformer_encoder_3_126272587:2-
transformer_encoder_3_126272589:21
transformer_encoder_3_126272591:2 -
transformer_encoder_3_126272593: 1
transformer_encoder_3_126272595: 2-
transformer_encoder_3_126272597:2-
transformer_encoder_3_126272599:2-
transformer_encoder_3_126272601:2"
rnn_3_126272604:	2¸"
rnn_3_126272606:	.¸
rnn_3_126272608:	¸$
dense_14_126272611:.. 
dense_14_126272613:.$
dense_15_126272616:. 
dense_15_126272618:
identity¢ dense_14/StatefulPartitionedCall¢ dense_15/StatefulPartitionedCall¢rnn_3/StatefulPartitionedCall¢6token_and_position_embedding_3/StatefulPartitionedCall¢-transformer_encoder_3/StatefulPartitionedCallÖ
6token_and_position_embedding_3/StatefulPartitionedCallStatefulPartitionedCallinput_4(token_and_position_embedding_3_126272566(token_and_position_embedding_3_126272568*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *f
faR_
]__inference_token_and_position_embedding_3_layer_call_and_return_conditional_losses_126271464Ô
-transformer_encoder_3/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_3/StatefulPartitionedCall:output:0transformer_encoder_3_126272571transformer_encoder_3_126272573transformer_encoder_3_126272575transformer_encoder_3_126272577transformer_encoder_3_126272579transformer_encoder_3_126272581transformer_encoder_3_126272583transformer_encoder_3_126272585transformer_encoder_3_126272587transformer_encoder_3_126272589transformer_encoder_3_126272591transformer_encoder_3_126272593transformer_encoder_3_126272595transformer_encoder_3_126272597transformer_encoder_3_126272599transformer_encoder_3_126272601*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transformer_encoder_3_layer_call_and_return_conditional_losses_126272235°
rnn_3/StatefulPartitionedCallStatefulPartitionedCall6transformer_encoder_3/StatefulPartitionedCall:output:0rnn_3_126272604rnn_3_126272606rnn_3_126272608*
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
D__inference_rnn_3_layer_call_and_return_conditional_losses_126272046
 dense_14/StatefulPartitionedCallStatefulPartitionedCall&rnn_3/StatefulPartitionedCall:output:0dense_14_126272611dense_14_126272613*
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
G__inference_dense_14_layer_call_and_return_conditional_losses_126271793
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_15_126272616dense_15_126272618*
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
G__inference_dense_15_layer_call_and_return_conditional_losses_126271809x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall^rnn_3/StatefulPartitionedCall7^token_and_position_embedding_3/StatefulPartitionedCall.^transformer_encoder_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ1: : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2>
rnn_3/StatefulPartitionedCallrnn_3/StatefulPartitionedCall2p
6token_and_position_embedding_3/StatefulPartitionedCall6token_and_position_embedding_3/StatefulPartitionedCall2^
-transformer_encoder_3/StatefulPartitionedCall-transformer_encoder_3/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
!
_user_specified_name	input_4
Ä
Ò
while_cond_126271162
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_126271162___redundant_placeholder07
3while_while_cond_126271162___redundant_placeholder17
3while_while_cond_126271162___redundant_placeholder27
3while_while_cond_126271162___redundant_placeholder3
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
ì	
Ê
rnn_3_while_cond_126272997(
$rnn_3_while_rnn_3_while_loop_counter.
*rnn_3_while_rnn_3_while_maximum_iterations
rnn_3_while_placeholder
rnn_3_while_placeholder_1
rnn_3_while_placeholder_2
rnn_3_while_placeholder_3*
&rnn_3_while_less_rnn_3_strided_slice_1C
?rnn_3_while_rnn_3_while_cond_126272997___redundant_placeholder0C
?rnn_3_while_rnn_3_while_cond_126272997___redundant_placeholder1C
?rnn_3_while_rnn_3_while_cond_126272997___redundant_placeholder2C
?rnn_3_while_rnn_3_while_cond_126272997___redundant_placeholder3
rnn_3_while_identity
z
rnn_3/while/LessLessrnn_3_while_placeholder&rnn_3_while_less_rnn_3_strided_slice_1*
T0*
_output_shapes
: W
rnn_3/while/IdentityIdentityrnn_3/while/Less:z:0*
T0
*
_output_shapes
: "5
rnn_3_while_identityrnn_3/while/Identity:output:0*(
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
Ó8
Ê
while_body_126271962
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_3_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_3_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_3_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_3_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_3_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_3_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_3/BiasAdd/ReadVariableOp¢'while/lstm_cell_3/MatMul/ReadVariableOp¢)while/lstm_cell_3/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_3_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_3/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_3/addAddV2"while/lstm_cell_3/MatMul:product:0$while/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_3/BiasAddBiasAddwhile/lstm_cell_3/add:z:00while/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0"while/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_3/SigmoidSigmoid while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_3/Sigmoid_1Sigmoid while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/mulMulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_3/TanhTanh while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/mul_1Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/add_1AddV2while/lstm_cell_3/mul:z:0while/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_3/Sigmoid_2Sigmoid while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_3/mul_2Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_3/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_3/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_3/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_3/BiasAdd/ReadVariableOp(^while/lstm_cell_3/MatMul/ReadVariableOp*^while/lstm_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_3_biasadd_readvariableop_resource3while_lstm_cell_3_biasadd_readvariableop_resource_0"j
2while_lstm_cell_3_matmul_1_readvariableop_resource4while_lstm_cell_3_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_3_matmul_readvariableop_resource2while_lstm_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_3/BiasAdd/ReadVariableOp(while/lstm_cell_3/BiasAdd/ReadVariableOp2R
'while/lstm_cell_3/MatMul/ReadVariableOp'while/lstm_cell_3/MatMul/ReadVariableOp2V
)while/lstm_cell_3/MatMul_1/ReadVariableOp)while/lstm_cell_3/MatMul_1/ReadVariableOp: 
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
while_cond_126273885
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_126273885___redundant_placeholder07
3while_while_cond_126273885___redundant_placeholder17
3while_while_cond_126273885___redundant_placeholder27
3while_while_cond_126273885___redundant_placeholder3
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
èò
Ü
F__inference_model_3_layer_call_and_return_conditional_losses_126273095

inputsW
Etoken_and_position_embedding_3_embedding_7_embedding_lookup_126272806:12W
Etoken_and_position_embedding_3_embedding_6_embedding_lookup_126272812:2n
Xtransformer_encoder_3_multi_head_attention_3_query_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_3_multi_head_attention_3_query_add_readvariableop_resource:2l
Vtransformer_encoder_3_multi_head_attention_3_key_einsum_einsum_readvariableop_resource:22^
Ltransformer_encoder_3_multi_head_attention_3_key_add_readvariableop_resource:2n
Xtransformer_encoder_3_multi_head_attention_3_value_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_3_multi_head_attention_3_value_add_readvariableop_resource:2y
ctransformer_encoder_3_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource:22g
Ytransformer_encoder_3_multi_head_attention_3_attention_output_add_readvariableop_resource:2_
Qtransformer_encoder_3_layer_normalization_6_batchnorm_mul_readvariableop_resource:2[
Mtransformer_encoder_3_layer_normalization_6_batchnorm_readvariableop_resource:2_
Mtransformer_encoder_3_sequential_3_dense_12_tensordot_readvariableop_resource:2 Y
Ktransformer_encoder_3_sequential_3_dense_12_biasadd_readvariableop_resource: _
Mtransformer_encoder_3_sequential_3_dense_13_tensordot_readvariableop_resource: 2Y
Ktransformer_encoder_3_sequential_3_dense_13_biasadd_readvariableop_resource:2_
Qtransformer_encoder_3_layer_normalization_7_batchnorm_mul_readvariableop_resource:2[
Mtransformer_encoder_3_layer_normalization_7_batchnorm_readvariableop_resource:2C
0rnn_3_lstm_cell_3_matmul_readvariableop_resource:	2¸E
2rnn_3_lstm_cell_3_matmul_1_readvariableop_resource:	.¸@
1rnn_3_lstm_cell_3_biasadd_readvariableop_resource:	¸9
'dense_14_matmul_readvariableop_resource:..6
(dense_14_biasadd_readvariableop_resource:.9
'dense_15_matmul_readvariableop_resource:.6
(dense_15_biasadd_readvariableop_resource:
identity¢dense_14/BiasAdd/ReadVariableOp¢dense_14/MatMul/ReadVariableOp¢dense_15/BiasAdd/ReadVariableOp¢dense_15/MatMul/ReadVariableOp¢(rnn_3/lstm_cell_3/BiasAdd/ReadVariableOp¢'rnn_3/lstm_cell_3/MatMul/ReadVariableOp¢)rnn_3/lstm_cell_3/MatMul_1/ReadVariableOp¢rnn_3/while¢;token_and_position_embedding_3/embedding_6/embedding_lookup¢;token_and_position_embedding_3/embedding_7/embedding_lookup¢Dtransformer_encoder_3/layer_normalization_6/batchnorm/ReadVariableOp¢Htransformer_encoder_3/layer_normalization_6/batchnorm/mul/ReadVariableOp¢Dtransformer_encoder_3/layer_normalization_7/batchnorm/ReadVariableOp¢Htransformer_encoder_3/layer_normalization_7/batchnorm/mul/ReadVariableOp¢Ptransformer_encoder_3/multi_head_attention_3/attention_output/add/ReadVariableOp¢Ztransformer_encoder_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp¢Ctransformer_encoder_3/multi_head_attention_3/key/add/ReadVariableOp¢Mtransformer_encoder_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp¢Etransformer_encoder_3/multi_head_attention_3/query/add/ReadVariableOp¢Otransformer_encoder_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp¢Etransformer_encoder_3/multi_head_attention_3/value/add/ReadVariableOp¢Otransformer_encoder_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp¢Btransformer_encoder_3/sequential_3/dense_12/BiasAdd/ReadVariableOp¢Dtransformer_encoder_3/sequential_3/dense_12/Tensordot/ReadVariableOp¢Btransformer_encoder_3/sequential_3/dense_13/BiasAdd/ReadVariableOp¢Dtransformer_encoder_3/sequential_3/dense_13/Tensordot/ReadVariableOpZ
$token_and_position_embedding_3/ShapeShapeinputs*
T0*
_output_shapes
:
2token_and_position_embedding_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ~
4token_and_position_embedding_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,token_and_position_embedding_3/strided_sliceStridedSlice-token_and_position_embedding_3/Shape:output:0;token_and_position_embedding_3/strided_slice/stack:output:0=token_and_position_embedding_3/strided_slice/stack_1:output:0=token_and_position_embedding_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_3/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ê
$token_and_position_embedding_3/rangeRange3token_and_position_embedding_3/range/start:output:05token_and_position_embedding_3/strided_slice:output:03token_and_position_embedding_3/range/delta:output:0*
_output_shapes
:1Ú
;token_and_position_embedding_3/embedding_7/embedding_lookupResourceGatherEtoken_and_position_embedding_3_embedding_7_embedding_lookup_126272806-token_and_position_embedding_3/range:output:0*
Tindices0*X
_classN
LJloc:@token_and_position_embedding_3/embedding_7/embedding_lookup/126272806*
_output_shapes

:12*
dtype0
Dtoken_and_position_embedding_3/embedding_7/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_3/embedding_7/embedding_lookup:output:0*
T0*X
_classN
LJloc:@token_and_position_embedding_3/embedding_7/embedding_lookup/126272806*
_output_shapes

:12Ê
Ftoken_and_position_embedding_3/embedding_7/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_3/embedding_7/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:12
/token_and_position_embedding_3/embedding_6/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1í
;token_and_position_embedding_3/embedding_6/embedding_lookupResourceGatherEtoken_and_position_embedding_3_embedding_6_embedding_lookup_1262728123token_and_position_embedding_3/embedding_6/Cast:y:0*
Tindices0*X
_classN
LJloc:@token_and_position_embedding_3/embedding_6/embedding_lookup/126272812*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
dtype0¦
Dtoken_and_position_embedding_3/embedding_6/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_3/embedding_6/embedding_lookup:output:0*
T0*X
_classN
LJloc:@token_and_position_embedding_3/embedding_6/embedding_lookup/126272812*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12×
Ftoken_and_position_embedding_3/embedding_6/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_3/embedding_6/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
"token_and_position_embedding_3/addAddV2Otoken_and_position_embedding_3/embedding_6/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_3/embedding_7/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12ì
Otransformer_encoder_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_3_multi_head_attention_3_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0«
@transformer_encoder_3/multi_head_attention_3/query/einsum/EinsumEinsum&token_and_position_embedding_3/add:z:0Wtransformer_encoder_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabc,cde->abdeÔ
Etransformer_encoder_3/multi_head_attention_3/query/add/ReadVariableOpReadVariableOpNtransformer_encoder_3_multi_head_attention_3_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0
6transformer_encoder_3/multi_head_attention_3/query/addAddV2Itransformer_encoder_3/multi_head_attention_3/query/einsum/Einsum:output:0Mtransformer_encoder_3/multi_head_attention_3/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12è
Mtransformer_encoder_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_encoder_3_multi_head_attention_3_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0§
>transformer_encoder_3/multi_head_attention_3/key/einsum/EinsumEinsum&token_and_position_embedding_3/add:z:0Utransformer_encoder_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabc,cde->abdeÐ
Ctransformer_encoder_3/multi_head_attention_3/key/add/ReadVariableOpReadVariableOpLtransformer_encoder_3_multi_head_attention_3_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0
4transformer_encoder_3/multi_head_attention_3/key/addAddV2Gtransformer_encoder_3/multi_head_attention_3/key/einsum/Einsum:output:0Ktransformer_encoder_3/multi_head_attention_3/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12ì
Otransformer_encoder_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_3_multi_head_attention_3_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0«
@transformer_encoder_3/multi_head_attention_3/value/einsum/EinsumEinsum&token_and_position_embedding_3/add:z:0Wtransformer_encoder_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabc,cde->abdeÔ
Etransformer_encoder_3/multi_head_attention_3/value/add/ReadVariableOpReadVariableOpNtransformer_encoder_3_multi_head_attention_3_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0
6transformer_encoder_3/multi_head_attention_3/value/addAddV2Itransformer_encoder_3/multi_head_attention_3/value/einsum/Einsum:output:0Mtransformer_encoder_3/multi_head_attention_3/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12w
2transformer_encoder_3/multi_head_attention_3/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>ê
0transformer_encoder_3/multi_head_attention_3/MulMul:transformer_encoder_3/multi_head_attention_3/query/add:z:0;transformer_encoder_3/multi_head_attention_3/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
:transformer_encoder_3/multi_head_attention_3/einsum/EinsumEinsum8transformer_encoder_3/multi_head_attention_3/key/add:z:04transformer_encoder_3/multi_head_attention_3/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11*
equationaecd,abcd->acbeÆ
<transformer_encoder_3/multi_head_attention_3/softmax/SoftmaxSoftmaxCtransformer_encoder_3/multi_head_attention_3/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11Ë
=transformer_encoder_3/multi_head_attention_3/dropout/IdentityIdentityFtransformer_encoder_3/multi_head_attention_3/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11¬
<transformer_encoder_3/multi_head_attention_3/einsum_1/EinsumEinsumFtransformer_encoder_3/multi_head_attention_3/dropout/Identity:output:0:transformer_encoder_3/multi_head_attention_3/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationacbe,aecd->abcd
Ztransformer_encoder_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpctransformer_encoder_3_multi_head_attention_3_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ü
Ktransformer_encoder_3/multi_head_attention_3/attention_output/einsum/EinsumEinsumEtransformer_encoder_3/multi_head_attention_3/einsum_1/Einsum:output:0btransformer_encoder_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*
equationabcd,cde->abeæ
Ptransformer_encoder_3/multi_head_attention_3/attention_output/add/ReadVariableOpReadVariableOpYtransformer_encoder_3_multi_head_attention_3_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0°
Atransformer_encoder_3/multi_head_attention_3/attention_output/addAddV2Ttransformer_encoder_3/multi_head_attention_3/attention_output/einsum/Einsum:output:0Xtransformer_encoder_3/multi_head_attention_3/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12²
)transformer_encoder_3/dropout_12/IdentityIdentityEtransformer_encoder_3/multi_head_attention_3/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12´
transformer_encoder_3/addAddV2&token_and_position_embedding_3/add:z:02transformer_encoder_3/dropout_12/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
Jtransformer_encoder_3/layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:û
8transformer_encoder_3/layer_normalization_6/moments/meanMeantransformer_encoder_3/add:z:0Stransformer_encoder_3/layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(É
@transformer_encoder_3/layer_normalization_6/moments/StopGradientStopGradientAtransformer_encoder_3/layer_normalization_6/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1ú
Etransformer_encoder_3/layer_normalization_6/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_3/add:z:0Itransformer_encoder_3/layer_normalization_6/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
Ntransformer_encoder_3/layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¯
<transformer_encoder_3/layer_normalization_6/moments/varianceMeanItransformer_encoder_3/layer_normalization_6/moments/SquaredDifference:z:0Wtransformer_encoder_3/layer_normalization_6/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(
;transformer_encoder_3/layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
9transformer_encoder_3/layer_normalization_6/batchnorm/addAddV2Etransformer_encoder_3/layer_normalization_6/moments/variance:output:0Dtransformer_encoder_3/layer_normalization_6/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1¹
;transformer_encoder_3/layer_normalization_6/batchnorm/RsqrtRsqrt=transformer_encoder_3/layer_normalization_6/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1Ö
Htransformer_encoder_3/layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpQtransformer_encoder_3_layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_3/layer_normalization_6/batchnorm/mulMul?transformer_encoder_3/layer_normalization_6/batchnorm/Rsqrt:y:0Ptransformer_encoder_3/layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ö
;transformer_encoder_3/layer_normalization_6/batchnorm/mul_1Multransformer_encoder_3/add:z:0=transformer_encoder_3/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12ú
;transformer_encoder_3/layer_normalization_6/batchnorm/mul_2MulAtransformer_encoder_3/layer_normalization_6/moments/mean:output:0=transformer_encoder_3/layer_normalization_6/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Î
Dtransformer_encoder_3/layer_normalization_6/batchnorm/ReadVariableOpReadVariableOpMtransformer_encoder_3_layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_3/layer_normalization_6/batchnorm/subSubLtransformer_encoder_3/layer_normalization_6/batchnorm/ReadVariableOp:value:0?transformer_encoder_3/layer_normalization_6/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12ú
;transformer_encoder_3/layer_normalization_6/batchnorm/add_1AddV2?transformer_encoder_3/layer_normalization_6/batchnorm/mul_1:z:0=transformer_encoder_3/layer_normalization_6/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ò
Dtransformer_encoder_3/sequential_3/dense_12/Tensordot/ReadVariableOpReadVariableOpMtransformer_encoder_3_sequential_3_dense_12_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0
:transformer_encoder_3/sequential_3/dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
:transformer_encoder_3/sequential_3/dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ª
;transformer_encoder_3/sequential_3/dense_12/Tensordot/ShapeShape?transformer_encoder_3/layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Ctransformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
>transformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2GatherV2Dtransformer_encoder_3/sequential_3/dense_12/Tensordot/Shape:output:0Ctransformer_encoder_3/sequential_3/dense_12/Tensordot/free:output:0Ltransformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Etransformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ï
@transformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2_1GatherV2Dtransformer_encoder_3/sequential_3/dense_12/Tensordot/Shape:output:0Ctransformer_encoder_3/sequential_3/dense_12/Tensordot/axes:output:0Ntransformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
;transformer_encoder_3/sequential_3/dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ò
:transformer_encoder_3/sequential_3/dense_12/Tensordot/ProdProdGtransformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2:output:0Dtransformer_encoder_3/sequential_3/dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: 
=transformer_encoder_3/sequential_3/dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ø
<transformer_encoder_3/sequential_3/dense_12/Tensordot/Prod_1ProdItransformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2_1:output:0Ftransformer_encoder_3/sequential_3/dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Atransformer_encoder_3/sequential_3/dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ì
<transformer_encoder_3/sequential_3/dense_12/Tensordot/concatConcatV2Ctransformer_encoder_3/sequential_3/dense_12/Tensordot/free:output:0Ctransformer_encoder_3/sequential_3/dense_12/Tensordot/axes:output:0Jtransformer_encoder_3/sequential_3/dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ý
;transformer_encoder_3/sequential_3/dense_12/Tensordot/stackPackCtransformer_encoder_3/sequential_3/dense_12/Tensordot/Prod:output:0Etransformer_encoder_3/sequential_3/dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
?transformer_encoder_3/sequential_3/dense_12/Tensordot/transpose	Transpose?transformer_encoder_3/layer_normalization_6/batchnorm/add_1:z:0Etransformer_encoder_3/sequential_3/dense_12/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
=transformer_encoder_3/sequential_3/dense_12/Tensordot/ReshapeReshapeCtransformer_encoder_3/sequential_3/dense_12/Tensordot/transpose:y:0Dtransformer_encoder_3/sequential_3/dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
<transformer_encoder_3/sequential_3/dense_12/Tensordot/MatMulMatMulFtransformer_encoder_3/sequential_3/dense_12/Tensordot/Reshape:output:0Ltransformer_encoder_3/sequential_3/dense_12/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
=transformer_encoder_3/sequential_3/dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
Ctransformer_encoder_3/sequential_3/dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
>transformer_encoder_3/sequential_3/dense_12/Tensordot/concat_1ConcatV2Gtransformer_encoder_3/sequential_3/dense_12/Tensordot/GatherV2:output:0Ftransformer_encoder_3/sequential_3/dense_12/Tensordot/Const_2:output:0Ltransformer_encoder_3/sequential_3/dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
5transformer_encoder_3/sequential_3/dense_12/TensordotReshapeFtransformer_encoder_3/sequential_3/dense_12/Tensordot/MatMul:product:0Gtransformer_encoder_3/sequential_3/dense_12/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 Ê
Btransformer_encoder_3/sequential_3/dense_12/BiasAdd/ReadVariableOpReadVariableOpKtransformer_encoder_3_sequential_3_dense_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
3transformer_encoder_3/sequential_3/dense_12/BiasAddBiasAdd>transformer_encoder_3/sequential_3/dense_12/Tensordot:output:0Jtransformer_encoder_3/sequential_3/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 ¬
0transformer_encoder_3/sequential_3/dense_12/ReluRelu<transformer_encoder_3/sequential_3/dense_12/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 Ò
Dtransformer_encoder_3/sequential_3/dense_13/Tensordot/ReadVariableOpReadVariableOpMtransformer_encoder_3_sequential_3_dense_13_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0
:transformer_encoder_3/sequential_3/dense_13/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
:transformer_encoder_3/sequential_3/dense_13/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ©
;transformer_encoder_3/sequential_3/dense_13/Tensordot/ShapeShape>transformer_encoder_3/sequential_3/dense_12/Relu:activations:0*
T0*
_output_shapes
:
Ctransformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
>transformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2GatherV2Dtransformer_encoder_3/sequential_3/dense_13/Tensordot/Shape:output:0Ctransformer_encoder_3/sequential_3/dense_13/Tensordot/free:output:0Ltransformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Etransformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ï
@transformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2_1GatherV2Dtransformer_encoder_3/sequential_3/dense_13/Tensordot/Shape:output:0Ctransformer_encoder_3/sequential_3/dense_13/Tensordot/axes:output:0Ntransformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
;transformer_encoder_3/sequential_3/dense_13/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ò
:transformer_encoder_3/sequential_3/dense_13/Tensordot/ProdProdGtransformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2:output:0Dtransformer_encoder_3/sequential_3/dense_13/Tensordot/Const:output:0*
T0*
_output_shapes
: 
=transformer_encoder_3/sequential_3/dense_13/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ø
<transformer_encoder_3/sequential_3/dense_13/Tensordot/Prod_1ProdItransformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2_1:output:0Ftransformer_encoder_3/sequential_3/dense_13/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Atransformer_encoder_3/sequential_3/dense_13/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ì
<transformer_encoder_3/sequential_3/dense_13/Tensordot/concatConcatV2Ctransformer_encoder_3/sequential_3/dense_13/Tensordot/free:output:0Ctransformer_encoder_3/sequential_3/dense_13/Tensordot/axes:output:0Jtransformer_encoder_3/sequential_3/dense_13/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ý
;transformer_encoder_3/sequential_3/dense_13/Tensordot/stackPackCtransformer_encoder_3/sequential_3/dense_13/Tensordot/Prod:output:0Etransformer_encoder_3/sequential_3/dense_13/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
?transformer_encoder_3/sequential_3/dense_13/Tensordot/transpose	Transpose>transformer_encoder_3/sequential_3/dense_12/Relu:activations:0Etransformer_encoder_3/sequential_3/dense_13/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1 
=transformer_encoder_3/sequential_3/dense_13/Tensordot/ReshapeReshapeCtransformer_encoder_3/sequential_3/dense_13/Tensordot/transpose:y:0Dtransformer_encoder_3/sequential_3/dense_13/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
<transformer_encoder_3/sequential_3/dense_13/Tensordot/MatMulMatMulFtransformer_encoder_3/sequential_3/dense_13/Tensordot/Reshape:output:0Ltransformer_encoder_3/sequential_3/dense_13/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
=transformer_encoder_3/sequential_3/dense_13/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Ctransformer_encoder_3/sequential_3/dense_13/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
>transformer_encoder_3/sequential_3/dense_13/Tensordot/concat_1ConcatV2Gtransformer_encoder_3/sequential_3/dense_13/Tensordot/GatherV2:output:0Ftransformer_encoder_3/sequential_3/dense_13/Tensordot/Const_2:output:0Ltransformer_encoder_3/sequential_3/dense_13/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
5transformer_encoder_3/sequential_3/dense_13/TensordotReshapeFtransformer_encoder_3/sequential_3/dense_13/Tensordot/MatMul:product:0Gtransformer_encoder_3/sequential_3/dense_13/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ê
Btransformer_encoder_3/sequential_3/dense_13/BiasAdd/ReadVariableOpReadVariableOpKtransformer_encoder_3_sequential_3_dense_13_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
3transformer_encoder_3/sequential_3/dense_13/BiasAddBiasAdd>transformer_encoder_3/sequential_3/dense_13/Tensordot:output:0Jtransformer_encoder_3/sequential_3/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12©
)transformer_encoder_3/dropout_13/IdentityIdentity<transformer_encoder_3/sequential_3/dense_13/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ï
transformer_encoder_3/add_1AddV2?transformer_encoder_3/layer_normalization_6/batchnorm/add_1:z:02transformer_encoder_3/dropout_13/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
Jtransformer_encoder_3/layer_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ý
8transformer_encoder_3/layer_normalization_7/moments/meanMeantransformer_encoder_3/add_1:z:0Stransformer_encoder_3/layer_normalization_7/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(É
@transformer_encoder_3/layer_normalization_7/moments/StopGradientStopGradientAtransformer_encoder_3/layer_normalization_7/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1ü
Etransformer_encoder_3/layer_normalization_7/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_3/add_1:z:0Itransformer_encoder_3/layer_normalization_7/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
Ntransformer_encoder_3/layer_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¯
<transformer_encoder_3/layer_normalization_7/moments/varianceMeanItransformer_encoder_3/layer_normalization_7/moments/SquaredDifference:z:0Wtransformer_encoder_3/layer_normalization_7/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1*
	keep_dims(
;transformer_encoder_3/layer_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
9transformer_encoder_3/layer_normalization_7/batchnorm/addAddV2Etransformer_encoder_3/layer_normalization_7/moments/variance:output:0Dtransformer_encoder_3/layer_normalization_7/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1¹
;transformer_encoder_3/layer_normalization_7/batchnorm/RsqrtRsqrt=transformer_encoder_3/layer_normalization_7/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1Ö
Htransformer_encoder_3/layer_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpQtransformer_encoder_3_layer_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_3/layer_normalization_7/batchnorm/mulMul?transformer_encoder_3/layer_normalization_7/batchnorm/Rsqrt:y:0Ptransformer_encoder_3/layer_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Ø
;transformer_encoder_3/layer_normalization_7/batchnorm/mul_1Multransformer_encoder_3/add_1:z:0=transformer_encoder_3/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12ú
;transformer_encoder_3/layer_normalization_7/batchnorm/mul_2MulAtransformer_encoder_3/layer_normalization_7/moments/mean:output:0=transformer_encoder_3/layer_normalization_7/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12Î
Dtransformer_encoder_3/layer_normalization_7/batchnorm/ReadVariableOpReadVariableOpMtransformer_encoder_3_layer_normalization_7_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_3/layer_normalization_7/batchnorm/subSubLtransformer_encoder_3/layer_normalization_7/batchnorm/ReadVariableOp:value:0?transformer_encoder_3/layer_normalization_7/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12ú
;transformer_encoder_3/layer_normalization_7/batchnorm/add_1AddV2?transformer_encoder_3/layer_normalization_7/batchnorm/mul_1:z:0=transformer_encoder_3/layer_normalization_7/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12z
rnn_3/ShapeShape?transformer_encoder_3/layer_normalization_7/batchnorm/add_1:z:0*
T0*
_output_shapes
:c
rnn_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
rnn_3/strided_sliceStridedSlicernn_3/Shape:output:0"rnn_3/strided_slice/stack:output:0$rnn_3/strided_slice/stack_1:output:0$rnn_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
rnn_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
rnn_3/zeros/packedPackrnn_3/strided_slice:output:0rnn_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
rnn_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
rnn_3/zerosFillrnn_3/zeros/packed:output:0rnn_3/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.X
rnn_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
rnn_3/zeros_1/packedPackrnn_3/strided_slice:output:0rnn_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:X
rnn_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rnn_3/zeros_1Fillrnn_3/zeros_1/packed:output:0rnn_3/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.i
rnn_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ²
rnn_3/transpose	Transpose?transformer_encoder_3/layer_normalization_7/batchnorm/add_1:z:0rnn_3/transpose/perm:output:0*
T0*+
_output_shapes
:1ÿÿÿÿÿÿÿÿÿ2P
rnn_3/Shape_1Shapernn_3/transpose:y:0*
T0*
_output_shapes
:e
rnn_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
rnn_3/strided_slice_1StridedSlicernn_3/Shape_1:output:0$rnn_3/strided_slice_1/stack:output:0&rnn_3/strided_slice_1/stack_1:output:0&rnn_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!rnn_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÆ
rnn_3/TensorArrayV2TensorListReserve*rnn_3/TensorArrayV2/element_shape:output:0rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
;rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ò
-rnn_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn_3/transpose:y:0Drnn_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒe
rnn_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
rnn_3/strided_slice_2StridedSlicernn_3/transpose:y:0$rnn_3/strided_slice_2/stack:output:0&rnn_3/strided_slice_2/stack_1:output:0&rnn_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
'rnn_3/lstm_cell_3/MatMul/ReadVariableOpReadVariableOp0rnn_3_lstm_cell_3_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0¦
rnn_3/lstm_cell_3/MatMulMatMulrnn_3/strided_slice_2:output:0/rnn_3/lstm_cell_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)rnn_3/lstm_cell_3/MatMul_1/ReadVariableOpReadVariableOp2rnn_3_lstm_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0 
rnn_3/lstm_cell_3/MatMul_1MatMulrnn_3/zeros:output:01rnn_3/lstm_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
rnn_3/lstm_cell_3/addAddV2"rnn_3/lstm_cell_3/MatMul:product:0$rnn_3/lstm_cell_3/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(rnn_3/lstm_cell_3/BiasAdd/ReadVariableOpReadVariableOp1rnn_3_lstm_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0¤
rnn_3/lstm_cell_3/BiasAddBiasAddrnn_3/lstm_cell_3/add:z:00rnn_3/lstm_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!rnn_3/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
rnn_3/lstm_cell_3/splitSplit*rnn_3/lstm_cell_3/split/split_dim:output:0"rnn_3/lstm_cell_3/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
rnn_3/lstm_cell_3/SigmoidSigmoid rnn_3/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
rnn_3/lstm_cell_3/Sigmoid_1Sigmoid rnn_3/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_3/lstm_cell_3/mulMulrnn_3/lstm_cell_3/Sigmoid_1:y:0rnn_3/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
rnn_3/lstm_cell_3/TanhTanh rnn_3/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_3/lstm_cell_3/mul_1Mulrnn_3/lstm_cell_3/Sigmoid:y:0rnn_3/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_3/lstm_cell_3/add_1AddV2rnn_3/lstm_cell_3/mul:z:0rnn_3/lstm_cell_3/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
rnn_3/lstm_cell_3/Sigmoid_2Sigmoid rnn_3/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
rnn_3/lstm_cell_3/Tanh_1Tanhrnn_3/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_3/lstm_cell_3/mul_2Mulrnn_3/lstm_cell_3/Sigmoid_2:y:0rnn_3/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.t
#rnn_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   d
"rnn_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :×
rnn_3/TensorArrayV2_1TensorListReserve,rnn_3/TensorArrayV2_1/element_shape:output:0+rnn_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒL

rnn_3/timeConst*
_output_shapes
: *
dtype0*
value	B : i
rnn_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿZ
rnn_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ù
rnn_3/whileWhile!rnn_3/while/loop_counter:output:0'rnn_3/while/maximum_iterations:output:0rnn_3/time:output:0rnn_3/TensorArrayV2_1:handle:0rnn_3/zeros:output:0rnn_3/zeros_1:output:0rnn_3/strided_slice_1:output:0=rnn_3/TensorArrayUnstack/TensorListFromTensor:output_handle:00rnn_3_lstm_cell_3_matmul_readvariableop_resource2rnn_3_lstm_cell_3_matmul_1_readvariableop_resource1rnn_3_lstm_cell_3_biasadd_readvariableop_resource*
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
rnn_3_while_body_126272998*&
condR
rnn_3_while_cond_126272997*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
6rnn_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   è
(rnn_3/TensorArrayV2Stack/TensorListStackTensorListStackrnn_3/while:output:3?rnn_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsn
rnn_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿg
rnn_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
rnn_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¥
rnn_3/strided_slice_3StridedSlice1rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0$rnn_3/strided_slice_3/stack:output:0&rnn_3/strided_slice_3/stack_1:output:0&rnn_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maskk
rnn_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¨
rnn_3/transpose_1	Transpose1rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0rnn_3/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:..*
dtype0
dense_14/MatMulMatMulrnn_3/strided_slice_3:output:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.b
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:.*
dtype0
dense_15/MatMulMatMuldense_14/Relu:activations:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_15/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp)^rnn_3/lstm_cell_3/BiasAdd/ReadVariableOp(^rnn_3/lstm_cell_3/MatMul/ReadVariableOp*^rnn_3/lstm_cell_3/MatMul_1/ReadVariableOp^rnn_3/while<^token_and_position_embedding_3/embedding_6/embedding_lookup<^token_and_position_embedding_3/embedding_7/embedding_lookupE^transformer_encoder_3/layer_normalization_6/batchnorm/ReadVariableOpI^transformer_encoder_3/layer_normalization_6/batchnorm/mul/ReadVariableOpE^transformer_encoder_3/layer_normalization_7/batchnorm/ReadVariableOpI^transformer_encoder_3/layer_normalization_7/batchnorm/mul/ReadVariableOpQ^transformer_encoder_3/multi_head_attention_3/attention_output/add/ReadVariableOp[^transformer_encoder_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpD^transformer_encoder_3/multi_head_attention_3/key/add/ReadVariableOpN^transformer_encoder_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpF^transformer_encoder_3/multi_head_attention_3/query/add/ReadVariableOpP^transformer_encoder_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpF^transformer_encoder_3/multi_head_attention_3/value/add/ReadVariableOpP^transformer_encoder_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpC^transformer_encoder_3/sequential_3/dense_12/BiasAdd/ReadVariableOpE^transformer_encoder_3/sequential_3/dense_12/Tensordot/ReadVariableOpC^transformer_encoder_3/sequential_3/dense_13/BiasAdd/ReadVariableOpE^transformer_encoder_3/sequential_3/dense_13/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ1: : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2T
(rnn_3/lstm_cell_3/BiasAdd/ReadVariableOp(rnn_3/lstm_cell_3/BiasAdd/ReadVariableOp2R
'rnn_3/lstm_cell_3/MatMul/ReadVariableOp'rnn_3/lstm_cell_3/MatMul/ReadVariableOp2V
)rnn_3/lstm_cell_3/MatMul_1/ReadVariableOp)rnn_3/lstm_cell_3/MatMul_1/ReadVariableOp2
rnn_3/whilernn_3/while2z
;token_and_position_embedding_3/embedding_6/embedding_lookup;token_and_position_embedding_3/embedding_6/embedding_lookup2z
;token_and_position_embedding_3/embedding_7/embedding_lookup;token_and_position_embedding_3/embedding_7/embedding_lookup2
Dtransformer_encoder_3/layer_normalization_6/batchnorm/ReadVariableOpDtransformer_encoder_3/layer_normalization_6/batchnorm/ReadVariableOp2
Htransformer_encoder_3/layer_normalization_6/batchnorm/mul/ReadVariableOpHtransformer_encoder_3/layer_normalization_6/batchnorm/mul/ReadVariableOp2
Dtransformer_encoder_3/layer_normalization_7/batchnorm/ReadVariableOpDtransformer_encoder_3/layer_normalization_7/batchnorm/ReadVariableOp2
Htransformer_encoder_3/layer_normalization_7/batchnorm/mul/ReadVariableOpHtransformer_encoder_3/layer_normalization_7/batchnorm/mul/ReadVariableOp2¤
Ptransformer_encoder_3/multi_head_attention_3/attention_output/add/ReadVariableOpPtransformer_encoder_3/multi_head_attention_3/attention_output/add/ReadVariableOp2¸
Ztransformer_encoder_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOpZtransformer_encoder_3/multi_head_attention_3/attention_output/einsum/Einsum/ReadVariableOp2
Ctransformer_encoder_3/multi_head_attention_3/key/add/ReadVariableOpCtransformer_encoder_3/multi_head_attention_3/key/add/ReadVariableOp2
Mtransformer_encoder_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOpMtransformer_encoder_3/multi_head_attention_3/key/einsum/Einsum/ReadVariableOp2
Etransformer_encoder_3/multi_head_attention_3/query/add/ReadVariableOpEtransformer_encoder_3/multi_head_attention_3/query/add/ReadVariableOp2¢
Otransformer_encoder_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOpOtransformer_encoder_3/multi_head_attention_3/query/einsum/Einsum/ReadVariableOp2
Etransformer_encoder_3/multi_head_attention_3/value/add/ReadVariableOpEtransformer_encoder_3/multi_head_attention_3/value/add/ReadVariableOp2¢
Otransformer_encoder_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOpOtransformer_encoder_3/multi_head_attention_3/value/einsum/Einsum/ReadVariableOp2
Btransformer_encoder_3/sequential_3/dense_12/BiasAdd/ReadVariableOpBtransformer_encoder_3/sequential_3/dense_12/BiasAdd/ReadVariableOp2
Dtransformer_encoder_3/sequential_3/dense_12/Tensordot/ReadVariableOpDtransformer_encoder_3/sequential_3/dense_12/Tensordot/ReadVariableOp2
Btransformer_encoder_3/sequential_3/dense_13/BiasAdd/ReadVariableOpBtransformer_encoder_3/sequential_3/dense_13/BiasAdd/ReadVariableOp2
Dtransformer_encoder_3/sequential_3/dense_13/Tensordot/ReadVariableOpDtransformer_encoder_3/sequential_3/dense_13/Tensordot/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
 
_user_specified_nameinputs
ù
¶
)__inference_rnn_3_layer_call_fn_126273826

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
D__inference_rnn_3_layer_call_and_return_conditional_losses_126272046o
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
:ÿÿÿÿÿÿÿÿÿ12: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
 
_user_specified_nameinputs
)
É
F__inference_model_3_layer_call_and_return_conditional_losses_126272563
input_4:
(token_and_position_embedding_3_126272507:12:
(token_and_position_embedding_3_126272509:25
transformer_encoder_3_126272512:221
transformer_encoder_3_126272514:25
transformer_encoder_3_126272516:221
transformer_encoder_3_126272518:25
transformer_encoder_3_126272520:221
transformer_encoder_3_126272522:25
transformer_encoder_3_126272524:22-
transformer_encoder_3_126272526:2-
transformer_encoder_3_126272528:2-
transformer_encoder_3_126272530:21
transformer_encoder_3_126272532:2 -
transformer_encoder_3_126272534: 1
transformer_encoder_3_126272536: 2-
transformer_encoder_3_126272538:2-
transformer_encoder_3_126272540:2-
transformer_encoder_3_126272542:2"
rnn_3_126272545:	2¸"
rnn_3_126272547:	.¸
rnn_3_126272549:	¸$
dense_14_126272552:.. 
dense_14_126272554:.$
dense_15_126272557:. 
dense_15_126272559:
identity¢ dense_14/StatefulPartitionedCall¢ dense_15/StatefulPartitionedCall¢rnn_3/StatefulPartitionedCall¢6token_and_position_embedding_3/StatefulPartitionedCall¢-transformer_encoder_3/StatefulPartitionedCallÖ
6token_and_position_embedding_3/StatefulPartitionedCallStatefulPartitionedCallinput_4(token_and_position_embedding_3_126272507(token_and_position_embedding_3_126272509*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *f
faR_
]__inference_token_and_position_embedding_3_layer_call_and_return_conditional_losses_126271464Ô
-transformer_encoder_3/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_3/StatefulPartitionedCall:output:0transformer_encoder_3_126272512transformer_encoder_3_126272514transformer_encoder_3_126272516transformer_encoder_3_126272518transformer_encoder_3_126272520transformer_encoder_3_126272522transformer_encoder_3_126272524transformer_encoder_3_126272526transformer_encoder_3_126272528transformer_encoder_3_126272530transformer_encoder_3_126272532transformer_encoder_3_126272534transformer_encoder_3_126272536transformer_encoder_3_126272538transformer_encoder_3_126272540transformer_encoder_3_126272542*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transformer_encoder_3_layer_call_and_return_conditional_losses_126271597°
rnn_3/StatefulPartitionedCallStatefulPartitionedCall6transformer_encoder_3/StatefulPartitionedCall:output:0rnn_3_126272545rnn_3_126272547rnn_3_126272549*
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
D__inference_rnn_3_layer_call_and_return_conditional_losses_126271774
 dense_14/StatefulPartitionedCallStatefulPartitionedCall&rnn_3/StatefulPartitionedCall:output:0dense_14_126272552dense_14_126272554*
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
G__inference_dense_14_layer_call_and_return_conditional_losses_126271793
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_15_126272557dense_15_126272559*
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
G__inference_dense_15_layer_call_and_return_conditional_losses_126271809x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall^rnn_3/StatefulPartitionedCall7^token_and_position_embedding_3/StatefulPartitionedCall.^transformer_encoder_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ1: : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2>
rnn_3/StatefulPartitionedCallrnn_3/StatefulPartitionedCall2p
6token_and_position_embedding_3/StatefulPartitionedCall6token_and_position_embedding_3/StatefulPartitionedCall2^
-transformer_encoder_3/StatefulPartitionedCall-transformer_encoder_3/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
!
_user_specified_name	input_4
$
ñ
while_body_126271163
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_3_126271187_0:	2¸0
while_lstm_cell_3_126271189_0:	.¸,
while_lstm_cell_3_126271191_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_3_126271187:	2¸.
while_lstm_cell_3_126271189:	.¸*
while_lstm_cell_3_126271191:	¸¢)while/lstm_cell_3/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0º
)while/lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_3_126271187_0while_lstm_cell_3_126271189_0while_lstm_cell_3_126271191_0*
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
J__inference_lstm_cell_3_layer_call_and_return_conditional_losses_126271148r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:02while/lstm_cell_3/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_3/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/Identity_5Identity2while/lstm_cell_3/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x

while/NoOpNoOp*^while/lstm_cell_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_3_126271187while_lstm_cell_3_126271187_0"<
while_lstm_cell_3_126271189while_lstm_cell_3_126271189_0"<
while_lstm_cell_3_126271191while_lstm_cell_3_126271191_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2V
)while/lstm_cell_3/StatefulPartitionedCall)while/lstm_cell_3/StatefulPartitionedCall: 
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
¢
­
'__inference_signature_wrapper_126272685
input_4
unknown:12
	unknown_0:2
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
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
$__inference__wrapped_model_126270888o
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
E:ÿÿÿÿÿÿÿÿÿ1: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
!
_user_specified_name	input_4
´
Ó
0__inference_sequential_3_layer_call_fn_126274467

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
:ÿÿÿÿÿÿÿÿÿ12*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_3_layer_call_and_return_conditional_losses_126271029s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ12: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12
 
_user_specified_nameinputs
)
È
F__inference_model_3_layer_call_and_return_conditional_losses_126272396

inputs:
(token_and_position_embedding_3_126272340:12:
(token_and_position_embedding_3_126272342:25
transformer_encoder_3_126272345:221
transformer_encoder_3_126272347:25
transformer_encoder_3_126272349:221
transformer_encoder_3_126272351:25
transformer_encoder_3_126272353:221
transformer_encoder_3_126272355:25
transformer_encoder_3_126272357:22-
transformer_encoder_3_126272359:2-
transformer_encoder_3_126272361:2-
transformer_encoder_3_126272363:21
transformer_encoder_3_126272365:2 -
transformer_encoder_3_126272367: 1
transformer_encoder_3_126272369: 2-
transformer_encoder_3_126272371:2-
transformer_encoder_3_126272373:2-
transformer_encoder_3_126272375:2"
rnn_3_126272378:	2¸"
rnn_3_126272380:	.¸
rnn_3_126272382:	¸$
dense_14_126272385:.. 
dense_14_126272387:.$
dense_15_126272390:. 
dense_15_126272392:
identity¢ dense_14/StatefulPartitionedCall¢ dense_15/StatefulPartitionedCall¢rnn_3/StatefulPartitionedCall¢6token_and_position_embedding_3/StatefulPartitionedCall¢-transformer_encoder_3/StatefulPartitionedCallÕ
6token_and_position_embedding_3/StatefulPartitionedCallStatefulPartitionedCallinputs(token_and_position_embedding_3_126272340(token_and_position_embedding_3_126272342*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *f
faR_
]__inference_token_and_position_embedding_3_layer_call_and_return_conditional_losses_126271464Ô
-transformer_encoder_3/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_3/StatefulPartitionedCall:output:0transformer_encoder_3_126272345transformer_encoder_3_126272347transformer_encoder_3_126272349transformer_encoder_3_126272351transformer_encoder_3_126272353transformer_encoder_3_126272355transformer_encoder_3_126272357transformer_encoder_3_126272359transformer_encoder_3_126272361transformer_encoder_3_126272363transformer_encoder_3_126272365transformer_encoder_3_126272367transformer_encoder_3_126272369transformer_encoder_3_126272371transformer_encoder_3_126272373transformer_encoder_3_126272375*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ12*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transformer_encoder_3_layer_call_and_return_conditional_losses_126272235°
rnn_3/StatefulPartitionedCallStatefulPartitionedCall6transformer_encoder_3/StatefulPartitionedCall:output:0rnn_3_126272378rnn_3_126272380rnn_3_126272382*
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
D__inference_rnn_3_layer_call_and_return_conditional_losses_126272046
 dense_14/StatefulPartitionedCallStatefulPartitionedCall&rnn_3/StatefulPartitionedCall:output:0dense_14_126272385dense_14_126272387*
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
G__inference_dense_14_layer_call_and_return_conditional_losses_126271793
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_15_126272390dense_15_126272392*
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
G__inference_dense_15_layer_call_and_return_conditional_losses_126271809x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall^rnn_3/StatefulPartitionedCall7^token_and_position_embedding_3/StatefulPartitionedCall.^transformer_encoder_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ1: : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2>
rnn_3/StatefulPartitionedCallrnn_3/StatefulPartitionedCall2p
6token_and_position_embedding_3/StatefulPartitionedCall6token_and_position_embedding_3/StatefulPartitionedCall2^
-transformer_encoder_3/StatefulPartitionedCall-transformer_encoder_3/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ1
 
_user_specified_nameinputs"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*«
serving_default
;
input_40
serving_default_input_4:0ÿÿÿÿÿÿÿÿÿ1<
dense_150
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:çË
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
+__inference_model_3_layer_call_fn_126271869
+__inference_model_3_layer_call_fn_126272740
+__inference_model_3_layer_call_fn_126272795
+__inference_model_3_layer_call_fn_126272504¿
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
F__inference_model_3_layer_call_and_return_conditional_losses_126273095
F__inference_model_3_layer_call_and_return_conditional_losses_126273408
F__inference_model_3_layer_call_and_return_conditional_losses_126272563
F__inference_model_3_layer_call_and_return_conditional_losses_126272622¿
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
$__inference__wrapped_model_126270888input_4"
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
B__inference_token_and_position_embedding_3_layer_call_fn_126273417
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
]__inference_token_and_position_embedding_3_layer_call_and_return_conditional_losses_126273441
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
9__inference_transformer_encoder_3_layer_call_fn_126273478
9__inference_transformer_encoder_3_layer_call_fn_126273515®
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
T__inference_transformer_encoder_3_layer_call_and_return_conditional_losses_126273642
T__inference_transformer_encoder_3_layer_call_and_return_conditional_losses_126273782®
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
)__inference_rnn_3_layer_call_fn_126273793
)__inference_rnn_3_layer_call_fn_126273804
)__inference_rnn_3_layer_call_fn_126273815
)__inference_rnn_3_layer_call_fn_126273826å
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
D__inference_rnn_3_layer_call_and_return_conditional_losses_126273970
D__inference_rnn_3_layer_call_and_return_conditional_losses_126274114
D__inference_rnn_3_layer_call_and_return_conditional_losses_126274258
D__inference_rnn_3_layer_call_and_return_conditional_losses_126274402å
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
,__inference_dense_14_layer_call_fn_126274411¢
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
G__inference_dense_14_layer_call_and_return_conditional_losses_126274422¢
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
!:..2dense_14/kernel
:.2dense_14/bias
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
,__inference_dense_15_layer_call_fn_126274431¢
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
G__inference_dense_15_layer_call_and_return_conditional_losses_126274441¢
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
!:.2dense_15/kernel
:2dense_15/bias
G:E225token_and_position_embedding_3/embedding_6/embeddings
G:E1225token_and_position_embedding_3/embedding_7/embeddings
O:M2229transformer_encoder_3/multi_head_attention_3/query/kernel
I:G227transformer_encoder_3/multi_head_attention_3/query/bias
M:K2227transformer_encoder_3/multi_head_attention_3/key/kernel
G:E225transformer_encoder_3/multi_head_attention_3/key/bias
O:M2229transformer_encoder_3/multi_head_attention_3/value/kernel
I:G227transformer_encoder_3/multi_head_attention_3/value/bias
Z:X222Dtransformer_encoder_3/multi_head_attention_3/attention_output/kernel
P:N22Btransformer_encoder_3/multi_head_attention_3/attention_output/bias
!:2 2dense_12/kernel
: 2dense_12/bias
!: 22dense_13/kernel
:22dense_13/bias
?:=221transformer_encoder_3/layer_normalization_6/gamma
>:<220transformer_encoder_3/layer_normalization_6/beta
?:=221transformer_encoder_3/layer_normalization_7/gamma
>:<220transformer_encoder_3/layer_normalization_7/beta
+:)	2¸2rnn_3/lstm_cell_3/kernel
5:3	.¸2"rnn_3/lstm_cell_3/recurrent_kernel
%:#¸2rnn_3/lstm_cell_3/bias
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
+__inference_model_3_layer_call_fn_126271869input_4"¿
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
+__inference_model_3_layer_call_fn_126272740inputs"¿
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
+__inference_model_3_layer_call_fn_126272795inputs"¿
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
+__inference_model_3_layer_call_fn_126272504input_4"¿
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
F__inference_model_3_layer_call_and_return_conditional_losses_126273095inputs"¿
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
F__inference_model_3_layer_call_and_return_conditional_losses_126273408inputs"¿
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
F__inference_model_3_layer_call_and_return_conditional_losses_126272563input_4"¿
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
F__inference_model_3_layer_call_and_return_conditional_losses_126272622input_4"¿
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
'__inference_signature_wrapper_126272685input_4"
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
B__inference_token_and_position_embedding_3_layer_call_fn_126273417x"
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
]__inference_token_and_position_embedding_3_layer_call_and_return_conditional_losses_126273441x"
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
9__inference_transformer_encoder_3_layer_call_fn_126273478inputs"®
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
9__inference_transformer_encoder_3_layer_call_fn_126273515inputs"®
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
T__inference_transformer_encoder_3_layer_call_and_return_conditional_losses_126273642inputs"®
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
T__inference_transformer_encoder_3_layer_call_and_return_conditional_losses_126273782inputs"®
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
0__inference_sequential_3_layer_call_fn_126270980
0__inference_sequential_3_layer_call_fn_126274454
0__inference_sequential_3_layer_call_fn_126274467
0__inference_sequential_3_layer_call_fn_126271053¿
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
K__inference_sequential_3_layer_call_and_return_conditional_losses_126274524
K__inference_sequential_3_layer_call_and_return_conditional_losses_126274581
K__inference_sequential_3_layer_call_and_return_conditional_losses_126271067
K__inference_sequential_3_layer_call_and_return_conditional_losses_126271081¿
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
)__inference_rnn_3_layer_call_fn_126273793inputs/0"å
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
)__inference_rnn_3_layer_call_fn_126273804inputs/0"å
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
)__inference_rnn_3_layer_call_fn_126273815inputs"å
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
)__inference_rnn_3_layer_call_fn_126273826inputs"å
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
D__inference_rnn_3_layer_call_and_return_conditional_losses_126273970inputs/0"å
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
D__inference_rnn_3_layer_call_and_return_conditional_losses_126274114inputs/0"å
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
D__inference_rnn_3_layer_call_and_return_conditional_losses_126274258inputs"å
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
D__inference_rnn_3_layer_call_and_return_conditional_losses_126274402inputs"å
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
/__inference_lstm_cell_3_layer_call_fn_126274598
/__inference_lstm_cell_3_layer_call_fn_126274615½
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
J__inference_lstm_cell_3_layer_call_and_return_conditional_losses_126274647
J__inference_lstm_cell_3_layer_call_and_return_conditional_losses_126274679½
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
,__inference_dense_14_layer_call_fn_126274411inputs"¢
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
G__inference_dense_14_layer_call_and_return_conditional_losses_126274422inputs"¢
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
,__inference_dense_15_layer_call_fn_126274431inputs"¢
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
G__inference_dense_15_layer_call_and_return_conditional_losses_126274441inputs"¢
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
,__inference_dense_12_layer_call_fn_126274688¢
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
G__inference_dense_12_layer_call_and_return_conditional_losses_126274719¢
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
,__inference_dense_13_layer_call_fn_126274728¢
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
G__inference_dense_13_layer_call_and_return_conditional_losses_126274758¢
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
0__inference_sequential_3_layer_call_fn_126270980dense_12_input"¿
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
0__inference_sequential_3_layer_call_fn_126274454inputs"¿
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
0__inference_sequential_3_layer_call_fn_126274467inputs"¿
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
0__inference_sequential_3_layer_call_fn_126271053dense_12_input"¿
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
K__inference_sequential_3_layer_call_and_return_conditional_losses_126274524inputs"¿
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
K__inference_sequential_3_layer_call_and_return_conditional_losses_126274581inputs"¿
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
K__inference_sequential_3_layer_call_and_return_conditional_losses_126271067dense_12_input"¿
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
K__inference_sequential_3_layer_call_and_return_conditional_losses_126271081dense_12_input"¿
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
/__inference_lstm_cell_3_layer_call_fn_126274598inputsstates/0states/1"½
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
/__inference_lstm_cell_3_layer_call_fn_126274615inputsstates/0states/1"½
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
J__inference_lstm_cell_3_layer_call_and_return_conditional_losses_126274647inputsstates/0states/1"½
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
J__inference_lstm_cell_3_layer_call_and_return_conditional_losses_126274679inputsstates/0states/1"½
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
,__inference_dense_12_layer_call_fn_126274688inputs"¢
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
G__inference_dense_12_layer_call_and_return_conditional_losses_126274719inputs"¢
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
,__inference_dense_13_layer_call_fn_126274728inputs"¢
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
G__inference_dense_13_layer_call_and_return_conditional_losses_126274758inputs"¢
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
&:$..2Adam/dense_14/kernel/m
 :.2Adam/dense_14/bias/m
&:$.2Adam/dense_15/kernel/m
 :2Adam/dense_15/bias/m
L:J22<Adam/token_and_position_embedding_3/embedding_6/embeddings/m
L:J122<Adam/token_and_position_embedding_3/embedding_7/embeddings/m
T:R222@Adam/transformer_encoder_3/multi_head_attention_3/query/kernel/m
N:L22>Adam/transformer_encoder_3/multi_head_attention_3/query/bias/m
R:P222>Adam/transformer_encoder_3/multi_head_attention_3/key/kernel/m
L:J22<Adam/transformer_encoder_3/multi_head_attention_3/key/bias/m
T:R222@Adam/transformer_encoder_3/multi_head_attention_3/value/kernel/m
N:L22>Adam/transformer_encoder_3/multi_head_attention_3/value/bias/m
_:]222KAdam/transformer_encoder_3/multi_head_attention_3/attention_output/kernel/m
U:S22IAdam/transformer_encoder_3/multi_head_attention_3/attention_output/bias/m
&:$2 2Adam/dense_12/kernel/m
 : 2Adam/dense_12/bias/m
&:$ 22Adam/dense_13/kernel/m
 :22Adam/dense_13/bias/m
D:B228Adam/transformer_encoder_3/layer_normalization_6/gamma/m
C:A227Adam/transformer_encoder_3/layer_normalization_6/beta/m
D:B228Adam/transformer_encoder_3/layer_normalization_7/gamma/m
C:A227Adam/transformer_encoder_3/layer_normalization_7/beta/m
0:.	2¸2Adam/rnn_3/lstm_cell_3/kernel/m
::8	.¸2)Adam/rnn_3/lstm_cell_3/recurrent_kernel/m
*:(¸2Adam/rnn_3/lstm_cell_3/bias/m
&:$..2Adam/dense_14/kernel/v
 :.2Adam/dense_14/bias/v
&:$.2Adam/dense_15/kernel/v
 :2Adam/dense_15/bias/v
L:J22<Adam/token_and_position_embedding_3/embedding_6/embeddings/v
L:J122<Adam/token_and_position_embedding_3/embedding_7/embeddings/v
T:R222@Adam/transformer_encoder_3/multi_head_attention_3/query/kernel/v
N:L22>Adam/transformer_encoder_3/multi_head_attention_3/query/bias/v
R:P222>Adam/transformer_encoder_3/multi_head_attention_3/key/kernel/v
L:J22<Adam/transformer_encoder_3/multi_head_attention_3/key/bias/v
T:R222@Adam/transformer_encoder_3/multi_head_attention_3/value/kernel/v
N:L22>Adam/transformer_encoder_3/multi_head_attention_3/value/bias/v
_:]222KAdam/transformer_encoder_3/multi_head_attention_3/attention_output/kernel/v
U:S22IAdam/transformer_encoder_3/multi_head_attention_3/attention_output/bias/v
&:$2 2Adam/dense_12/kernel/v
 : 2Adam/dense_12/bias/v
&:$ 22Adam/dense_13/kernel/v
 :22Adam/dense_13/bias/v
D:B228Adam/transformer_encoder_3/layer_normalization_6/gamma/v
C:A227Adam/transformer_encoder_3/layer_normalization_6/beta/v
D:B228Adam/transformer_encoder_3/layer_normalization_7/gamma/v
C:A227Adam/transformer_encoder_3/layer_normalization_7/beta/v
0:.	2¸2Adam/rnn_3/lstm_cell_3/kernel/v
::8	.¸2)Adam/rnn_3/lstm_cell_3/recurrent_kernel/v
*:(¸2Adam/rnn_3/lstm_cell_3/bias/v«
$__inference__wrapped_model_126270888=<>?@ABCDEJKFGHILMNOP23:;0¢-
&¢#
!
input_4ÿÿÿÿÿÿÿÿÿ1
ª "3ª0
.
dense_15"
dense_15ÿÿÿÿÿÿÿÿÿ¯
G__inference_dense_12_layer_call_and_return_conditional_losses_126274719dFG3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ12
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ1 
 
,__inference_dense_12_layer_call_fn_126274688WFG3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ12
ª "ÿÿÿÿÿÿÿÿÿ1 ¯
G__inference_dense_13_layer_call_and_return_conditional_losses_126274758dHI3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ1 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ12
 
,__inference_dense_13_layer_call_fn_126274728WHI3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ1 
ª "ÿÿÿÿÿÿÿÿÿ12§
G__inference_dense_14_layer_call_and_return_conditional_losses_126274422\23/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ.
 
,__inference_dense_14_layer_call_fn_126274411O23/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "ÿÿÿÿÿÿÿÿÿ.§
G__inference_dense_15_layer_call_and_return_conditional_losses_126274441\:;/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_dense_15_layer_call_fn_126274431O:;/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "ÿÿÿÿÿÿÿÿÿÌ
J__inference_lstm_cell_3_layer_call_and_return_conditional_losses_126274647ýNOP¢}
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
J__inference_lstm_cell_3_layer_call_and_return_conditional_losses_126274679ýNOP¢}
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
/__inference_lstm_cell_3_layer_call_fn_126274598íNOP¢}
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
/__inference_lstm_cell_3_layer_call_fn_126274615íNOP¢}
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
F__inference_model_3_layer_call_and_return_conditional_losses_126272563|=<>?@ABCDEJKFGHILMNOP23:;8¢5
.¢+
!
input_4ÿÿÿÿÿÿÿÿÿ1
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Æ
F__inference_model_3_layer_call_and_return_conditional_losses_126272622|=<>?@ABCDEJKFGHILMNOP23:;8¢5
.¢+
!
input_4ÿÿÿÿÿÿÿÿÿ1
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Å
F__inference_model_3_layer_call_and_return_conditional_losses_126273095{=<>?@ABCDEJKFGHILMNOP23:;7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ1
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Å
F__inference_model_3_layer_call_and_return_conditional_losses_126273408{=<>?@ABCDEJKFGHILMNOP23:;7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ1
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_model_3_layer_call_fn_126271869o=<>?@ABCDEJKFGHILMNOP23:;8¢5
.¢+
!
input_4ÿÿÿÿÿÿÿÿÿ1
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_model_3_layer_call_fn_126272504o=<>?@ABCDEJKFGHILMNOP23:;8¢5
.¢+
!
input_4ÿÿÿÿÿÿÿÿÿ1
p

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_model_3_layer_call_fn_126272740n=<>?@ABCDEJKFGHILMNOP23:;7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ1
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_model_3_layer_call_fn_126272795n=<>?@ABCDEJKFGHILMNOP23:;7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ1
p

 
ª "ÿÿÿÿÿÿÿÿÿÊ
D__inference_rnn_3_layer_call_and_return_conditional_losses_126273970NOPS¢P
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
D__inference_rnn_3_layer_call_and_return_conditional_losses_126274114NOPS¢P
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
D__inference_rnn_3_layer_call_and_return_conditional_losses_126274258qNOPC¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ12
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
D__inference_rnn_3_layer_call_and_return_conditional_losses_126274402qNOPC¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ12
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
)__inference_rnn_3_layer_call_fn_126273793tNOPS¢P
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
)__inference_rnn_3_layer_call_fn_126273804tNOPS¢P
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
)__inference_rnn_3_layer_call_fn_126273815dNOPC¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ12

 
p 

 

 
ª "ÿÿÿÿÿÿÿÿÿ.
)__inference_rnn_3_layer_call_fn_126273826dNOPC¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ12

 
p

 

 
ª "ÿÿÿÿÿÿÿÿÿ.Å
K__inference_sequential_3_layer_call_and_return_conditional_losses_126271067vFGHIC¢@
9¢6
,)
dense_12_inputÿÿÿÿÿÿÿÿÿ12
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ12
 Å
K__inference_sequential_3_layer_call_and_return_conditional_losses_126271081vFGHIC¢@
9¢6
,)
dense_12_inputÿÿÿÿÿÿÿÿÿ12
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ12
 ½
K__inference_sequential_3_layer_call_and_return_conditional_losses_126274524nFGHI;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ12
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ12
 ½
K__inference_sequential_3_layer_call_and_return_conditional_losses_126274581nFGHI;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ12
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ12
 
0__inference_sequential_3_layer_call_fn_126270980iFGHIC¢@
9¢6
,)
dense_12_inputÿÿÿÿÿÿÿÿÿ12
p 

 
ª "ÿÿÿÿÿÿÿÿÿ12
0__inference_sequential_3_layer_call_fn_126271053iFGHIC¢@
9¢6
,)
dense_12_inputÿÿÿÿÿÿÿÿÿ12
p

 
ª "ÿÿÿÿÿÿÿÿÿ12
0__inference_sequential_3_layer_call_fn_126274454aFGHI;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ12
p 

 
ª "ÿÿÿÿÿÿÿÿÿ12
0__inference_sequential_3_layer_call_fn_126274467aFGHI;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ12
p

 
ª "ÿÿÿÿÿÿÿÿÿ12¹
'__inference_signature_wrapper_126272685=<>?@ABCDEJKFGHILMNOP23:;;¢8
¢ 
1ª.
,
input_4!
input_4ÿÿÿÿÿÿÿÿÿ1"3ª0
.
dense_15"
dense_15ÿÿÿÿÿÿÿÿÿ¼
]__inference_token_and_position_embedding_3_layer_call_and_return_conditional_losses_126273441[=<*¢'
 ¢

xÿÿÿÿÿÿÿÿÿ1
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ12
 
B__inference_token_and_position_embedding_3_layer_call_fn_126273417N=<*¢'
 ¢

xÿÿÿÿÿÿÿÿÿ1
ª "ÿÿÿÿÿÿÿÿÿ12Î
T__inference_transformer_encoder_3_layer_call_and_return_conditional_losses_126273642v>?@ABCDEJKFGHILM7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ12
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ12
 Î
T__inference_transformer_encoder_3_layer_call_and_return_conditional_losses_126273782v>?@ABCDEJKFGHILM7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ12
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ12
 ¦
9__inference_transformer_encoder_3_layer_call_fn_126273478i>?@ABCDEJKFGHILM7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ12
p 
ª "ÿÿÿÿÿÿÿÿÿ12¦
9__inference_transformer_encoder_3_layer_call_fn_126273515i>?@ABCDEJKFGHILM7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ12
p
ª "ÿÿÿÿÿÿÿÿÿ12