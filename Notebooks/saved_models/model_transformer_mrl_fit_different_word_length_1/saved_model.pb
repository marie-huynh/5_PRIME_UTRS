,
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
"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8¾(

Adam/rnn_2/lstm_cell_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:¸*.
shared_nameAdam/rnn_2/lstm_cell_2/bias/v

1Adam/rnn_2/lstm_cell_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/rnn_2/lstm_cell_2/bias/v*
_output_shapes	
:¸*
dtype0
¯
)Adam/rnn_2/lstm_cell_2/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.¸*:
shared_name+)Adam/rnn_2/lstm_cell_2/recurrent_kernel/v
¨
=Adam/rnn_2/lstm_cell_2/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp)Adam/rnn_2/lstm_cell_2/recurrent_kernel/v*
_output_shapes
:	.¸*
dtype0

Adam/rnn_2/lstm_cell_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2¸*0
shared_name!Adam/rnn_2/lstm_cell_2/kernel/v

3Adam/rnn_2/lstm_cell_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/rnn_2/lstm_cell_2/kernel/v*
_output_shapes
:	2¸*
dtype0
Æ
7Adam/transformer_encoder_2/layer_normalization_5/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*H
shared_name97Adam/transformer_encoder_2/layer_normalization_5/beta/v
¿
KAdam/transformer_encoder_2/layer_normalization_5/beta/v/Read/ReadVariableOpReadVariableOp7Adam/transformer_encoder_2/layer_normalization_5/beta/v*
_output_shapes
:2*
dtype0
È
8Adam/transformer_encoder_2/layer_normalization_5/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*I
shared_name:8Adam/transformer_encoder_2/layer_normalization_5/gamma/v
Á
LAdam/transformer_encoder_2/layer_normalization_5/gamma/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder_2/layer_normalization_5/gamma/v*
_output_shapes
:2*
dtype0
Æ
7Adam/transformer_encoder_2/layer_normalization_4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*H
shared_name97Adam/transformer_encoder_2/layer_normalization_4/beta/v
¿
KAdam/transformer_encoder_2/layer_normalization_4/beta/v/Read/ReadVariableOpReadVariableOp7Adam/transformer_encoder_2/layer_normalization_4/beta/v*
_output_shapes
:2*
dtype0
È
8Adam/transformer_encoder_2/layer_normalization_4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*I
shared_name:8Adam/transformer_encoder_2/layer_normalization_4/gamma/v
Á
LAdam/transformer_encoder_2/layer_normalization_4/gamma/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder_2/layer_normalization_4/gamma/v*
_output_shapes
:2*
dtype0
~
Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/dense_9/bias/v
w
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes
:2*
dtype0

Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 2*&
shared_nameAdam/dense_9/kernel/v

)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v*
_output_shapes

: 2*
dtype0
~
Adam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_8/bias/v
w
'Adam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/v*
_output_shapes
: *
dtype0

Adam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2 *&
shared_nameAdam/dense_8/kernel/v

)Adam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/v*
_output_shapes

:2 *
dtype0
ê
IAdam/transformer_encoder_2/multi_head_attention_2/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*Z
shared_nameKIAdam/transformer_encoder_2/multi_head_attention_2/attention_output/bias/v
ã
]Adam/transformer_encoder_2/multi_head_attention_2/attention_output/bias/v/Read/ReadVariableOpReadVariableOpIAdam/transformer_encoder_2/multi_head_attention_2/attention_output/bias/v*
_output_shapes
:2*
dtype0
ö
KAdam/transformer_encoder_2/multi_head_attention_2/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*\
shared_nameMKAdam/transformer_encoder_2/multi_head_attention_2/attention_output/kernel/v
ï
_Adam/transformer_encoder_2/multi_head_attention_2/attention_output/kernel/v/Read/ReadVariableOpReadVariableOpKAdam/transformer_encoder_2/multi_head_attention_2/attention_output/kernel/v*"
_output_shapes
:22*
dtype0
Ø
>Adam/transformer_encoder_2/multi_head_attention_2/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_2/multi_head_attention_2/value/bias/v
Ñ
RAdam/transformer_encoder_2/multi_head_attention_2/value/bias/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_2/multi_head_attention_2/value/bias/v*
_output_shapes

:2*
dtype0
à
@Adam/transformer_encoder_2/multi_head_attention_2/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_2/multi_head_attention_2/value/kernel/v
Ù
TAdam/transformer_encoder_2/multi_head_attention_2/value/kernel/v/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_2/multi_head_attention_2/value/kernel/v*"
_output_shapes
:22*
dtype0
Ô
<Adam/transformer_encoder_2/multi_head_attention_2/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*M
shared_name><Adam/transformer_encoder_2/multi_head_attention_2/key/bias/v
Í
PAdam/transformer_encoder_2/multi_head_attention_2/key/bias/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_encoder_2/multi_head_attention_2/key/bias/v*
_output_shapes

:2*
dtype0
Ü
>Adam/transformer_encoder_2/multi_head_attention_2/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*O
shared_name@>Adam/transformer_encoder_2/multi_head_attention_2/key/kernel/v
Õ
RAdam/transformer_encoder_2/multi_head_attention_2/key/kernel/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_2/multi_head_attention_2/key/kernel/v*"
_output_shapes
:22*
dtype0
Ø
>Adam/transformer_encoder_2/multi_head_attention_2/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_2/multi_head_attention_2/query/bias/v
Ñ
RAdam/transformer_encoder_2/multi_head_attention_2/query/bias/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_2/multi_head_attention_2/query/bias/v*
_output_shapes

:2*
dtype0
à
@Adam/transformer_encoder_2/multi_head_attention_2/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_2/multi_head_attention_2/query/kernel/v
Ù
TAdam/transformer_encoder_2/multi_head_attention_2/query/kernel/v/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_2/multi_head_attention_2/query/kernel/v*"
_output_shapes
:22*
dtype0
Ô
<Adam/token_and_position_embedding_2/embedding_5/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*M
shared_name><Adam/token_and_position_embedding_2/embedding_5/embeddings/v
Í
PAdam/token_and_position_embedding_2/embedding_5/embeddings/v/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_2/embedding_5/embeddings/v*
_output_shapes

:22*
dtype0
Ô
<Adam/token_and_position_embedding_2/embedding_4/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*M
shared_name><Adam/token_and_position_embedding_2/embedding_4/embeddings/v
Í
PAdam/token_and_position_embedding_2/embedding_4/embeddings/v/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_2/embedding_4/embeddings/v*
_output_shapes

:2*
dtype0

Adam/dense_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/v
y
(Adam/dense_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/v*
_output_shapes
:*
dtype0

Adam/dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.*'
shared_nameAdam/dense_11/kernel/v

*Adam/dense_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/v*
_output_shapes

:.*
dtype0

Adam/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*%
shared_nameAdam/dense_10/bias/v
y
(Adam/dense_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/v*
_output_shapes
:.*
dtype0

Adam/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:..*'
shared_nameAdam/dense_10/kernel/v

*Adam/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/v*
_output_shapes

:..*
dtype0

Adam/rnn_2/lstm_cell_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:¸*.
shared_nameAdam/rnn_2/lstm_cell_2/bias/m

1Adam/rnn_2/lstm_cell_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/rnn_2/lstm_cell_2/bias/m*
_output_shapes	
:¸*
dtype0
¯
)Adam/rnn_2/lstm_cell_2/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.¸*:
shared_name+)Adam/rnn_2/lstm_cell_2/recurrent_kernel/m
¨
=Adam/rnn_2/lstm_cell_2/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp)Adam/rnn_2/lstm_cell_2/recurrent_kernel/m*
_output_shapes
:	.¸*
dtype0

Adam/rnn_2/lstm_cell_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2¸*0
shared_name!Adam/rnn_2/lstm_cell_2/kernel/m

3Adam/rnn_2/lstm_cell_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/rnn_2/lstm_cell_2/kernel/m*
_output_shapes
:	2¸*
dtype0
Æ
7Adam/transformer_encoder_2/layer_normalization_5/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*H
shared_name97Adam/transformer_encoder_2/layer_normalization_5/beta/m
¿
KAdam/transformer_encoder_2/layer_normalization_5/beta/m/Read/ReadVariableOpReadVariableOp7Adam/transformer_encoder_2/layer_normalization_5/beta/m*
_output_shapes
:2*
dtype0
È
8Adam/transformer_encoder_2/layer_normalization_5/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*I
shared_name:8Adam/transformer_encoder_2/layer_normalization_5/gamma/m
Á
LAdam/transformer_encoder_2/layer_normalization_5/gamma/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder_2/layer_normalization_5/gamma/m*
_output_shapes
:2*
dtype0
Æ
7Adam/transformer_encoder_2/layer_normalization_4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*H
shared_name97Adam/transformer_encoder_2/layer_normalization_4/beta/m
¿
KAdam/transformer_encoder_2/layer_normalization_4/beta/m/Read/ReadVariableOpReadVariableOp7Adam/transformer_encoder_2/layer_normalization_4/beta/m*
_output_shapes
:2*
dtype0
È
8Adam/transformer_encoder_2/layer_normalization_4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*I
shared_name:8Adam/transformer_encoder_2/layer_normalization_4/gamma/m
Á
LAdam/transformer_encoder_2/layer_normalization_4/gamma/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder_2/layer_normalization_4/gamma/m*
_output_shapes
:2*
dtype0
~
Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/dense_9/bias/m
w
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes
:2*
dtype0

Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 2*&
shared_nameAdam/dense_9/kernel/m

)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m*
_output_shapes

: 2*
dtype0
~
Adam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_8/bias/m
w
'Adam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/m*
_output_shapes
: *
dtype0

Adam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2 *&
shared_nameAdam/dense_8/kernel/m

)Adam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/m*
_output_shapes

:2 *
dtype0
ê
IAdam/transformer_encoder_2/multi_head_attention_2/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*Z
shared_nameKIAdam/transformer_encoder_2/multi_head_attention_2/attention_output/bias/m
ã
]Adam/transformer_encoder_2/multi_head_attention_2/attention_output/bias/m/Read/ReadVariableOpReadVariableOpIAdam/transformer_encoder_2/multi_head_attention_2/attention_output/bias/m*
_output_shapes
:2*
dtype0
ö
KAdam/transformer_encoder_2/multi_head_attention_2/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*\
shared_nameMKAdam/transformer_encoder_2/multi_head_attention_2/attention_output/kernel/m
ï
_Adam/transformer_encoder_2/multi_head_attention_2/attention_output/kernel/m/Read/ReadVariableOpReadVariableOpKAdam/transformer_encoder_2/multi_head_attention_2/attention_output/kernel/m*"
_output_shapes
:22*
dtype0
Ø
>Adam/transformer_encoder_2/multi_head_attention_2/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_2/multi_head_attention_2/value/bias/m
Ñ
RAdam/transformer_encoder_2/multi_head_attention_2/value/bias/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_2/multi_head_attention_2/value/bias/m*
_output_shapes

:2*
dtype0
à
@Adam/transformer_encoder_2/multi_head_attention_2/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_2/multi_head_attention_2/value/kernel/m
Ù
TAdam/transformer_encoder_2/multi_head_attention_2/value/kernel/m/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_2/multi_head_attention_2/value/kernel/m*"
_output_shapes
:22*
dtype0
Ô
<Adam/transformer_encoder_2/multi_head_attention_2/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*M
shared_name><Adam/transformer_encoder_2/multi_head_attention_2/key/bias/m
Í
PAdam/transformer_encoder_2/multi_head_attention_2/key/bias/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_encoder_2/multi_head_attention_2/key/bias/m*
_output_shapes

:2*
dtype0
Ü
>Adam/transformer_encoder_2/multi_head_attention_2/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*O
shared_name@>Adam/transformer_encoder_2/multi_head_attention_2/key/kernel/m
Õ
RAdam/transformer_encoder_2/multi_head_attention_2/key/kernel/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_2/multi_head_attention_2/key/kernel/m*"
_output_shapes
:22*
dtype0
Ø
>Adam/transformer_encoder_2/multi_head_attention_2/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_2/multi_head_attention_2/query/bias/m
Ñ
RAdam/transformer_encoder_2/multi_head_attention_2/query/bias/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_2/multi_head_attention_2/query/bias/m*
_output_shapes

:2*
dtype0
à
@Adam/transformer_encoder_2/multi_head_attention_2/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_2/multi_head_attention_2/query/kernel/m
Ù
TAdam/transformer_encoder_2/multi_head_attention_2/query/kernel/m/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_2/multi_head_attention_2/query/kernel/m*"
_output_shapes
:22*
dtype0
Ô
<Adam/token_and_position_embedding_2/embedding_5/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*M
shared_name><Adam/token_and_position_embedding_2/embedding_5/embeddings/m
Í
PAdam/token_and_position_embedding_2/embedding_5/embeddings/m/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_2/embedding_5/embeddings/m*
_output_shapes

:22*
dtype0
Ô
<Adam/token_and_position_embedding_2/embedding_4/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*M
shared_name><Adam/token_and_position_embedding_2/embedding_4/embeddings/m
Í
PAdam/token_and_position_embedding_2/embedding_4/embeddings/m/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_2/embedding_4/embeddings/m*
_output_shapes

:2*
dtype0

Adam/dense_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/m
y
(Adam/dense_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/m*
_output_shapes
:*
dtype0

Adam/dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.*'
shared_nameAdam/dense_11/kernel/m

*Adam/dense_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/m*
_output_shapes

:.*
dtype0

Adam/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*%
shared_nameAdam/dense_10/bias/m
y
(Adam/dense_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/m*
_output_shapes
:.*
dtype0

Adam/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:..*'
shared_nameAdam/dense_10/kernel/m

*Adam/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/m*
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
rnn_2/lstm_cell_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:¸*'
shared_namernn_2/lstm_cell_2/bias
~
*rnn_2/lstm_cell_2/bias/Read/ReadVariableOpReadVariableOprnn_2/lstm_cell_2/bias*
_output_shapes	
:¸*
dtype0
¡
"rnn_2/lstm_cell_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.¸*3
shared_name$"rnn_2/lstm_cell_2/recurrent_kernel

6rnn_2/lstm_cell_2/recurrent_kernel/Read/ReadVariableOpReadVariableOp"rnn_2/lstm_cell_2/recurrent_kernel*
_output_shapes
:	.¸*
dtype0

rnn_2/lstm_cell_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2¸*)
shared_namernn_2/lstm_cell_2/kernel

,rnn_2/lstm_cell_2/kernel/Read/ReadVariableOpReadVariableOprnn_2/lstm_cell_2/kernel*
_output_shapes
:	2¸*
dtype0
¸
0transformer_encoder_2/layer_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*A
shared_name20transformer_encoder_2/layer_normalization_5/beta
±
Dtransformer_encoder_2/layer_normalization_5/beta/Read/ReadVariableOpReadVariableOp0transformer_encoder_2/layer_normalization_5/beta*
_output_shapes
:2*
dtype0
º
1transformer_encoder_2/layer_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*B
shared_name31transformer_encoder_2/layer_normalization_5/gamma
³
Etransformer_encoder_2/layer_normalization_5/gamma/Read/ReadVariableOpReadVariableOp1transformer_encoder_2/layer_normalization_5/gamma*
_output_shapes
:2*
dtype0
¸
0transformer_encoder_2/layer_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*A
shared_name20transformer_encoder_2/layer_normalization_4/beta
±
Dtransformer_encoder_2/layer_normalization_4/beta/Read/ReadVariableOpReadVariableOp0transformer_encoder_2/layer_normalization_4/beta*
_output_shapes
:2*
dtype0
º
1transformer_encoder_2/layer_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*B
shared_name31transformer_encoder_2/layer_normalization_4/gamma
³
Etransformer_encoder_2/layer_normalization_4/gamma/Read/ReadVariableOpReadVariableOp1transformer_encoder_2/layer_normalization_4/gamma*
_output_shapes
:2*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:2*
dtype0
x
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 2*
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

: 2*
dtype0
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
: *
dtype0
x
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2 *
shared_namedense_8/kernel
q
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes

:2 *
dtype0
Ü
Btransformer_encoder_2/multi_head_attention_2/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*S
shared_nameDBtransformer_encoder_2/multi_head_attention_2/attention_output/bias
Õ
Vtransformer_encoder_2/multi_head_attention_2/attention_output/bias/Read/ReadVariableOpReadVariableOpBtransformer_encoder_2/multi_head_attention_2/attention_output/bias*
_output_shapes
:2*
dtype0
è
Dtransformer_encoder_2/multi_head_attention_2/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*U
shared_nameFDtransformer_encoder_2/multi_head_attention_2/attention_output/kernel
á
Xtransformer_encoder_2/multi_head_attention_2/attention_output/kernel/Read/ReadVariableOpReadVariableOpDtransformer_encoder_2/multi_head_attention_2/attention_output/kernel*"
_output_shapes
:22*
dtype0
Ê
7transformer_encoder_2/multi_head_attention_2/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*H
shared_name97transformer_encoder_2/multi_head_attention_2/value/bias
Ã
Ktransformer_encoder_2/multi_head_attention_2/value/bias/Read/ReadVariableOpReadVariableOp7transformer_encoder_2/multi_head_attention_2/value/bias*
_output_shapes

:2*
dtype0
Ò
9transformer_encoder_2/multi_head_attention_2/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*J
shared_name;9transformer_encoder_2/multi_head_attention_2/value/kernel
Ë
Mtransformer_encoder_2/multi_head_attention_2/value/kernel/Read/ReadVariableOpReadVariableOp9transformer_encoder_2/multi_head_attention_2/value/kernel*"
_output_shapes
:22*
dtype0
Æ
5transformer_encoder_2/multi_head_attention_2/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*F
shared_name75transformer_encoder_2/multi_head_attention_2/key/bias
¿
Itransformer_encoder_2/multi_head_attention_2/key/bias/Read/ReadVariableOpReadVariableOp5transformer_encoder_2/multi_head_attention_2/key/bias*
_output_shapes

:2*
dtype0
Î
7transformer_encoder_2/multi_head_attention_2/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*H
shared_name97transformer_encoder_2/multi_head_attention_2/key/kernel
Ç
Ktransformer_encoder_2/multi_head_attention_2/key/kernel/Read/ReadVariableOpReadVariableOp7transformer_encoder_2/multi_head_attention_2/key/kernel*"
_output_shapes
:22*
dtype0
Ê
7transformer_encoder_2/multi_head_attention_2/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*H
shared_name97transformer_encoder_2/multi_head_attention_2/query/bias
Ã
Ktransformer_encoder_2/multi_head_attention_2/query/bias/Read/ReadVariableOpReadVariableOp7transformer_encoder_2/multi_head_attention_2/query/bias*
_output_shapes

:2*
dtype0
Ò
9transformer_encoder_2/multi_head_attention_2/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*J
shared_name;9transformer_encoder_2/multi_head_attention_2/query/kernel
Ë
Mtransformer_encoder_2/multi_head_attention_2/query/kernel/Read/ReadVariableOpReadVariableOp9transformer_encoder_2/multi_head_attention_2/query/kernel*"
_output_shapes
:22*
dtype0
Æ
5token_and_position_embedding_2/embedding_5/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:22*F
shared_name75token_and_position_embedding_2/embedding_5/embeddings
¿
Itoken_and_position_embedding_2/embedding_5/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_2/embedding_5/embeddings*
_output_shapes

:22*
dtype0
Æ
5token_and_position_embedding_2/embedding_4/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*F
shared_name75token_and_position_embedding_2/embedding_4/embeddings
¿
Itoken_and_position_embedding_2/embedding_4/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_2/embedding_4/embeddings*
_output_shapes

:2*
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:*
dtype0
z
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.* 
shared_namedense_11/kernel
s
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes

:.*
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
:.*
dtype0
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:..* 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

:..*
dtype0
z
serving_default_input_3Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ2
Ó

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_35token_and_position_embedding_2/embedding_5/embeddings5token_and_position_embedding_2/embedding_4/embeddings9transformer_encoder_2/multi_head_attention_2/query/kernel7transformer_encoder_2/multi_head_attention_2/query/bias7transformer_encoder_2/multi_head_attention_2/key/kernel5transformer_encoder_2/multi_head_attention_2/key/bias9transformer_encoder_2/multi_head_attention_2/value/kernel7transformer_encoder_2/multi_head_attention_2/value/biasDtransformer_encoder_2/multi_head_attention_2/attention_output/kernelBtransformer_encoder_2/multi_head_attention_2/attention_output/bias1transformer_encoder_2/layer_normalization_4/gamma0transformer_encoder_2/layer_normalization_4/betadense_8/kerneldense_8/biasdense_9/kerneldense_9/bias1transformer_encoder_2/layer_normalization_5/gamma0transformer_encoder_2/layer_normalization_5/betarnn_2/lstm_cell_2/kernel"rnn_2/lstm_cell_2/recurrent_kernelrnn_2/lstm_cell_2/biasdense_10/kerneldense_10/biasdense_11/kerneldense_11/bias*%
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
'__inference_signature_wrapper_100083351

NoOpNoOp
ÇË
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ë
valueöÊBòÊ BêÊ
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
VARIABLE_VALUEdense_10/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_10/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_11/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_11/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5token_and_position_embedding_2/embedding_4/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5token_and_position_embedding_2/embedding_5/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE9transformer_encoder_2/multi_head_attention_2/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7transformer_encoder_2/multi_head_attention_2/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7transformer_encoder_2/multi_head_attention_2/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5transformer_encoder_2/multi_head_attention_2/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE9transformer_encoder_2/multi_head_attention_2/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7transformer_encoder_2/multi_head_attention_2/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEDtransformer_encoder_2/multi_head_attention_2/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEBtransformer_encoder_2/multi_head_attention_2/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_8/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_8/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_9/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_9/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1transformer_encoder_2/layer_normalization_4/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0transformer_encoder_2/layer_normalization_4/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1transformer_encoder_2/layer_normalization_5/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0transformer_encoder_2/layer_normalization_5/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUErnn_2/lstm_cell_2/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"rnn_2/lstm_cell_2/recurrent_kernel'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUErnn_2/lstm_cell_2/bias'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/dense_10/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_10/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_11/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_11/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/token_and_position_embedding_2/embedding_4/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/token_and_position_embedding_2/embedding_5/embeddings/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_2/multi_head_attention_2/query/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_2/multi_head_attention_2/query/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_2/multi_head_attention_2/key/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/transformer_encoder_2/multi_head_attention_2/key/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_2/multi_head_attention_2/value/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_2/multi_head_attention_2/value/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¨¡
VARIABLE_VALUEKAdam/transformer_encoder_2/multi_head_attention_2/attention_output/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¦
VARIABLE_VALUEIAdam/transformer_encoder_2/multi_head_attention_2/attention_output/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_8/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_8/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_9/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_9/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/transformer_encoder_2/layer_normalization_4/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE7Adam/transformer_encoder_2/layer_normalization_4/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/transformer_encoder_2/layer_normalization_5/gamma/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE7Adam/transformer_encoder_2/layer_normalization_5/beta/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/rnn_2/lstm_cell_2/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/rnn_2/lstm_cell_2/recurrent_kernel/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/rnn_2/lstm_cell_2/bias/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_10/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_10/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_11/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_11/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/token_and_position_embedding_2/embedding_4/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/token_and_position_embedding_2/embedding_5/embeddings/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_2/multi_head_attention_2/query/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_2/multi_head_attention_2/query/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_2/multi_head_attention_2/key/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/transformer_encoder_2/multi_head_attention_2/key/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_2/multi_head_attention_2/value/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_2/multi_head_attention_2/value/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¨¡
VARIABLE_VALUEKAdam/transformer_encoder_2/multi_head_attention_2/attention_output/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¦
VARIABLE_VALUEIAdam/transformer_encoder_2/multi_head_attention_2/attention_output/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_8/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_8/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_9/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_9/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/transformer_encoder_2/layer_normalization_4/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE7Adam/transformer_encoder_2/layer_normalization_4/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/transformer_encoder_2/layer_normalization_5/gamma/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE7Adam/transformer_encoder_2/layer_normalization_5/beta/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/rnn_2/lstm_cell_2/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/rnn_2/lstm_cell_2/recurrent_kernel/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/rnn_2/lstm_cell_2/bias/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
+
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOpItoken_and_position_embedding_2/embedding_4/embeddings/Read/ReadVariableOpItoken_and_position_embedding_2/embedding_5/embeddings/Read/ReadVariableOpMtransformer_encoder_2/multi_head_attention_2/query/kernel/Read/ReadVariableOpKtransformer_encoder_2/multi_head_attention_2/query/bias/Read/ReadVariableOpKtransformer_encoder_2/multi_head_attention_2/key/kernel/Read/ReadVariableOpItransformer_encoder_2/multi_head_attention_2/key/bias/Read/ReadVariableOpMtransformer_encoder_2/multi_head_attention_2/value/kernel/Read/ReadVariableOpKtransformer_encoder_2/multi_head_attention_2/value/bias/Read/ReadVariableOpXtransformer_encoder_2/multi_head_attention_2/attention_output/kernel/Read/ReadVariableOpVtransformer_encoder_2/multi_head_attention_2/attention_output/bias/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOpEtransformer_encoder_2/layer_normalization_4/gamma/Read/ReadVariableOpDtransformer_encoder_2/layer_normalization_4/beta/Read/ReadVariableOpEtransformer_encoder_2/layer_normalization_5/gamma/Read/ReadVariableOpDtransformer_encoder_2/layer_normalization_5/beta/Read/ReadVariableOp,rnn_2/lstm_cell_2/kernel/Read/ReadVariableOp6rnn_2/lstm_cell_2/recurrent_kernel/Read/ReadVariableOp*rnn_2/lstm_cell_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_10/kernel/m/Read/ReadVariableOp(Adam/dense_10/bias/m/Read/ReadVariableOp*Adam/dense_11/kernel/m/Read/ReadVariableOp(Adam/dense_11/bias/m/Read/ReadVariableOpPAdam/token_and_position_embedding_2/embedding_4/embeddings/m/Read/ReadVariableOpPAdam/token_and_position_embedding_2/embedding_5/embeddings/m/Read/ReadVariableOpTAdam/transformer_encoder_2/multi_head_attention_2/query/kernel/m/Read/ReadVariableOpRAdam/transformer_encoder_2/multi_head_attention_2/query/bias/m/Read/ReadVariableOpRAdam/transformer_encoder_2/multi_head_attention_2/key/kernel/m/Read/ReadVariableOpPAdam/transformer_encoder_2/multi_head_attention_2/key/bias/m/Read/ReadVariableOpTAdam/transformer_encoder_2/multi_head_attention_2/value/kernel/m/Read/ReadVariableOpRAdam/transformer_encoder_2/multi_head_attention_2/value/bias/m/Read/ReadVariableOp_Adam/transformer_encoder_2/multi_head_attention_2/attention_output/kernel/m/Read/ReadVariableOp]Adam/transformer_encoder_2/multi_head_attention_2/attention_output/bias/m/Read/ReadVariableOp)Adam/dense_8/kernel/m/Read/ReadVariableOp'Adam/dense_8/bias/m/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOpLAdam/transformer_encoder_2/layer_normalization_4/gamma/m/Read/ReadVariableOpKAdam/transformer_encoder_2/layer_normalization_4/beta/m/Read/ReadVariableOpLAdam/transformer_encoder_2/layer_normalization_5/gamma/m/Read/ReadVariableOpKAdam/transformer_encoder_2/layer_normalization_5/beta/m/Read/ReadVariableOp3Adam/rnn_2/lstm_cell_2/kernel/m/Read/ReadVariableOp=Adam/rnn_2/lstm_cell_2/recurrent_kernel/m/Read/ReadVariableOp1Adam/rnn_2/lstm_cell_2/bias/m/Read/ReadVariableOp*Adam/dense_10/kernel/v/Read/ReadVariableOp(Adam/dense_10/bias/v/Read/ReadVariableOp*Adam/dense_11/kernel/v/Read/ReadVariableOp(Adam/dense_11/bias/v/Read/ReadVariableOpPAdam/token_and_position_embedding_2/embedding_4/embeddings/v/Read/ReadVariableOpPAdam/token_and_position_embedding_2/embedding_5/embeddings/v/Read/ReadVariableOpTAdam/transformer_encoder_2/multi_head_attention_2/query/kernel/v/Read/ReadVariableOpRAdam/transformer_encoder_2/multi_head_attention_2/query/bias/v/Read/ReadVariableOpRAdam/transformer_encoder_2/multi_head_attention_2/key/kernel/v/Read/ReadVariableOpPAdam/transformer_encoder_2/multi_head_attention_2/key/bias/v/Read/ReadVariableOpTAdam/transformer_encoder_2/multi_head_attention_2/value/kernel/v/Read/ReadVariableOpRAdam/transformer_encoder_2/multi_head_attention_2/value/bias/v/Read/ReadVariableOp_Adam/transformer_encoder_2/multi_head_attention_2/attention_output/kernel/v/Read/ReadVariableOp]Adam/transformer_encoder_2/multi_head_attention_2/attention_output/bias/v/Read/ReadVariableOp)Adam/dense_8/kernel/v/Read/ReadVariableOp'Adam/dense_8/bias/v/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOpLAdam/transformer_encoder_2/layer_normalization_4/gamma/v/Read/ReadVariableOpKAdam/transformer_encoder_2/layer_normalization_4/beta/v/Read/ReadVariableOpLAdam/transformer_encoder_2/layer_normalization_5/gamma/v/Read/ReadVariableOpKAdam/transformer_encoder_2/layer_normalization_5/beta/v/Read/ReadVariableOp3Adam/rnn_2/lstm_cell_2/kernel/v/Read/ReadVariableOp=Adam/rnn_2/lstm_cell_2/recurrent_kernel/v/Read/ReadVariableOp1Adam/rnn_2/lstm_cell_2/bias/v/Read/ReadVariableOpConst*a
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
"__inference__traced_save_100085699
ô
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_10/kerneldense_10/biasdense_11/kerneldense_11/bias5token_and_position_embedding_2/embedding_4/embeddings5token_and_position_embedding_2/embedding_5/embeddings9transformer_encoder_2/multi_head_attention_2/query/kernel7transformer_encoder_2/multi_head_attention_2/query/bias7transformer_encoder_2/multi_head_attention_2/key/kernel5transformer_encoder_2/multi_head_attention_2/key/bias9transformer_encoder_2/multi_head_attention_2/value/kernel7transformer_encoder_2/multi_head_attention_2/value/biasDtransformer_encoder_2/multi_head_attention_2/attention_output/kernelBtransformer_encoder_2/multi_head_attention_2/attention_output/biasdense_8/kerneldense_8/biasdense_9/kerneldense_9/bias1transformer_encoder_2/layer_normalization_4/gamma0transformer_encoder_2/layer_normalization_4/beta1transformer_encoder_2/layer_normalization_5/gamma0transformer_encoder_2/layer_normalization_5/betarnn_2/lstm_cell_2/kernel"rnn_2/lstm_cell_2/recurrent_kernelrnn_2/lstm_cell_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_10/kernel/mAdam/dense_10/bias/mAdam/dense_11/kernel/mAdam/dense_11/bias/m<Adam/token_and_position_embedding_2/embedding_4/embeddings/m<Adam/token_and_position_embedding_2/embedding_5/embeddings/m@Adam/transformer_encoder_2/multi_head_attention_2/query/kernel/m>Adam/transformer_encoder_2/multi_head_attention_2/query/bias/m>Adam/transformer_encoder_2/multi_head_attention_2/key/kernel/m<Adam/transformer_encoder_2/multi_head_attention_2/key/bias/m@Adam/transformer_encoder_2/multi_head_attention_2/value/kernel/m>Adam/transformer_encoder_2/multi_head_attention_2/value/bias/mKAdam/transformer_encoder_2/multi_head_attention_2/attention_output/kernel/mIAdam/transformer_encoder_2/multi_head_attention_2/attention_output/bias/mAdam/dense_8/kernel/mAdam/dense_8/bias/mAdam/dense_9/kernel/mAdam/dense_9/bias/m8Adam/transformer_encoder_2/layer_normalization_4/gamma/m7Adam/transformer_encoder_2/layer_normalization_4/beta/m8Adam/transformer_encoder_2/layer_normalization_5/gamma/m7Adam/transformer_encoder_2/layer_normalization_5/beta/mAdam/rnn_2/lstm_cell_2/kernel/m)Adam/rnn_2/lstm_cell_2/recurrent_kernel/mAdam/rnn_2/lstm_cell_2/bias/mAdam/dense_10/kernel/vAdam/dense_10/bias/vAdam/dense_11/kernel/vAdam/dense_11/bias/v<Adam/token_and_position_embedding_2/embedding_4/embeddings/v<Adam/token_and_position_embedding_2/embedding_5/embeddings/v@Adam/transformer_encoder_2/multi_head_attention_2/query/kernel/v>Adam/transformer_encoder_2/multi_head_attention_2/query/bias/v>Adam/transformer_encoder_2/multi_head_attention_2/key/kernel/v<Adam/transformer_encoder_2/multi_head_attention_2/key/bias/v@Adam/transformer_encoder_2/multi_head_attention_2/value/kernel/v>Adam/transformer_encoder_2/multi_head_attention_2/value/bias/vKAdam/transformer_encoder_2/multi_head_attention_2/attention_output/kernel/vIAdam/transformer_encoder_2/multi_head_attention_2/attention_output/bias/vAdam/dense_8/kernel/vAdam/dense_8/bias/vAdam/dense_9/kernel/vAdam/dense_9/bias/v8Adam/transformer_encoder_2/layer_normalization_4/gamma/v7Adam/transformer_encoder_2/layer_normalization_4/beta/v8Adam/transformer_encoder_2/layer_normalization_5/gamma/v7Adam/transformer_encoder_2/layer_normalization_5/beta/vAdam/rnn_2/lstm_cell_2/kernel/v)Adam/rnn_2/lstm_cell_2/recurrent_kernel/vAdam/rnn_2/lstm_cell_2/bias/v*`
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
%__inference__traced_restore_100085961í$
ï
ø
/__inference_lstm_cell_2_layer_call_fn_100085264

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
J__inference_lstm_cell_2_layer_call_and_return_conditional_losses_100081814o
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
Ð
Á
K__inference_sequential_2_layer_call_and_return_conditional_losses_100081733
dense_8_input#
dense_8_100081722:2 
dense_8_100081724: #
dense_9_100081727: 2
dense_9_100081729:2
identity¢dense_8/StatefulPartitionedCall¢dense_9/StatefulPartitionedCall
dense_8/StatefulPartitionedCallStatefulPartitionedCalldense_8_inputdense_8_100081722dense_8_100081724*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_8_layer_call_and_return_conditional_losses_100081592
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_100081727dense_9_100081729*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_9_layer_call_and_return_conditional_losses_100081628{
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
NoOpNoOp ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ22: : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
'
_user_specified_namedense_8_input
´
Ó
0__inference_sequential_2_layer_call_fn_100085120

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
:ÿÿÿÿÿÿÿÿÿ22*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_2_layer_call_and_return_conditional_losses_100081635s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ22: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
¥
ý
F__inference_dense_8_layer_call_and_return_conditional_losses_100085385

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
:ÿÿÿÿÿÿÿÿÿ22
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
:ÿÿÿÿÿÿÿÿÿ2 r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
¶8

D__inference_rnn_2_layer_call_and_return_conditional_losses_100082090

inputs(
lstm_cell_2_100082007:	2¸(
lstm_cell_2_100082009:	.¸$
lstm_cell_2_100082011:	¸
identity¢#lstm_cell_2/StatefulPartitionedCall¢while;
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
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_100082007lstm_cell_2_100082009lstm_cell_2_100082011*
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
J__inference_lstm_cell_2_layer_call_and_return_conditional_losses_100081961n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_100082007lstm_cell_2_100082009lstm_cell_2_100082011*
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
while_body_100082021* 
condR
while_cond_100082020*K
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
NoOpNoOp$^lstm_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
åñ
Ô
F__inference_model_2_layer_call_and_return_conditional_losses_100083761

inputsW
Etoken_and_position_embedding_2_embedding_5_embedding_lookup_100083472:22W
Etoken_and_position_embedding_2_embedding_4_embedding_lookup_100083478:2n
Xtransformer_encoder_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_2_multi_head_attention_2_query_add_readvariableop_resource:2l
Vtransformer_encoder_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resource:22^
Ltransformer_encoder_2_multi_head_attention_2_key_add_readvariableop_resource:2n
Xtransformer_encoder_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_2_multi_head_attention_2_value_add_readvariableop_resource:2y
ctransformer_encoder_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:22g
Ytransformer_encoder_2_multi_head_attention_2_attention_output_add_readvariableop_resource:2_
Qtransformer_encoder_2_layer_normalization_4_batchnorm_mul_readvariableop_resource:2[
Mtransformer_encoder_2_layer_normalization_4_batchnorm_readvariableop_resource:2^
Ltransformer_encoder_2_sequential_2_dense_8_tensordot_readvariableop_resource:2 X
Jtransformer_encoder_2_sequential_2_dense_8_biasadd_readvariableop_resource: ^
Ltransformer_encoder_2_sequential_2_dense_9_tensordot_readvariableop_resource: 2X
Jtransformer_encoder_2_sequential_2_dense_9_biasadd_readvariableop_resource:2_
Qtransformer_encoder_2_layer_normalization_5_batchnorm_mul_readvariableop_resource:2[
Mtransformer_encoder_2_layer_normalization_5_batchnorm_readvariableop_resource:2C
0rnn_2_lstm_cell_2_matmul_readvariableop_resource:	2¸E
2rnn_2_lstm_cell_2_matmul_1_readvariableop_resource:	.¸@
1rnn_2_lstm_cell_2_biasadd_readvariableop_resource:	¸9
'dense_10_matmul_readvariableop_resource:..6
(dense_10_biasadd_readvariableop_resource:.9
'dense_11_matmul_readvariableop_resource:.6
(dense_11_biasadd_readvariableop_resource:
identity¢dense_10/BiasAdd/ReadVariableOp¢dense_10/MatMul/ReadVariableOp¢dense_11/BiasAdd/ReadVariableOp¢dense_11/MatMul/ReadVariableOp¢(rnn_2/lstm_cell_2/BiasAdd/ReadVariableOp¢'rnn_2/lstm_cell_2/MatMul/ReadVariableOp¢)rnn_2/lstm_cell_2/MatMul_1/ReadVariableOp¢rnn_2/while¢;token_and_position_embedding_2/embedding_4/embedding_lookup¢;token_and_position_embedding_2/embedding_5/embedding_lookup¢Dtransformer_encoder_2/layer_normalization_4/batchnorm/ReadVariableOp¢Htransformer_encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp¢Dtransformer_encoder_2/layer_normalization_5/batchnorm/ReadVariableOp¢Htransformer_encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOp¢Ptransformer_encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOp¢Ztransformer_encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp¢Ctransformer_encoder_2/multi_head_attention_2/key/add/ReadVariableOp¢Mtransformer_encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp¢Etransformer_encoder_2/multi_head_attention_2/query/add/ReadVariableOp¢Otransformer_encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp¢Etransformer_encoder_2/multi_head_attention_2/value/add/ReadVariableOp¢Otransformer_encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp¢Atransformer_encoder_2/sequential_2/dense_8/BiasAdd/ReadVariableOp¢Ctransformer_encoder_2/sequential_2/dense_8/Tensordot/ReadVariableOp¢Atransformer_encoder_2/sequential_2/dense_9/BiasAdd/ReadVariableOp¢Ctransformer_encoder_2/sequential_2/dense_9/Tensordot/ReadVariableOpZ
$token_and_position_embedding_2/ShapeShapeinputs*
T0*
_output_shapes
:
2token_and_position_embedding_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ~
4token_and_position_embedding_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,token_and_position_embedding_2/strided_sliceStridedSlice-token_and_position_embedding_2/Shape:output:0;token_and_position_embedding_2/strided_slice/stack:output:0=token_and_position_embedding_2/strided_slice/stack_1:output:0=token_and_position_embedding_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_2/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_2/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ê
$token_and_position_embedding_2/rangeRange3token_and_position_embedding_2/range/start:output:05token_and_position_embedding_2/strided_slice:output:03token_and_position_embedding_2/range/delta:output:0*
_output_shapes
:2Ú
;token_and_position_embedding_2/embedding_5/embedding_lookupResourceGatherEtoken_and_position_embedding_2_embedding_5_embedding_lookup_100083472-token_and_position_embedding_2/range:output:0*
Tindices0*X
_classN
LJloc:@token_and_position_embedding_2/embedding_5/embedding_lookup/100083472*
_output_shapes

:22*
dtype0
Dtoken_and_position_embedding_2/embedding_5/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_2/embedding_5/embedding_lookup:output:0*
T0*X
_classN
LJloc:@token_and_position_embedding_2/embedding_5/embedding_lookup/100083472*
_output_shapes

:22Ê
Ftoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:22
/token_and_position_embedding_2/embedding_4/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2í
;token_and_position_embedding_2/embedding_4/embedding_lookupResourceGatherEtoken_and_position_embedding_2_embedding_4_embedding_lookup_1000834783token_and_position_embedding_2/embedding_4/Cast:y:0*
Tindices0*X
_classN
LJloc:@token_and_position_embedding_2/embedding_4/embedding_lookup/100083478*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
dtype0¦
Dtoken_and_position_embedding_2/embedding_4/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_2/embedding_4/embedding_lookup:output:0*
T0*X
_classN
LJloc:@token_and_position_embedding_2/embedding_4/embedding_lookup/100083478*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22×
Ftoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
"token_and_position_embedding_2/addAddV2Otoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ì
Otransformer_encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0«
@transformer_encoder_2/multi_head_attention_2/query/einsum/EinsumEinsum&token_and_position_embedding_2/add:z:0Wtransformer_encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabc,cde->abdeÔ
Etransformer_encoder_2/multi_head_attention_2/query/add/ReadVariableOpReadVariableOpNtransformer_encoder_2_multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0
6transformer_encoder_2/multi_head_attention_2/query/addAddV2Itransformer_encoder_2/multi_head_attention_2/query/einsum/Einsum:output:0Mtransformer_encoder_2/multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22è
Mtransformer_encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_encoder_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0§
>transformer_encoder_2/multi_head_attention_2/key/einsum/EinsumEinsum&token_and_position_embedding_2/add:z:0Utransformer_encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabc,cde->abdeÐ
Ctransformer_encoder_2/multi_head_attention_2/key/add/ReadVariableOpReadVariableOpLtransformer_encoder_2_multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0
4transformer_encoder_2/multi_head_attention_2/key/addAddV2Gtransformer_encoder_2/multi_head_attention_2/key/einsum/Einsum:output:0Ktransformer_encoder_2/multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ì
Otransformer_encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0«
@transformer_encoder_2/multi_head_attention_2/value/einsum/EinsumEinsum&token_and_position_embedding_2/add:z:0Wtransformer_encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabc,cde->abdeÔ
Etransformer_encoder_2/multi_head_attention_2/value/add/ReadVariableOpReadVariableOpNtransformer_encoder_2_multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0
6transformer_encoder_2/multi_head_attention_2/value/addAddV2Itransformer_encoder_2/multi_head_attention_2/value/einsum/Einsum:output:0Mtransformer_encoder_2/multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22w
2transformer_encoder_2/multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>ê
0transformer_encoder_2/multi_head_attention_2/MulMul:transformer_encoder_2/multi_head_attention_2/query/add:z:0;transformer_encoder_2/multi_head_attention_2/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
:transformer_encoder_2/multi_head_attention_2/einsum/EinsumEinsum8transformer_encoder_2/multi_head_attention_2/key/add:z:04transformer_encoder_2/multi_head_attention_2/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationaecd,abcd->acbeÆ
<transformer_encoder_2/multi_head_attention_2/softmax/SoftmaxSoftmaxCtransformer_encoder_2/multi_head_attention_2/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Ë
=transformer_encoder_2/multi_head_attention_2/dropout/IdentityIdentityFtransformer_encoder_2/multi_head_attention_2/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¬
<transformer_encoder_2/multi_head_attention_2/einsum_1/EinsumEinsumFtransformer_encoder_2/multi_head_attention_2/dropout/Identity:output:0:transformer_encoder_2/multi_head_attention_2/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationacbe,aecd->abcd
Ztransformer_encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpctransformer_encoder_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ü
Ktransformer_encoder_2/multi_head_attention_2/attention_output/einsum/EinsumEinsumEtransformer_encoder_2/multi_head_attention_2/einsum_1/Einsum:output:0btransformer_encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabcd,cde->abeæ
Ptransformer_encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpYtransformer_encoder_2_multi_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0°
Atransformer_encoder_2/multi_head_attention_2/attention_output/addAddV2Ttransformer_encoder_2/multi_head_attention_2/attention_output/einsum/Einsum:output:0Xtransformer_encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22²
)transformer_encoder_2/dropout_10/IdentityIdentityEtransformer_encoder_2/multi_head_attention_2/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22´
transformer_encoder_2/addAddV2&token_and_position_embedding_2/add:z:02transformer_encoder_2/dropout_10/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Jtransformer_encoder_2/layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:û
8transformer_encoder_2/layer_normalization_4/moments/meanMeantransformer_encoder_2/add:z:0Stransformer_encoder_2/layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(É
@transformer_encoder_2/layer_normalization_4/moments/StopGradientStopGradientAtransformer_encoder_2/layer_normalization_4/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ú
Etransformer_encoder_2/layer_normalization_4/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_2/add:z:0Itransformer_encoder_2/layer_normalization_4/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Ntransformer_encoder_2/layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¯
<transformer_encoder_2/layer_normalization_4/moments/varianceMeanItransformer_encoder_2/layer_normalization_4/moments/SquaredDifference:z:0Wtransformer_encoder_2/layer_normalization_4/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(
;transformer_encoder_2/layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
9transformer_encoder_2/layer_normalization_4/batchnorm/addAddV2Etransformer_encoder_2/layer_normalization_4/moments/variance:output:0Dtransformer_encoder_2/layer_normalization_4/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¹
;transformer_encoder_2/layer_normalization_4/batchnorm/RsqrtRsqrt=transformer_encoder_2/layer_normalization_4/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ö
Htransformer_encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpQtransformer_encoder_2_layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_2/layer_normalization_4/batchnorm/mulMul?transformer_encoder_2/layer_normalization_4/batchnorm/Rsqrt:y:0Ptransformer_encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Ö
;transformer_encoder_2/layer_normalization_4/batchnorm/mul_1Multransformer_encoder_2/add:z:0=transformer_encoder_2/layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ú
;transformer_encoder_2/layer_normalization_4/batchnorm/mul_2MulAtransformer_encoder_2/layer_normalization_4/moments/mean:output:0=transformer_encoder_2/layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Î
Dtransformer_encoder_2/layer_normalization_4/batchnorm/ReadVariableOpReadVariableOpMtransformer_encoder_2_layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_2/layer_normalization_4/batchnorm/subSubLtransformer_encoder_2/layer_normalization_4/batchnorm/ReadVariableOp:value:0?transformer_encoder_2/layer_normalization_4/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ú
;transformer_encoder_2/layer_normalization_4/batchnorm/add_1AddV2?transformer_encoder_2/layer_normalization_4/batchnorm/mul_1:z:0=transformer_encoder_2/layer_normalization_4/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Ð
Ctransformer_encoder_2/sequential_2/dense_8/Tensordot/ReadVariableOpReadVariableOpLtransformer_encoder_2_sequential_2_dense_8_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0
9transformer_encoder_2/sequential_2/dense_8/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
9transformer_encoder_2/sequential_2/dense_8/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ©
:transformer_encoder_2/sequential_2/dense_8/Tensordot/ShapeShape?transformer_encoder_2/layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Btransformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
=transformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2GatherV2Ctransformer_encoder_2/sequential_2/dense_8/Tensordot/Shape:output:0Btransformer_encoder_2/sequential_2/dense_8/Tensordot/free:output:0Ktransformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Dtransformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
?transformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2_1GatherV2Ctransformer_encoder_2/sequential_2/dense_8/Tensordot/Shape:output:0Btransformer_encoder_2/sequential_2/dense_8/Tensordot/axes:output:0Mtransformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
:transformer_encoder_2/sequential_2/dense_8/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ï
9transformer_encoder_2/sequential_2/dense_8/Tensordot/ProdProdFtransformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2:output:0Ctransformer_encoder_2/sequential_2/dense_8/Tensordot/Const:output:0*
T0*
_output_shapes
: 
<transformer_encoder_2/sequential_2/dense_8/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: õ
;transformer_encoder_2/sequential_2/dense_8/Tensordot/Prod_1ProdHtransformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2_1:output:0Etransformer_encoder_2/sequential_2/dense_8/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
@transformer_encoder_2/sequential_2/dense_8/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : È
;transformer_encoder_2/sequential_2/dense_8/Tensordot/concatConcatV2Btransformer_encoder_2/sequential_2/dense_8/Tensordot/free:output:0Btransformer_encoder_2/sequential_2/dense_8/Tensordot/axes:output:0Itransformer_encoder_2/sequential_2/dense_8/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ú
:transformer_encoder_2/sequential_2/dense_8/Tensordot/stackPackBtransformer_encoder_2/sequential_2/dense_8/Tensordot/Prod:output:0Dtransformer_encoder_2/sequential_2/dense_8/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
>transformer_encoder_2/sequential_2/dense_8/Tensordot/transpose	Transpose?transformer_encoder_2/layer_normalization_4/batchnorm/add_1:z:0Dtransformer_encoder_2/sequential_2/dense_8/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
<transformer_encoder_2/sequential_2/dense_8/Tensordot/ReshapeReshapeBtransformer_encoder_2/sequential_2/dense_8/Tensordot/transpose:y:0Ctransformer_encoder_2/sequential_2/dense_8/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
;transformer_encoder_2/sequential_2/dense_8/Tensordot/MatMulMatMulEtransformer_encoder_2/sequential_2/dense_8/Tensordot/Reshape:output:0Ktransformer_encoder_2/sequential_2/dense_8/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
<transformer_encoder_2/sequential_2/dense_8/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
Btransformer_encoder_2/sequential_2/dense_8/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
=transformer_encoder_2/sequential_2/dense_8/Tensordot/concat_1ConcatV2Ftransformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2:output:0Etransformer_encoder_2/sequential_2/dense_8/Tensordot/Const_2:output:0Ktransformer_encoder_2/sequential_2/dense_8/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
4transformer_encoder_2/sequential_2/dense_8/TensordotReshapeEtransformer_encoder_2/sequential_2/dense_8/Tensordot/MatMul:product:0Ftransformer_encoder_2/sequential_2/dense_8/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 È
Atransformer_encoder_2/sequential_2/dense_8/BiasAdd/ReadVariableOpReadVariableOpJtransformer_encoder_2_sequential_2_dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ý
2transformer_encoder_2/sequential_2/dense_8/BiasAddBiasAdd=transformer_encoder_2/sequential_2/dense_8/Tensordot:output:0Itransformer_encoder_2/sequential_2/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 ª
/transformer_encoder_2/sequential_2/dense_8/ReluRelu;transformer_encoder_2/sequential_2/dense_8/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 Ð
Ctransformer_encoder_2/sequential_2/dense_9/Tensordot/ReadVariableOpReadVariableOpLtransformer_encoder_2_sequential_2_dense_9_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0
9transformer_encoder_2/sequential_2/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
9transformer_encoder_2/sequential_2/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       §
:transformer_encoder_2/sequential_2/dense_9/Tensordot/ShapeShape=transformer_encoder_2/sequential_2/dense_8/Relu:activations:0*
T0*
_output_shapes
:
Btransformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
=transformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2GatherV2Ctransformer_encoder_2/sequential_2/dense_9/Tensordot/Shape:output:0Btransformer_encoder_2/sequential_2/dense_9/Tensordot/free:output:0Ktransformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Dtransformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
?transformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2_1GatherV2Ctransformer_encoder_2/sequential_2/dense_9/Tensordot/Shape:output:0Btransformer_encoder_2/sequential_2/dense_9/Tensordot/axes:output:0Mtransformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
:transformer_encoder_2/sequential_2/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ï
9transformer_encoder_2/sequential_2/dense_9/Tensordot/ProdProdFtransformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2:output:0Ctransformer_encoder_2/sequential_2/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 
<transformer_encoder_2/sequential_2/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: õ
;transformer_encoder_2/sequential_2/dense_9/Tensordot/Prod_1ProdHtransformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2_1:output:0Etransformer_encoder_2/sequential_2/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
@transformer_encoder_2/sequential_2/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : È
;transformer_encoder_2/sequential_2/dense_9/Tensordot/concatConcatV2Btransformer_encoder_2/sequential_2/dense_9/Tensordot/free:output:0Btransformer_encoder_2/sequential_2/dense_9/Tensordot/axes:output:0Itransformer_encoder_2/sequential_2/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ú
:transformer_encoder_2/sequential_2/dense_9/Tensordot/stackPackBtransformer_encoder_2/sequential_2/dense_9/Tensordot/Prod:output:0Dtransformer_encoder_2/sequential_2/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
>transformer_encoder_2/sequential_2/dense_9/Tensordot/transpose	Transpose=transformer_encoder_2/sequential_2/dense_8/Relu:activations:0Dtransformer_encoder_2/sequential_2/dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
<transformer_encoder_2/sequential_2/dense_9/Tensordot/ReshapeReshapeBtransformer_encoder_2/sequential_2/dense_9/Tensordot/transpose:y:0Ctransformer_encoder_2/sequential_2/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
;transformer_encoder_2/sequential_2/dense_9/Tensordot/MatMulMatMulEtransformer_encoder_2/sequential_2/dense_9/Tensordot/Reshape:output:0Ktransformer_encoder_2/sequential_2/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
<transformer_encoder_2/sequential_2/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Btransformer_encoder_2/sequential_2/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
=transformer_encoder_2/sequential_2/dense_9/Tensordot/concat_1ConcatV2Ftransformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2:output:0Etransformer_encoder_2/sequential_2/dense_9/Tensordot/Const_2:output:0Ktransformer_encoder_2/sequential_2/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
4transformer_encoder_2/sequential_2/dense_9/TensordotReshapeEtransformer_encoder_2/sequential_2/dense_9/Tensordot/MatMul:product:0Ftransformer_encoder_2/sequential_2/dense_9/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22È
Atransformer_encoder_2/sequential_2/dense_9/BiasAdd/ReadVariableOpReadVariableOpJtransformer_encoder_2_sequential_2_dense_9_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0ý
2transformer_encoder_2/sequential_2/dense_9/BiasAddBiasAdd=transformer_encoder_2/sequential_2/dense_9/Tensordot:output:0Itransformer_encoder_2/sequential_2/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¨
)transformer_encoder_2/dropout_11/IdentityIdentity;transformer_encoder_2/sequential_2/dense_9/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Ï
transformer_encoder_2/add_1AddV2?transformer_encoder_2/layer_normalization_4/batchnorm/add_1:z:02transformer_encoder_2/dropout_11/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Jtransformer_encoder_2/layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ý
8transformer_encoder_2/layer_normalization_5/moments/meanMeantransformer_encoder_2/add_1:z:0Stransformer_encoder_2/layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(É
@transformer_encoder_2/layer_normalization_5/moments/StopGradientStopGradientAtransformer_encoder_2/layer_normalization_5/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ü
Etransformer_encoder_2/layer_normalization_5/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_2/add_1:z:0Itransformer_encoder_2/layer_normalization_5/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Ntransformer_encoder_2/layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¯
<transformer_encoder_2/layer_normalization_5/moments/varianceMeanItransformer_encoder_2/layer_normalization_5/moments/SquaredDifference:z:0Wtransformer_encoder_2/layer_normalization_5/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(
;transformer_encoder_2/layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
9transformer_encoder_2/layer_normalization_5/batchnorm/addAddV2Etransformer_encoder_2/layer_normalization_5/moments/variance:output:0Dtransformer_encoder_2/layer_normalization_5/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¹
;transformer_encoder_2/layer_normalization_5/batchnorm/RsqrtRsqrt=transformer_encoder_2/layer_normalization_5/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ö
Htransformer_encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpQtransformer_encoder_2_layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_2/layer_normalization_5/batchnorm/mulMul?transformer_encoder_2/layer_normalization_5/batchnorm/Rsqrt:y:0Ptransformer_encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Ø
;transformer_encoder_2/layer_normalization_5/batchnorm/mul_1Multransformer_encoder_2/add_1:z:0=transformer_encoder_2/layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ú
;transformer_encoder_2/layer_normalization_5/batchnorm/mul_2MulAtransformer_encoder_2/layer_normalization_5/moments/mean:output:0=transformer_encoder_2/layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Î
Dtransformer_encoder_2/layer_normalization_5/batchnorm/ReadVariableOpReadVariableOpMtransformer_encoder_2_layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_2/layer_normalization_5/batchnorm/subSubLtransformer_encoder_2/layer_normalization_5/batchnorm/ReadVariableOp:value:0?transformer_encoder_2/layer_normalization_5/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ú
;transformer_encoder_2/layer_normalization_5/batchnorm/add_1AddV2?transformer_encoder_2/layer_normalization_5/batchnorm/mul_1:z:0=transformer_encoder_2/layer_normalization_5/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22z
rnn_2/ShapeShape?transformer_encoder_2/layer_normalization_5/batchnorm/add_1:z:0*
T0*
_output_shapes
:c
rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
rnn_2/strided_sliceStridedSlicernn_2/Shape:output:0"rnn_2/strided_slice/stack:output:0$rnn_2/strided_slice/stack_1:output:0$rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
rnn_2/zeros/packedPackrnn_2/strided_slice:output:0rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
rnn_2/zerosFillrnn_2/zeros/packed:output:0rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.X
rnn_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
rnn_2/zeros_1/packedPackrnn_2/strided_slice:output:0rnn_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:X
rnn_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rnn_2/zeros_1Fillrnn_2/zeros_1/packed:output:0rnn_2/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.i
rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ²
rnn_2/transpose	Transpose?transformer_encoder_2/layer_normalization_5/batchnorm/add_1:z:0rnn_2/transpose/perm:output:0*
T0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ2P
rnn_2/Shape_1Shapernn_2/transpose:y:0*
T0*
_output_shapes
:e
rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
rnn_2/strided_slice_1StridedSlicernn_2/Shape_1:output:0$rnn_2/strided_slice_1/stack:output:0&rnn_2/strided_slice_1/stack_1:output:0&rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÆ
rnn_2/TensorArrayV2TensorListReserve*rnn_2/TensorArrayV2/element_shape:output:0rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
;rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ò
-rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn_2/transpose:y:0Drnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒe
rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
rnn_2/strided_slice_2StridedSlicernn_2/transpose:y:0$rnn_2/strided_slice_2/stack:output:0&rnn_2/strided_slice_2/stack_1:output:0&rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
'rnn_2/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp0rnn_2_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0¦
rnn_2/lstm_cell_2/MatMulMatMulrnn_2/strided_slice_2:output:0/rnn_2/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)rnn_2/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp2rnn_2_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0 
rnn_2/lstm_cell_2/MatMul_1MatMulrnn_2/zeros:output:01rnn_2/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
rnn_2/lstm_cell_2/addAddV2"rnn_2/lstm_cell_2/MatMul:product:0$rnn_2/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(rnn_2/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp1rnn_2_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0¤
rnn_2/lstm_cell_2/BiasAddBiasAddrnn_2/lstm_cell_2/add:z:00rnn_2/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!rnn_2/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
rnn_2/lstm_cell_2/splitSplit*rnn_2/lstm_cell_2/split/split_dim:output:0"rnn_2/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
rnn_2/lstm_cell_2/SigmoidSigmoid rnn_2/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
rnn_2/lstm_cell_2/Sigmoid_1Sigmoid rnn_2/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_2/lstm_cell_2/mulMulrnn_2/lstm_cell_2/Sigmoid_1:y:0rnn_2/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
rnn_2/lstm_cell_2/TanhTanh rnn_2/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_2/lstm_cell_2/mul_1Mulrnn_2/lstm_cell_2/Sigmoid:y:0rnn_2/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_2/lstm_cell_2/add_1AddV2rnn_2/lstm_cell_2/mul:z:0rnn_2/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
rnn_2/lstm_cell_2/Sigmoid_2Sigmoid rnn_2/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
rnn_2/lstm_cell_2/Tanh_1Tanhrnn_2/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_2/lstm_cell_2/mul_2Mulrnn_2/lstm_cell_2/Sigmoid_2:y:0rnn_2/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.t
#rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   d
"rnn_2/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :×
rnn_2/TensorArrayV2_1TensorListReserve,rnn_2/TensorArrayV2_1/element_shape:output:0+rnn_2/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒL

rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : i
rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿZ
rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ù
rnn_2/whileWhile!rnn_2/while/loop_counter:output:0'rnn_2/while/maximum_iterations:output:0rnn_2/time:output:0rnn_2/TensorArrayV2_1:handle:0rnn_2/zeros:output:0rnn_2/zeros_1:output:0rnn_2/strided_slice_1:output:0=rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:00rnn_2_lstm_cell_2_matmul_readvariableop_resource2rnn_2_lstm_cell_2_matmul_1_readvariableop_resource1rnn_2_lstm_cell_2_biasadd_readvariableop_resource*
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
rnn_2_while_body_100083664*&
condR
rnn_2_while_cond_100083663*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
6rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   è
(rnn_2/TensorArrayV2Stack/TensorListStackTensorListStackrnn_2/while:output:3?rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsn
rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿg
rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¥
rnn_2/strided_slice_3StridedSlice1rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0$rnn_2/strided_slice_3/stack:output:0&rnn_2/strided_slice_3/stack_1:output:0&rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maskk
rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¨
rnn_2/transpose_1	Transpose1rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0rnn_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:..*
dtype0
dense_10/MatMulMatMulrnn_2/strided_slice_3:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.b
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:.*
dtype0
dense_11/MatMulMatMuldense_10/Relu:activations:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_11/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp)^rnn_2/lstm_cell_2/BiasAdd/ReadVariableOp(^rnn_2/lstm_cell_2/MatMul/ReadVariableOp*^rnn_2/lstm_cell_2/MatMul_1/ReadVariableOp^rnn_2/while<^token_and_position_embedding_2/embedding_4/embedding_lookup<^token_and_position_embedding_2/embedding_5/embedding_lookupE^transformer_encoder_2/layer_normalization_4/batchnorm/ReadVariableOpI^transformer_encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOpE^transformer_encoder_2/layer_normalization_5/batchnorm/ReadVariableOpI^transformer_encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOpQ^transformer_encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOp[^transformer_encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpD^transformer_encoder_2/multi_head_attention_2/key/add/ReadVariableOpN^transformer_encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpF^transformer_encoder_2/multi_head_attention_2/query/add/ReadVariableOpP^transformer_encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpF^transformer_encoder_2/multi_head_attention_2/value/add/ReadVariableOpP^transformer_encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpB^transformer_encoder_2/sequential_2/dense_8/BiasAdd/ReadVariableOpD^transformer_encoder_2/sequential_2/dense_8/Tensordot/ReadVariableOpB^transformer_encoder_2/sequential_2/dense_9/BiasAdd/ReadVariableOpD^transformer_encoder_2/sequential_2/dense_9/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2T
(rnn_2/lstm_cell_2/BiasAdd/ReadVariableOp(rnn_2/lstm_cell_2/BiasAdd/ReadVariableOp2R
'rnn_2/lstm_cell_2/MatMul/ReadVariableOp'rnn_2/lstm_cell_2/MatMul/ReadVariableOp2V
)rnn_2/lstm_cell_2/MatMul_1/ReadVariableOp)rnn_2/lstm_cell_2/MatMul_1/ReadVariableOp2
rnn_2/whilernn_2/while2z
;token_and_position_embedding_2/embedding_4/embedding_lookup;token_and_position_embedding_2/embedding_4/embedding_lookup2z
;token_and_position_embedding_2/embedding_5/embedding_lookup;token_and_position_embedding_2/embedding_5/embedding_lookup2
Dtransformer_encoder_2/layer_normalization_4/batchnorm/ReadVariableOpDtransformer_encoder_2/layer_normalization_4/batchnorm/ReadVariableOp2
Htransformer_encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOpHtransformer_encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp2
Dtransformer_encoder_2/layer_normalization_5/batchnorm/ReadVariableOpDtransformer_encoder_2/layer_normalization_5/batchnorm/ReadVariableOp2
Htransformer_encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOpHtransformer_encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOp2¤
Ptransformer_encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOpPtransformer_encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOp2¸
Ztransformer_encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpZtransformer_encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2
Ctransformer_encoder_2/multi_head_attention_2/key/add/ReadVariableOpCtransformer_encoder_2/multi_head_attention_2/key/add/ReadVariableOp2
Mtransformer_encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpMtransformer_encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2
Etransformer_encoder_2/multi_head_attention_2/query/add/ReadVariableOpEtransformer_encoder_2/multi_head_attention_2/query/add/ReadVariableOp2¢
Otransformer_encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpOtransformer_encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2
Etransformer_encoder_2/multi_head_attention_2/value/add/ReadVariableOpEtransformer_encoder_2/multi_head_attention_2/value/add/ReadVariableOp2¢
Otransformer_encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpOtransformer_encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2
Atransformer_encoder_2/sequential_2/dense_8/BiasAdd/ReadVariableOpAtransformer_encoder_2/sequential_2/dense_8/BiasAdd/ReadVariableOp2
Ctransformer_encoder_2/sequential_2/dense_8/Tensordot/ReadVariableOpCtransformer_encoder_2/sequential_2/dense_8/Tensordot/ReadVariableOp2
Atransformer_encoder_2/sequential_2/dense_9/BiasAdd/ReadVariableOpAtransformer_encoder_2/sequential_2/dense_9/BiasAdd/ReadVariableOp2
Ctransformer_encoder_2/sequential_2/dense_9/Tensordot/ReadVariableOpCtransformer_encoder_2/sequential_2/dense_9/Tensordot/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ä
Ò
while_cond_100082355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_100082355___redundant_placeholder07
3while_while_cond_100082355___redundant_placeholder17
3while_while_cond_100082355___redundant_placeholder27
3while_while_cond_100082355___redundant_placeholder3
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
Í
ê
"model_2_rnn_2_while_cond_1000814568
4model_2_rnn_2_while_model_2_rnn_2_while_loop_counter>
:model_2_rnn_2_while_model_2_rnn_2_while_maximum_iterations#
model_2_rnn_2_while_placeholder%
!model_2_rnn_2_while_placeholder_1%
!model_2_rnn_2_while_placeholder_2%
!model_2_rnn_2_while_placeholder_3:
6model_2_rnn_2_while_less_model_2_rnn_2_strided_slice_1S
Omodel_2_rnn_2_while_model_2_rnn_2_while_cond_100081456___redundant_placeholder0S
Omodel_2_rnn_2_while_model_2_rnn_2_while_cond_100081456___redundant_placeholder1S
Omodel_2_rnn_2_while_model_2_rnn_2_while_cond_100081456___redundant_placeholder2S
Omodel_2_rnn_2_while_model_2_rnn_2_while_cond_100081456___redundant_placeholder3 
model_2_rnn_2_while_identity

model_2/rnn_2/while/LessLessmodel_2_rnn_2_while_placeholder6model_2_rnn_2_while_less_model_2_rnn_2_strided_slice_1*
T0*
_output_shapes
: g
model_2/rnn_2/while/IdentityIdentitymodel_2/rnn_2/while/Less:z:0*
T0
*
_output_shapes
: "E
model_2_rnn_2_while_identity%model_2/rnn_2/while/Identity:output:0*(
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
Ð
Á
K__inference_sequential_2_layer_call_and_return_conditional_losses_100081747
dense_8_input#
dense_8_100081736:2 
dense_8_100081738: #
dense_9_100081741: 2
dense_9_100081743:2
identity¢dense_8/StatefulPartitionedCall¢dense_9/StatefulPartitionedCall
dense_8/StatefulPartitionedCallStatefulPartitionedCalldense_8_inputdense_8_100081736dense_8_100081738*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_8_layer_call_and_return_conditional_losses_100081592
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_100081741dense_9_100081743*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_9_layer_call_and_return_conditional_losses_100081628{
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
NoOpNoOp ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ22: : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
'
_user_specified_namedense_8_input
Ä
Ò
while_cond_100084839
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_100084839___redundant_placeholder07
3while_while_cond_100084839___redundant_placeholder17
3while_while_cond_100084839___redundant_placeholder27
3while_while_cond_100084839___redundant_placeholder3
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
È
±
+__inference_model_2_layer_call_fn_100082535
input_3
unknown:22
	unknown_0:2
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
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
F__inference_model_2_layer_call_and_return_conditional_losses_100082482o
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
E:ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
!
_user_specified_name	input_3

¸
)__inference_rnn_2_layer_call_fn_100084470
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
D__inference_rnn_2_layer_call_and_return_conditional_losses_100082090o
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
ù
¶
)__inference_rnn_2_layer_call_fn_100084492

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
D__inference_rnn_2_layer_call_and_return_conditional_losses_100082712o
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
:ÿÿÿÿÿÿÿÿÿ22: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
J

D__inference_rnn_2_layer_call_and_return_conditional_losses_100082440

inputs=
*lstm_cell_2_matmul_readvariableop_resource:	2¸?
,lstm_cell_2_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_2_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_2/BiasAdd/ReadVariableOp¢!lstm_cell_2/MatMul/ReadVariableOp¢#lstm_cell_2/MatMul_1/ReadVariableOp¢while;
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
:2ÿÿÿÿÿÿÿÿÿ2D
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
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_2/TanhTanhlstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_2/Tanh_1Tanhlstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/Tanh_1:y:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
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
while_body_100082356* 
condR
while_cond_100082355*K
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
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
Å
°
+__inference_model_2_layer_call_fn_100083406

inputs
unknown:22
	unknown_0:2
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
F__inference_model_2_layer_call_and_return_conditional_losses_100082482o
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
E:ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
¶8

D__inference_rnn_2_layer_call_and_return_conditional_losses_100081898

inputs(
lstm_cell_2_100081815:	2¸(
lstm_cell_2_100081817:	.¸$
lstm_cell_2_100081819:	¸
identity¢#lstm_cell_2/StatefulPartitionedCall¢while;
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
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_100081815lstm_cell_2_100081817lstm_cell_2_100081819*
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
J__inference_lstm_cell_2_layer_call_and_return_conditional_losses_100081814n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_100081815lstm_cell_2_100081817lstm_cell_2_100081819*
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
while_body_100081829* 
condR
while_cond_100081828*K
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
NoOpNoOp$^lstm_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ã

J__inference_lstm_cell_2_layer_call_and_return_conditional_losses_100081814

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
ã?


rnn_2_while_body_100083664(
$rnn_2_while_rnn_2_while_loop_counter.
*rnn_2_while_rnn_2_while_maximum_iterations
rnn_2_while_placeholder
rnn_2_while_placeholder_1
rnn_2_while_placeholder_2
rnn_2_while_placeholder_3'
#rnn_2_while_rnn_2_strided_slice_1_0c
_rnn_2_while_tensorarrayv2read_tensorlistgetitem_rnn_2_tensorarrayunstack_tensorlistfromtensor_0K
8rnn_2_while_lstm_cell_2_matmul_readvariableop_resource_0:	2¸M
:rnn_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0:	.¸H
9rnn_2_while_lstm_cell_2_biasadd_readvariableop_resource_0:	¸
rnn_2_while_identity
rnn_2_while_identity_1
rnn_2_while_identity_2
rnn_2_while_identity_3
rnn_2_while_identity_4
rnn_2_while_identity_5%
!rnn_2_while_rnn_2_strided_slice_1a
]rnn_2_while_tensorarrayv2read_tensorlistgetitem_rnn_2_tensorarrayunstack_tensorlistfromtensorI
6rnn_2_while_lstm_cell_2_matmul_readvariableop_resource:	2¸K
8rnn_2_while_lstm_cell_2_matmul_1_readvariableop_resource:	.¸F
7rnn_2_while_lstm_cell_2_biasadd_readvariableop_resource:	¸¢.rnn_2/while/lstm_cell_2/BiasAdd/ReadVariableOp¢-rnn_2/while/lstm_cell_2/MatMul/ReadVariableOp¢/rnn_2/while/lstm_cell_2/MatMul_1/ReadVariableOp
=rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ä
/rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_rnn_2_while_tensorarrayv2read_tensorlistgetitem_rnn_2_tensorarrayunstack_tensorlistfromtensor_0rnn_2_while_placeholderFrnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0§
-rnn_2/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp8rnn_2_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0Ê
rnn_2/while/lstm_cell_2/MatMulMatMul6rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:05rnn_2/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸«
/rnn_2/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp:rnn_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0±
 rnn_2/while/lstm_cell_2/MatMul_1MatMulrnn_2_while_placeholder_27rnn_2/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸­
rnn_2/while/lstm_cell_2/addAddV2(rnn_2/while/lstm_cell_2/MatMul:product:0*rnn_2/while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸¥
.rnn_2/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp9rnn_2_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¶
rnn_2/while/lstm_cell_2/BiasAddBiasAddrnn_2/while/lstm_cell_2/add:z:06rnn_2/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸i
'rnn_2/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :þ
rnn_2/while/lstm_cell_2/splitSplit0rnn_2/while/lstm_cell_2/split/split_dim:output:0(rnn_2/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_split
rnn_2/while/lstm_cell_2/SigmoidSigmoid&rnn_2/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!rnn_2/while/lstm_cell_2/Sigmoid_1Sigmoid&rnn_2/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_2/while/lstm_cell_2/mulMul%rnn_2/while/lstm_cell_2/Sigmoid_1:y:0rnn_2_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.~
rnn_2/while/lstm_cell_2/TanhTanh&rnn_2/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_2/while/lstm_cell_2/mul_1Mul#rnn_2/while/lstm_cell_2/Sigmoid:y:0 rnn_2/while/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_2/while/lstm_cell_2/add_1AddV2rnn_2/while/lstm_cell_2/mul:z:0!rnn_2/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!rnn_2/while/lstm_cell_2/Sigmoid_2Sigmoid&rnn_2/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.{
rnn_2/while/lstm_cell_2/Tanh_1Tanh!rnn_2/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¡
rnn_2/while/lstm_cell_2/mul_2Mul%rnn_2/while/lstm_cell_2/Sigmoid_2:y:0"rnn_2/while/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
6rnn_2/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
0rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_2_while_placeholder_1?rnn_2/while/TensorArrayV2Write/TensorListSetItem/index:output:0!rnn_2/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒS
rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
rnn_2/while/addAddV2rnn_2_while_placeholderrnn_2/while/add/y:output:0*
T0*
_output_shapes
: U
rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
rnn_2/while/add_1AddV2$rnn_2_while_rnn_2_while_loop_counterrnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: k
rnn_2/while/IdentityIdentityrnn_2/while/add_1:z:0^rnn_2/while/NoOp*
T0*
_output_shapes
: 
rnn_2/while/Identity_1Identity*rnn_2_while_rnn_2_while_maximum_iterations^rnn_2/while/NoOp*
T0*
_output_shapes
: k
rnn_2/while/Identity_2Identityrnn_2/while/add:z:0^rnn_2/while/NoOp*
T0*
_output_shapes
: 
rnn_2/while/Identity_3Identity@rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn_2/while/NoOp*
T0*
_output_shapes
: 
rnn_2/while/Identity_4Identity!rnn_2/while/lstm_cell_2/mul_2:z:0^rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_2/while/Identity_5Identity!rnn_2/while/lstm_cell_2/add_1:z:0^rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.å
rnn_2/while/NoOpNoOp/^rnn_2/while/lstm_cell_2/BiasAdd/ReadVariableOp.^rnn_2/while/lstm_cell_2/MatMul/ReadVariableOp0^rnn_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "5
rnn_2_while_identityrnn_2/while/Identity:output:0"9
rnn_2_while_identity_1rnn_2/while/Identity_1:output:0"9
rnn_2_while_identity_2rnn_2/while/Identity_2:output:0"9
rnn_2_while_identity_3rnn_2/while/Identity_3:output:0"9
rnn_2_while_identity_4rnn_2/while/Identity_4:output:0"9
rnn_2_while_identity_5rnn_2/while/Identity_5:output:0"t
7rnn_2_while_lstm_cell_2_biasadd_readvariableop_resource9rnn_2_while_lstm_cell_2_biasadd_readvariableop_resource_0"v
8rnn_2_while_lstm_cell_2_matmul_1_readvariableop_resource:rnn_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0"r
6rnn_2_while_lstm_cell_2_matmul_readvariableop_resource8rnn_2_while_lstm_cell_2_matmul_readvariableop_resource_0"H
!rnn_2_while_rnn_2_strided_slice_1#rnn_2_while_rnn_2_strided_slice_1_0"À
]rnn_2_while_tensorarrayv2read_tensorlistgetitem_rnn_2_tensorarrayunstack_tensorlistfromtensor_rnn_2_while_tensorarrayv2read_tensorlistgetitem_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2`
.rnn_2/while/lstm_cell_2/BiasAdd/ReadVariableOp.rnn_2/while/lstm_cell_2/BiasAdd/ReadVariableOp2^
-rnn_2/while/lstm_cell_2/MatMul/ReadVariableOp-rnn_2/while/lstm_cell_2/MatMul/ReadVariableOp2b
/rnn_2/while/lstm_cell_2/MatMul_1/ReadVariableOp/rnn_2/while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
¥
ý
F__inference_dense_8_layer_call_and_return_conditional_losses_100081592

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
:ÿÿÿÿÿÿÿÿÿ22
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
:ÿÿÿÿÿÿÿÿÿ2 r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
$
ñ
while_body_100082021
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_2_100082045_0:	2¸0
while_lstm_cell_2_100082047_0:	.¸,
while_lstm_cell_2_100082049_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_2_100082045:	2¸.
while_lstm_cell_2_100082047:	.¸*
while_lstm_cell_2_100082049:	¸¢)while/lstm_cell_2/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0º
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_100082045_0while_lstm_cell_2_100082047_0while_lstm_cell_2_100082049_0*
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
J__inference_lstm_cell_2_layer_call_and_return_conditional_losses_100081961r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:02while/lstm_cell_2/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x

while/NoOpNoOp*^while/lstm_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_2_100082045while_lstm_cell_2_100082045_0"<
while_lstm_cell_2_100082047while_lstm_cell_2_100082047_0"<
while_lstm_cell_2_100082049while_lstm_cell_2_100082049_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 
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
Ë

J__inference_lstm_cell_2_layer_call_and_return_conditional_losses_100085313

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
Ðá
äA
%__inference__traced_restore_100085961
file_prefix2
 assignvariableop_dense_10_kernel:...
 assignvariableop_1_dense_10_bias:.4
"assignvariableop_2_dense_11_kernel:..
 assignvariableop_3_dense_11_bias:Z
Hassignvariableop_4_token_and_position_embedding_2_embedding_4_embeddings:2Z
Hassignvariableop_5_token_and_position_embedding_2_embedding_5_embeddings:22b
Lassignvariableop_6_transformer_encoder_2_multi_head_attention_2_query_kernel:22\
Jassignvariableop_7_transformer_encoder_2_multi_head_attention_2_query_bias:2`
Jassignvariableop_8_transformer_encoder_2_multi_head_attention_2_key_kernel:22Z
Hassignvariableop_9_transformer_encoder_2_multi_head_attention_2_key_bias:2c
Massignvariableop_10_transformer_encoder_2_multi_head_attention_2_value_kernel:22]
Kassignvariableop_11_transformer_encoder_2_multi_head_attention_2_value_bias:2n
Xassignvariableop_12_transformer_encoder_2_multi_head_attention_2_attention_output_kernel:22d
Vassignvariableop_13_transformer_encoder_2_multi_head_attention_2_attention_output_bias:24
"assignvariableop_14_dense_8_kernel:2 .
 assignvariableop_15_dense_8_bias: 4
"assignvariableop_16_dense_9_kernel: 2.
 assignvariableop_17_dense_9_bias:2S
Eassignvariableop_18_transformer_encoder_2_layer_normalization_4_gamma:2R
Dassignvariableop_19_transformer_encoder_2_layer_normalization_4_beta:2S
Eassignvariableop_20_transformer_encoder_2_layer_normalization_5_gamma:2R
Dassignvariableop_21_transformer_encoder_2_layer_normalization_5_beta:2?
,assignvariableop_22_rnn_2_lstm_cell_2_kernel:	2¸I
6assignvariableop_23_rnn_2_lstm_cell_2_recurrent_kernel:	.¸9
*assignvariableop_24_rnn_2_lstm_cell_2_bias:	¸'
assignvariableop_25_adam_iter:	 )
assignvariableop_26_adam_beta_1: )
assignvariableop_27_adam_beta_2: (
assignvariableop_28_adam_decay: 0
&assignvariableop_29_adam_learning_rate: %
assignvariableop_30_total_1: %
assignvariableop_31_count_1: #
assignvariableop_32_total: #
assignvariableop_33_count: <
*assignvariableop_34_adam_dense_10_kernel_m:..6
(assignvariableop_35_adam_dense_10_bias_m:.<
*assignvariableop_36_adam_dense_11_kernel_m:.6
(assignvariableop_37_adam_dense_11_bias_m:b
Passignvariableop_38_adam_token_and_position_embedding_2_embedding_4_embeddings_m:2b
Passignvariableop_39_adam_token_and_position_embedding_2_embedding_5_embeddings_m:22j
Tassignvariableop_40_adam_transformer_encoder_2_multi_head_attention_2_query_kernel_m:22d
Rassignvariableop_41_adam_transformer_encoder_2_multi_head_attention_2_query_bias_m:2h
Rassignvariableop_42_adam_transformer_encoder_2_multi_head_attention_2_key_kernel_m:22b
Passignvariableop_43_adam_transformer_encoder_2_multi_head_attention_2_key_bias_m:2j
Tassignvariableop_44_adam_transformer_encoder_2_multi_head_attention_2_value_kernel_m:22d
Rassignvariableop_45_adam_transformer_encoder_2_multi_head_attention_2_value_bias_m:2u
_assignvariableop_46_adam_transformer_encoder_2_multi_head_attention_2_attention_output_kernel_m:22k
]assignvariableop_47_adam_transformer_encoder_2_multi_head_attention_2_attention_output_bias_m:2;
)assignvariableop_48_adam_dense_8_kernel_m:2 5
'assignvariableop_49_adam_dense_8_bias_m: ;
)assignvariableop_50_adam_dense_9_kernel_m: 25
'assignvariableop_51_adam_dense_9_bias_m:2Z
Lassignvariableop_52_adam_transformer_encoder_2_layer_normalization_4_gamma_m:2Y
Kassignvariableop_53_adam_transformer_encoder_2_layer_normalization_4_beta_m:2Z
Lassignvariableop_54_adam_transformer_encoder_2_layer_normalization_5_gamma_m:2Y
Kassignvariableop_55_adam_transformer_encoder_2_layer_normalization_5_beta_m:2F
3assignvariableop_56_adam_rnn_2_lstm_cell_2_kernel_m:	2¸P
=assignvariableop_57_adam_rnn_2_lstm_cell_2_recurrent_kernel_m:	.¸@
1assignvariableop_58_adam_rnn_2_lstm_cell_2_bias_m:	¸<
*assignvariableop_59_adam_dense_10_kernel_v:..6
(assignvariableop_60_adam_dense_10_bias_v:.<
*assignvariableop_61_adam_dense_11_kernel_v:.6
(assignvariableop_62_adam_dense_11_bias_v:b
Passignvariableop_63_adam_token_and_position_embedding_2_embedding_4_embeddings_v:2b
Passignvariableop_64_adam_token_and_position_embedding_2_embedding_5_embeddings_v:22j
Tassignvariableop_65_adam_transformer_encoder_2_multi_head_attention_2_query_kernel_v:22d
Rassignvariableop_66_adam_transformer_encoder_2_multi_head_attention_2_query_bias_v:2h
Rassignvariableop_67_adam_transformer_encoder_2_multi_head_attention_2_key_kernel_v:22b
Passignvariableop_68_adam_transformer_encoder_2_multi_head_attention_2_key_bias_v:2j
Tassignvariableop_69_adam_transformer_encoder_2_multi_head_attention_2_value_kernel_v:22d
Rassignvariableop_70_adam_transformer_encoder_2_multi_head_attention_2_value_bias_v:2u
_assignvariableop_71_adam_transformer_encoder_2_multi_head_attention_2_attention_output_kernel_v:22k
]assignvariableop_72_adam_transformer_encoder_2_multi_head_attention_2_attention_output_bias_v:2;
)assignvariableop_73_adam_dense_8_kernel_v:2 5
'assignvariableop_74_adam_dense_8_bias_v: ;
)assignvariableop_75_adam_dense_9_kernel_v: 25
'assignvariableop_76_adam_dense_9_bias_v:2Z
Lassignvariableop_77_adam_transformer_encoder_2_layer_normalization_4_gamma_v:2Y
Kassignvariableop_78_adam_transformer_encoder_2_layer_normalization_4_beta_v:2Z
Lassignvariableop_79_adam_transformer_encoder_2_layer_normalization_5_gamma_v:2Y
Kassignvariableop_80_adam_transformer_encoder_2_layer_normalization_5_beta_v:2F
3assignvariableop_81_adam_rnn_2_lstm_cell_2_kernel_v:	2¸P
=assignvariableop_82_adam_rnn_2_lstm_cell_2_recurrent_kernel_v:	.¸@
1assignvariableop_83_adam_rnn_2_lstm_cell_2_bias_v:	¸
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
AssignVariableOpAssignVariableOp assignvariableop_dense_10_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_10_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_11_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_11_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_4AssignVariableOpHassignvariableop_4_token_and_position_embedding_2_embedding_4_embeddingsIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_5AssignVariableOpHassignvariableop_5_token_and_position_embedding_2_embedding_5_embeddingsIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_6AssignVariableOpLassignvariableop_6_transformer_encoder_2_multi_head_attention_2_query_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_7AssignVariableOpJassignvariableop_7_transformer_encoder_2_multi_head_attention_2_query_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_8AssignVariableOpJassignvariableop_8_transformer_encoder_2_multi_head_attention_2_key_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_9AssignVariableOpHassignvariableop_9_transformer_encoder_2_multi_head_attention_2_key_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:¾
AssignVariableOp_10AssignVariableOpMassignvariableop_10_transformer_encoder_2_multi_head_attention_2_value_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_11AssignVariableOpKassignvariableop_11_transformer_encoder_2_multi_head_attention_2_value_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_12AssignVariableOpXassignvariableop_12_transformer_encoder_2_multi_head_attention_2_attention_output_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ç
AssignVariableOp_13AssignVariableOpVassignvariableop_13_transformer_encoder_2_multi_head_attention_2_attention_output_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_8_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_8_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_9_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_9_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_18AssignVariableOpEassignvariableop_18_transformer_encoder_2_layer_normalization_4_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_19AssignVariableOpDassignvariableop_19_transformer_encoder_2_layer_normalization_4_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_20AssignVariableOpEassignvariableop_20_transformer_encoder_2_layer_normalization_5_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_21AssignVariableOpDassignvariableop_21_transformer_encoder_2_layer_normalization_5_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp,assignvariableop_22_rnn_2_lstm_cell_2_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_23AssignVariableOp6assignvariableop_23_rnn_2_lstm_cell_2_recurrent_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp*assignvariableop_24_rnn_2_lstm_cell_2_biasIdentity_24:output:0"/device:CPU:0*
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
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_dense_10_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_dense_10_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_dense_11_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_dense_11_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_38AssignVariableOpPassignvariableop_38_adam_token_and_position_embedding_2_embedding_4_embeddings_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_39AssignVariableOpPassignvariableop_39_adam_token_and_position_embedding_2_embedding_5_embeddings_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_40AssignVariableOpTassignvariableop_40_adam_transformer_encoder_2_multi_head_attention_2_query_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_41AssignVariableOpRassignvariableop_41_adam_transformer_encoder_2_multi_head_attention_2_query_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_42AssignVariableOpRassignvariableop_42_adam_transformer_encoder_2_multi_head_attention_2_key_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_43AssignVariableOpPassignvariableop_43_adam_transformer_encoder_2_multi_head_attention_2_key_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_44AssignVariableOpTassignvariableop_44_adam_transformer_encoder_2_multi_head_attention_2_value_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_45AssignVariableOpRassignvariableop_45_adam_transformer_encoder_2_multi_head_attention_2_value_bias_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ð
AssignVariableOp_46AssignVariableOp_assignvariableop_46_adam_transformer_encoder_2_multi_head_attention_2_attention_output_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Î
AssignVariableOp_47AssignVariableOp]assignvariableop_47_adam_transformer_encoder_2_multi_head_attention_2_attention_output_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_dense_8_kernel_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp'assignvariableop_49_adam_dense_8_bias_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_dense_9_kernel_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp'assignvariableop_51_adam_dense_9_bias_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_52AssignVariableOpLassignvariableop_52_adam_transformer_encoder_2_layer_normalization_4_gamma_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_53AssignVariableOpKassignvariableop_53_adam_transformer_encoder_2_layer_normalization_4_beta_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_54AssignVariableOpLassignvariableop_54_adam_transformer_encoder_2_layer_normalization_5_gamma_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_55AssignVariableOpKassignvariableop_55_adam_transformer_encoder_2_layer_normalization_5_beta_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_56AssignVariableOp3assignvariableop_56_adam_rnn_2_lstm_cell_2_kernel_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_57AssignVariableOp=assignvariableop_57_adam_rnn_2_lstm_cell_2_recurrent_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_58AssignVariableOp1assignvariableop_58_adam_rnn_2_lstm_cell_2_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_dense_10_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_dense_10_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp*assignvariableop_61_adam_dense_11_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp(assignvariableop_62_adam_dense_11_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_63AssignVariableOpPassignvariableop_63_adam_token_and_position_embedding_2_embedding_4_embeddings_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_64AssignVariableOpPassignvariableop_64_adam_token_and_position_embedding_2_embedding_5_embeddings_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_65AssignVariableOpTassignvariableop_65_adam_transformer_encoder_2_multi_head_attention_2_query_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_66AssignVariableOpRassignvariableop_66_adam_transformer_encoder_2_multi_head_attention_2_query_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_67AssignVariableOpRassignvariableop_67_adam_transformer_encoder_2_multi_head_attention_2_key_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_68AssignVariableOpPassignvariableop_68_adam_transformer_encoder_2_multi_head_attention_2_key_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_69AssignVariableOpTassignvariableop_69_adam_transformer_encoder_2_multi_head_attention_2_value_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_70AssignVariableOpRassignvariableop_70_adam_transformer_encoder_2_multi_head_attention_2_value_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:Ð
AssignVariableOp_71AssignVariableOp_assignvariableop_71_adam_transformer_encoder_2_multi_head_attention_2_attention_output_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:Î
AssignVariableOp_72AssignVariableOp]assignvariableop_72_adam_transformer_encoder_2_multi_head_attention_2_attention_output_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_73AssignVariableOp)assignvariableop_73_adam_dense_8_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_74AssignVariableOp'assignvariableop_74_adam_dense_8_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_75AssignVariableOp)assignvariableop_75_adam_dense_9_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_76AssignVariableOp'assignvariableop_76_adam_dense_9_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_77AssignVariableOpLassignvariableop_77_adam_transformer_encoder_2_layer_normalization_4_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_78AssignVariableOpKassignvariableop_78_adam_transformer_encoder_2_layer_normalization_4_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_79AssignVariableOpLassignvariableop_79_adam_transformer_encoder_2_layer_normalization_5_gamma_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_80AssignVariableOpKassignvariableop_80_adam_transformer_encoder_2_layer_normalization_5_beta_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_81AssignVariableOp3assignvariableop_81_adam_rnn_2_lstm_cell_2_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_82AssignVariableOp=assignvariableop_82_adam_rnn_2_lstm_cell_2_recurrent_kernel_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_83AssignVariableOp1assignvariableop_83_adam_rnn_2_lstm_cell_2_bias_vIdentity_83:output:0"/device:CPU:0*
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
J

D__inference_rnn_2_layer_call_and_return_conditional_losses_100085068

inputs=
*lstm_cell_2_matmul_readvariableop_resource:	2¸?
,lstm_cell_2_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_2_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_2/BiasAdd/ReadVariableOp¢!lstm_cell_2/MatMul/ReadVariableOp¢#lstm_cell_2/MatMul_1/ReadVariableOp¢while;
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
:2ÿÿÿÿÿÿÿÿÿ2D
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
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_2/TanhTanhlstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_2/Tanh_1Tanhlstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/Tanh_1:y:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
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
while_body_100084984* 
condR
while_cond_100084983*K
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
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
ñ
®
B__inference_token_and_position_embedding_2_layer_call_fn_100084083
x
unknown:22
	unknown_0:2
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *f
faR_
]__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_100082130s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

_user_specified_namex
Ö

+__inference_dense_9_layer_call_fn_100085394

inputs
unknown: 2
	unknown_0:2
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_9_layer_call_and_return_conditional_losses_100081628s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2 : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
 
_user_specified_nameinputs
ã?


rnn_2_while_body_100083977(
$rnn_2_while_rnn_2_while_loop_counter.
*rnn_2_while_rnn_2_while_maximum_iterations
rnn_2_while_placeholder
rnn_2_while_placeholder_1
rnn_2_while_placeholder_2
rnn_2_while_placeholder_3'
#rnn_2_while_rnn_2_strided_slice_1_0c
_rnn_2_while_tensorarrayv2read_tensorlistgetitem_rnn_2_tensorarrayunstack_tensorlistfromtensor_0K
8rnn_2_while_lstm_cell_2_matmul_readvariableop_resource_0:	2¸M
:rnn_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0:	.¸H
9rnn_2_while_lstm_cell_2_biasadd_readvariableop_resource_0:	¸
rnn_2_while_identity
rnn_2_while_identity_1
rnn_2_while_identity_2
rnn_2_while_identity_3
rnn_2_while_identity_4
rnn_2_while_identity_5%
!rnn_2_while_rnn_2_strided_slice_1a
]rnn_2_while_tensorarrayv2read_tensorlistgetitem_rnn_2_tensorarrayunstack_tensorlistfromtensorI
6rnn_2_while_lstm_cell_2_matmul_readvariableop_resource:	2¸K
8rnn_2_while_lstm_cell_2_matmul_1_readvariableop_resource:	.¸F
7rnn_2_while_lstm_cell_2_biasadd_readvariableop_resource:	¸¢.rnn_2/while/lstm_cell_2/BiasAdd/ReadVariableOp¢-rnn_2/while/lstm_cell_2/MatMul/ReadVariableOp¢/rnn_2/while/lstm_cell_2/MatMul_1/ReadVariableOp
=rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   Ä
/rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_rnn_2_while_tensorarrayv2read_tensorlistgetitem_rnn_2_tensorarrayunstack_tensorlistfromtensor_0rnn_2_while_placeholderFrnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0§
-rnn_2/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp8rnn_2_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0Ê
rnn_2/while/lstm_cell_2/MatMulMatMul6rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:05rnn_2/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸«
/rnn_2/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp:rnn_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0±
 rnn_2/while/lstm_cell_2/MatMul_1MatMulrnn_2_while_placeholder_27rnn_2/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸­
rnn_2/while/lstm_cell_2/addAddV2(rnn_2/while/lstm_cell_2/MatMul:product:0*rnn_2/while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸¥
.rnn_2/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp9rnn_2_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¶
rnn_2/while/lstm_cell_2/BiasAddBiasAddrnn_2/while/lstm_cell_2/add:z:06rnn_2/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸i
'rnn_2/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :þ
rnn_2/while/lstm_cell_2/splitSplit0rnn_2/while/lstm_cell_2/split/split_dim:output:0(rnn_2/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_split
rnn_2/while/lstm_cell_2/SigmoidSigmoid&rnn_2/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!rnn_2/while/lstm_cell_2/Sigmoid_1Sigmoid&rnn_2/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_2/while/lstm_cell_2/mulMul%rnn_2/while/lstm_cell_2/Sigmoid_1:y:0rnn_2_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.~
rnn_2/while/lstm_cell_2/TanhTanh&rnn_2/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_2/while/lstm_cell_2/mul_1Mul#rnn_2/while/lstm_cell_2/Sigmoid:y:0 rnn_2/while/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_2/while/lstm_cell_2/add_1AddV2rnn_2/while/lstm_cell_2/mul:z:0!rnn_2/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!rnn_2/while/lstm_cell_2/Sigmoid_2Sigmoid&rnn_2/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.{
rnn_2/while/lstm_cell_2/Tanh_1Tanh!rnn_2/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¡
rnn_2/while/lstm_cell_2/mul_2Mul%rnn_2/while/lstm_cell_2/Sigmoid_2:y:0"rnn_2/while/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
6rnn_2/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
0rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_2_while_placeholder_1?rnn_2/while/TensorArrayV2Write/TensorListSetItem/index:output:0!rnn_2/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒS
rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
rnn_2/while/addAddV2rnn_2_while_placeholderrnn_2/while/add/y:output:0*
T0*
_output_shapes
: U
rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
rnn_2/while/add_1AddV2$rnn_2_while_rnn_2_while_loop_counterrnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: k
rnn_2/while/IdentityIdentityrnn_2/while/add_1:z:0^rnn_2/while/NoOp*
T0*
_output_shapes
: 
rnn_2/while/Identity_1Identity*rnn_2_while_rnn_2_while_maximum_iterations^rnn_2/while/NoOp*
T0*
_output_shapes
: k
rnn_2/while/Identity_2Identityrnn_2/while/add:z:0^rnn_2/while/NoOp*
T0*
_output_shapes
: 
rnn_2/while/Identity_3Identity@rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn_2/while/NoOp*
T0*
_output_shapes
: 
rnn_2/while/Identity_4Identity!rnn_2/while/lstm_cell_2/mul_2:z:0^rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_2/while/Identity_5Identity!rnn_2/while/lstm_cell_2/add_1:z:0^rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.å
rnn_2/while/NoOpNoOp/^rnn_2/while/lstm_cell_2/BiasAdd/ReadVariableOp.^rnn_2/while/lstm_cell_2/MatMul/ReadVariableOp0^rnn_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "5
rnn_2_while_identityrnn_2/while/Identity:output:0"9
rnn_2_while_identity_1rnn_2/while/Identity_1:output:0"9
rnn_2_while_identity_2rnn_2/while/Identity_2:output:0"9
rnn_2_while_identity_3rnn_2/while/Identity_3:output:0"9
rnn_2_while_identity_4rnn_2/while/Identity_4:output:0"9
rnn_2_while_identity_5rnn_2/while/Identity_5:output:0"t
7rnn_2_while_lstm_cell_2_biasadd_readvariableop_resource9rnn_2_while_lstm_cell_2_biasadd_readvariableop_resource_0"v
8rnn_2_while_lstm_cell_2_matmul_1_readvariableop_resource:rnn_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0"r
6rnn_2_while_lstm_cell_2_matmul_readvariableop_resource8rnn_2_while_lstm_cell_2_matmul_readvariableop_resource_0"H
!rnn_2_while_rnn_2_strided_slice_1#rnn_2_while_rnn_2_strided_slice_1_0"À
]rnn_2_while_tensorarrayv2read_tensorlistgetitem_rnn_2_tensorarrayunstack_tensorlistfromtensor_rnn_2_while_tensorarrayv2read_tensorlistgetitem_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2`
.rnn_2/while/lstm_cell_2/BiasAdd/ReadVariableOp.rnn_2/while/lstm_cell_2/BiasAdd/ReadVariableOp2^
-rnn_2/while/lstm_cell_2/MatMul/ReadVariableOp-rnn_2/while/lstm_cell_2/MatMul/ReadVariableOp2b
/rnn_2/while/lstm_cell_2/MatMul_1/ReadVariableOp/rnn_2/while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
while_cond_100082627
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_100082627___redundant_placeholder07
3while_while_cond_100082627___redundant_placeholder17
3while_while_cond_100082627___redundant_placeholder27
3while_while_cond_100082627___redundant_placeholder3
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
D__inference_rnn_2_layer_call_and_return_conditional_losses_100082712

inputs=
*lstm_cell_2_matmul_readvariableop_resource:	2¸?
,lstm_cell_2_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_2_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_2/BiasAdd/ReadVariableOp¢!lstm_cell_2/MatMul/ReadVariableOp¢#lstm_cell_2/MatMul_1/ReadVariableOp¢while;
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
:2ÿÿÿÿÿÿÿÿÿ2D
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
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_2/TanhTanhlstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_2/Tanh_1Tanhlstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/Tanh_1:y:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
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
while_body_100082628* 
condR
while_cond_100082627*K
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
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
Ä
Ò
while_cond_100082020
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_100082020___redundant_placeholder07
3while_while_cond_100082020___redundant_placeholder17
3while_while_cond_100082020___redundant_placeholder27
3while_while_cond_100082020___redundant_placeholder3
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
ÙÈ
«
T__inference_transformer_encoder_2_layer_call_and_return_conditional_losses_100082901

inputsX
Bmulti_head_attention_2_query_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_2_query_add_readvariableop_resource:2V
@multi_head_attention_2_key_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_2_key_add_readvariableop_resource:2X
Bmulti_head_attention_2_value_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_2_value_add_readvariableop_resource:2c
Mmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:22Q
Cmulti_head_attention_2_attention_output_add_readvariableop_resource:2I
;layer_normalization_4_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_4_batchnorm_readvariableop_resource:2H
6sequential_2_dense_8_tensordot_readvariableop_resource:2 B
4sequential_2_dense_8_biasadd_readvariableop_resource: H
6sequential_2_dense_9_tensordot_readvariableop_resource: 2B
4sequential_2_dense_9_biasadd_readvariableop_resource:2I
;layer_normalization_5_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_5_batchnorm_readvariableop_resource:2
identity¢.layer_normalization_4/batchnorm/ReadVariableOp¢2layer_normalization_4/batchnorm/mul/ReadVariableOp¢.layer_normalization_5/batchnorm/ReadVariableOp¢2layer_normalization_5/batchnorm/mul/ReadVariableOp¢:multi_head_attention_2/attention_output/add/ReadVariableOp¢Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_2/key/add/ReadVariableOp¢7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_2/query/add/ReadVariableOp¢9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_2/value/add/ReadVariableOp¢9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp¢+sequential_2/dense_8/BiasAdd/ReadVariableOp¢-sequential_2/dense_8/Tensordot/ReadVariableOp¢+sequential_2/dense_9/BiasAdd/ReadVariableOp¢-sequential_2/dense_9/Tensordot/ReadVariableOpÀ
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_2/query/einsum/EinsumEinsuminputsAmulti_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabc,cde->abde¨
/multi_head_attention_2/query/add/ReadVariableOpReadVariableOp8multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_2/query/addAddV23multi_head_attention_2/query/einsum/Einsum:output:07multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¼
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention_2/key/einsum/EinsumEinsuminputs?multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabc,cde->abde¤
-multi_head_attention_2/key/add/ReadVariableOpReadVariableOp6multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention_2/key/addAddV21multi_head_attention_2/key/einsum/Einsum:output:05multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22À
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_2/value/einsum/EinsumEinsuminputsAmulti_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabc,cde->abde¨
/multi_head_attention_2/value/add/ReadVariableOpReadVariableOp8multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_2/value/addAddV23multi_head_attention_2/value/einsum/Einsum:output:07multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22a
multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>¨
multi_head_attention_2/MulMul$multi_head_attention_2/query/add:z:0%multi_head_attention_2/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Ô
$multi_head_attention_2/einsum/EinsumEinsum"multi_head_attention_2/key/add:z:0multi_head_attention_2/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationaecd,abcd->acbe
&multi_head_attention_2/softmax/SoftmaxSoftmax-multi_head_attention_2/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ê
&multi_head_attention_2/einsum_1/EinsumEinsum0multi_head_attention_2/softmax/Softmax:softmax:0$multi_head_attention_2/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
5multi_head_attention_2/attention_output/einsum/EinsumEinsum/multi_head_attention_2/einsum_1/Einsum:output:0Lmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabcd,cde->abeº
:multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0î
+multi_head_attention_2/attention_output/addAddV2>multi_head_attention_2/attention_output/einsum/Einsum:output:0Bmulti_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22]
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @§
dropout_10/dropout/MulMul/multi_head_attention_2/attention_output/add:z:0!dropout_10/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22w
dropout_10/dropout/ShapeShape/multi_head_attention_2/attention_output/add:z:0*
T0*
_output_shapes
:¦
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
dtype0f
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ë
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_10/dropout/CastCast#dropout_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_10/dropout/Mul_1Muldropout_10/dropout/Mul:z:0dropout_10/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22h
addAddV2inputsdropout_10/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22~
4layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¹
"layer_normalization_4/moments/meanMeanadd:z:0=layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(
*layer_normalization_4/moments/StopGradientStopGradient+layer_normalization_4/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¸
/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_4/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
8layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_4/moments/varianceMean3layer_normalization_4/moments/SquaredDifference:z:0Alayer_normalization_4/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(j
%layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_4/batchnorm/addAddV2/layer_normalization_4/moments/variance:output:0.layer_normalization_4/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%layer_normalization_4/batchnorm/RsqrtRsqrt'layer_normalization_4/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ª
2layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_4/batchnorm/mulMul)layer_normalization_4/batchnorm/Rsqrt:y:0:layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
%layer_normalization_4/batchnorm/mul_1Muladd:z:0'layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¸
%layer_normalization_4/batchnorm/mul_2Mul+layer_normalization_4/moments/mean:output:0'layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¢
.layer_normalization_4/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_4/batchnorm/subSub6layer_normalization_4/batchnorm/ReadVariableOp:value:0)layer_normalization_4/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¸
%layer_normalization_4/batchnorm/add_1AddV2)layer_normalization_4/batchnorm/mul_1:z:0'layer_normalization_4/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¤
-sequential_2/dense_8/Tensordot/ReadVariableOpReadVariableOp6sequential_2_dense_8_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0m
#sequential_2/dense_8/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_2/dense_8/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
$sequential_2/dense_8/Tensordot/ShapeShape)layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:n
,sequential_2/dense_8/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential_2/dense_8/Tensordot/GatherV2GatherV2-sequential_2/dense_8/Tensordot/Shape:output:0,sequential_2/dense_8/Tensordot/free:output:05sequential_2/dense_8/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_2/dense_8/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_2/dense_8/Tensordot/GatherV2_1GatherV2-sequential_2/dense_8/Tensordot/Shape:output:0,sequential_2/dense_8/Tensordot/axes:output:07sequential_2/dense_8/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_2/dense_8/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ­
#sequential_2/dense_8/Tensordot/ProdProd0sequential_2/dense_8/Tensordot/GatherV2:output:0-sequential_2/dense_8/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_2/dense_8/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_2/dense_8/Tensordot/Prod_1Prod2sequential_2/dense_8/Tensordot/GatherV2_1:output:0/sequential_2/dense_8/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_2/dense_8/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
%sequential_2/dense_8/Tensordot/concatConcatV2,sequential_2/dense_8/Tensordot/free:output:0,sequential_2/dense_8/Tensordot/axes:output:03sequential_2/dense_8/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¸
$sequential_2/dense_8/Tensordot/stackPack,sequential_2/dense_8/Tensordot/Prod:output:0.sequential_2/dense_8/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Æ
(sequential_2/dense_8/Tensordot/transpose	Transpose)layer_normalization_4/batchnorm/add_1:z:0.sequential_2/dense_8/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22É
&sequential_2/dense_8/Tensordot/ReshapeReshape,sequential_2/dense_8/Tensordot/transpose:y:0-sequential_2/dense_8/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
%sequential_2/dense_8/Tensordot/MatMulMatMul/sequential_2/dense_8/Tensordot/Reshape:output:05sequential_2/dense_8/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
&sequential_2/dense_8/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: n
,sequential_2/dense_8/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
'sequential_2/dense_8/Tensordot/concat_1ConcatV20sequential_2/dense_8/Tensordot/GatherV2:output:0/sequential_2/dense_8/Tensordot/Const_2:output:05sequential_2/dense_8/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Â
sequential_2/dense_8/TensordotReshape/sequential_2/dense_8/Tensordot/MatMul:product:00sequential_2/dense_8/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
+sequential_2/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0»
sequential_2/dense_8/BiasAddBiasAdd'sequential_2/dense_8/Tensordot:output:03sequential_2/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 ~
sequential_2/dense_8/ReluRelu%sequential_2/dense_8/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 ¤
-sequential_2/dense_9/Tensordot/ReadVariableOpReadVariableOp6sequential_2_dense_9_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0m
#sequential_2/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_2/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_2/dense_9/Tensordot/ShapeShape'sequential_2/dense_8/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_2/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential_2/dense_9/Tensordot/GatherV2GatherV2-sequential_2/dense_9/Tensordot/Shape:output:0,sequential_2/dense_9/Tensordot/free:output:05sequential_2/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_2/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_2/dense_9/Tensordot/GatherV2_1GatherV2-sequential_2/dense_9/Tensordot/Shape:output:0,sequential_2/dense_9/Tensordot/axes:output:07sequential_2/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_2/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ­
#sequential_2/dense_9/Tensordot/ProdProd0sequential_2/dense_9/Tensordot/GatherV2:output:0-sequential_2/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_2/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_2/dense_9/Tensordot/Prod_1Prod2sequential_2/dense_9/Tensordot/GatherV2_1:output:0/sequential_2/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_2/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
%sequential_2/dense_9/Tensordot/concatConcatV2,sequential_2/dense_9/Tensordot/free:output:0,sequential_2/dense_9/Tensordot/axes:output:03sequential_2/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¸
$sequential_2/dense_9/Tensordot/stackPack,sequential_2/dense_9/Tensordot/Prod:output:0.sequential_2/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ä
(sequential_2/dense_9/Tensordot/transpose	Transpose'sequential_2/dense_8/Relu:activations:0.sequential_2/dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 É
&sequential_2/dense_9/Tensordot/ReshapeReshape,sequential_2/dense_9/Tensordot/transpose:y:0-sequential_2/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
%sequential_2/dense_9/Tensordot/MatMulMatMul/sequential_2/dense_9/Tensordot/Reshape:output:05sequential_2/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
&sequential_2/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2n
,sequential_2/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
'sequential_2/dense_9/Tensordot/concat_1ConcatV20sequential_2/dense_9/Tensordot/GatherV2:output:0/sequential_2/dense_9/Tensordot/Const_2:output:05sequential_2/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Â
sequential_2/dense_9/TensordotReshape/sequential_2/dense_9/Tensordot/MatMul:product:00sequential_2/dense_9/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
+sequential_2/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_9_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0»
sequential_2/dense_9/BiasAddBiasAdd'sequential_2/dense_9/Tensordot:output:03sequential_2/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22]
dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_11/dropout/MulMul%sequential_2/dense_9/BiasAdd:output:0!dropout_11/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22m
dropout_11/dropout/ShapeShape%sequential_2/dense_9/BiasAdd:output:0*
T0*
_output_shapes
:¦
/dropout_11/dropout/random_uniform/RandomUniformRandomUniform!dropout_11/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
dtype0f
!dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ë
dropout_11/dropout/GreaterEqualGreaterEqual8dropout_11/dropout/random_uniform/RandomUniform:output:0*dropout_11/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_11/dropout/CastCast#dropout_11/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_11/dropout/Mul_1Muldropout_11/dropout/Mul:z:0dropout_11/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_1AddV2)layer_normalization_4/batchnorm/add_1:z:0dropout_11/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22~
4layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
"layer_normalization_5/moments/meanMean	add_1:z:0=layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(
*layer_normalization_5/moments/StopGradientStopGradient+layer_normalization_5/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2º
/layer_normalization_5/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_5/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
8layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_5/moments/varianceMean3layer_normalization_5/moments/SquaredDifference:z:0Alayer_normalization_5/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(j
%layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_5/batchnorm/addAddV2/layer_normalization_5/moments/variance:output:0.layer_normalization_5/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%layer_normalization_5/batchnorm/RsqrtRsqrt'layer_normalization_5/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ª
2layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_5/batchnorm/mulMul)layer_normalization_5/batchnorm/Rsqrt:y:0:layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
%layer_normalization_5/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¸
%layer_normalization_5/batchnorm/mul_2Mul+layer_normalization_5/moments/mean:output:0'layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¢
.layer_normalization_5/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_5/batchnorm/subSub6layer_normalization_5/batchnorm/ReadVariableOp:value:0)layer_normalization_5/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¸
%layer_normalization_5/batchnorm/add_1AddV2)layer_normalization_5/batchnorm/mul_1:z:0'layer_normalization_5/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22|
IdentityIdentity)layer_normalization_5/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
NoOpNoOp/^layer_normalization_4/batchnorm/ReadVariableOp3^layer_normalization_4/batchnorm/mul/ReadVariableOp/^layer_normalization_5/batchnorm/ReadVariableOp3^layer_normalization_5/batchnorm/mul/ReadVariableOp;^multi_head_attention_2/attention_output/add/ReadVariableOpE^multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_2/key/add/ReadVariableOp8^multi_head_attention_2/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/query/add/ReadVariableOp:^multi_head_attention_2/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/value/add/ReadVariableOp:^multi_head_attention_2/value/einsum/Einsum/ReadVariableOp,^sequential_2/dense_8/BiasAdd/ReadVariableOp.^sequential_2/dense_8/Tensordot/ReadVariableOp,^sequential_2/dense_9/BiasAdd/ReadVariableOp.^sequential_2/dense_9/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ22: : : : : : : : : : : : : : : : 2`
.layer_normalization_4/batchnorm/ReadVariableOp.layer_normalization_4/batchnorm/ReadVariableOp2h
2layer_normalization_4/batchnorm/mul/ReadVariableOp2layer_normalization_4/batchnorm/mul/ReadVariableOp2`
.layer_normalization_5/batchnorm/ReadVariableOp.layer_normalization_5/batchnorm/ReadVariableOp2h
2layer_normalization_5/batchnorm/mul/ReadVariableOp2layer_normalization_5/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_2/attention_output/add/ReadVariableOp:multi_head_attention_2/attention_output/add/ReadVariableOp2
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_2/key/add/ReadVariableOp-multi_head_attention_2/key/add/ReadVariableOp2r
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/query/add/ReadVariableOp/multi_head_attention_2/query/add/ReadVariableOp2v
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/value/add/ReadVariableOp/multi_head_attention_2/value/add/ReadVariableOp2v
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2Z
+sequential_2/dense_8/BiasAdd/ReadVariableOp+sequential_2/dense_8/BiasAdd/ReadVariableOp2^
-sequential_2/dense_8/Tensordot/ReadVariableOp-sequential_2/dense_8/Tensordot/ReadVariableOp2Z
+sequential_2/dense_9/BiasAdd/ReadVariableOp+sequential_2/dense_9/BiasAdd/ReadVariableOp2^
-sequential_2/dense_9/Tensordot/ReadVariableOp-sequential_2/dense_9/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
Ü
¹
9__inference_transformer_encoder_2_layer_call_fn_100084181

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
:ÿÿÿÿÿÿÿÿÿ22*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transformer_encoder_2_layer_call_and_return_conditional_losses_100082901s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ22: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
È
±
+__inference_model_2_layer_call_fn_100083170
input_3
unknown:22
	unknown_0:2
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
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
F__inference_model_2_layer_call_and_return_conditional_losses_100083062o
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
E:ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
!
_user_specified_name	input_3
¥I

"model_2_rnn_2_while_body_1000814578
4model_2_rnn_2_while_model_2_rnn_2_while_loop_counter>
:model_2_rnn_2_while_model_2_rnn_2_while_maximum_iterations#
model_2_rnn_2_while_placeholder%
!model_2_rnn_2_while_placeholder_1%
!model_2_rnn_2_while_placeholder_2%
!model_2_rnn_2_while_placeholder_37
3model_2_rnn_2_while_model_2_rnn_2_strided_slice_1_0s
omodel_2_rnn_2_while_tensorarrayv2read_tensorlistgetitem_model_2_rnn_2_tensorarrayunstack_tensorlistfromtensor_0S
@model_2_rnn_2_while_lstm_cell_2_matmul_readvariableop_resource_0:	2¸U
Bmodel_2_rnn_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0:	.¸P
Amodel_2_rnn_2_while_lstm_cell_2_biasadd_readvariableop_resource_0:	¸ 
model_2_rnn_2_while_identity"
model_2_rnn_2_while_identity_1"
model_2_rnn_2_while_identity_2"
model_2_rnn_2_while_identity_3"
model_2_rnn_2_while_identity_4"
model_2_rnn_2_while_identity_55
1model_2_rnn_2_while_model_2_rnn_2_strided_slice_1q
mmodel_2_rnn_2_while_tensorarrayv2read_tensorlistgetitem_model_2_rnn_2_tensorarrayunstack_tensorlistfromtensorQ
>model_2_rnn_2_while_lstm_cell_2_matmul_readvariableop_resource:	2¸S
@model_2_rnn_2_while_lstm_cell_2_matmul_1_readvariableop_resource:	.¸N
?model_2_rnn_2_while_lstm_cell_2_biasadd_readvariableop_resource:	¸¢6model_2/rnn_2/while/lstm_cell_2/BiasAdd/ReadVariableOp¢5model_2/rnn_2/while/lstm_cell_2/MatMul/ReadVariableOp¢7model_2/rnn_2/while/lstm_cell_2/MatMul_1/ReadVariableOp
Emodel_2/rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ì
7model_2/rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemomodel_2_rnn_2_while_tensorarrayv2read_tensorlistgetitem_model_2_rnn_2_tensorarrayunstack_tensorlistfromtensor_0model_2_rnn_2_while_placeholderNmodel_2/rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0·
5model_2/rnn_2/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp@model_2_rnn_2_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0â
&model_2/rnn_2/while/lstm_cell_2/MatMulMatMul>model_2/rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0=model_2/rnn_2/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸»
7model_2/rnn_2/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpBmodel_2_rnn_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0É
(model_2/rnn_2/while/lstm_cell_2/MatMul_1MatMul!model_2_rnn_2_while_placeholder_2?model_2/rnn_2/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸Å
#model_2/rnn_2/while/lstm_cell_2/addAddV20model_2/rnn_2/while/lstm_cell_2/MatMul:product:02model_2/rnn_2/while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸µ
6model_2/rnn_2/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpAmodel_2_rnn_2_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0Î
'model_2/rnn_2/while/lstm_cell_2/BiasAddBiasAdd'model_2/rnn_2/while/lstm_cell_2/add:z:0>model_2/rnn_2/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸q
/model_2/rnn_2/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%model_2/rnn_2/while/lstm_cell_2/splitSplit8model_2/rnn_2/while/lstm_cell_2/split/split_dim:output:00model_2/rnn_2/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_split
'model_2/rnn_2/while/lstm_cell_2/SigmoidSigmoid.model_2/rnn_2/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
)model_2/rnn_2/while/lstm_cell_2/Sigmoid_1Sigmoid.model_2/rnn_2/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.®
#model_2/rnn_2/while/lstm_cell_2/mulMul-model_2/rnn_2/while/lstm_cell_2/Sigmoid_1:y:0!model_2_rnn_2_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
$model_2/rnn_2/while/lstm_cell_2/TanhTanh.model_2/rnn_2/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.µ
%model_2/rnn_2/while/lstm_cell_2/mul_1Mul+model_2/rnn_2/while/lstm_cell_2/Sigmoid:y:0(model_2/rnn_2/while/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.´
%model_2/rnn_2/while/lstm_cell_2/add_1AddV2'model_2/rnn_2/while/lstm_cell_2/mul:z:0)model_2/rnn_2/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
)model_2/rnn_2/while/lstm_cell_2/Sigmoid_2Sigmoid.model_2/rnn_2/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
&model_2/rnn_2/while/lstm_cell_2/Tanh_1Tanh)model_2/rnn_2/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¹
%model_2/rnn_2/while/lstm_cell_2/mul_2Mul-model_2/rnn_2/while/lstm_cell_2/Sigmoid_2:y:0*model_2/rnn_2/while/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
>model_2/rnn_2/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ¤
8model_2/rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!model_2_rnn_2_while_placeholder_1Gmodel_2/rnn_2/while/TensorArrayV2Write/TensorListSetItem/index:output:0)model_2/rnn_2/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒ[
model_2/rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
model_2/rnn_2/while/addAddV2model_2_rnn_2_while_placeholder"model_2/rnn_2/while/add/y:output:0*
T0*
_output_shapes
: ]
model_2/rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
model_2/rnn_2/while/add_1AddV24model_2_rnn_2_while_model_2_rnn_2_while_loop_counter$model_2/rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: 
model_2/rnn_2/while/IdentityIdentitymodel_2/rnn_2/while/add_1:z:0^model_2/rnn_2/while/NoOp*
T0*
_output_shapes
: ¢
model_2/rnn_2/while/Identity_1Identity:model_2_rnn_2_while_model_2_rnn_2_while_maximum_iterations^model_2/rnn_2/while/NoOp*
T0*
_output_shapes
: 
model_2/rnn_2/while/Identity_2Identitymodel_2/rnn_2/while/add:z:0^model_2/rnn_2/while/NoOp*
T0*
_output_shapes
: °
model_2/rnn_2/while/Identity_3IdentityHmodel_2/rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model_2/rnn_2/while/NoOp*
T0*
_output_shapes
: ¢
model_2/rnn_2/while/Identity_4Identity)model_2/rnn_2/while/lstm_cell_2/mul_2:z:0^model_2/rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¢
model_2/rnn_2/while/Identity_5Identity)model_2/rnn_2/while/lstm_cell_2/add_1:z:0^model_2/rnn_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
model_2/rnn_2/while/NoOpNoOp7^model_2/rnn_2/while/lstm_cell_2/BiasAdd/ReadVariableOp6^model_2/rnn_2/while/lstm_cell_2/MatMul/ReadVariableOp8^model_2/rnn_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
model_2_rnn_2_while_identity%model_2/rnn_2/while/Identity:output:0"I
model_2_rnn_2_while_identity_1'model_2/rnn_2/while/Identity_1:output:0"I
model_2_rnn_2_while_identity_2'model_2/rnn_2/while/Identity_2:output:0"I
model_2_rnn_2_while_identity_3'model_2/rnn_2/while/Identity_3:output:0"I
model_2_rnn_2_while_identity_4'model_2/rnn_2/while/Identity_4:output:0"I
model_2_rnn_2_while_identity_5'model_2/rnn_2/while/Identity_5:output:0"
?model_2_rnn_2_while_lstm_cell_2_biasadd_readvariableop_resourceAmodel_2_rnn_2_while_lstm_cell_2_biasadd_readvariableop_resource_0"
@model_2_rnn_2_while_lstm_cell_2_matmul_1_readvariableop_resourceBmodel_2_rnn_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0"
>model_2_rnn_2_while_lstm_cell_2_matmul_readvariableop_resource@model_2_rnn_2_while_lstm_cell_2_matmul_readvariableop_resource_0"h
1model_2_rnn_2_while_model_2_rnn_2_strided_slice_13model_2_rnn_2_while_model_2_rnn_2_strided_slice_1_0"à
mmodel_2_rnn_2_while_tensorarrayv2read_tensorlistgetitem_model_2_rnn_2_tensorarrayunstack_tensorlistfromtensoromodel_2_rnn_2_while_tensorarrayv2read_tensorlistgetitem_model_2_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2p
6model_2/rnn_2/while/lstm_cell_2/BiasAdd/ReadVariableOp6model_2/rnn_2/while/lstm_cell_2/BiasAdd/ReadVariableOp2n
5model_2/rnn_2/while/lstm_cell_2/MatMul/ReadVariableOp5model_2/rnn_2/while/lstm_cell_2/MatMul/ReadVariableOp2r
7model_2/rnn_2/while/lstm_cell_2/MatMul_1/ReadVariableOp7model_2/rnn_2/while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
»
º
K__inference_sequential_2_layer_call_and_return_conditional_losses_100081695

inputs#
dense_8_100081684:2 
dense_8_100081686: #
dense_9_100081689: 2
dense_9_100081691:2
identity¢dense_8/StatefulPartitionedCall¢dense_9/StatefulPartitionedCallù
dense_8/StatefulPartitionedCallStatefulPartitionedCallinputsdense_8_100081684dense_8_100081686*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_8_layer_call_and_return_conditional_losses_100081592
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_100081689dense_9_100081691*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_9_layer_call_and_return_conditional_losses_100081628{
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
NoOpNoOp ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ22: : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
Ä
Ò
while_cond_100084695
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_100084695___redundant_placeholder07
3while_while_cond_100084695___redundant_placeholder17
3while_while_cond_100084695___redundant_placeholder27
3while_while_cond_100084695___redundant_placeholder3
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
,__inference_dense_11_layer_call_fn_100085097

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
G__inference_dense_11_layer_call_and_return_conditional_losses_100082475o
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

Ô
F__inference_model_2_layer_call_and_return_conditional_losses_100084074

inputsW
Etoken_and_position_embedding_2_embedding_5_embedding_lookup_100083772:22W
Etoken_and_position_embedding_2_embedding_4_embedding_lookup_100083778:2n
Xtransformer_encoder_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_2_multi_head_attention_2_query_add_readvariableop_resource:2l
Vtransformer_encoder_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resource:22^
Ltransformer_encoder_2_multi_head_attention_2_key_add_readvariableop_resource:2n
Xtransformer_encoder_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_2_multi_head_attention_2_value_add_readvariableop_resource:2y
ctransformer_encoder_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:22g
Ytransformer_encoder_2_multi_head_attention_2_attention_output_add_readvariableop_resource:2_
Qtransformer_encoder_2_layer_normalization_4_batchnorm_mul_readvariableop_resource:2[
Mtransformer_encoder_2_layer_normalization_4_batchnorm_readvariableop_resource:2^
Ltransformer_encoder_2_sequential_2_dense_8_tensordot_readvariableop_resource:2 X
Jtransformer_encoder_2_sequential_2_dense_8_biasadd_readvariableop_resource: ^
Ltransformer_encoder_2_sequential_2_dense_9_tensordot_readvariableop_resource: 2X
Jtransformer_encoder_2_sequential_2_dense_9_biasadd_readvariableop_resource:2_
Qtransformer_encoder_2_layer_normalization_5_batchnorm_mul_readvariableop_resource:2[
Mtransformer_encoder_2_layer_normalization_5_batchnorm_readvariableop_resource:2C
0rnn_2_lstm_cell_2_matmul_readvariableop_resource:	2¸E
2rnn_2_lstm_cell_2_matmul_1_readvariableop_resource:	.¸@
1rnn_2_lstm_cell_2_biasadd_readvariableop_resource:	¸9
'dense_10_matmul_readvariableop_resource:..6
(dense_10_biasadd_readvariableop_resource:.9
'dense_11_matmul_readvariableop_resource:.6
(dense_11_biasadd_readvariableop_resource:
identity¢dense_10/BiasAdd/ReadVariableOp¢dense_10/MatMul/ReadVariableOp¢dense_11/BiasAdd/ReadVariableOp¢dense_11/MatMul/ReadVariableOp¢(rnn_2/lstm_cell_2/BiasAdd/ReadVariableOp¢'rnn_2/lstm_cell_2/MatMul/ReadVariableOp¢)rnn_2/lstm_cell_2/MatMul_1/ReadVariableOp¢rnn_2/while¢;token_and_position_embedding_2/embedding_4/embedding_lookup¢;token_and_position_embedding_2/embedding_5/embedding_lookup¢Dtransformer_encoder_2/layer_normalization_4/batchnorm/ReadVariableOp¢Htransformer_encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp¢Dtransformer_encoder_2/layer_normalization_5/batchnorm/ReadVariableOp¢Htransformer_encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOp¢Ptransformer_encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOp¢Ztransformer_encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp¢Ctransformer_encoder_2/multi_head_attention_2/key/add/ReadVariableOp¢Mtransformer_encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp¢Etransformer_encoder_2/multi_head_attention_2/query/add/ReadVariableOp¢Otransformer_encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp¢Etransformer_encoder_2/multi_head_attention_2/value/add/ReadVariableOp¢Otransformer_encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp¢Atransformer_encoder_2/sequential_2/dense_8/BiasAdd/ReadVariableOp¢Ctransformer_encoder_2/sequential_2/dense_8/Tensordot/ReadVariableOp¢Atransformer_encoder_2/sequential_2/dense_9/BiasAdd/ReadVariableOp¢Ctransformer_encoder_2/sequential_2/dense_9/Tensordot/ReadVariableOpZ
$token_and_position_embedding_2/ShapeShapeinputs*
T0*
_output_shapes
:
2token_and_position_embedding_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ~
4token_and_position_embedding_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,token_and_position_embedding_2/strided_sliceStridedSlice-token_and_position_embedding_2/Shape:output:0;token_and_position_embedding_2/strided_slice/stack:output:0=token_and_position_embedding_2/strided_slice/stack_1:output:0=token_and_position_embedding_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_2/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_2/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ê
$token_and_position_embedding_2/rangeRange3token_and_position_embedding_2/range/start:output:05token_and_position_embedding_2/strided_slice:output:03token_and_position_embedding_2/range/delta:output:0*
_output_shapes
:2Ú
;token_and_position_embedding_2/embedding_5/embedding_lookupResourceGatherEtoken_and_position_embedding_2_embedding_5_embedding_lookup_100083772-token_and_position_embedding_2/range:output:0*
Tindices0*X
_classN
LJloc:@token_and_position_embedding_2/embedding_5/embedding_lookup/100083772*
_output_shapes

:22*
dtype0
Dtoken_and_position_embedding_2/embedding_5/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_2/embedding_5/embedding_lookup:output:0*
T0*X
_classN
LJloc:@token_and_position_embedding_2/embedding_5/embedding_lookup/100083772*
_output_shapes

:22Ê
Ftoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:22
/token_and_position_embedding_2/embedding_4/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2í
;token_and_position_embedding_2/embedding_4/embedding_lookupResourceGatherEtoken_and_position_embedding_2_embedding_4_embedding_lookup_1000837783token_and_position_embedding_2/embedding_4/Cast:y:0*
Tindices0*X
_classN
LJloc:@token_and_position_embedding_2/embedding_4/embedding_lookup/100083778*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
dtype0¦
Dtoken_and_position_embedding_2/embedding_4/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_2/embedding_4/embedding_lookup:output:0*
T0*X
_classN
LJloc:@token_and_position_embedding_2/embedding_4/embedding_lookup/100083778*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22×
Ftoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
"token_and_position_embedding_2/addAddV2Otoken_and_position_embedding_2/embedding_4/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_2/embedding_5/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ì
Otransformer_encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0«
@transformer_encoder_2/multi_head_attention_2/query/einsum/EinsumEinsum&token_and_position_embedding_2/add:z:0Wtransformer_encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabc,cde->abdeÔ
Etransformer_encoder_2/multi_head_attention_2/query/add/ReadVariableOpReadVariableOpNtransformer_encoder_2_multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0
6transformer_encoder_2/multi_head_attention_2/query/addAddV2Itransformer_encoder_2/multi_head_attention_2/query/einsum/Einsum:output:0Mtransformer_encoder_2/multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22è
Mtransformer_encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_encoder_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0§
>transformer_encoder_2/multi_head_attention_2/key/einsum/EinsumEinsum&token_and_position_embedding_2/add:z:0Utransformer_encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabc,cde->abdeÐ
Ctransformer_encoder_2/multi_head_attention_2/key/add/ReadVariableOpReadVariableOpLtransformer_encoder_2_multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0
4transformer_encoder_2/multi_head_attention_2/key/addAddV2Gtransformer_encoder_2/multi_head_attention_2/key/einsum/Einsum:output:0Ktransformer_encoder_2/multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ì
Otransformer_encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0«
@transformer_encoder_2/multi_head_attention_2/value/einsum/EinsumEinsum&token_and_position_embedding_2/add:z:0Wtransformer_encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabc,cde->abdeÔ
Etransformer_encoder_2/multi_head_attention_2/value/add/ReadVariableOpReadVariableOpNtransformer_encoder_2_multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0
6transformer_encoder_2/multi_head_attention_2/value/addAddV2Itransformer_encoder_2/multi_head_attention_2/value/einsum/Einsum:output:0Mtransformer_encoder_2/multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22w
2transformer_encoder_2/multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>ê
0transformer_encoder_2/multi_head_attention_2/MulMul:transformer_encoder_2/multi_head_attention_2/query/add:z:0;transformer_encoder_2/multi_head_attention_2/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
:transformer_encoder_2/multi_head_attention_2/einsum/EinsumEinsum8transformer_encoder_2/multi_head_attention_2/key/add:z:04transformer_encoder_2/multi_head_attention_2/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationaecd,abcd->acbeÆ
<transformer_encoder_2/multi_head_attention_2/softmax/SoftmaxSoftmaxCtransformer_encoder_2/multi_head_attention_2/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¬
<transformer_encoder_2/multi_head_attention_2/einsum_1/EinsumEinsumFtransformer_encoder_2/multi_head_attention_2/softmax/Softmax:softmax:0:transformer_encoder_2/multi_head_attention_2/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationacbe,aecd->abcd
Ztransformer_encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpctransformer_encoder_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ü
Ktransformer_encoder_2/multi_head_attention_2/attention_output/einsum/EinsumEinsumEtransformer_encoder_2/multi_head_attention_2/einsum_1/Einsum:output:0btransformer_encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabcd,cde->abeæ
Ptransformer_encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpYtransformer_encoder_2_multi_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0°
Atransformer_encoder_2/multi_head_attention_2/attention_output/addAddV2Ttransformer_encoder_2/multi_head_attention_2/attention_output/einsum/Einsum:output:0Xtransformer_encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22s
.transformer_encoder_2/dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @é
,transformer_encoder_2/dropout_10/dropout/MulMulEtransformer_encoder_2/multi_head_attention_2/attention_output/add:z:07transformer_encoder_2/dropout_10/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22£
.transformer_encoder_2/dropout_10/dropout/ShapeShapeEtransformer_encoder_2/multi_head_attention_2/attention_output/add:z:0*
T0*
_output_shapes
:Ò
Etransformer_encoder_2/dropout_10/dropout/random_uniform/RandomUniformRandomUniform7transformer_encoder_2/dropout_10/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
dtype0|
7transformer_encoder_2/dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
5transformer_encoder_2/dropout_10/dropout/GreaterEqualGreaterEqualNtransformer_encoder_2/dropout_10/dropout/random_uniform/RandomUniform:output:0@transformer_encoder_2/dropout_10/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22µ
-transformer_encoder_2/dropout_10/dropout/CastCast9transformer_encoder_2/dropout_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Ð
.transformer_encoder_2/dropout_10/dropout/Mul_1Mul0transformer_encoder_2/dropout_10/dropout/Mul:z:01transformer_encoder_2/dropout_10/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22´
transformer_encoder_2/addAddV2&token_and_position_embedding_2/add:z:02transformer_encoder_2/dropout_10/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Jtransformer_encoder_2/layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:û
8transformer_encoder_2/layer_normalization_4/moments/meanMeantransformer_encoder_2/add:z:0Stransformer_encoder_2/layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(É
@transformer_encoder_2/layer_normalization_4/moments/StopGradientStopGradientAtransformer_encoder_2/layer_normalization_4/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ú
Etransformer_encoder_2/layer_normalization_4/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_2/add:z:0Itransformer_encoder_2/layer_normalization_4/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Ntransformer_encoder_2/layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¯
<transformer_encoder_2/layer_normalization_4/moments/varianceMeanItransformer_encoder_2/layer_normalization_4/moments/SquaredDifference:z:0Wtransformer_encoder_2/layer_normalization_4/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(
;transformer_encoder_2/layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
9transformer_encoder_2/layer_normalization_4/batchnorm/addAddV2Etransformer_encoder_2/layer_normalization_4/moments/variance:output:0Dtransformer_encoder_2/layer_normalization_4/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¹
;transformer_encoder_2/layer_normalization_4/batchnorm/RsqrtRsqrt=transformer_encoder_2/layer_normalization_4/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ö
Htransformer_encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpQtransformer_encoder_2_layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_2/layer_normalization_4/batchnorm/mulMul?transformer_encoder_2/layer_normalization_4/batchnorm/Rsqrt:y:0Ptransformer_encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Ö
;transformer_encoder_2/layer_normalization_4/batchnorm/mul_1Multransformer_encoder_2/add:z:0=transformer_encoder_2/layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ú
;transformer_encoder_2/layer_normalization_4/batchnorm/mul_2MulAtransformer_encoder_2/layer_normalization_4/moments/mean:output:0=transformer_encoder_2/layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Î
Dtransformer_encoder_2/layer_normalization_4/batchnorm/ReadVariableOpReadVariableOpMtransformer_encoder_2_layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_2/layer_normalization_4/batchnorm/subSubLtransformer_encoder_2/layer_normalization_4/batchnorm/ReadVariableOp:value:0?transformer_encoder_2/layer_normalization_4/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ú
;transformer_encoder_2/layer_normalization_4/batchnorm/add_1AddV2?transformer_encoder_2/layer_normalization_4/batchnorm/mul_1:z:0=transformer_encoder_2/layer_normalization_4/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Ð
Ctransformer_encoder_2/sequential_2/dense_8/Tensordot/ReadVariableOpReadVariableOpLtransformer_encoder_2_sequential_2_dense_8_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0
9transformer_encoder_2/sequential_2/dense_8/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
9transformer_encoder_2/sequential_2/dense_8/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ©
:transformer_encoder_2/sequential_2/dense_8/Tensordot/ShapeShape?transformer_encoder_2/layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Btransformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
=transformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2GatherV2Ctransformer_encoder_2/sequential_2/dense_8/Tensordot/Shape:output:0Btransformer_encoder_2/sequential_2/dense_8/Tensordot/free:output:0Ktransformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Dtransformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
?transformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2_1GatherV2Ctransformer_encoder_2/sequential_2/dense_8/Tensordot/Shape:output:0Btransformer_encoder_2/sequential_2/dense_8/Tensordot/axes:output:0Mtransformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
:transformer_encoder_2/sequential_2/dense_8/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ï
9transformer_encoder_2/sequential_2/dense_8/Tensordot/ProdProdFtransformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2:output:0Ctransformer_encoder_2/sequential_2/dense_8/Tensordot/Const:output:0*
T0*
_output_shapes
: 
<transformer_encoder_2/sequential_2/dense_8/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: õ
;transformer_encoder_2/sequential_2/dense_8/Tensordot/Prod_1ProdHtransformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2_1:output:0Etransformer_encoder_2/sequential_2/dense_8/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
@transformer_encoder_2/sequential_2/dense_8/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : È
;transformer_encoder_2/sequential_2/dense_8/Tensordot/concatConcatV2Btransformer_encoder_2/sequential_2/dense_8/Tensordot/free:output:0Btransformer_encoder_2/sequential_2/dense_8/Tensordot/axes:output:0Itransformer_encoder_2/sequential_2/dense_8/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ú
:transformer_encoder_2/sequential_2/dense_8/Tensordot/stackPackBtransformer_encoder_2/sequential_2/dense_8/Tensordot/Prod:output:0Dtransformer_encoder_2/sequential_2/dense_8/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
>transformer_encoder_2/sequential_2/dense_8/Tensordot/transpose	Transpose?transformer_encoder_2/layer_normalization_4/batchnorm/add_1:z:0Dtransformer_encoder_2/sequential_2/dense_8/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
<transformer_encoder_2/sequential_2/dense_8/Tensordot/ReshapeReshapeBtransformer_encoder_2/sequential_2/dense_8/Tensordot/transpose:y:0Ctransformer_encoder_2/sequential_2/dense_8/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
;transformer_encoder_2/sequential_2/dense_8/Tensordot/MatMulMatMulEtransformer_encoder_2/sequential_2/dense_8/Tensordot/Reshape:output:0Ktransformer_encoder_2/sequential_2/dense_8/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
<transformer_encoder_2/sequential_2/dense_8/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
Btransformer_encoder_2/sequential_2/dense_8/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
=transformer_encoder_2/sequential_2/dense_8/Tensordot/concat_1ConcatV2Ftransformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2:output:0Etransformer_encoder_2/sequential_2/dense_8/Tensordot/Const_2:output:0Ktransformer_encoder_2/sequential_2/dense_8/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
4transformer_encoder_2/sequential_2/dense_8/TensordotReshapeEtransformer_encoder_2/sequential_2/dense_8/Tensordot/MatMul:product:0Ftransformer_encoder_2/sequential_2/dense_8/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 È
Atransformer_encoder_2/sequential_2/dense_8/BiasAdd/ReadVariableOpReadVariableOpJtransformer_encoder_2_sequential_2_dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ý
2transformer_encoder_2/sequential_2/dense_8/BiasAddBiasAdd=transformer_encoder_2/sequential_2/dense_8/Tensordot:output:0Itransformer_encoder_2/sequential_2/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 ª
/transformer_encoder_2/sequential_2/dense_8/ReluRelu;transformer_encoder_2/sequential_2/dense_8/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 Ð
Ctransformer_encoder_2/sequential_2/dense_9/Tensordot/ReadVariableOpReadVariableOpLtransformer_encoder_2_sequential_2_dense_9_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0
9transformer_encoder_2/sequential_2/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
9transformer_encoder_2/sequential_2/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       §
:transformer_encoder_2/sequential_2/dense_9/Tensordot/ShapeShape=transformer_encoder_2/sequential_2/dense_8/Relu:activations:0*
T0*
_output_shapes
:
Btransformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
=transformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2GatherV2Ctransformer_encoder_2/sequential_2/dense_9/Tensordot/Shape:output:0Btransformer_encoder_2/sequential_2/dense_9/Tensordot/free:output:0Ktransformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Dtransformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
?transformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2_1GatherV2Ctransformer_encoder_2/sequential_2/dense_9/Tensordot/Shape:output:0Btransformer_encoder_2/sequential_2/dense_9/Tensordot/axes:output:0Mtransformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
:transformer_encoder_2/sequential_2/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ï
9transformer_encoder_2/sequential_2/dense_9/Tensordot/ProdProdFtransformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2:output:0Ctransformer_encoder_2/sequential_2/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 
<transformer_encoder_2/sequential_2/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: õ
;transformer_encoder_2/sequential_2/dense_9/Tensordot/Prod_1ProdHtransformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2_1:output:0Etransformer_encoder_2/sequential_2/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
@transformer_encoder_2/sequential_2/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : È
;transformer_encoder_2/sequential_2/dense_9/Tensordot/concatConcatV2Btransformer_encoder_2/sequential_2/dense_9/Tensordot/free:output:0Btransformer_encoder_2/sequential_2/dense_9/Tensordot/axes:output:0Itransformer_encoder_2/sequential_2/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ú
:transformer_encoder_2/sequential_2/dense_9/Tensordot/stackPackBtransformer_encoder_2/sequential_2/dense_9/Tensordot/Prod:output:0Dtransformer_encoder_2/sequential_2/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
>transformer_encoder_2/sequential_2/dense_9/Tensordot/transpose	Transpose=transformer_encoder_2/sequential_2/dense_8/Relu:activations:0Dtransformer_encoder_2/sequential_2/dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
<transformer_encoder_2/sequential_2/dense_9/Tensordot/ReshapeReshapeBtransformer_encoder_2/sequential_2/dense_9/Tensordot/transpose:y:0Ctransformer_encoder_2/sequential_2/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
;transformer_encoder_2/sequential_2/dense_9/Tensordot/MatMulMatMulEtransformer_encoder_2/sequential_2/dense_9/Tensordot/Reshape:output:0Ktransformer_encoder_2/sequential_2/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
<transformer_encoder_2/sequential_2/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Btransformer_encoder_2/sequential_2/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
=transformer_encoder_2/sequential_2/dense_9/Tensordot/concat_1ConcatV2Ftransformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2:output:0Etransformer_encoder_2/sequential_2/dense_9/Tensordot/Const_2:output:0Ktransformer_encoder_2/sequential_2/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
4transformer_encoder_2/sequential_2/dense_9/TensordotReshapeEtransformer_encoder_2/sequential_2/dense_9/Tensordot/MatMul:product:0Ftransformer_encoder_2/sequential_2/dense_9/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22È
Atransformer_encoder_2/sequential_2/dense_9/BiasAdd/ReadVariableOpReadVariableOpJtransformer_encoder_2_sequential_2_dense_9_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0ý
2transformer_encoder_2/sequential_2/dense_9/BiasAddBiasAdd=transformer_encoder_2/sequential_2/dense_9/Tensordot:output:0Itransformer_encoder_2/sequential_2/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22s
.transformer_encoder_2/dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @ß
,transformer_encoder_2/dropout_11/dropout/MulMul;transformer_encoder_2/sequential_2/dense_9/BiasAdd:output:07transformer_encoder_2/dropout_11/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
.transformer_encoder_2/dropout_11/dropout/ShapeShape;transformer_encoder_2/sequential_2/dense_9/BiasAdd:output:0*
T0*
_output_shapes
:Ò
Etransformer_encoder_2/dropout_11/dropout/random_uniform/RandomUniformRandomUniform7transformer_encoder_2/dropout_11/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
dtype0|
7transformer_encoder_2/dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
5transformer_encoder_2/dropout_11/dropout/GreaterEqualGreaterEqualNtransformer_encoder_2/dropout_11/dropout/random_uniform/RandomUniform:output:0@transformer_encoder_2/dropout_11/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22µ
-transformer_encoder_2/dropout_11/dropout/CastCast9transformer_encoder_2/dropout_11/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Ð
.transformer_encoder_2/dropout_11/dropout/Mul_1Mul0transformer_encoder_2/dropout_11/dropout/Mul:z:01transformer_encoder_2/dropout_11/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Ï
transformer_encoder_2/add_1AddV2?transformer_encoder_2/layer_normalization_4/batchnorm/add_1:z:02transformer_encoder_2/dropout_11/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Jtransformer_encoder_2/layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ý
8transformer_encoder_2/layer_normalization_5/moments/meanMeantransformer_encoder_2/add_1:z:0Stransformer_encoder_2/layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(É
@transformer_encoder_2/layer_normalization_5/moments/StopGradientStopGradientAtransformer_encoder_2/layer_normalization_5/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ü
Etransformer_encoder_2/layer_normalization_5/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_2/add_1:z:0Itransformer_encoder_2/layer_normalization_5/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Ntransformer_encoder_2/layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¯
<transformer_encoder_2/layer_normalization_5/moments/varianceMeanItransformer_encoder_2/layer_normalization_5/moments/SquaredDifference:z:0Wtransformer_encoder_2/layer_normalization_5/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(
;transformer_encoder_2/layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
9transformer_encoder_2/layer_normalization_5/batchnorm/addAddV2Etransformer_encoder_2/layer_normalization_5/moments/variance:output:0Dtransformer_encoder_2/layer_normalization_5/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¹
;transformer_encoder_2/layer_normalization_5/batchnorm/RsqrtRsqrt=transformer_encoder_2/layer_normalization_5/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Ö
Htransformer_encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpQtransformer_encoder_2_layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_2/layer_normalization_5/batchnorm/mulMul?transformer_encoder_2/layer_normalization_5/batchnorm/Rsqrt:y:0Ptransformer_encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Ø
;transformer_encoder_2/layer_normalization_5/batchnorm/mul_1Multransformer_encoder_2/add_1:z:0=transformer_encoder_2/layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ú
;transformer_encoder_2/layer_normalization_5/batchnorm/mul_2MulAtransformer_encoder_2/layer_normalization_5/moments/mean:output:0=transformer_encoder_2/layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Î
Dtransformer_encoder_2/layer_normalization_5/batchnorm/ReadVariableOpReadVariableOpMtransformer_encoder_2_layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_2/layer_normalization_5/batchnorm/subSubLtransformer_encoder_2/layer_normalization_5/batchnorm/ReadVariableOp:value:0?transformer_encoder_2/layer_normalization_5/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ú
;transformer_encoder_2/layer_normalization_5/batchnorm/add_1AddV2?transformer_encoder_2/layer_normalization_5/batchnorm/mul_1:z:0=transformer_encoder_2/layer_normalization_5/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22z
rnn_2/ShapeShape?transformer_encoder_2/layer_normalization_5/batchnorm/add_1:z:0*
T0*
_output_shapes
:c
rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
rnn_2/strided_sliceStridedSlicernn_2/Shape:output:0"rnn_2/strided_slice/stack:output:0$rnn_2/strided_slice/stack_1:output:0$rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
rnn_2/zeros/packedPackrnn_2/strided_slice:output:0rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
rnn_2/zerosFillrnn_2/zeros/packed:output:0rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.X
rnn_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
rnn_2/zeros_1/packedPackrnn_2/strided_slice:output:0rnn_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:X
rnn_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rnn_2/zeros_1Fillrnn_2/zeros_1/packed:output:0rnn_2/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.i
rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ²
rnn_2/transpose	Transpose?transformer_encoder_2/layer_normalization_5/batchnorm/add_1:z:0rnn_2/transpose/perm:output:0*
T0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ2P
rnn_2/Shape_1Shapernn_2/transpose:y:0*
T0*
_output_shapes
:e
rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
rnn_2/strided_slice_1StridedSlicernn_2/Shape_1:output:0$rnn_2/strided_slice_1/stack:output:0&rnn_2/strided_slice_1/stack_1:output:0&rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÆ
rnn_2/TensorArrayV2TensorListReserve*rnn_2/TensorArrayV2/element_shape:output:0rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
;rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ò
-rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn_2/transpose:y:0Drnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒe
rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
rnn_2/strided_slice_2StridedSlicernn_2/transpose:y:0$rnn_2/strided_slice_2/stack:output:0&rnn_2/strided_slice_2/stack_1:output:0&rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
'rnn_2/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp0rnn_2_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0¦
rnn_2/lstm_cell_2/MatMulMatMulrnn_2/strided_slice_2:output:0/rnn_2/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)rnn_2/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp2rnn_2_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0 
rnn_2/lstm_cell_2/MatMul_1MatMulrnn_2/zeros:output:01rnn_2/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
rnn_2/lstm_cell_2/addAddV2"rnn_2/lstm_cell_2/MatMul:product:0$rnn_2/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(rnn_2/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp1rnn_2_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0¤
rnn_2/lstm_cell_2/BiasAddBiasAddrnn_2/lstm_cell_2/add:z:00rnn_2/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!rnn_2/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
rnn_2/lstm_cell_2/splitSplit*rnn_2/lstm_cell_2/split/split_dim:output:0"rnn_2/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
rnn_2/lstm_cell_2/SigmoidSigmoid rnn_2/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
rnn_2/lstm_cell_2/Sigmoid_1Sigmoid rnn_2/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_2/lstm_cell_2/mulMulrnn_2/lstm_cell_2/Sigmoid_1:y:0rnn_2/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
rnn_2/lstm_cell_2/TanhTanh rnn_2/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_2/lstm_cell_2/mul_1Mulrnn_2/lstm_cell_2/Sigmoid:y:0rnn_2/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_2/lstm_cell_2/add_1AddV2rnn_2/lstm_cell_2/mul:z:0rnn_2/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
rnn_2/lstm_cell_2/Sigmoid_2Sigmoid rnn_2/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
rnn_2/lstm_cell_2/Tanh_1Tanhrnn_2/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
rnn_2/lstm_cell_2/mul_2Mulrnn_2/lstm_cell_2/Sigmoid_2:y:0rnn_2/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.t
#rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   d
"rnn_2/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :×
rnn_2/TensorArrayV2_1TensorListReserve,rnn_2/TensorArrayV2_1/element_shape:output:0+rnn_2/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒL

rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : i
rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿZ
rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ù
rnn_2/whileWhile!rnn_2/while/loop_counter:output:0'rnn_2/while/maximum_iterations:output:0rnn_2/time:output:0rnn_2/TensorArrayV2_1:handle:0rnn_2/zeros:output:0rnn_2/zeros_1:output:0rnn_2/strided_slice_1:output:0=rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:00rnn_2_lstm_cell_2_matmul_readvariableop_resource2rnn_2_lstm_cell_2_matmul_1_readvariableop_resource1rnn_2_lstm_cell_2_biasadd_readvariableop_resource*
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
rnn_2_while_body_100083977*&
condR
rnn_2_while_cond_100083976*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
6rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   è
(rnn_2/TensorArrayV2Stack/TensorListStackTensorListStackrnn_2/while:output:3?rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsn
rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿg
rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¥
rnn_2/strided_slice_3StridedSlice1rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0$rnn_2/strided_slice_3/stack:output:0&rnn_2/strided_slice_3/stack_1:output:0&rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_maskk
rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¨
rnn_2/transpose_1	Transpose1rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0rnn_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:..*
dtype0
dense_10/MatMulMatMulrnn_2/strided_slice_3:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.b
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:.*
dtype0
dense_11/MatMulMatMuldense_10/Relu:activations:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_11/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp)^rnn_2/lstm_cell_2/BiasAdd/ReadVariableOp(^rnn_2/lstm_cell_2/MatMul/ReadVariableOp*^rnn_2/lstm_cell_2/MatMul_1/ReadVariableOp^rnn_2/while<^token_and_position_embedding_2/embedding_4/embedding_lookup<^token_and_position_embedding_2/embedding_5/embedding_lookupE^transformer_encoder_2/layer_normalization_4/batchnorm/ReadVariableOpI^transformer_encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOpE^transformer_encoder_2/layer_normalization_5/batchnorm/ReadVariableOpI^transformer_encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOpQ^transformer_encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOp[^transformer_encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpD^transformer_encoder_2/multi_head_attention_2/key/add/ReadVariableOpN^transformer_encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpF^transformer_encoder_2/multi_head_attention_2/query/add/ReadVariableOpP^transformer_encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpF^transformer_encoder_2/multi_head_attention_2/value/add/ReadVariableOpP^transformer_encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpB^transformer_encoder_2/sequential_2/dense_8/BiasAdd/ReadVariableOpD^transformer_encoder_2/sequential_2/dense_8/Tensordot/ReadVariableOpB^transformer_encoder_2/sequential_2/dense_9/BiasAdd/ReadVariableOpD^transformer_encoder_2/sequential_2/dense_9/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2T
(rnn_2/lstm_cell_2/BiasAdd/ReadVariableOp(rnn_2/lstm_cell_2/BiasAdd/ReadVariableOp2R
'rnn_2/lstm_cell_2/MatMul/ReadVariableOp'rnn_2/lstm_cell_2/MatMul/ReadVariableOp2V
)rnn_2/lstm_cell_2/MatMul_1/ReadVariableOp)rnn_2/lstm_cell_2/MatMul_1/ReadVariableOp2
rnn_2/whilernn_2/while2z
;token_and_position_embedding_2/embedding_4/embedding_lookup;token_and_position_embedding_2/embedding_4/embedding_lookup2z
;token_and_position_embedding_2/embedding_5/embedding_lookup;token_and_position_embedding_2/embedding_5/embedding_lookup2
Dtransformer_encoder_2/layer_normalization_4/batchnorm/ReadVariableOpDtransformer_encoder_2/layer_normalization_4/batchnorm/ReadVariableOp2
Htransformer_encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOpHtransformer_encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp2
Dtransformer_encoder_2/layer_normalization_5/batchnorm/ReadVariableOpDtransformer_encoder_2/layer_normalization_5/batchnorm/ReadVariableOp2
Htransformer_encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOpHtransformer_encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOp2¤
Ptransformer_encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOpPtransformer_encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOp2¸
Ztransformer_encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpZtransformer_encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2
Ctransformer_encoder_2/multi_head_attention_2/key/add/ReadVariableOpCtransformer_encoder_2/multi_head_attention_2/key/add/ReadVariableOp2
Mtransformer_encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpMtransformer_encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2
Etransformer_encoder_2/multi_head_attention_2/query/add/ReadVariableOpEtransformer_encoder_2/multi_head_attention_2/query/add/ReadVariableOp2¢
Otransformer_encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpOtransformer_encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2
Etransformer_encoder_2/multi_head_attention_2/value/add/ReadVariableOpEtransformer_encoder_2/multi_head_attention_2/value/add/ReadVariableOp2¢
Otransformer_encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpOtransformer_encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2
Atransformer_encoder_2/sequential_2/dense_8/BiasAdd/ReadVariableOpAtransformer_encoder_2/sequential_2/dense_8/BiasAdd/ReadVariableOp2
Ctransformer_encoder_2/sequential_2/dense_8/Tensordot/ReadVariableOpCtransformer_encoder_2/sequential_2/dense_8/Tensordot/ReadVariableOp2
Atransformer_encoder_2/sequential_2/dense_9/BiasAdd/ReadVariableOpAtransformer_encoder_2/sequential_2/dense_9/BiasAdd/ReadVariableOp2
Ctransformer_encoder_2/sequential_2/dense_9/Tensordot/ReadVariableOpCtransformer_encoder_2/sequential_2/dense_9/Tensordot/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ü
¹
9__inference_transformer_encoder_2_layer_call_fn_100084144

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
:ÿÿÿÿÿÿÿÿÿ22*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transformer_encoder_2_layer_call_and_return_conditional_losses_100082263s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ22: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
»
º
K__inference_sequential_2_layer_call_and_return_conditional_losses_100081635

inputs#
dense_8_100081593:2 
dense_8_100081595: #
dense_9_100081629: 2
dense_9_100081631:2
identity¢dense_8/StatefulPartitionedCall¢dense_9/StatefulPartitionedCallù
dense_8/StatefulPartitionedCallStatefulPartitionedCallinputsdense_8_100081593dense_8_100081595*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_8_layer_call_and_return_conditional_losses_100081592
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_100081629dense_9_100081631*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_9_layer_call_and_return_conditional_losses_100081628{
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
NoOpNoOp ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ22: : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
Õ>
Ú
K__inference_sequential_2_layer_call_and_return_conditional_losses_100085247

inputs;
)dense_8_tensordot_readvariableop_resource:2 5
'dense_8_biasadd_readvariableop_resource: ;
)dense_9_tensordot_readvariableop_resource: 25
'dense_9_biasadd_readvariableop_resource:2
identity¢dense_8/BiasAdd/ReadVariableOp¢ dense_8/Tensordot/ReadVariableOp¢dense_9/BiasAdd/ReadVariableOp¢ dense_9/Tensordot/ReadVariableOp
 dense_8/Tensordot/ReadVariableOpReadVariableOp)dense_8_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0`
dense_8/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_8/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       M
dense_8/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:a
dense_8/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_8/Tensordot/GatherV2GatherV2 dense_8/Tensordot/Shape:output:0dense_8/Tensordot/free:output:0(dense_8/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_8/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_8/Tensordot/GatherV2_1GatherV2 dense_8/Tensordot/Shape:output:0dense_8/Tensordot/axes:output:0*dense_8/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_8/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_8/Tensordot/ProdProd#dense_8/Tensordot/GatherV2:output:0 dense_8/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_8/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_8/Tensordot/Prod_1Prod%dense_8/Tensordot/GatherV2_1:output:0"dense_8/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_8/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_8/Tensordot/concatConcatV2dense_8/Tensordot/free:output:0dense_8/Tensordot/axes:output:0&dense_8/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_8/Tensordot/stackPackdense_8/Tensordot/Prod:output:0!dense_8/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_8/Tensordot/transpose	Transposeinputs!dense_8/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¢
dense_8/Tensordot/ReshapeReshapedense_8/Tensordot/transpose:y:0 dense_8/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¢
dense_8/Tensordot/MatMulMatMul"dense_8/Tensordot/Reshape:output:0(dense_8/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
dense_8/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: a
dense_8/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_8/Tensordot/concat_1ConcatV2#dense_8/Tensordot/GatherV2:output:0"dense_8/Tensordot/Const_2:output:0(dense_8/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_8/TensordotReshape"dense_8/Tensordot/MatMul:product:0#dense_8/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_8/BiasAddBiasAdddense_8/Tensordot:output:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 d
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
 dense_9/Tensordot/ReadVariableOpReadVariableOp)dense_9_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0`
dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       a
dense_9/Tensordot/ShapeShapedense_8/Relu:activations:0*
T0*
_output_shapes
:a
dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_9/Tensordot/GatherV2GatherV2 dense_9/Tensordot/Shape:output:0dense_9/Tensordot/free:output:0(dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_9/Tensordot/GatherV2_1GatherV2 dense_9/Tensordot/Shape:output:0dense_9/Tensordot/axes:output:0*dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_9/Tensordot/ProdProd#dense_9/Tensordot/GatherV2:output:0 dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_9/Tensordot/Prod_1Prod%dense_9/Tensordot/GatherV2_1:output:0"dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_9/Tensordot/concatConcatV2dense_9/Tensordot/free:output:0dense_9/Tensordot/axes:output:0&dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_9/Tensordot/stackPackdense_9/Tensordot/Prod:output:0!dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_9/Tensordot/transpose	Transposedense_8/Relu:activations:0!dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 ¢
dense_9/Tensordot/ReshapeReshapedense_9/Tensordot/transpose:y:0 dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¢
dense_9/Tensordot/MatMulMatMul"dense_9/Tensordot/Reshape:output:0(dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2a
dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_9/Tensordot/concat_1ConcatV2#dense_9/Tensordot/GatherV2:output:0"dense_9/Tensordot/Const_2:output:0(dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_9/TensordotReshape"dense_9/Tensordot/MatMul:product:0#dense_9/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
dense_9/BiasAddBiasAdddense_9/Tensordot:output:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22k
IdentityIdentitydense_9/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Î
NoOpNoOp^dense_8/BiasAdd/ReadVariableOp!^dense_8/Tensordot/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp!^dense_9/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ22: : : : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2D
 dense_8/Tensordot/ReadVariableOp dense_8/Tensordot/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2D
 dense_9/Tensordot/ReadVariableOp dense_9/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
$
ñ
while_body_100081829
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_2_100081853_0:	2¸0
while_lstm_cell_2_100081855_0:	.¸,
while_lstm_cell_2_100081857_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_2_100081853:	2¸.
while_lstm_cell_2_100081855:	.¸*
while_lstm_cell_2_100081857:	¸¢)while/lstm_cell_2/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0º
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_100081853_0while_lstm_cell_2_100081855_0while_lstm_cell_2_100081857_0*
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
J__inference_lstm_cell_2_layer_call_and_return_conditional_losses_100081814r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:02while/lstm_cell_2/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x

while/NoOpNoOp*^while/lstm_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_2_100081853while_lstm_cell_2_100081853_0"<
while_lstm_cell_2_100081855while_lstm_cell_2_100081855_0"<
while_lstm_cell_2_100081857while_lstm_cell_2_100081857_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 
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
ù
¶
)__inference_rnn_2_layer_call_fn_100084481

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
D__inference_rnn_2_layer_call_and_return_conditional_losses_100082440o
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
:ÿÿÿÿÿÿÿÿÿ22: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs


ø
G__inference_dense_10_layer_call_and_return_conditional_losses_100082459

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
while_cond_100084983
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_100084983___redundant_placeholder07
3while_while_cond_100084983___redundant_placeholder17
3while_while_cond_100084983___redundant_placeholder27
3while_while_cond_100084983___redundant_placeholder3
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
while_cond_100084551
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_100084551___redundant_placeholder07
3while_while_cond_100084551___redundant_placeholder17
3while_while_cond_100084551___redundant_placeholder27
3while_while_cond_100084551___redundant_placeholder3
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
Õ>
Ú
K__inference_sequential_2_layer_call_and_return_conditional_losses_100085190

inputs;
)dense_8_tensordot_readvariableop_resource:2 5
'dense_8_biasadd_readvariableop_resource: ;
)dense_9_tensordot_readvariableop_resource: 25
'dense_9_biasadd_readvariableop_resource:2
identity¢dense_8/BiasAdd/ReadVariableOp¢ dense_8/Tensordot/ReadVariableOp¢dense_9/BiasAdd/ReadVariableOp¢ dense_9/Tensordot/ReadVariableOp
 dense_8/Tensordot/ReadVariableOpReadVariableOp)dense_8_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0`
dense_8/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_8/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       M
dense_8/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:a
dense_8/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_8/Tensordot/GatherV2GatherV2 dense_8/Tensordot/Shape:output:0dense_8/Tensordot/free:output:0(dense_8/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_8/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_8/Tensordot/GatherV2_1GatherV2 dense_8/Tensordot/Shape:output:0dense_8/Tensordot/axes:output:0*dense_8/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_8/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_8/Tensordot/ProdProd#dense_8/Tensordot/GatherV2:output:0 dense_8/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_8/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_8/Tensordot/Prod_1Prod%dense_8/Tensordot/GatherV2_1:output:0"dense_8/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_8/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_8/Tensordot/concatConcatV2dense_8/Tensordot/free:output:0dense_8/Tensordot/axes:output:0&dense_8/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_8/Tensordot/stackPackdense_8/Tensordot/Prod:output:0!dense_8/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_8/Tensordot/transpose	Transposeinputs!dense_8/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¢
dense_8/Tensordot/ReshapeReshapedense_8/Tensordot/transpose:y:0 dense_8/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¢
dense_8/Tensordot/MatMulMatMul"dense_8/Tensordot/Reshape:output:0(dense_8/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
dense_8/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: a
dense_8/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_8/Tensordot/concat_1ConcatV2#dense_8/Tensordot/GatherV2:output:0"dense_8/Tensordot/Const_2:output:0(dense_8/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_8/TensordotReshape"dense_8/Tensordot/MatMul:product:0#dense_8/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_8/BiasAddBiasAdddense_8/Tensordot:output:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 d
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
 dense_9/Tensordot/ReadVariableOpReadVariableOp)dense_9_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0`
dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       a
dense_9/Tensordot/ShapeShapedense_8/Relu:activations:0*
T0*
_output_shapes
:a
dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_9/Tensordot/GatherV2GatherV2 dense_9/Tensordot/Shape:output:0dense_9/Tensordot/free:output:0(dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_9/Tensordot/GatherV2_1GatherV2 dense_9/Tensordot/Shape:output:0dense_9/Tensordot/axes:output:0*dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_9/Tensordot/ProdProd#dense_9/Tensordot/GatherV2:output:0 dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_9/Tensordot/Prod_1Prod%dense_9/Tensordot/GatherV2_1:output:0"dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_9/Tensordot/concatConcatV2dense_9/Tensordot/free:output:0dense_9/Tensordot/axes:output:0&dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_9/Tensordot/stackPackdense_9/Tensordot/Prod:output:0!dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_9/Tensordot/transpose	Transposedense_8/Relu:activations:0!dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 ¢
dense_9/Tensordot/ReshapeReshapedense_9/Tensordot/transpose:y:0 dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¢
dense_9/Tensordot/MatMulMatMul"dense_9/Tensordot/Reshape:output:0(dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2a
dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_9/Tensordot/concat_1ConcatV2#dense_9/Tensordot/GatherV2:output:0"dense_9/Tensordot/Const_2:output:0(dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_9/TensordotReshape"dense_9/Tensordot/MatMul:product:0#dense_9/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
dense_9/BiasAddBiasAdddense_9/Tensordot:output:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22k
IdentityIdentitydense_9/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Î
NoOpNoOp^dense_8/BiasAdd/ReadVariableOp!^dense_8/Tensordot/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp!^dense_9/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ22: : : : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2D
 dense_8/Tensordot/ReadVariableOp dense_8/Tensordot/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2D
 dense_9/Tensordot/ReadVariableOp dense_9/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
Ö

+__inference_dense_8_layer_call_fn_100085354

inputs
unknown:2 
	unknown_0: 
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_8_layer_call_and_return_conditional_losses_100081592s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
Ã

J__inference_lstm_cell_2_layer_call_and_return_conditional_losses_100081961

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
Í
ý
F__inference_dense_9_layer_call_and_return_conditional_losses_100085424

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
:ÿÿÿÿÿÿÿÿÿ2 
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
:ÿÿÿÿÿÿÿÿÿ22r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
 
_user_specified_nameinputs
È

,__inference_dense_10_layer_call_fn_100085077

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
G__inference_dense_10_layer_call_and_return_conditional_losses_100082459o
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

¸
)__inference_rnn_2_layer_call_fn_100084459
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
D__inference_rnn_2_layer_call_and_return_conditional_losses_100081898o
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
¥J

D__inference_rnn_2_layer_call_and_return_conditional_losses_100084636
inputs_0=
*lstm_cell_2_matmul_readvariableop_resource:	2¸?
,lstm_cell_2_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_2_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_2/BiasAdd/ReadVariableOp¢!lstm_cell_2/MatMul/ReadVariableOp¢#lstm_cell_2/MatMul_1/ReadVariableOp¢while=
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
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_2/TanhTanhlstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_2/Tanh_1Tanhlstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/Tanh_1:y:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
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
while_body_100084552* 
condR
while_cond_100084551*K
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
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
º
«
T__inference_transformer_encoder_2_layer_call_and_return_conditional_losses_100082263

inputsX
Bmulti_head_attention_2_query_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_2_query_add_readvariableop_resource:2V
@multi_head_attention_2_key_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_2_key_add_readvariableop_resource:2X
Bmulti_head_attention_2_value_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_2_value_add_readvariableop_resource:2c
Mmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:22Q
Cmulti_head_attention_2_attention_output_add_readvariableop_resource:2I
;layer_normalization_4_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_4_batchnorm_readvariableop_resource:2H
6sequential_2_dense_8_tensordot_readvariableop_resource:2 B
4sequential_2_dense_8_biasadd_readvariableop_resource: H
6sequential_2_dense_9_tensordot_readvariableop_resource: 2B
4sequential_2_dense_9_biasadd_readvariableop_resource:2I
;layer_normalization_5_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_5_batchnorm_readvariableop_resource:2
identity¢.layer_normalization_4/batchnorm/ReadVariableOp¢2layer_normalization_4/batchnorm/mul/ReadVariableOp¢.layer_normalization_5/batchnorm/ReadVariableOp¢2layer_normalization_5/batchnorm/mul/ReadVariableOp¢:multi_head_attention_2/attention_output/add/ReadVariableOp¢Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_2/key/add/ReadVariableOp¢7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_2/query/add/ReadVariableOp¢9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_2/value/add/ReadVariableOp¢9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp¢+sequential_2/dense_8/BiasAdd/ReadVariableOp¢-sequential_2/dense_8/Tensordot/ReadVariableOp¢+sequential_2/dense_9/BiasAdd/ReadVariableOp¢-sequential_2/dense_9/Tensordot/ReadVariableOpÀ
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_2/query/einsum/EinsumEinsuminputsAmulti_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabc,cde->abde¨
/multi_head_attention_2/query/add/ReadVariableOpReadVariableOp8multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_2/query/addAddV23multi_head_attention_2/query/einsum/Einsum:output:07multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¼
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention_2/key/einsum/EinsumEinsuminputs?multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabc,cde->abde¤
-multi_head_attention_2/key/add/ReadVariableOpReadVariableOp6multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention_2/key/addAddV21multi_head_attention_2/key/einsum/Einsum:output:05multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22À
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_2/value/einsum/EinsumEinsuminputsAmulti_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabc,cde->abde¨
/multi_head_attention_2/value/add/ReadVariableOpReadVariableOp8multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_2/value/addAddV23multi_head_attention_2/value/einsum/Einsum:output:07multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22a
multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>¨
multi_head_attention_2/MulMul$multi_head_attention_2/query/add:z:0%multi_head_attention_2/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Ô
$multi_head_attention_2/einsum/EinsumEinsum"multi_head_attention_2/key/add:z:0multi_head_attention_2/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationaecd,abcd->acbe
&multi_head_attention_2/softmax/SoftmaxSoftmax-multi_head_attention_2/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
'multi_head_attention_2/dropout/IdentityIdentity0multi_head_attention_2/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ê
&multi_head_attention_2/einsum_1/EinsumEinsum0multi_head_attention_2/dropout/Identity:output:0$multi_head_attention_2/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
5multi_head_attention_2/attention_output/einsum/EinsumEinsum/multi_head_attention_2/einsum_1/Einsum:output:0Lmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabcd,cde->abeº
:multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0î
+multi_head_attention_2/attention_output/addAddV2>multi_head_attention_2/attention_output/einsum/Einsum:output:0Bmulti_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_10/IdentityIdentity/multi_head_attention_2/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22h
addAddV2inputsdropout_10/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22~
4layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¹
"layer_normalization_4/moments/meanMeanadd:z:0=layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(
*layer_normalization_4/moments/StopGradientStopGradient+layer_normalization_4/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¸
/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_4/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
8layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_4/moments/varianceMean3layer_normalization_4/moments/SquaredDifference:z:0Alayer_normalization_4/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(j
%layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_4/batchnorm/addAddV2/layer_normalization_4/moments/variance:output:0.layer_normalization_4/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%layer_normalization_4/batchnorm/RsqrtRsqrt'layer_normalization_4/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ª
2layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_4/batchnorm/mulMul)layer_normalization_4/batchnorm/Rsqrt:y:0:layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
%layer_normalization_4/batchnorm/mul_1Muladd:z:0'layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¸
%layer_normalization_4/batchnorm/mul_2Mul+layer_normalization_4/moments/mean:output:0'layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¢
.layer_normalization_4/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_4/batchnorm/subSub6layer_normalization_4/batchnorm/ReadVariableOp:value:0)layer_normalization_4/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¸
%layer_normalization_4/batchnorm/add_1AddV2)layer_normalization_4/batchnorm/mul_1:z:0'layer_normalization_4/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¤
-sequential_2/dense_8/Tensordot/ReadVariableOpReadVariableOp6sequential_2_dense_8_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0m
#sequential_2/dense_8/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_2/dense_8/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
$sequential_2/dense_8/Tensordot/ShapeShape)layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:n
,sequential_2/dense_8/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential_2/dense_8/Tensordot/GatherV2GatherV2-sequential_2/dense_8/Tensordot/Shape:output:0,sequential_2/dense_8/Tensordot/free:output:05sequential_2/dense_8/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_2/dense_8/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_2/dense_8/Tensordot/GatherV2_1GatherV2-sequential_2/dense_8/Tensordot/Shape:output:0,sequential_2/dense_8/Tensordot/axes:output:07sequential_2/dense_8/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_2/dense_8/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ­
#sequential_2/dense_8/Tensordot/ProdProd0sequential_2/dense_8/Tensordot/GatherV2:output:0-sequential_2/dense_8/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_2/dense_8/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_2/dense_8/Tensordot/Prod_1Prod2sequential_2/dense_8/Tensordot/GatherV2_1:output:0/sequential_2/dense_8/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_2/dense_8/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
%sequential_2/dense_8/Tensordot/concatConcatV2,sequential_2/dense_8/Tensordot/free:output:0,sequential_2/dense_8/Tensordot/axes:output:03sequential_2/dense_8/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¸
$sequential_2/dense_8/Tensordot/stackPack,sequential_2/dense_8/Tensordot/Prod:output:0.sequential_2/dense_8/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Æ
(sequential_2/dense_8/Tensordot/transpose	Transpose)layer_normalization_4/batchnorm/add_1:z:0.sequential_2/dense_8/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22É
&sequential_2/dense_8/Tensordot/ReshapeReshape,sequential_2/dense_8/Tensordot/transpose:y:0-sequential_2/dense_8/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
%sequential_2/dense_8/Tensordot/MatMulMatMul/sequential_2/dense_8/Tensordot/Reshape:output:05sequential_2/dense_8/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
&sequential_2/dense_8/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: n
,sequential_2/dense_8/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
'sequential_2/dense_8/Tensordot/concat_1ConcatV20sequential_2/dense_8/Tensordot/GatherV2:output:0/sequential_2/dense_8/Tensordot/Const_2:output:05sequential_2/dense_8/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Â
sequential_2/dense_8/TensordotReshape/sequential_2/dense_8/Tensordot/MatMul:product:00sequential_2/dense_8/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
+sequential_2/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0»
sequential_2/dense_8/BiasAddBiasAdd'sequential_2/dense_8/Tensordot:output:03sequential_2/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 ~
sequential_2/dense_8/ReluRelu%sequential_2/dense_8/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 ¤
-sequential_2/dense_9/Tensordot/ReadVariableOpReadVariableOp6sequential_2_dense_9_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0m
#sequential_2/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_2/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_2/dense_9/Tensordot/ShapeShape'sequential_2/dense_8/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_2/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential_2/dense_9/Tensordot/GatherV2GatherV2-sequential_2/dense_9/Tensordot/Shape:output:0,sequential_2/dense_9/Tensordot/free:output:05sequential_2/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_2/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_2/dense_9/Tensordot/GatherV2_1GatherV2-sequential_2/dense_9/Tensordot/Shape:output:0,sequential_2/dense_9/Tensordot/axes:output:07sequential_2/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_2/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ­
#sequential_2/dense_9/Tensordot/ProdProd0sequential_2/dense_9/Tensordot/GatherV2:output:0-sequential_2/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_2/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_2/dense_9/Tensordot/Prod_1Prod2sequential_2/dense_9/Tensordot/GatherV2_1:output:0/sequential_2/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_2/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
%sequential_2/dense_9/Tensordot/concatConcatV2,sequential_2/dense_9/Tensordot/free:output:0,sequential_2/dense_9/Tensordot/axes:output:03sequential_2/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¸
$sequential_2/dense_9/Tensordot/stackPack,sequential_2/dense_9/Tensordot/Prod:output:0.sequential_2/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ä
(sequential_2/dense_9/Tensordot/transpose	Transpose'sequential_2/dense_8/Relu:activations:0.sequential_2/dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 É
&sequential_2/dense_9/Tensordot/ReshapeReshape,sequential_2/dense_9/Tensordot/transpose:y:0-sequential_2/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
%sequential_2/dense_9/Tensordot/MatMulMatMul/sequential_2/dense_9/Tensordot/Reshape:output:05sequential_2/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
&sequential_2/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2n
,sequential_2/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
'sequential_2/dense_9/Tensordot/concat_1ConcatV20sequential_2/dense_9/Tensordot/GatherV2:output:0/sequential_2/dense_9/Tensordot/Const_2:output:05sequential_2/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Â
sequential_2/dense_9/TensordotReshape/sequential_2/dense_9/Tensordot/MatMul:product:00sequential_2/dense_9/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
+sequential_2/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_9_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0»
sequential_2/dense_9/BiasAddBiasAdd'sequential_2/dense_9/Tensordot:output:03sequential_2/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22|
dropout_11/IdentityIdentity%sequential_2/dense_9/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_1AddV2)layer_normalization_4/batchnorm/add_1:z:0dropout_11/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22~
4layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
"layer_normalization_5/moments/meanMean	add_1:z:0=layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(
*layer_normalization_5/moments/StopGradientStopGradient+layer_normalization_5/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2º
/layer_normalization_5/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_5/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
8layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_5/moments/varianceMean3layer_normalization_5/moments/SquaredDifference:z:0Alayer_normalization_5/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(j
%layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_5/batchnorm/addAddV2/layer_normalization_5/moments/variance:output:0.layer_normalization_5/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%layer_normalization_5/batchnorm/RsqrtRsqrt'layer_normalization_5/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ª
2layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_5/batchnorm/mulMul)layer_normalization_5/batchnorm/Rsqrt:y:0:layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
%layer_normalization_5/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¸
%layer_normalization_5/batchnorm/mul_2Mul+layer_normalization_5/moments/mean:output:0'layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¢
.layer_normalization_5/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_5/batchnorm/subSub6layer_normalization_5/batchnorm/ReadVariableOp:value:0)layer_normalization_5/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¸
%layer_normalization_5/batchnorm/add_1AddV2)layer_normalization_5/batchnorm/mul_1:z:0'layer_normalization_5/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22|
IdentityIdentity)layer_normalization_5/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
NoOpNoOp/^layer_normalization_4/batchnorm/ReadVariableOp3^layer_normalization_4/batchnorm/mul/ReadVariableOp/^layer_normalization_5/batchnorm/ReadVariableOp3^layer_normalization_5/batchnorm/mul/ReadVariableOp;^multi_head_attention_2/attention_output/add/ReadVariableOpE^multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_2/key/add/ReadVariableOp8^multi_head_attention_2/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/query/add/ReadVariableOp:^multi_head_attention_2/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/value/add/ReadVariableOp:^multi_head_attention_2/value/einsum/Einsum/ReadVariableOp,^sequential_2/dense_8/BiasAdd/ReadVariableOp.^sequential_2/dense_8/Tensordot/ReadVariableOp,^sequential_2/dense_9/BiasAdd/ReadVariableOp.^sequential_2/dense_9/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ22: : : : : : : : : : : : : : : : 2`
.layer_normalization_4/batchnorm/ReadVariableOp.layer_normalization_4/batchnorm/ReadVariableOp2h
2layer_normalization_4/batchnorm/mul/ReadVariableOp2layer_normalization_4/batchnorm/mul/ReadVariableOp2`
.layer_normalization_5/batchnorm/ReadVariableOp.layer_normalization_5/batchnorm/ReadVariableOp2h
2layer_normalization_5/batchnorm/mul/ReadVariableOp2layer_normalization_5/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_2/attention_output/add/ReadVariableOp:multi_head_attention_2/attention_output/add/ReadVariableOp2
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_2/key/add/ReadVariableOp-multi_head_attention_2/key/add/ReadVariableOp2r
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/query/add/ReadVariableOp/multi_head_attention_2/query/add/ReadVariableOp2v
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/value/add/ReadVariableOp/multi_head_attention_2/value/add/ReadVariableOp2v
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2Z
+sequential_2/dense_8/BiasAdd/ReadVariableOp+sequential_2/dense_8/BiasAdd/ReadVariableOp2^
-sequential_2/dense_8/Tensordot/ReadVariableOp-sequential_2/dense_8/Tensordot/ReadVariableOp2Z
+sequential_2/dense_9/BiasAdd/ReadVariableOp+sequential_2/dense_9/BiasAdd/ReadVariableOp2^
-sequential_2/dense_9/Tensordot/ReadVariableOp-sequential_2/dense_9/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
º
«
T__inference_transformer_encoder_2_layer_call_and_return_conditional_losses_100084308

inputsX
Bmulti_head_attention_2_query_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_2_query_add_readvariableop_resource:2V
@multi_head_attention_2_key_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_2_key_add_readvariableop_resource:2X
Bmulti_head_attention_2_value_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_2_value_add_readvariableop_resource:2c
Mmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:22Q
Cmulti_head_attention_2_attention_output_add_readvariableop_resource:2I
;layer_normalization_4_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_4_batchnorm_readvariableop_resource:2H
6sequential_2_dense_8_tensordot_readvariableop_resource:2 B
4sequential_2_dense_8_biasadd_readvariableop_resource: H
6sequential_2_dense_9_tensordot_readvariableop_resource: 2B
4sequential_2_dense_9_biasadd_readvariableop_resource:2I
;layer_normalization_5_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_5_batchnorm_readvariableop_resource:2
identity¢.layer_normalization_4/batchnorm/ReadVariableOp¢2layer_normalization_4/batchnorm/mul/ReadVariableOp¢.layer_normalization_5/batchnorm/ReadVariableOp¢2layer_normalization_5/batchnorm/mul/ReadVariableOp¢:multi_head_attention_2/attention_output/add/ReadVariableOp¢Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_2/key/add/ReadVariableOp¢7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_2/query/add/ReadVariableOp¢9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_2/value/add/ReadVariableOp¢9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp¢+sequential_2/dense_8/BiasAdd/ReadVariableOp¢-sequential_2/dense_8/Tensordot/ReadVariableOp¢+sequential_2/dense_9/BiasAdd/ReadVariableOp¢-sequential_2/dense_9/Tensordot/ReadVariableOpÀ
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_2/query/einsum/EinsumEinsuminputsAmulti_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabc,cde->abde¨
/multi_head_attention_2/query/add/ReadVariableOpReadVariableOp8multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_2/query/addAddV23multi_head_attention_2/query/einsum/Einsum:output:07multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¼
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention_2/key/einsum/EinsumEinsuminputs?multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabc,cde->abde¤
-multi_head_attention_2/key/add/ReadVariableOpReadVariableOp6multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention_2/key/addAddV21multi_head_attention_2/key/einsum/Einsum:output:05multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22À
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_2/value/einsum/EinsumEinsuminputsAmulti_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabc,cde->abde¨
/multi_head_attention_2/value/add/ReadVariableOpReadVariableOp8multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_2/value/addAddV23multi_head_attention_2/value/einsum/Einsum:output:07multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22a
multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>¨
multi_head_attention_2/MulMul$multi_head_attention_2/query/add:z:0%multi_head_attention_2/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Ô
$multi_head_attention_2/einsum/EinsumEinsum"multi_head_attention_2/key/add:z:0multi_head_attention_2/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationaecd,abcd->acbe
&multi_head_attention_2/softmax/SoftmaxSoftmax-multi_head_attention_2/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
'multi_head_attention_2/dropout/IdentityIdentity0multi_head_attention_2/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ê
&multi_head_attention_2/einsum_1/EinsumEinsum0multi_head_attention_2/dropout/Identity:output:0$multi_head_attention_2/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
5multi_head_attention_2/attention_output/einsum/EinsumEinsum/multi_head_attention_2/einsum_1/Einsum:output:0Lmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabcd,cde->abeº
:multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0î
+multi_head_attention_2/attention_output/addAddV2>multi_head_attention_2/attention_output/einsum/Einsum:output:0Bmulti_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_10/IdentityIdentity/multi_head_attention_2/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22h
addAddV2inputsdropout_10/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22~
4layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¹
"layer_normalization_4/moments/meanMeanadd:z:0=layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(
*layer_normalization_4/moments/StopGradientStopGradient+layer_normalization_4/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¸
/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_4/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
8layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_4/moments/varianceMean3layer_normalization_4/moments/SquaredDifference:z:0Alayer_normalization_4/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(j
%layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_4/batchnorm/addAddV2/layer_normalization_4/moments/variance:output:0.layer_normalization_4/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%layer_normalization_4/batchnorm/RsqrtRsqrt'layer_normalization_4/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ª
2layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_4/batchnorm/mulMul)layer_normalization_4/batchnorm/Rsqrt:y:0:layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
%layer_normalization_4/batchnorm/mul_1Muladd:z:0'layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¸
%layer_normalization_4/batchnorm/mul_2Mul+layer_normalization_4/moments/mean:output:0'layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¢
.layer_normalization_4/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_4/batchnorm/subSub6layer_normalization_4/batchnorm/ReadVariableOp:value:0)layer_normalization_4/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¸
%layer_normalization_4/batchnorm/add_1AddV2)layer_normalization_4/batchnorm/mul_1:z:0'layer_normalization_4/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¤
-sequential_2/dense_8/Tensordot/ReadVariableOpReadVariableOp6sequential_2_dense_8_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0m
#sequential_2/dense_8/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_2/dense_8/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
$sequential_2/dense_8/Tensordot/ShapeShape)layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:n
,sequential_2/dense_8/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential_2/dense_8/Tensordot/GatherV2GatherV2-sequential_2/dense_8/Tensordot/Shape:output:0,sequential_2/dense_8/Tensordot/free:output:05sequential_2/dense_8/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_2/dense_8/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_2/dense_8/Tensordot/GatherV2_1GatherV2-sequential_2/dense_8/Tensordot/Shape:output:0,sequential_2/dense_8/Tensordot/axes:output:07sequential_2/dense_8/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_2/dense_8/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ­
#sequential_2/dense_8/Tensordot/ProdProd0sequential_2/dense_8/Tensordot/GatherV2:output:0-sequential_2/dense_8/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_2/dense_8/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_2/dense_8/Tensordot/Prod_1Prod2sequential_2/dense_8/Tensordot/GatherV2_1:output:0/sequential_2/dense_8/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_2/dense_8/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
%sequential_2/dense_8/Tensordot/concatConcatV2,sequential_2/dense_8/Tensordot/free:output:0,sequential_2/dense_8/Tensordot/axes:output:03sequential_2/dense_8/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¸
$sequential_2/dense_8/Tensordot/stackPack,sequential_2/dense_8/Tensordot/Prod:output:0.sequential_2/dense_8/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Æ
(sequential_2/dense_8/Tensordot/transpose	Transpose)layer_normalization_4/batchnorm/add_1:z:0.sequential_2/dense_8/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22É
&sequential_2/dense_8/Tensordot/ReshapeReshape,sequential_2/dense_8/Tensordot/transpose:y:0-sequential_2/dense_8/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
%sequential_2/dense_8/Tensordot/MatMulMatMul/sequential_2/dense_8/Tensordot/Reshape:output:05sequential_2/dense_8/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
&sequential_2/dense_8/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: n
,sequential_2/dense_8/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
'sequential_2/dense_8/Tensordot/concat_1ConcatV20sequential_2/dense_8/Tensordot/GatherV2:output:0/sequential_2/dense_8/Tensordot/Const_2:output:05sequential_2/dense_8/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Â
sequential_2/dense_8/TensordotReshape/sequential_2/dense_8/Tensordot/MatMul:product:00sequential_2/dense_8/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
+sequential_2/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0»
sequential_2/dense_8/BiasAddBiasAdd'sequential_2/dense_8/Tensordot:output:03sequential_2/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 ~
sequential_2/dense_8/ReluRelu%sequential_2/dense_8/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 ¤
-sequential_2/dense_9/Tensordot/ReadVariableOpReadVariableOp6sequential_2_dense_9_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0m
#sequential_2/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_2/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_2/dense_9/Tensordot/ShapeShape'sequential_2/dense_8/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_2/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential_2/dense_9/Tensordot/GatherV2GatherV2-sequential_2/dense_9/Tensordot/Shape:output:0,sequential_2/dense_9/Tensordot/free:output:05sequential_2/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_2/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_2/dense_9/Tensordot/GatherV2_1GatherV2-sequential_2/dense_9/Tensordot/Shape:output:0,sequential_2/dense_9/Tensordot/axes:output:07sequential_2/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_2/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ­
#sequential_2/dense_9/Tensordot/ProdProd0sequential_2/dense_9/Tensordot/GatherV2:output:0-sequential_2/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_2/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_2/dense_9/Tensordot/Prod_1Prod2sequential_2/dense_9/Tensordot/GatherV2_1:output:0/sequential_2/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_2/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
%sequential_2/dense_9/Tensordot/concatConcatV2,sequential_2/dense_9/Tensordot/free:output:0,sequential_2/dense_9/Tensordot/axes:output:03sequential_2/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¸
$sequential_2/dense_9/Tensordot/stackPack,sequential_2/dense_9/Tensordot/Prod:output:0.sequential_2/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ä
(sequential_2/dense_9/Tensordot/transpose	Transpose'sequential_2/dense_8/Relu:activations:0.sequential_2/dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 É
&sequential_2/dense_9/Tensordot/ReshapeReshape,sequential_2/dense_9/Tensordot/transpose:y:0-sequential_2/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
%sequential_2/dense_9/Tensordot/MatMulMatMul/sequential_2/dense_9/Tensordot/Reshape:output:05sequential_2/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
&sequential_2/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2n
,sequential_2/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
'sequential_2/dense_9/Tensordot/concat_1ConcatV20sequential_2/dense_9/Tensordot/GatherV2:output:0/sequential_2/dense_9/Tensordot/Const_2:output:05sequential_2/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Â
sequential_2/dense_9/TensordotReshape/sequential_2/dense_9/Tensordot/MatMul:product:00sequential_2/dense_9/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
+sequential_2/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_9_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0»
sequential_2/dense_9/BiasAddBiasAdd'sequential_2/dense_9/Tensordot:output:03sequential_2/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22|
dropout_11/IdentityIdentity%sequential_2/dense_9/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_1AddV2)layer_normalization_4/batchnorm/add_1:z:0dropout_11/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22~
4layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
"layer_normalization_5/moments/meanMean	add_1:z:0=layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(
*layer_normalization_5/moments/StopGradientStopGradient+layer_normalization_5/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2º
/layer_normalization_5/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_5/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
8layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_5/moments/varianceMean3layer_normalization_5/moments/SquaredDifference:z:0Alayer_normalization_5/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(j
%layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_5/batchnorm/addAddV2/layer_normalization_5/moments/variance:output:0.layer_normalization_5/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%layer_normalization_5/batchnorm/RsqrtRsqrt'layer_normalization_5/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ª
2layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_5/batchnorm/mulMul)layer_normalization_5/batchnorm/Rsqrt:y:0:layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
%layer_normalization_5/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¸
%layer_normalization_5/batchnorm/mul_2Mul+layer_normalization_5/moments/mean:output:0'layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¢
.layer_normalization_5/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_5/batchnorm/subSub6layer_normalization_5/batchnorm/ReadVariableOp:value:0)layer_normalization_5/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¸
%layer_normalization_5/batchnorm/add_1AddV2)layer_normalization_5/batchnorm/mul_1:z:0'layer_normalization_5/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22|
IdentityIdentity)layer_normalization_5/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
NoOpNoOp/^layer_normalization_4/batchnorm/ReadVariableOp3^layer_normalization_4/batchnorm/mul/ReadVariableOp/^layer_normalization_5/batchnorm/ReadVariableOp3^layer_normalization_5/batchnorm/mul/ReadVariableOp;^multi_head_attention_2/attention_output/add/ReadVariableOpE^multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_2/key/add/ReadVariableOp8^multi_head_attention_2/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/query/add/ReadVariableOp:^multi_head_attention_2/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/value/add/ReadVariableOp:^multi_head_attention_2/value/einsum/Einsum/ReadVariableOp,^sequential_2/dense_8/BiasAdd/ReadVariableOp.^sequential_2/dense_8/Tensordot/ReadVariableOp,^sequential_2/dense_9/BiasAdd/ReadVariableOp.^sequential_2/dense_9/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ22: : : : : : : : : : : : : : : : 2`
.layer_normalization_4/batchnorm/ReadVariableOp.layer_normalization_4/batchnorm/ReadVariableOp2h
2layer_normalization_4/batchnorm/mul/ReadVariableOp2layer_normalization_4/batchnorm/mul/ReadVariableOp2`
.layer_normalization_5/batchnorm/ReadVariableOp.layer_normalization_5/batchnorm/ReadVariableOp2h
2layer_normalization_5/batchnorm/mul/ReadVariableOp2layer_normalization_5/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_2/attention_output/add/ReadVariableOp:multi_head_attention_2/attention_output/add/ReadVariableOp2
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_2/key/add/ReadVariableOp-multi_head_attention_2/key/add/ReadVariableOp2r
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/query/add/ReadVariableOp/multi_head_attention_2/query/add/ReadVariableOp2v
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/value/add/ReadVariableOp/multi_head_attention_2/value/add/ReadVariableOp2v
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2Z
+sequential_2/dense_8/BiasAdd/ReadVariableOp+sequential_2/dense_8/BiasAdd/ReadVariableOp2^
-sequential_2/dense_8/Tensordot/ReadVariableOp-sequential_2/dense_8/Tensordot/ReadVariableOp2Z
+sequential_2/dense_9/BiasAdd/ReadVariableOp+sequential_2/dense_9/BiasAdd/ReadVariableOp2^
-sequential_2/dense_9/Tensordot/ReadVariableOp-sequential_2/dense_9/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
Å
°
+__inference_model_2_layer_call_fn_100083461

inputs
unknown:22
	unknown_0:2
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
F__inference_model_2_layer_call_and_return_conditional_losses_100083062o
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
E:ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
É
Ú
0__inference_sequential_2_layer_call_fn_100081719
dense_8_input
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_8_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_2_layer_call_and_return_conditional_losses_100081695s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ22: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
'
_user_specified_namedense_8_input
)
È
F__inference_model_2_layer_call_and_return_conditional_losses_100082482

inputs:
(token_and_position_embedding_2_100082131:22:
(token_and_position_embedding_2_100082133:25
transformer_encoder_2_100082264:221
transformer_encoder_2_100082266:25
transformer_encoder_2_100082268:221
transformer_encoder_2_100082270:25
transformer_encoder_2_100082272:221
transformer_encoder_2_100082274:25
transformer_encoder_2_100082276:22-
transformer_encoder_2_100082278:2-
transformer_encoder_2_100082280:2-
transformer_encoder_2_100082282:21
transformer_encoder_2_100082284:2 -
transformer_encoder_2_100082286: 1
transformer_encoder_2_100082288: 2-
transformer_encoder_2_100082290:2-
transformer_encoder_2_100082292:2-
transformer_encoder_2_100082294:2"
rnn_2_100082441:	2¸"
rnn_2_100082443:	.¸
rnn_2_100082445:	¸$
dense_10_100082460:.. 
dense_10_100082462:.$
dense_11_100082476:. 
dense_11_100082478:
identity¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall¢rnn_2/StatefulPartitionedCall¢6token_and_position_embedding_2/StatefulPartitionedCall¢-transformer_encoder_2/StatefulPartitionedCallÕ
6token_and_position_embedding_2/StatefulPartitionedCallStatefulPartitionedCallinputs(token_and_position_embedding_2_100082131(token_and_position_embedding_2_100082133*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *f
faR_
]__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_100082130Ô
-transformer_encoder_2/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_2/StatefulPartitionedCall:output:0transformer_encoder_2_100082264transformer_encoder_2_100082266transformer_encoder_2_100082268transformer_encoder_2_100082270transformer_encoder_2_100082272transformer_encoder_2_100082274transformer_encoder_2_100082276transformer_encoder_2_100082278transformer_encoder_2_100082280transformer_encoder_2_100082282transformer_encoder_2_100082284transformer_encoder_2_100082286transformer_encoder_2_100082288transformer_encoder_2_100082290transformer_encoder_2_100082292transformer_encoder_2_100082294*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transformer_encoder_2_layer_call_and_return_conditional_losses_100082263°
rnn_2/StatefulPartitionedCallStatefulPartitionedCall6transformer_encoder_2/StatefulPartitionedCall:output:0rnn_2_100082441rnn_2_100082443rnn_2_100082445*
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
D__inference_rnn_2_layer_call_and_return_conditional_losses_100082440
 dense_10/StatefulPartitionedCallStatefulPartitionedCall&rnn_2/StatefulPartitionedCall:output:0dense_10_100082460dense_10_100082462*
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
G__inference_dense_10_layer_call_and_return_conditional_losses_100082459
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_100082476dense_11_100082478*
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
G__inference_dense_11_layer_call_and_return_conditional_losses_100082475x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall^rnn_2/StatefulPartitionedCall7^token_and_position_embedding_2/StatefulPartitionedCall.^transformer_encoder_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2>
rnn_2/StatefulPartitionedCallrnn_2/StatefulPartitionedCall2p
6token_and_position_embedding_2/StatefulPartitionedCall6token_and_position_embedding_2/StatefulPartitionedCall2^
-transformer_encoder_2/StatefulPartitionedCall-transformer_encoder_2/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
¢
©
]__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_100084107
x8
&embedding_5_embedding_lookup_100084094:228
&embedding_4_embedding_lookup_100084100:2
identity¢embedding_4/embedding_lookup¢embedding_5/embedding_lookup6
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
:2Þ
embedding_5/embedding_lookupResourceGather&embedding_5_embedding_lookup_100084094range:output:0*
Tindices0*9
_class/
-+loc:@embedding_5/embedding_lookup/100084094*
_output_shapes

:22*
dtype0¼
%embedding_5/embedding_lookup/IdentityIdentity%embedding_5/embedding_lookup:output:0*
T0*9
_class/
-+loc:@embedding_5/embedding_lookup/100084094*
_output_shapes

:22
'embedding_5/embedding_lookup/Identity_1Identity.embedding_5/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:22\
embedding_4/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ñ
embedding_4/embedding_lookupResourceGather&embedding_4_embedding_lookup_100084100embedding_4/Cast:y:0*
Tindices0*9
_class/
-+loc:@embedding_4/embedding_lookup/100084100*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
dtype0É
%embedding_4/embedding_lookup/IdentityIdentity%embedding_4/embedding_lookup:output:0*
T0*9
_class/
-+loc:@embedding_4/embedding_lookup/100084100*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
'embedding_4/embedding_lookup/Identity_1Identity.embedding_4/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¦
addAddV20embedding_4/embedding_lookup/Identity_1:output:00embedding_5/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Z
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
NoOpNoOp^embedding_4/embedding_lookup^embedding_5/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 2<
embedding_4/embedding_lookupembedding_4/embedding_lookup2<
embedding_5/embedding_lookupembedding_5/embedding_lookup:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

_user_specified_namex
¢
©
]__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_100082130
x8
&embedding_5_embedding_lookup_100082117:228
&embedding_4_embedding_lookup_100082123:2
identity¢embedding_4/embedding_lookup¢embedding_5/embedding_lookup6
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
:2Þ
embedding_5/embedding_lookupResourceGather&embedding_5_embedding_lookup_100082117range:output:0*
Tindices0*9
_class/
-+loc:@embedding_5/embedding_lookup/100082117*
_output_shapes

:22*
dtype0¼
%embedding_5/embedding_lookup/IdentityIdentity%embedding_5/embedding_lookup:output:0*
T0*9
_class/
-+loc:@embedding_5/embedding_lookup/100082117*
_output_shapes

:22
'embedding_5/embedding_lookup/Identity_1Identity.embedding_5/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:22\
embedding_4/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ñ
embedding_4/embedding_lookupResourceGather&embedding_4_embedding_lookup_100082123embedding_4/Cast:y:0*
Tindices0*9
_class/
-+loc:@embedding_4/embedding_lookup/100082123*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
dtype0É
%embedding_4/embedding_lookup/IdentityIdentity%embedding_4/embedding_lookup:output:0*
T0*9
_class/
-+loc:@embedding_4/embedding_lookup/100082123*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
'embedding_4/embedding_lookup/Identity_1Identity.embedding_4/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¦
addAddV20embedding_4/embedding_lookup/Identity_1:output:00embedding_5/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Z
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
NoOpNoOp^embedding_4/embedding_lookup^embedding_5/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 2<
embedding_4/embedding_lookupembedding_4/embedding_lookup2<
embedding_5/embedding_lookupembedding_5/embedding_lookup:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

_user_specified_namex
É
Ú
0__inference_sequential_2_layer_call_fn_100081646
dense_8_input
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_8_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_2_layer_call_and_return_conditional_losses_100081635s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ22: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
'
_user_specified_namedense_8_input
Í
ý
F__inference_dense_9_layer_call_and_return_conditional_losses_100081628

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
:ÿÿÿÿÿÿÿÿÿ2 
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
:ÿÿÿÿÿÿÿÿÿ22r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
 
_user_specified_nameinputs
¥J

D__inference_rnn_2_layer_call_and_return_conditional_losses_100084780
inputs_0=
*lstm_cell_2_matmul_readvariableop_resource:	2¸?
,lstm_cell_2_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_2_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_2/BiasAdd/ReadVariableOp¢!lstm_cell_2/MatMul/ReadVariableOp¢#lstm_cell_2/MatMul_1/ReadVariableOp¢while=
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
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_2/TanhTanhlstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_2/Tanh_1Tanhlstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/Tanh_1:y:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
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
while_body_100084696* 
condR
while_cond_100084695*K
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
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
Ó8
Ê
while_body_100084984
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_2_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_2/BiasAdd/ReadVariableOp¢'while/lstm_cell_2/MatMul/ReadVariableOp¢)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_2/TanhTanh while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0while/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_2/Tanh_1Tanhwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0while/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_2/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
)
É
F__inference_model_2_layer_call_and_return_conditional_losses_100083288
input_3:
(token_and_position_embedding_2_100083232:22:
(token_and_position_embedding_2_100083234:25
transformer_encoder_2_100083237:221
transformer_encoder_2_100083239:25
transformer_encoder_2_100083241:221
transformer_encoder_2_100083243:25
transformer_encoder_2_100083245:221
transformer_encoder_2_100083247:25
transformer_encoder_2_100083249:22-
transformer_encoder_2_100083251:2-
transformer_encoder_2_100083253:2-
transformer_encoder_2_100083255:21
transformer_encoder_2_100083257:2 -
transformer_encoder_2_100083259: 1
transformer_encoder_2_100083261: 2-
transformer_encoder_2_100083263:2-
transformer_encoder_2_100083265:2-
transformer_encoder_2_100083267:2"
rnn_2_100083270:	2¸"
rnn_2_100083272:	.¸
rnn_2_100083274:	¸$
dense_10_100083277:.. 
dense_10_100083279:.$
dense_11_100083282:. 
dense_11_100083284:
identity¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall¢rnn_2/StatefulPartitionedCall¢6token_and_position_embedding_2/StatefulPartitionedCall¢-transformer_encoder_2/StatefulPartitionedCallÖ
6token_and_position_embedding_2/StatefulPartitionedCallStatefulPartitionedCallinput_3(token_and_position_embedding_2_100083232(token_and_position_embedding_2_100083234*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *f
faR_
]__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_100082130Ô
-transformer_encoder_2/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_2/StatefulPartitionedCall:output:0transformer_encoder_2_100083237transformer_encoder_2_100083239transformer_encoder_2_100083241transformer_encoder_2_100083243transformer_encoder_2_100083245transformer_encoder_2_100083247transformer_encoder_2_100083249transformer_encoder_2_100083251transformer_encoder_2_100083253transformer_encoder_2_100083255transformer_encoder_2_100083257transformer_encoder_2_100083259transformer_encoder_2_100083261transformer_encoder_2_100083263transformer_encoder_2_100083265transformer_encoder_2_100083267*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transformer_encoder_2_layer_call_and_return_conditional_losses_100082901°
rnn_2/StatefulPartitionedCallStatefulPartitionedCall6transformer_encoder_2/StatefulPartitionedCall:output:0rnn_2_100083270rnn_2_100083272rnn_2_100083274*
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
D__inference_rnn_2_layer_call_and_return_conditional_losses_100082712
 dense_10/StatefulPartitionedCallStatefulPartitionedCall&rnn_2/StatefulPartitionedCall:output:0dense_10_100083277dense_10_100083279*
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
G__inference_dense_10_layer_call_and_return_conditional_losses_100082459
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_100083282dense_11_100083284*
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
G__inference_dense_11_layer_call_and_return_conditional_losses_100082475x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall^rnn_2/StatefulPartitionedCall7^token_and_position_embedding_2/StatefulPartitionedCall.^transformer_encoder_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2>
rnn_2/StatefulPartitionedCallrnn_2/StatefulPartitionedCall2p
6token_and_position_embedding_2/StatefulPartitionedCall6token_and_position_embedding_2/StatefulPartitionedCall2^
-transformer_encoder_2/StatefulPartitionedCall-transformer_encoder_2/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
!
_user_specified_name	input_3
Ë

J__inference_lstm_cell_2_layer_call_and_return_conditional_losses_100085345

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
Ó8
Ê
while_body_100082628
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_2_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_2/BiasAdd/ReadVariableOp¢'while/lstm_cell_2/MatMul/ReadVariableOp¢)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_2/TanhTanh while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0while/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_2/Tanh_1Tanhwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0while/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_2/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
Ê	
ø
G__inference_dense_11_layer_call_and_return_conditional_losses_100082475

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


ø
G__inference_dense_10_layer_call_and_return_conditional_losses_100085088

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
J

D__inference_rnn_2_layer_call_and_return_conditional_losses_100084924

inputs=
*lstm_cell_2_matmul_readvariableop_resource:	2¸?
,lstm_cell_2_matmul_1_readvariableop_resource:	.¸:
+lstm_cell_2_biasadd_readvariableop_resource:	¸
identity¢"lstm_cell_2/BiasAdd/ReadVariableOp¢!lstm_cell_2/MatMul/ReadVariableOp¢#lstm_cell_2/MatMul_1/ReadVariableOp¢while;
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
:2ÿÿÿÿÿÿÿÿÿ2D
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
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.f
lstm_cell_2/TanhTanhlstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.y
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.c
lstm_cell_2/Tanh_1Tanhlstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.}
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/Tanh_1:y:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
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
while_body_100084840* 
condR
while_cond_100084839*K
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
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
Ê	
ø
G__inference_dense_11_layer_call_and_return_conditional_losses_100085107

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
ê
Ì!
$__inference__wrapped_model_100081554
input_3_
Mmodel_2_token_and_position_embedding_2_embedding_5_embedding_lookup_100081265:22_
Mmodel_2_token_and_position_embedding_2_embedding_4_embedding_lookup_100081271:2v
`model_2_transformer_encoder_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resource:22h
Vmodel_2_transformer_encoder_2_multi_head_attention_2_query_add_readvariableop_resource:2t
^model_2_transformer_encoder_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resource:22f
Tmodel_2_transformer_encoder_2_multi_head_attention_2_key_add_readvariableop_resource:2v
`model_2_transformer_encoder_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resource:22h
Vmodel_2_transformer_encoder_2_multi_head_attention_2_value_add_readvariableop_resource:2
kmodel_2_transformer_encoder_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:22o
amodel_2_transformer_encoder_2_multi_head_attention_2_attention_output_add_readvariableop_resource:2g
Ymodel_2_transformer_encoder_2_layer_normalization_4_batchnorm_mul_readvariableop_resource:2c
Umodel_2_transformer_encoder_2_layer_normalization_4_batchnorm_readvariableop_resource:2f
Tmodel_2_transformer_encoder_2_sequential_2_dense_8_tensordot_readvariableop_resource:2 `
Rmodel_2_transformer_encoder_2_sequential_2_dense_8_biasadd_readvariableop_resource: f
Tmodel_2_transformer_encoder_2_sequential_2_dense_9_tensordot_readvariableop_resource: 2`
Rmodel_2_transformer_encoder_2_sequential_2_dense_9_biasadd_readvariableop_resource:2g
Ymodel_2_transformer_encoder_2_layer_normalization_5_batchnorm_mul_readvariableop_resource:2c
Umodel_2_transformer_encoder_2_layer_normalization_5_batchnorm_readvariableop_resource:2K
8model_2_rnn_2_lstm_cell_2_matmul_readvariableop_resource:	2¸M
:model_2_rnn_2_lstm_cell_2_matmul_1_readvariableop_resource:	.¸H
9model_2_rnn_2_lstm_cell_2_biasadd_readvariableop_resource:	¸A
/model_2_dense_10_matmul_readvariableop_resource:..>
0model_2_dense_10_biasadd_readvariableop_resource:.A
/model_2_dense_11_matmul_readvariableop_resource:.>
0model_2_dense_11_biasadd_readvariableop_resource:
identity¢'model_2/dense_10/BiasAdd/ReadVariableOp¢&model_2/dense_10/MatMul/ReadVariableOp¢'model_2/dense_11/BiasAdd/ReadVariableOp¢&model_2/dense_11/MatMul/ReadVariableOp¢0model_2/rnn_2/lstm_cell_2/BiasAdd/ReadVariableOp¢/model_2/rnn_2/lstm_cell_2/MatMul/ReadVariableOp¢1model_2/rnn_2/lstm_cell_2/MatMul_1/ReadVariableOp¢model_2/rnn_2/while¢Cmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup¢Cmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup¢Lmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/ReadVariableOp¢Pmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp¢Lmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/ReadVariableOp¢Pmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOp¢Xmodel_2/transformer_encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOp¢bmodel_2/transformer_encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp¢Kmodel_2/transformer_encoder_2/multi_head_attention_2/key/add/ReadVariableOp¢Umodel_2/transformer_encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp¢Mmodel_2/transformer_encoder_2/multi_head_attention_2/query/add/ReadVariableOp¢Wmodel_2/transformer_encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp¢Mmodel_2/transformer_encoder_2/multi_head_attention_2/value/add/ReadVariableOp¢Wmodel_2/transformer_encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp¢Imodel_2/transformer_encoder_2/sequential_2/dense_8/BiasAdd/ReadVariableOp¢Kmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/ReadVariableOp¢Imodel_2/transformer_encoder_2/sequential_2/dense_9/BiasAdd/ReadVariableOp¢Kmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/ReadVariableOpc
,model_2/token_and_position_embedding_2/ShapeShapeinput_3*
T0*
_output_shapes
:
:model_2/token_and_position_embedding_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
<model_2/token_and_position_embedding_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<model_2/token_and_position_embedding_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4model_2/token_and_position_embedding_2/strided_sliceStridedSlice5model_2/token_and_position_embedding_2/Shape:output:0Cmodel_2/token_and_position_embedding_2/strided_slice/stack:output:0Emodel_2/token_and_position_embedding_2/strided_slice/stack_1:output:0Emodel_2/token_and_position_embedding_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
2model_2/token_and_position_embedding_2/range/startConst*
_output_shapes
: *
dtype0*
value	B : t
2model_2/token_and_position_embedding_2/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
,model_2/token_and_position_embedding_2/rangeRange;model_2/token_and_position_embedding_2/range/start:output:0=model_2/token_and_position_embedding_2/strided_slice:output:0;model_2/token_and_position_embedding_2/range/delta:output:0*
_output_shapes
:2ú
Cmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookupResourceGatherMmodel_2_token_and_position_embedding_2_embedding_5_embedding_lookup_1000812655model_2/token_and_position_embedding_2/range:output:0*
Tindices0*`
_classV
TRloc:@model_2/token_and_position_embedding_2/embedding_5/embedding_lookup/100081265*
_output_shapes

:22*
dtype0±
Lmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup/IdentityIdentityLmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup:output:0*
T0*`
_classV
TRloc:@model_2/token_and_position_embedding_2/embedding_5/embedding_lookup/100081265*
_output_shapes

:22Ú
Nmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup/Identity_1IdentityUmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:22
7model_2/token_and_position_embedding_2/embedding_4/CastCastinput_3*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Cmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookupResourceGatherMmodel_2_token_and_position_embedding_2_embedding_4_embedding_lookup_100081271;model_2/token_and_position_embedding_2/embedding_4/Cast:y:0*
Tindices0*`
_classV
TRloc:@model_2/token_and_position_embedding_2/embedding_4/embedding_lookup/100081271*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
dtype0¾
Lmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup/IdentityIdentityLmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup:output:0*
T0*`
_classV
TRloc:@model_2/token_and_position_embedding_2/embedding_4/embedding_lookup/100081271*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ç
Nmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup/Identity_1IdentityUmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
*model_2/token_and_position_embedding_2/addAddV2Wmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup/Identity_1:output:0Wmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ü
Wmodel_2/transformer_encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOp`model_2_transformer_encoder_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ã
Hmodel_2/transformer_encoder_2/multi_head_attention_2/query/einsum/EinsumEinsum.model_2/token_and_position_embedding_2/add:z:0_model_2/transformer_encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabc,cde->abdeä
Mmodel_2/transformer_encoder_2/multi_head_attention_2/query/add/ReadVariableOpReadVariableOpVmodel_2_transformer_encoder_2_multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0«
>model_2/transformer_encoder_2/multi_head_attention_2/query/addAddV2Qmodel_2/transformer_encoder_2/multi_head_attention_2/query/einsum/Einsum:output:0Umodel_2/transformer_encoder_2/multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ø
Umodel_2/transformer_encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOp^model_2_transformer_encoder_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0¿
Fmodel_2/transformer_encoder_2/multi_head_attention_2/key/einsum/EinsumEinsum.model_2/token_and_position_embedding_2/add:z:0]model_2/transformer_encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabc,cde->abdeà
Kmodel_2/transformer_encoder_2/multi_head_attention_2/key/add/ReadVariableOpReadVariableOpTmodel_2_transformer_encoder_2_multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0¥
<model_2/transformer_encoder_2/multi_head_attention_2/key/addAddV2Omodel_2/transformer_encoder_2/multi_head_attention_2/key/einsum/Einsum:output:0Smodel_2/transformer_encoder_2/multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ü
Wmodel_2/transformer_encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOp`model_2_transformer_encoder_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ã
Hmodel_2/transformer_encoder_2/multi_head_attention_2/value/einsum/EinsumEinsum.model_2/token_and_position_embedding_2/add:z:0_model_2/transformer_encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabc,cde->abdeä
Mmodel_2/transformer_encoder_2/multi_head_attention_2/value/add/ReadVariableOpReadVariableOpVmodel_2_transformer_encoder_2_multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0«
>model_2/transformer_encoder_2/multi_head_attention_2/value/addAddV2Qmodel_2/transformer_encoder_2/multi_head_attention_2/value/einsum/Einsum:output:0Umodel_2/transformer_encoder_2/multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
:model_2/transformer_encoder_2/multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>
8model_2/transformer_encoder_2/multi_head_attention_2/MulMulBmodel_2/transformer_encoder_2/multi_head_attention_2/query/add:z:0Cmodel_2/transformer_encoder_2/multi_head_attention_2/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22®
Bmodel_2/transformer_encoder_2/multi_head_attention_2/einsum/EinsumEinsum@model_2/transformer_encoder_2/multi_head_attention_2/key/add:z:0<model_2/transformer_encoder_2/multi_head_attention_2/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationaecd,abcd->acbeÖ
Dmodel_2/transformer_encoder_2/multi_head_attention_2/softmax/SoftmaxSoftmaxKmodel_2/transformer_encoder_2/multi_head_attention_2/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Û
Emodel_2/transformer_encoder_2/multi_head_attention_2/dropout/IdentityIdentityNmodel_2/transformer_encoder_2/multi_head_attention_2/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Ä
Dmodel_2/transformer_encoder_2/multi_head_attention_2/einsum_1/EinsumEinsumNmodel_2/transformer_encoder_2/multi_head_attention_2/dropout/Identity:output:0Bmodel_2/transformer_encoder_2/multi_head_attention_2/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationacbe,aecd->abcd
bmodel_2/transformer_encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpkmodel_2_transformer_encoder_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ô
Smodel_2/transformer_encoder_2/multi_head_attention_2/attention_output/einsum/EinsumEinsumMmodel_2/transformer_encoder_2/multi_head_attention_2/einsum_1/Einsum:output:0jmodel_2/transformer_encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabcd,cde->abeö
Xmodel_2/transformer_encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpamodel_2_transformer_encoder_2_multi_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0È
Imodel_2/transformer_encoder_2/multi_head_attention_2/attention_output/addAddV2\model_2/transformer_encoder_2/multi_head_attention_2/attention_output/einsum/Einsum:output:0`model_2/transformer_encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Â
1model_2/transformer_encoder_2/dropout_10/IdentityIdentityMmodel_2/transformer_encoder_2/multi_head_attention_2/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Ì
!model_2/transformer_encoder_2/addAddV2.model_2/token_and_position_embedding_2/add:z:0:model_2/transformer_encoder_2/dropout_10/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Rmodel_2/transformer_encoder_2/layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
@model_2/transformer_encoder_2/layer_normalization_4/moments/meanMean%model_2/transformer_encoder_2/add:z:0[model_2/transformer_encoder_2/layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(Ù
Hmodel_2/transformer_encoder_2/layer_normalization_4/moments/StopGradientStopGradientImodel_2/transformer_encoder_2/layer_normalization_4/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Mmodel_2/transformer_encoder_2/layer_normalization_4/moments/SquaredDifferenceSquaredDifference%model_2/transformer_encoder_2/add:z:0Qmodel_2/transformer_encoder_2/layer_normalization_4/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
Vmodel_2/transformer_encoder_2/layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ç
Dmodel_2/transformer_encoder_2/layer_normalization_4/moments/varianceMeanQmodel_2/transformer_encoder_2/layer_normalization_4/moments/SquaredDifference:z:0_model_2/transformer_encoder_2/layer_normalization_4/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(
Cmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
Amodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/addAddV2Mmodel_2/transformer_encoder_2/layer_normalization_4/moments/variance:output:0Lmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2É
Cmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/RsqrtRsqrtEmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2æ
Pmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpYmodel_2_transformer_encoder_2_layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0¡
Amodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/mulMulGmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/Rsqrt:y:0Xmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22î
Cmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/mul_1Mul%model_2/transformer_encoder_2/add:z:0Emodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Cmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/mul_2MulImodel_2/transformer_encoder_2/layer_normalization_4/moments/mean:output:0Emodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Þ
Lmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/ReadVariableOpReadVariableOpUmodel_2_transformer_encoder_2_layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
Amodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/subSubTmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/ReadVariableOp:value:0Gmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Cmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/add_1AddV2Gmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/mul_1:z:0Emodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22à
Kmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/ReadVariableOpReadVariableOpTmodel_2_transformer_encoder_2_sequential_2_dense_8_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0
Amodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
Amodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ¹
Bmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/ShapeShapeGmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Jmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Emodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2GatherV2Kmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/Shape:output:0Jmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/free:output:0Smodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Lmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Gmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2_1GatherV2Kmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/Shape:output:0Jmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/axes:output:0Umodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Bmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Amodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/ProdProdNmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2:output:0Kmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/Const:output:0*
T0*
_output_shapes
: 
Dmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Cmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/Prod_1ProdPmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2_1:output:0Mmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Hmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : è
Cmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/concatConcatV2Jmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/free:output:0Jmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/axes:output:0Qmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
Bmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/stackPackJmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/Prod:output:0Lmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
: 
Fmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/transpose	TransposeGmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/add_1:z:0Lmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22£
Dmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/ReshapeReshapeJmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/transpose:y:0Kmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ£
Cmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/MatMulMatMulMmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/Reshape:output:0Smodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
Dmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
Jmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ó
Emodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/concat_1ConcatV2Nmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/GatherV2:output:0Mmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/Const_2:output:0Smodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
<model_2/transformer_encoder_2/sequential_2/dense_8/TensordotReshapeMmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/MatMul:product:0Nmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 Ø
Imodel_2/transformer_encoder_2/sequential_2/dense_8/BiasAdd/ReadVariableOpReadVariableOpRmodel_2_transformer_encoder_2_sequential_2_dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
:model_2/transformer_encoder_2/sequential_2/dense_8/BiasAddBiasAddEmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot:output:0Qmodel_2/transformer_encoder_2/sequential_2/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 º
7model_2/transformer_encoder_2/sequential_2/dense_8/ReluReluCmodel_2/transformer_encoder_2/sequential_2/dense_8/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 à
Kmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/ReadVariableOpReadVariableOpTmodel_2_transformer_encoder_2_sequential_2_dense_9_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0
Amodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
Amodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ·
Bmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/ShapeShapeEmodel_2/transformer_encoder_2/sequential_2/dense_8/Relu:activations:0*
T0*
_output_shapes
:
Jmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Emodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2GatherV2Kmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/Shape:output:0Jmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/free:output:0Smodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Lmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Gmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2_1GatherV2Kmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/Shape:output:0Jmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/axes:output:0Umodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Bmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Amodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/ProdProdNmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2:output:0Kmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: 
Dmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Cmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/Prod_1ProdPmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2_1:output:0Mmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Hmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : è
Cmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/concatConcatV2Jmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/free:output:0Jmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/axes:output:0Qmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
Bmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/stackPackJmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/Prod:output:0Lmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
Fmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/transpose	TransposeEmodel_2/transformer_encoder_2/sequential_2/dense_8/Relu:activations:0Lmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 £
Dmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/ReshapeReshapeJmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/transpose:y:0Kmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ£
Cmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/MatMulMatMulMmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/Reshape:output:0Smodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Dmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Jmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ó
Emodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/concat_1ConcatV2Nmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/GatherV2:output:0Mmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/Const_2:output:0Smodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
<model_2/transformer_encoder_2/sequential_2/dense_9/TensordotReshapeMmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/MatMul:product:0Nmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Ø
Imodel_2/transformer_encoder_2/sequential_2/dense_9/BiasAdd/ReadVariableOpReadVariableOpRmodel_2_transformer_encoder_2_sequential_2_dense_9_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
:model_2/transformer_encoder_2/sequential_2/dense_9/BiasAddBiasAddEmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot:output:0Qmodel_2/transformer_encoder_2/sequential_2/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¸
1model_2/transformer_encoder_2/dropout_11/IdentityIdentityCmodel_2/transformer_encoder_2/sequential_2/dense_9/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ç
#model_2/transformer_encoder_2/add_1AddV2Gmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/add_1:z:0:model_2/transformer_encoder_2/dropout_11/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Rmodel_2/transformer_encoder_2/layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
@model_2/transformer_encoder_2/layer_normalization_5/moments/meanMean'model_2/transformer_encoder_2/add_1:z:0[model_2/transformer_encoder_2/layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(Ù
Hmodel_2/transformer_encoder_2/layer_normalization_5/moments/StopGradientStopGradientImodel_2/transformer_encoder_2/layer_normalization_5/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Mmodel_2/transformer_encoder_2/layer_normalization_5/moments/SquaredDifferenceSquaredDifference'model_2/transformer_encoder_2/add_1:z:0Qmodel_2/transformer_encoder_2/layer_normalization_5/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22 
Vmodel_2/transformer_encoder_2/layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ç
Dmodel_2/transformer_encoder_2/layer_normalization_5/moments/varianceMeanQmodel_2/transformer_encoder_2/layer_normalization_5/moments/SquaredDifference:z:0_model_2/transformer_encoder_2/layer_normalization_5/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(
Cmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
Amodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/addAddV2Mmodel_2/transformer_encoder_2/layer_normalization_5/moments/variance:output:0Lmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2É
Cmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/RsqrtRsqrtEmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2æ
Pmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpYmodel_2_transformer_encoder_2_layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0¡
Amodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/mulMulGmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/Rsqrt:y:0Xmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ð
Cmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/mul_1Mul'model_2/transformer_encoder_2/add_1:z:0Emodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Cmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/mul_2MulImodel_2/transformer_encoder_2/layer_normalization_5/moments/mean:output:0Emodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Þ
Lmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/ReadVariableOpReadVariableOpUmodel_2_transformer_encoder_2_layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
Amodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/subSubTmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/ReadVariableOp:value:0Gmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
Cmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/add_1AddV2Gmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/mul_1:z:0Emodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
model_2/rnn_2/ShapeShapeGmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/add_1:z:0*
T0*
_output_shapes
:k
!model_2/rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#model_2/rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#model_2/rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
model_2/rnn_2/strided_sliceStridedSlicemodel_2/rnn_2/Shape:output:0*model_2/rnn_2/strided_slice/stack:output:0,model_2/rnn_2/strided_slice/stack_1:output:0,model_2/rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
model_2/rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.
model_2/rnn_2/zeros/packedPack$model_2/rnn_2/strided_slice:output:0%model_2/rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
model_2/rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
model_2/rnn_2/zerosFill#model_2/rnn_2/zeros/packed:output:0"model_2/rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.`
model_2/rnn_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.¡
model_2/rnn_2/zeros_1/packedPack$model_2/rnn_2/strided_slice:output:0'model_2/rnn_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:`
model_2/rnn_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
model_2/rnn_2/zeros_1Fill%model_2/rnn_2/zeros_1/packed:output:0$model_2/rnn_2/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.q
model_2/rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ê
model_2/rnn_2/transpose	TransposeGmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/add_1:z:0%model_2/rnn_2/transpose/perm:output:0*
T0*+
_output_shapes
:2ÿÿÿÿÿÿÿÿÿ2`
model_2/rnn_2/Shape_1Shapemodel_2/rnn_2/transpose:y:0*
T0*
_output_shapes
:m
#model_2/rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%model_2/rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%model_2/rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
model_2/rnn_2/strided_slice_1StridedSlicemodel_2/rnn_2/Shape_1:output:0,model_2/rnn_2/strided_slice_1/stack:output:0.model_2/rnn_2/strided_slice_1/stack_1:output:0.model_2/rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)model_2/rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÞ
model_2/rnn_2/TensorArrayV2TensorListReserve2model_2/rnn_2/TensorArrayV2/element_shape:output:0&model_2/rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Cmodel_2/rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
5model_2/rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel_2/rnn_2/transpose:y:0Lmodel_2/rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒm
#model_2/rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%model_2/rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%model_2/rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
model_2/rnn_2/strided_slice_2StridedSlicemodel_2/rnn_2/transpose:y:0,model_2/rnn_2/strided_slice_2/stack:output:0.model_2/rnn_2/strided_slice_2/stack_1:output:0.model_2/rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask©
/model_2/rnn_2/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp8model_2_rnn_2_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes
:	2¸*
dtype0¾
 model_2/rnn_2/lstm_cell_2/MatMulMatMul&model_2/rnn_2/strided_slice_2:output:07model_2/rnn_2/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸­
1model_2/rnn_2/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp:model_2_rnn_2_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	.¸*
dtype0¸
"model_2/rnn_2/lstm_cell_2/MatMul_1MatMulmodel_2/rnn_2/zeros:output:09model_2/rnn_2/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸³
model_2/rnn_2/lstm_cell_2/addAddV2*model_2/rnn_2/lstm_cell_2/MatMul:product:0,model_2/rnn_2/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸§
0model_2/rnn_2/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp9model_2_rnn_2_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:¸*
dtype0¼
!model_2/rnn_2/lstm_cell_2/BiasAddBiasAdd!model_2/rnn_2/lstm_cell_2/add:z:08model_2/rnn_2/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸k
)model_2/rnn_2/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
model_2/rnn_2/lstm_cell_2/splitSplit2model_2/rnn_2/lstm_cell_2/split/split_dim:output:0*model_2/rnn_2/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_split
!model_2/rnn_2/lstm_cell_2/SigmoidSigmoid(model_2/rnn_2/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
#model_2/rnn_2/lstm_cell_2/Sigmoid_1Sigmoid(model_2/rnn_2/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
model_2/rnn_2/lstm_cell_2/mulMul'model_2/rnn_2/lstm_cell_2/Sigmoid_1:y:0model_2/rnn_2/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
model_2/rnn_2/lstm_cell_2/TanhTanh(model_2/rnn_2/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.£
model_2/rnn_2/lstm_cell_2/mul_1Mul%model_2/rnn_2/lstm_cell_2/Sigmoid:y:0"model_2/rnn_2/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¢
model_2/rnn_2/lstm_cell_2/add_1AddV2!model_2/rnn_2/lstm_cell_2/mul:z:0#model_2/rnn_2/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
#model_2/rnn_2/lstm_cell_2/Sigmoid_2Sigmoid(model_2/rnn_2/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 model_2/rnn_2/lstm_cell_2/Tanh_1Tanh#model_2/rnn_2/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.§
model_2/rnn_2/lstm_cell_2/mul_2Mul'model_2/rnn_2/lstm_cell_2/Sigmoid_2:y:0$model_2/rnn_2/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.|
+model_2/rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   l
*model_2/rnn_2/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ï
model_2/rnn_2/TensorArrayV2_1TensorListReserve4model_2/rnn_2/TensorArrayV2_1/element_shape:output:03model_2/rnn_2/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒT
model_2/rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&model_2/rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿb
 model_2/rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : É
model_2/rnn_2/whileWhile)model_2/rnn_2/while/loop_counter:output:0/model_2/rnn_2/while/maximum_iterations:output:0model_2/rnn_2/time:output:0&model_2/rnn_2/TensorArrayV2_1:handle:0model_2/rnn_2/zeros:output:0model_2/rnn_2/zeros_1:output:0&model_2/rnn_2/strided_slice_1:output:0Emodel_2/rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:08model_2_rnn_2_lstm_cell_2_matmul_readvariableop_resource:model_2_rnn_2_lstm_cell_2_matmul_1_readvariableop_resource9model_2_rnn_2_lstm_cell_2_biasadd_readvariableop_resource*
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
"model_2_rnn_2_while_body_100081457*.
cond&R$
"model_2_rnn_2_while_cond_100081456*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : *
parallel_iterations 
>model_2/rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ.   
0model_2/rnn_2/TensorArrayV2Stack/TensorListStackTensorListStackmodel_2/rnn_2/while:output:3Gmodel_2/rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
element_dtype0*
num_elementsv
#model_2/rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%model_2/rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%model_2/rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Í
model_2/rnn_2/strided_slice_3StridedSlice9model_2/rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0,model_2/rnn_2/strided_slice_3/stack:output:0.model_2/rnn_2/strided_slice_3/stack_1:output:0.model_2/rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
shrink_axis_masks
model_2/rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          À
model_2/rnn_2/transpose_1	Transpose9model_2/rnn_2/TensorArrayV2Stack/TensorListStack:tensor:0'model_2/rnn_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
&model_2/dense_10/MatMul/ReadVariableOpReadVariableOp/model_2_dense_10_matmul_readvariableop_resource*
_output_shapes

:..*
dtype0«
model_2/dense_10/MatMulMatMul&model_2/rnn_2/strided_slice_3:output:0.model_2/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
'model_2/dense_10/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_10_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0©
model_2/dense_10/BiasAddBiasAdd!model_2/dense_10/MatMul:product:0/model_2/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
model_2/dense_10/ReluRelu!model_2/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
&model_2/dense_11/MatMul/ReadVariableOpReadVariableOp/model_2_dense_11_matmul_readvariableop_resource*
_output_shapes

:.*
dtype0¨
model_2/dense_11/MatMulMatMul#model_2/dense_10/Relu:activations:0.model_2/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'model_2/dense_11/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0©
model_2/dense_11/BiasAddBiasAdd!model_2/dense_11/MatMul:product:0/model_2/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
IdentityIdentity!model_2/dense_11/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
NoOpNoOp(^model_2/dense_10/BiasAdd/ReadVariableOp'^model_2/dense_10/MatMul/ReadVariableOp(^model_2/dense_11/BiasAdd/ReadVariableOp'^model_2/dense_11/MatMul/ReadVariableOp1^model_2/rnn_2/lstm_cell_2/BiasAdd/ReadVariableOp0^model_2/rnn_2/lstm_cell_2/MatMul/ReadVariableOp2^model_2/rnn_2/lstm_cell_2/MatMul_1/ReadVariableOp^model_2/rnn_2/whileD^model_2/token_and_position_embedding_2/embedding_4/embedding_lookupD^model_2/token_and_position_embedding_2/embedding_5/embedding_lookupM^model_2/transformer_encoder_2/layer_normalization_4/batchnorm/ReadVariableOpQ^model_2/transformer_encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOpM^model_2/transformer_encoder_2/layer_normalization_5/batchnorm/ReadVariableOpQ^model_2/transformer_encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOpY^model_2/transformer_encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOpc^model_2/transformer_encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpL^model_2/transformer_encoder_2/multi_head_attention_2/key/add/ReadVariableOpV^model_2/transformer_encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpN^model_2/transformer_encoder_2/multi_head_attention_2/query/add/ReadVariableOpX^model_2/transformer_encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpN^model_2/transformer_encoder_2/multi_head_attention_2/value/add/ReadVariableOpX^model_2/transformer_encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpJ^model_2/transformer_encoder_2/sequential_2/dense_8/BiasAdd/ReadVariableOpL^model_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/ReadVariableOpJ^model_2/transformer_encoder_2/sequential_2/dense_9/BiasAdd/ReadVariableOpL^model_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : : : : : : : : : : : : : : : : : 2R
'model_2/dense_10/BiasAdd/ReadVariableOp'model_2/dense_10/BiasAdd/ReadVariableOp2P
&model_2/dense_10/MatMul/ReadVariableOp&model_2/dense_10/MatMul/ReadVariableOp2R
'model_2/dense_11/BiasAdd/ReadVariableOp'model_2/dense_11/BiasAdd/ReadVariableOp2P
&model_2/dense_11/MatMul/ReadVariableOp&model_2/dense_11/MatMul/ReadVariableOp2d
0model_2/rnn_2/lstm_cell_2/BiasAdd/ReadVariableOp0model_2/rnn_2/lstm_cell_2/BiasAdd/ReadVariableOp2b
/model_2/rnn_2/lstm_cell_2/MatMul/ReadVariableOp/model_2/rnn_2/lstm_cell_2/MatMul/ReadVariableOp2f
1model_2/rnn_2/lstm_cell_2/MatMul_1/ReadVariableOp1model_2/rnn_2/lstm_cell_2/MatMul_1/ReadVariableOp2*
model_2/rnn_2/whilemodel_2/rnn_2/while2
Cmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookupCmodel_2/token_and_position_embedding_2/embedding_4/embedding_lookup2
Cmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookupCmodel_2/token_and_position_embedding_2/embedding_5/embedding_lookup2
Lmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/ReadVariableOpLmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/ReadVariableOp2¤
Pmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOpPmodel_2/transformer_encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp2
Lmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/ReadVariableOpLmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/ReadVariableOp2¤
Pmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOpPmodel_2/transformer_encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOp2´
Xmodel_2/transformer_encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOpXmodel_2/transformer_encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOp2È
bmodel_2/transformer_encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpbmodel_2/transformer_encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2
Kmodel_2/transformer_encoder_2/multi_head_attention_2/key/add/ReadVariableOpKmodel_2/transformer_encoder_2/multi_head_attention_2/key/add/ReadVariableOp2®
Umodel_2/transformer_encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpUmodel_2/transformer_encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2
Mmodel_2/transformer_encoder_2/multi_head_attention_2/query/add/ReadVariableOpMmodel_2/transformer_encoder_2/multi_head_attention_2/query/add/ReadVariableOp2²
Wmodel_2/transformer_encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpWmodel_2/transformer_encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2
Mmodel_2/transformer_encoder_2/multi_head_attention_2/value/add/ReadVariableOpMmodel_2/transformer_encoder_2/multi_head_attention_2/value/add/ReadVariableOp2²
Wmodel_2/transformer_encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpWmodel_2/transformer_encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2
Imodel_2/transformer_encoder_2/sequential_2/dense_8/BiasAdd/ReadVariableOpImodel_2/transformer_encoder_2/sequential_2/dense_8/BiasAdd/ReadVariableOp2
Kmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/ReadVariableOpKmodel_2/transformer_encoder_2/sequential_2/dense_8/Tensordot/ReadVariableOp2
Imodel_2/transformer_encoder_2/sequential_2/dense_9/BiasAdd/ReadVariableOpImodel_2/transformer_encoder_2/sequential_2/dense_9/BiasAdd/ReadVariableOp2
Kmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/ReadVariableOpKmodel_2/transformer_encoder_2/sequential_2/dense_9/Tensordot/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
!
_user_specified_name	input_3
ÙÈ
«
T__inference_transformer_encoder_2_layer_call_and_return_conditional_losses_100084448

inputsX
Bmulti_head_attention_2_query_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_2_query_add_readvariableop_resource:2V
@multi_head_attention_2_key_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_2_key_add_readvariableop_resource:2X
Bmulti_head_attention_2_value_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_2_value_add_readvariableop_resource:2c
Mmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:22Q
Cmulti_head_attention_2_attention_output_add_readvariableop_resource:2I
;layer_normalization_4_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_4_batchnorm_readvariableop_resource:2H
6sequential_2_dense_8_tensordot_readvariableop_resource:2 B
4sequential_2_dense_8_biasadd_readvariableop_resource: H
6sequential_2_dense_9_tensordot_readvariableop_resource: 2B
4sequential_2_dense_9_biasadd_readvariableop_resource:2I
;layer_normalization_5_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_5_batchnorm_readvariableop_resource:2
identity¢.layer_normalization_4/batchnorm/ReadVariableOp¢2layer_normalization_4/batchnorm/mul/ReadVariableOp¢.layer_normalization_5/batchnorm/ReadVariableOp¢2layer_normalization_5/batchnorm/mul/ReadVariableOp¢:multi_head_attention_2/attention_output/add/ReadVariableOp¢Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_2/key/add/ReadVariableOp¢7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_2/query/add/ReadVariableOp¢9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_2/value/add/ReadVariableOp¢9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp¢+sequential_2/dense_8/BiasAdd/ReadVariableOp¢-sequential_2/dense_8/Tensordot/ReadVariableOp¢+sequential_2/dense_9/BiasAdd/ReadVariableOp¢-sequential_2/dense_9/Tensordot/ReadVariableOpÀ
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_2/query/einsum/EinsumEinsuminputsAmulti_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabc,cde->abde¨
/multi_head_attention_2/query/add/ReadVariableOpReadVariableOp8multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_2/query/addAddV23multi_head_attention_2/query/einsum/Einsum:output:07multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¼
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention_2/key/einsum/EinsumEinsuminputs?multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabc,cde->abde¤
-multi_head_attention_2/key/add/ReadVariableOpReadVariableOp6multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention_2/key/addAddV21multi_head_attention_2/key/einsum/Einsum:output:05multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22À
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_2/value/einsum/EinsumEinsuminputsAmulti_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabc,cde->abde¨
/multi_head_attention_2/value/add/ReadVariableOpReadVariableOp8multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_2/value/addAddV23multi_head_attention_2/value/einsum/Einsum:output:07multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22a
multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>¨
multi_head_attention_2/MulMul$multi_head_attention_2/query/add:z:0%multi_head_attention_2/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22Ô
$multi_head_attention_2/einsum/EinsumEinsum"multi_head_attention_2/key/add:z:0multi_head_attention_2/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationaecd,abcd->acbe
&multi_head_attention_2/softmax/SoftmaxSoftmax-multi_head_attention_2/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22ê
&multi_head_attention_2/einsum_1/EinsumEinsum0multi_head_attention_2/softmax/Softmax:softmax:0$multi_head_attention_2/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
5multi_head_attention_2/attention_output/einsum/EinsumEinsum/multi_head_attention_2/einsum_1/Einsum:output:0Lmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
equationabcd,cde->abeº
:multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0î
+multi_head_attention_2/attention_output/addAddV2>multi_head_attention_2/attention_output/einsum/Einsum:output:0Bmulti_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22]
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @§
dropout_10/dropout/MulMul/multi_head_attention_2/attention_output/add:z:0!dropout_10/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22w
dropout_10/dropout/ShapeShape/multi_head_attention_2/attention_output/add:z:0*
T0*
_output_shapes
:¦
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
dtype0f
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ë
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_10/dropout/CastCast#dropout_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_10/dropout/Mul_1Muldropout_10/dropout/Mul:z:0dropout_10/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22h
addAddV2inputsdropout_10/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22~
4layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¹
"layer_normalization_4/moments/meanMeanadd:z:0=layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(
*layer_normalization_4/moments/StopGradientStopGradient+layer_normalization_4/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¸
/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_4/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
8layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_4/moments/varianceMean3layer_normalization_4/moments/SquaredDifference:z:0Alayer_normalization_4/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(j
%layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_4/batchnorm/addAddV2/layer_normalization_4/moments/variance:output:0.layer_normalization_4/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%layer_normalization_4/batchnorm/RsqrtRsqrt'layer_normalization_4/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ª
2layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_4/batchnorm/mulMul)layer_normalization_4/batchnorm/Rsqrt:y:0:layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
%layer_normalization_4/batchnorm/mul_1Muladd:z:0'layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¸
%layer_normalization_4/batchnorm/mul_2Mul+layer_normalization_4/moments/mean:output:0'layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¢
.layer_normalization_4/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_4/batchnorm/subSub6layer_normalization_4/batchnorm/ReadVariableOp:value:0)layer_normalization_4/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¸
%layer_normalization_4/batchnorm/add_1AddV2)layer_normalization_4/batchnorm/mul_1:z:0'layer_normalization_4/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¤
-sequential_2/dense_8/Tensordot/ReadVariableOpReadVariableOp6sequential_2_dense_8_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0m
#sequential_2/dense_8/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_2/dense_8/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
$sequential_2/dense_8/Tensordot/ShapeShape)layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:n
,sequential_2/dense_8/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential_2/dense_8/Tensordot/GatherV2GatherV2-sequential_2/dense_8/Tensordot/Shape:output:0,sequential_2/dense_8/Tensordot/free:output:05sequential_2/dense_8/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_2/dense_8/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_2/dense_8/Tensordot/GatherV2_1GatherV2-sequential_2/dense_8/Tensordot/Shape:output:0,sequential_2/dense_8/Tensordot/axes:output:07sequential_2/dense_8/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_2/dense_8/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ­
#sequential_2/dense_8/Tensordot/ProdProd0sequential_2/dense_8/Tensordot/GatherV2:output:0-sequential_2/dense_8/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_2/dense_8/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_2/dense_8/Tensordot/Prod_1Prod2sequential_2/dense_8/Tensordot/GatherV2_1:output:0/sequential_2/dense_8/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_2/dense_8/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
%sequential_2/dense_8/Tensordot/concatConcatV2,sequential_2/dense_8/Tensordot/free:output:0,sequential_2/dense_8/Tensordot/axes:output:03sequential_2/dense_8/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¸
$sequential_2/dense_8/Tensordot/stackPack,sequential_2/dense_8/Tensordot/Prod:output:0.sequential_2/dense_8/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Æ
(sequential_2/dense_8/Tensordot/transpose	Transpose)layer_normalization_4/batchnorm/add_1:z:0.sequential_2/dense_8/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22É
&sequential_2/dense_8/Tensordot/ReshapeReshape,sequential_2/dense_8/Tensordot/transpose:y:0-sequential_2/dense_8/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
%sequential_2/dense_8/Tensordot/MatMulMatMul/sequential_2/dense_8/Tensordot/Reshape:output:05sequential_2/dense_8/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
&sequential_2/dense_8/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: n
,sequential_2/dense_8/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
'sequential_2/dense_8/Tensordot/concat_1ConcatV20sequential_2/dense_8/Tensordot/GatherV2:output:0/sequential_2/dense_8/Tensordot/Const_2:output:05sequential_2/dense_8/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Â
sequential_2/dense_8/TensordotReshape/sequential_2/dense_8/Tensordot/MatMul:product:00sequential_2/dense_8/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
+sequential_2/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0»
sequential_2/dense_8/BiasAddBiasAdd'sequential_2/dense_8/Tensordot:output:03sequential_2/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 ~
sequential_2/dense_8/ReluRelu%sequential_2/dense_8/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 ¤
-sequential_2/dense_9/Tensordot/ReadVariableOpReadVariableOp6sequential_2_dense_9_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0m
#sequential_2/dense_9/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_2/dense_9/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_2/dense_9/Tensordot/ShapeShape'sequential_2/dense_8/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_2/dense_9/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential_2/dense_9/Tensordot/GatherV2GatherV2-sequential_2/dense_9/Tensordot/Shape:output:0,sequential_2/dense_9/Tensordot/free:output:05sequential_2/dense_9/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_2/dense_9/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_2/dense_9/Tensordot/GatherV2_1GatherV2-sequential_2/dense_9/Tensordot/Shape:output:0,sequential_2/dense_9/Tensordot/axes:output:07sequential_2/dense_9/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_2/dense_9/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ­
#sequential_2/dense_9/Tensordot/ProdProd0sequential_2/dense_9/Tensordot/GatherV2:output:0-sequential_2/dense_9/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_2/dense_9/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_2/dense_9/Tensordot/Prod_1Prod2sequential_2/dense_9/Tensordot/GatherV2_1:output:0/sequential_2/dense_9/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_2/dense_9/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
%sequential_2/dense_9/Tensordot/concatConcatV2,sequential_2/dense_9/Tensordot/free:output:0,sequential_2/dense_9/Tensordot/axes:output:03sequential_2/dense_9/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¸
$sequential_2/dense_9/Tensordot/stackPack,sequential_2/dense_9/Tensordot/Prod:output:0.sequential_2/dense_9/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ä
(sequential_2/dense_9/Tensordot/transpose	Transpose'sequential_2/dense_8/Relu:activations:0.sequential_2/dense_9/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 É
&sequential_2/dense_9/Tensordot/ReshapeReshape,sequential_2/dense_9/Tensordot/transpose:y:0-sequential_2/dense_9/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
%sequential_2/dense_9/Tensordot/MatMulMatMul/sequential_2/dense_9/Tensordot/Reshape:output:05sequential_2/dense_9/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
&sequential_2/dense_9/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2n
,sequential_2/dense_9/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
'sequential_2/dense_9/Tensordot/concat_1ConcatV20sequential_2/dense_9/Tensordot/GatherV2:output:0/sequential_2/dense_9/Tensordot/Const_2:output:05sequential_2/dense_9/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Â
sequential_2/dense_9/TensordotReshape/sequential_2/dense_9/Tensordot/MatMul:product:00sequential_2/dense_9/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
+sequential_2/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_9_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0»
sequential_2/dense_9/BiasAddBiasAdd'sequential_2/dense_9/Tensordot:output:03sequential_2/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22]
dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_11/dropout/MulMul%sequential_2/dense_9/BiasAdd:output:0!dropout_11/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22m
dropout_11/dropout/ShapeShape%sequential_2/dense_9/BiasAdd:output:0*
T0*
_output_shapes
:¦
/dropout_11/dropout/random_uniform/RandomUniformRandomUniform!dropout_11/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*
dtype0f
!dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ë
dropout_11/dropout/GreaterEqualGreaterEqual8dropout_11/dropout/random_uniform/RandomUniform:output:0*dropout_11/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_11/dropout/CastCast#dropout_11/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dropout_11/dropout/Mul_1Muldropout_11/dropout/Mul:z:0dropout_11/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
add_1AddV2)layer_normalization_4/batchnorm/add_1:z:0dropout_11/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22~
4layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
"layer_normalization_5/moments/meanMean	add_1:z:0=layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(
*layer_normalization_5/moments/StopGradientStopGradient+layer_normalization_5/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2º
/layer_normalization_5/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_5/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
8layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_5/moments/varianceMean3layer_normalization_5/moments/SquaredDifference:z:0Alayer_normalization_5/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
	keep_dims(j
%layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_5/batchnorm/addAddV2/layer_normalization_5/moments/variance:output:0.layer_normalization_5/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%layer_normalization_5/batchnorm/RsqrtRsqrt'layer_normalization_5/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2ª
2layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_5/batchnorm/mulMul)layer_normalization_5/batchnorm/Rsqrt:y:0:layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
%layer_normalization_5/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¸
%layer_normalization_5/batchnorm/mul_2Mul+layer_normalization_5/moments/mean:output:0'layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¢
.layer_normalization_5/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_5/batchnorm/subSub6layer_normalization_5/batchnorm/ReadVariableOp:value:0)layer_normalization_5/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22¸
%layer_normalization_5/batchnorm/add_1AddV2)layer_normalization_5/batchnorm/mul_1:z:0'layer_normalization_5/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22|
IdentityIdentity)layer_normalization_5/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
NoOpNoOp/^layer_normalization_4/batchnorm/ReadVariableOp3^layer_normalization_4/batchnorm/mul/ReadVariableOp/^layer_normalization_5/batchnorm/ReadVariableOp3^layer_normalization_5/batchnorm/mul/ReadVariableOp;^multi_head_attention_2/attention_output/add/ReadVariableOpE^multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_2/key/add/ReadVariableOp8^multi_head_attention_2/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/query/add/ReadVariableOp:^multi_head_attention_2/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/value/add/ReadVariableOp:^multi_head_attention_2/value/einsum/Einsum/ReadVariableOp,^sequential_2/dense_8/BiasAdd/ReadVariableOp.^sequential_2/dense_8/Tensordot/ReadVariableOp,^sequential_2/dense_9/BiasAdd/ReadVariableOp.^sequential_2/dense_9/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ22: : : : : : : : : : : : : : : : 2`
.layer_normalization_4/batchnorm/ReadVariableOp.layer_normalization_4/batchnorm/ReadVariableOp2h
2layer_normalization_4/batchnorm/mul/ReadVariableOp2layer_normalization_4/batchnorm/mul/ReadVariableOp2`
.layer_normalization_5/batchnorm/ReadVariableOp.layer_normalization_5/batchnorm/ReadVariableOp2h
2layer_normalization_5/batchnorm/mul/ReadVariableOp2layer_normalization_5/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_2/attention_output/add/ReadVariableOp:multi_head_attention_2/attention_output/add/ReadVariableOp2
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_2/key/add/ReadVariableOp-multi_head_attention_2/key/add/ReadVariableOp2r
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/query/add/ReadVariableOp/multi_head_attention_2/query/add/ReadVariableOp2v
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/value/add/ReadVariableOp/multi_head_attention_2/value/add/ReadVariableOp2v
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2Z
+sequential_2/dense_8/BiasAdd/ReadVariableOp+sequential_2/dense_8/BiasAdd/ReadVariableOp2^
-sequential_2/dense_8/Tensordot/ReadVariableOp-sequential_2/dense_8/Tensordot/ReadVariableOp2Z
+sequential_2/dense_9/BiasAdd/ReadVariableOp+sequential_2/dense_9/BiasAdd/ReadVariableOp2^
-sequential_2/dense_9/Tensordot/ReadVariableOp-sequential_2/dense_9/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
)
É
F__inference_model_2_layer_call_and_return_conditional_losses_100083229
input_3:
(token_and_position_embedding_2_100083173:22:
(token_and_position_embedding_2_100083175:25
transformer_encoder_2_100083178:221
transformer_encoder_2_100083180:25
transformer_encoder_2_100083182:221
transformer_encoder_2_100083184:25
transformer_encoder_2_100083186:221
transformer_encoder_2_100083188:25
transformer_encoder_2_100083190:22-
transformer_encoder_2_100083192:2-
transformer_encoder_2_100083194:2-
transformer_encoder_2_100083196:21
transformer_encoder_2_100083198:2 -
transformer_encoder_2_100083200: 1
transformer_encoder_2_100083202: 2-
transformer_encoder_2_100083204:2-
transformer_encoder_2_100083206:2-
transformer_encoder_2_100083208:2"
rnn_2_100083211:	2¸"
rnn_2_100083213:	.¸
rnn_2_100083215:	¸$
dense_10_100083218:.. 
dense_10_100083220:.$
dense_11_100083223:. 
dense_11_100083225:
identity¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall¢rnn_2/StatefulPartitionedCall¢6token_and_position_embedding_2/StatefulPartitionedCall¢-transformer_encoder_2/StatefulPartitionedCallÖ
6token_and_position_embedding_2/StatefulPartitionedCallStatefulPartitionedCallinput_3(token_and_position_embedding_2_100083173(token_and_position_embedding_2_100083175*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *f
faR_
]__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_100082130Ô
-transformer_encoder_2/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_2/StatefulPartitionedCall:output:0transformer_encoder_2_100083178transformer_encoder_2_100083180transformer_encoder_2_100083182transformer_encoder_2_100083184transformer_encoder_2_100083186transformer_encoder_2_100083188transformer_encoder_2_100083190transformer_encoder_2_100083192transformer_encoder_2_100083194transformer_encoder_2_100083196transformer_encoder_2_100083198transformer_encoder_2_100083200transformer_encoder_2_100083202transformer_encoder_2_100083204transformer_encoder_2_100083206transformer_encoder_2_100083208*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transformer_encoder_2_layer_call_and_return_conditional_losses_100082263°
rnn_2/StatefulPartitionedCallStatefulPartitionedCall6transformer_encoder_2/StatefulPartitionedCall:output:0rnn_2_100083211rnn_2_100083213rnn_2_100083215*
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
D__inference_rnn_2_layer_call_and_return_conditional_losses_100082440
 dense_10/StatefulPartitionedCallStatefulPartitionedCall&rnn_2/StatefulPartitionedCall:output:0dense_10_100083218dense_10_100083220*
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
G__inference_dense_10_layer_call_and_return_conditional_losses_100082459
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_100083223dense_11_100083225*
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
G__inference_dense_11_layer_call_and_return_conditional_losses_100082475x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall^rnn_2/StatefulPartitionedCall7^token_and_position_embedding_2/StatefulPartitionedCall.^transformer_encoder_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2>
rnn_2/StatefulPartitionedCallrnn_2/StatefulPartitionedCall2p
6token_and_position_embedding_2/StatefulPartitionedCall6token_and_position_embedding_2/StatefulPartitionedCall2^
-transformer_encoder_2/StatefulPartitionedCall-transformer_encoder_2/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
!
_user_specified_name	input_3
Ó8
Ê
while_body_100084840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_2_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_2/BiasAdd/ReadVariableOp¢'while/lstm_cell_2/MatMul/ReadVariableOp¢)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_2/TanhTanh while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0while/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_2/Tanh_1Tanhwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0while/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_2/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
while_body_100084552
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_2_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_2/BiasAdd/ReadVariableOp¢'while/lstm_cell_2/MatMul/ReadVariableOp¢)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_2/TanhTanh while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0while/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_2/Tanh_1Tanhwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0while/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_2/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
ï
ø
/__inference_lstm_cell_2_layer_call_fn_100085281

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
J__inference_lstm_cell_2_layer_call_and_return_conditional_losses_100081961o
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
Ó8
Ê
while_body_100082356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_2_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_2/BiasAdd/ReadVariableOp¢'while/lstm_cell_2/MatMul/ReadVariableOp¢)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_2/TanhTanh while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0while/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_2/Tanh_1Tanhwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0while/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_2/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
´
Ó
0__inference_sequential_2_layer_call_fn_100085133

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
:ÿÿÿÿÿÿÿÿÿ22*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_2_layer_call_and_return_conditional_losses_100081695s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ22: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
 
_user_specified_nameinputs
ì	
Ê
rnn_2_while_cond_100083663(
$rnn_2_while_rnn_2_while_loop_counter.
*rnn_2_while_rnn_2_while_maximum_iterations
rnn_2_while_placeholder
rnn_2_while_placeholder_1
rnn_2_while_placeholder_2
rnn_2_while_placeholder_3*
&rnn_2_while_less_rnn_2_strided_slice_1C
?rnn_2_while_rnn_2_while_cond_100083663___redundant_placeholder0C
?rnn_2_while_rnn_2_while_cond_100083663___redundant_placeholder1C
?rnn_2_while_rnn_2_while_cond_100083663___redundant_placeholder2C
?rnn_2_while_rnn_2_while_cond_100083663___redundant_placeholder3
rnn_2_while_identity
z
rnn_2/while/LessLessrnn_2_while_placeholder&rnn_2_while_less_rnn_2_strided_slice_1*
T0*
_output_shapes
: W
rnn_2/while/IdentityIdentityrnn_2/while/Less:z:0*
T0
*
_output_shapes
: "5
rnn_2_while_identityrnn_2/while/Identity:output:0*(
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
)
È
F__inference_model_2_layer_call_and_return_conditional_losses_100083062

inputs:
(token_and_position_embedding_2_100083006:22:
(token_and_position_embedding_2_100083008:25
transformer_encoder_2_100083011:221
transformer_encoder_2_100083013:25
transformer_encoder_2_100083015:221
transformer_encoder_2_100083017:25
transformer_encoder_2_100083019:221
transformer_encoder_2_100083021:25
transformer_encoder_2_100083023:22-
transformer_encoder_2_100083025:2-
transformer_encoder_2_100083027:2-
transformer_encoder_2_100083029:21
transformer_encoder_2_100083031:2 -
transformer_encoder_2_100083033: 1
transformer_encoder_2_100083035: 2-
transformer_encoder_2_100083037:2-
transformer_encoder_2_100083039:2-
transformer_encoder_2_100083041:2"
rnn_2_100083044:	2¸"
rnn_2_100083046:	.¸
rnn_2_100083048:	¸$
dense_10_100083051:.. 
dense_10_100083053:.$
dense_11_100083056:. 
dense_11_100083058:
identity¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall¢rnn_2/StatefulPartitionedCall¢6token_and_position_embedding_2/StatefulPartitionedCall¢-transformer_encoder_2/StatefulPartitionedCallÕ
6token_and_position_embedding_2/StatefulPartitionedCallStatefulPartitionedCallinputs(token_and_position_embedding_2_100083006(token_and_position_embedding_2_100083008*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *f
faR_
]__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_100082130Ô
-transformer_encoder_2/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_2/StatefulPartitionedCall:output:0transformer_encoder_2_100083011transformer_encoder_2_100083013transformer_encoder_2_100083015transformer_encoder_2_100083017transformer_encoder_2_100083019transformer_encoder_2_100083021transformer_encoder_2_100083023transformer_encoder_2_100083025transformer_encoder_2_100083027transformer_encoder_2_100083029transformer_encoder_2_100083031transformer_encoder_2_100083033transformer_encoder_2_100083035transformer_encoder_2_100083037transformer_encoder_2_100083039transformer_encoder_2_100083041*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transformer_encoder_2_layer_call_and_return_conditional_losses_100082901°
rnn_2/StatefulPartitionedCallStatefulPartitionedCall6transformer_encoder_2/StatefulPartitionedCall:output:0rnn_2_100083044rnn_2_100083046rnn_2_100083048*
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
D__inference_rnn_2_layer_call_and_return_conditional_losses_100082712
 dense_10/StatefulPartitionedCallStatefulPartitionedCall&rnn_2/StatefulPartitionedCall:output:0dense_10_100083051dense_10_100083053*
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
G__inference_dense_10_layer_call_and_return_conditional_losses_100082459
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_100083056dense_11_100083058*
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
G__inference_dense_11_layer_call_and_return_conditional_losses_100082475x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall^rnn_2/StatefulPartitionedCall7^token_and_position_embedding_2/StatefulPartitionedCall.^transformer_encoder_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2>
rnn_2/StatefulPartitionedCallrnn_2/StatefulPartitionedCall2p
6token_and_position_embedding_2/StatefulPartitionedCall6token_and_position_embedding_2/StatefulPartitionedCall2^
-transformer_encoder_2/StatefulPartitionedCall-transformer_encoder_2/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ì	
Ê
rnn_2_while_cond_100083976(
$rnn_2_while_rnn_2_while_loop_counter.
*rnn_2_while_rnn_2_while_maximum_iterations
rnn_2_while_placeholder
rnn_2_while_placeholder_1
rnn_2_while_placeholder_2
rnn_2_while_placeholder_3*
&rnn_2_while_less_rnn_2_strided_slice_1C
?rnn_2_while_rnn_2_while_cond_100083976___redundant_placeholder0C
?rnn_2_while_rnn_2_while_cond_100083976___redundant_placeholder1C
?rnn_2_while_rnn_2_while_cond_100083976___redundant_placeholder2C
?rnn_2_while_rnn_2_while_cond_100083976___redundant_placeholder3
rnn_2_while_identity
z
rnn_2/while/LessLessrnn_2_while_placeholder&rnn_2_while_less_rnn_2_strided_slice_1*
T0*
_output_shapes
: W
rnn_2/while/IdentityIdentityrnn_2/while/Less:z:0*
T0
*
_output_shapes
: "5
rnn_2_while_identityrnn_2/while/Identity:output:0*(
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
¢
­
'__inference_signature_wrapper_100083351
input_3
unknown:22
	unknown_0:2
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
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
$__inference__wrapped_model_100081554o
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
E:ÿÿÿÿÿÿÿÿÿ2: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
!
_user_specified_name	input_3
Ä
Ò
while_cond_100081828
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_100081828___redundant_placeholder07
3while_while_cond_100081828___redundant_placeholder17
3while_while_cond_100081828___redundant_placeholder27
3while_while_cond_100081828___redundant_placeholder3
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
¢´
¢0
"__inference__traced_save_100085699
file_prefix.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableopT
Psavev2_token_and_position_embedding_2_embedding_4_embeddings_read_readvariableopT
Psavev2_token_and_position_embedding_2_embedding_5_embeddings_read_readvariableopX
Tsavev2_transformer_encoder_2_multi_head_attention_2_query_kernel_read_readvariableopV
Rsavev2_transformer_encoder_2_multi_head_attention_2_query_bias_read_readvariableopV
Rsavev2_transformer_encoder_2_multi_head_attention_2_key_kernel_read_readvariableopT
Psavev2_transformer_encoder_2_multi_head_attention_2_key_bias_read_readvariableopX
Tsavev2_transformer_encoder_2_multi_head_attention_2_value_kernel_read_readvariableopV
Rsavev2_transformer_encoder_2_multi_head_attention_2_value_bias_read_readvariableopc
_savev2_transformer_encoder_2_multi_head_attention_2_attention_output_kernel_read_readvariableopa
]savev2_transformer_encoder_2_multi_head_attention_2_attention_output_bias_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableopP
Lsavev2_transformer_encoder_2_layer_normalization_4_gamma_read_readvariableopO
Ksavev2_transformer_encoder_2_layer_normalization_4_beta_read_readvariableopP
Lsavev2_transformer_encoder_2_layer_normalization_5_gamma_read_readvariableopO
Ksavev2_transformer_encoder_2_layer_normalization_5_beta_read_readvariableop7
3savev2_rnn_2_lstm_cell_2_kernel_read_readvariableopA
=savev2_rnn_2_lstm_cell_2_recurrent_kernel_read_readvariableop5
1savev2_rnn_2_lstm_cell_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_10_kernel_m_read_readvariableop3
/savev2_adam_dense_10_bias_m_read_readvariableop5
1savev2_adam_dense_11_kernel_m_read_readvariableop3
/savev2_adam_dense_11_bias_m_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_2_embedding_4_embeddings_m_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_2_embedding_5_embeddings_m_read_readvariableop_
[savev2_adam_transformer_encoder_2_multi_head_attention_2_query_kernel_m_read_readvariableop]
Ysavev2_adam_transformer_encoder_2_multi_head_attention_2_query_bias_m_read_readvariableop]
Ysavev2_adam_transformer_encoder_2_multi_head_attention_2_key_kernel_m_read_readvariableop[
Wsavev2_adam_transformer_encoder_2_multi_head_attention_2_key_bias_m_read_readvariableop_
[savev2_adam_transformer_encoder_2_multi_head_attention_2_value_kernel_m_read_readvariableop]
Ysavev2_adam_transformer_encoder_2_multi_head_attention_2_value_bias_m_read_readvariableopj
fsavev2_adam_transformer_encoder_2_multi_head_attention_2_attention_output_kernel_m_read_readvariableoph
dsavev2_adam_transformer_encoder_2_multi_head_attention_2_attention_output_bias_m_read_readvariableop4
0savev2_adam_dense_8_kernel_m_read_readvariableop2
.savev2_adam_dense_8_bias_m_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableopW
Ssavev2_adam_transformer_encoder_2_layer_normalization_4_gamma_m_read_readvariableopV
Rsavev2_adam_transformer_encoder_2_layer_normalization_4_beta_m_read_readvariableopW
Ssavev2_adam_transformer_encoder_2_layer_normalization_5_gamma_m_read_readvariableopV
Rsavev2_adam_transformer_encoder_2_layer_normalization_5_beta_m_read_readvariableop>
:savev2_adam_rnn_2_lstm_cell_2_kernel_m_read_readvariableopH
Dsavev2_adam_rnn_2_lstm_cell_2_recurrent_kernel_m_read_readvariableop<
8savev2_adam_rnn_2_lstm_cell_2_bias_m_read_readvariableop5
1savev2_adam_dense_10_kernel_v_read_readvariableop3
/savev2_adam_dense_10_bias_v_read_readvariableop5
1savev2_adam_dense_11_kernel_v_read_readvariableop3
/savev2_adam_dense_11_bias_v_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_2_embedding_4_embeddings_v_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_2_embedding_5_embeddings_v_read_readvariableop_
[savev2_adam_transformer_encoder_2_multi_head_attention_2_query_kernel_v_read_readvariableop]
Ysavev2_adam_transformer_encoder_2_multi_head_attention_2_query_bias_v_read_readvariableop]
Ysavev2_adam_transformer_encoder_2_multi_head_attention_2_key_kernel_v_read_readvariableop[
Wsavev2_adam_transformer_encoder_2_multi_head_attention_2_key_bias_v_read_readvariableop_
[savev2_adam_transformer_encoder_2_multi_head_attention_2_value_kernel_v_read_readvariableop]
Ysavev2_adam_transformer_encoder_2_multi_head_attention_2_value_bias_v_read_readvariableopj
fsavev2_adam_transformer_encoder_2_multi_head_attention_2_attention_output_kernel_v_read_readvariableoph
dsavev2_adam_transformer_encoder_2_multi_head_attention_2_attention_output_bias_v_read_readvariableop4
0savev2_adam_dense_8_kernel_v_read_readvariableop2
.savev2_adam_dense_8_bias_v_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableopW
Ssavev2_adam_transformer_encoder_2_layer_normalization_4_gamma_v_read_readvariableopV
Rsavev2_adam_transformer_encoder_2_layer_normalization_4_beta_v_read_readvariableopW
Ssavev2_adam_transformer_encoder_2_layer_normalization_5_gamma_v_read_readvariableopV
Rsavev2_adam_transformer_encoder_2_layer_normalization_5_beta_v_read_readvariableop>
:savev2_adam_rnn_2_lstm_cell_2_kernel_v_read_readvariableopH
Dsavev2_adam_rnn_2_lstm_cell_2_recurrent_kernel_v_read_readvariableop<
8savev2_adam_rnn_2_lstm_cell_2_bias_v_read_readvariableop
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
valueµB²UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ç.
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableopPsavev2_token_and_position_embedding_2_embedding_4_embeddings_read_readvariableopPsavev2_token_and_position_embedding_2_embedding_5_embeddings_read_readvariableopTsavev2_transformer_encoder_2_multi_head_attention_2_query_kernel_read_readvariableopRsavev2_transformer_encoder_2_multi_head_attention_2_query_bias_read_readvariableopRsavev2_transformer_encoder_2_multi_head_attention_2_key_kernel_read_readvariableopPsavev2_transformer_encoder_2_multi_head_attention_2_key_bias_read_readvariableopTsavev2_transformer_encoder_2_multi_head_attention_2_value_kernel_read_readvariableopRsavev2_transformer_encoder_2_multi_head_attention_2_value_bias_read_readvariableop_savev2_transformer_encoder_2_multi_head_attention_2_attention_output_kernel_read_readvariableop]savev2_transformer_encoder_2_multi_head_attention_2_attention_output_bias_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableopLsavev2_transformer_encoder_2_layer_normalization_4_gamma_read_readvariableopKsavev2_transformer_encoder_2_layer_normalization_4_beta_read_readvariableopLsavev2_transformer_encoder_2_layer_normalization_5_gamma_read_readvariableopKsavev2_transformer_encoder_2_layer_normalization_5_beta_read_readvariableop3savev2_rnn_2_lstm_cell_2_kernel_read_readvariableop=savev2_rnn_2_lstm_cell_2_recurrent_kernel_read_readvariableop1savev2_rnn_2_lstm_cell_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_10_kernel_m_read_readvariableop/savev2_adam_dense_10_bias_m_read_readvariableop1savev2_adam_dense_11_kernel_m_read_readvariableop/savev2_adam_dense_11_bias_m_read_readvariableopWsavev2_adam_token_and_position_embedding_2_embedding_4_embeddings_m_read_readvariableopWsavev2_adam_token_and_position_embedding_2_embedding_5_embeddings_m_read_readvariableop[savev2_adam_transformer_encoder_2_multi_head_attention_2_query_kernel_m_read_readvariableopYsavev2_adam_transformer_encoder_2_multi_head_attention_2_query_bias_m_read_readvariableopYsavev2_adam_transformer_encoder_2_multi_head_attention_2_key_kernel_m_read_readvariableopWsavev2_adam_transformer_encoder_2_multi_head_attention_2_key_bias_m_read_readvariableop[savev2_adam_transformer_encoder_2_multi_head_attention_2_value_kernel_m_read_readvariableopYsavev2_adam_transformer_encoder_2_multi_head_attention_2_value_bias_m_read_readvariableopfsavev2_adam_transformer_encoder_2_multi_head_attention_2_attention_output_kernel_m_read_readvariableopdsavev2_adam_transformer_encoder_2_multi_head_attention_2_attention_output_bias_m_read_readvariableop0savev2_adam_dense_8_kernel_m_read_readvariableop.savev2_adam_dense_8_bias_m_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableopSsavev2_adam_transformer_encoder_2_layer_normalization_4_gamma_m_read_readvariableopRsavev2_adam_transformer_encoder_2_layer_normalization_4_beta_m_read_readvariableopSsavev2_adam_transformer_encoder_2_layer_normalization_5_gamma_m_read_readvariableopRsavev2_adam_transformer_encoder_2_layer_normalization_5_beta_m_read_readvariableop:savev2_adam_rnn_2_lstm_cell_2_kernel_m_read_readvariableopDsavev2_adam_rnn_2_lstm_cell_2_recurrent_kernel_m_read_readvariableop8savev2_adam_rnn_2_lstm_cell_2_bias_m_read_readvariableop1savev2_adam_dense_10_kernel_v_read_readvariableop/savev2_adam_dense_10_bias_v_read_readvariableop1savev2_adam_dense_11_kernel_v_read_readvariableop/savev2_adam_dense_11_bias_v_read_readvariableopWsavev2_adam_token_and_position_embedding_2_embedding_4_embeddings_v_read_readvariableopWsavev2_adam_token_and_position_embedding_2_embedding_5_embeddings_v_read_readvariableop[savev2_adam_transformer_encoder_2_multi_head_attention_2_query_kernel_v_read_readvariableopYsavev2_adam_transformer_encoder_2_multi_head_attention_2_query_bias_v_read_readvariableopYsavev2_adam_transformer_encoder_2_multi_head_attention_2_key_kernel_v_read_readvariableopWsavev2_adam_transformer_encoder_2_multi_head_attention_2_key_bias_v_read_readvariableop[savev2_adam_transformer_encoder_2_multi_head_attention_2_value_kernel_v_read_readvariableopYsavev2_adam_transformer_encoder_2_multi_head_attention_2_value_bias_v_read_readvariableopfsavev2_adam_transformer_encoder_2_multi_head_attention_2_attention_output_kernel_v_read_readvariableopdsavev2_adam_transformer_encoder_2_multi_head_attention_2_attention_output_bias_v_read_readvariableop0savev2_adam_dense_8_kernel_v_read_readvariableop.savev2_adam_dense_8_bias_v_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableopSsavev2_adam_transformer_encoder_2_layer_normalization_4_gamma_v_read_readvariableopRsavev2_adam_transformer_encoder_2_layer_normalization_4_beta_v_read_readvariableopSsavev2_adam_transformer_encoder_2_layer_normalization_5_gamma_v_read_readvariableopRsavev2_adam_transformer_encoder_2_layer_normalization_5_beta_v_read_readvariableop:savev2_adam_rnn_2_lstm_cell_2_kernel_v_read_readvariableopDsavev2_adam_rnn_2_lstm_cell_2_recurrent_kernel_v_read_readvariableop8savev2_adam_rnn_2_lstm_cell_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
Å: :..:.:.::2:22:22:2:22:2:22:2:22:2:2 : : 2:2:2:2:2:2:	2¸:	.¸:¸: : : : : : : : : :..:.:.::2:22:22:2:22:2:22:2:22:2:2 : : 2:2:2:2:2:2:	2¸:	.¸:¸:..:.:.::2:22:22:2:22:2:22:2:22:2:2 : : 2:2:2:2:2:2:	2¸:	.¸:¸: 2(
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

:2:$ 

_output_shapes

:22:($
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

:2:$( 

_output_shapes

:22:()$
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

:2:$A 

_output_shapes

:22:(B$
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
while_body_100084696
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_2_matmul_readvariableop_resource_0:	2¸G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	.¸B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	¸
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_2_matmul_readvariableop_resource:	2¸E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	.¸@
1while_lstm_cell_2_biasadd_readvariableop_resource:	¸¢(while/lstm_cell_2/BiasAdd/ReadVariableOp¢'while/lstm_cell_2/MatMul/ReadVariableOp¢)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes
:	2¸*
dtype0¸
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	.¸*
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:¸*
dtype0¤
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
while/lstm_cell_2/TanhTanh while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0while/lstm_cell_2/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.o
while/lstm_cell_2/Tanh_1Tanhwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0while/lstm_cell_2/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ì
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_2/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Í

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ.: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
: "µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*«
serving_default
;
input_30
serving_default_input_3:0ÿÿÿÿÿÿÿÿÿ2<
dense_110
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ÇË
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
+__inference_model_2_layer_call_fn_100082535
+__inference_model_2_layer_call_fn_100083406
+__inference_model_2_layer_call_fn_100083461
+__inference_model_2_layer_call_fn_100083170¿
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
F__inference_model_2_layer_call_and_return_conditional_losses_100083761
F__inference_model_2_layer_call_and_return_conditional_losses_100084074
F__inference_model_2_layer_call_and_return_conditional_losses_100083229
F__inference_model_2_layer_call_and_return_conditional_losses_100083288¿
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
$__inference__wrapped_model_100081554input_3"
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
B__inference_token_and_position_embedding_2_layer_call_fn_100084083
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
]__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_100084107
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
9__inference_transformer_encoder_2_layer_call_fn_100084144
9__inference_transformer_encoder_2_layer_call_fn_100084181®
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
T__inference_transformer_encoder_2_layer_call_and_return_conditional_losses_100084308
T__inference_transformer_encoder_2_layer_call_and_return_conditional_losses_100084448®
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
)__inference_rnn_2_layer_call_fn_100084459
)__inference_rnn_2_layer_call_fn_100084470
)__inference_rnn_2_layer_call_fn_100084481
)__inference_rnn_2_layer_call_fn_100084492å
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
D__inference_rnn_2_layer_call_and_return_conditional_losses_100084636
D__inference_rnn_2_layer_call_and_return_conditional_losses_100084780
D__inference_rnn_2_layer_call_and_return_conditional_losses_100084924
D__inference_rnn_2_layer_call_and_return_conditional_losses_100085068å
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
,__inference_dense_10_layer_call_fn_100085077¢
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
G__inference_dense_10_layer_call_and_return_conditional_losses_100085088¢
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
!:..2dense_10/kernel
:.2dense_10/bias
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
,__inference_dense_11_layer_call_fn_100085097¢
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
G__inference_dense_11_layer_call_and_return_conditional_losses_100085107¢
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
!:.2dense_11/kernel
:2dense_11/bias
G:E225token_and_position_embedding_2/embedding_4/embeddings
G:E2225token_and_position_embedding_2/embedding_5/embeddings
O:M2229transformer_encoder_2/multi_head_attention_2/query/kernel
I:G227transformer_encoder_2/multi_head_attention_2/query/bias
M:K2227transformer_encoder_2/multi_head_attention_2/key/kernel
G:E225transformer_encoder_2/multi_head_attention_2/key/bias
O:M2229transformer_encoder_2/multi_head_attention_2/value/kernel
I:G227transformer_encoder_2/multi_head_attention_2/value/bias
Z:X222Dtransformer_encoder_2/multi_head_attention_2/attention_output/kernel
P:N22Btransformer_encoder_2/multi_head_attention_2/attention_output/bias
 :2 2dense_8/kernel
: 2dense_8/bias
 : 22dense_9/kernel
:22dense_9/bias
?:=221transformer_encoder_2/layer_normalization_4/gamma
>:<220transformer_encoder_2/layer_normalization_4/beta
?:=221transformer_encoder_2/layer_normalization_5/gamma
>:<220transformer_encoder_2/layer_normalization_5/beta
+:)	2¸2rnn_2/lstm_cell_2/kernel
5:3	.¸2"rnn_2/lstm_cell_2/recurrent_kernel
%:#¸2rnn_2/lstm_cell_2/bias
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
+__inference_model_2_layer_call_fn_100082535input_3"¿
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
+__inference_model_2_layer_call_fn_100083406inputs"¿
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
+__inference_model_2_layer_call_fn_100083461inputs"¿
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
+__inference_model_2_layer_call_fn_100083170input_3"¿
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
F__inference_model_2_layer_call_and_return_conditional_losses_100083761inputs"¿
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
F__inference_model_2_layer_call_and_return_conditional_losses_100084074inputs"¿
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
F__inference_model_2_layer_call_and_return_conditional_losses_100083229input_3"¿
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
F__inference_model_2_layer_call_and_return_conditional_losses_100083288input_3"¿
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
'__inference_signature_wrapper_100083351input_3"
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
B__inference_token_and_position_embedding_2_layer_call_fn_100084083x"
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
]__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_100084107x"
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
9__inference_transformer_encoder_2_layer_call_fn_100084144inputs"®
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
9__inference_transformer_encoder_2_layer_call_fn_100084181inputs"®
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
T__inference_transformer_encoder_2_layer_call_and_return_conditional_losses_100084308inputs"®
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
T__inference_transformer_encoder_2_layer_call_and_return_conditional_losses_100084448inputs"®
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
0__inference_sequential_2_layer_call_fn_100081646
0__inference_sequential_2_layer_call_fn_100085120
0__inference_sequential_2_layer_call_fn_100085133
0__inference_sequential_2_layer_call_fn_100081719¿
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
K__inference_sequential_2_layer_call_and_return_conditional_losses_100085190
K__inference_sequential_2_layer_call_and_return_conditional_losses_100085247
K__inference_sequential_2_layer_call_and_return_conditional_losses_100081733
K__inference_sequential_2_layer_call_and_return_conditional_losses_100081747¿
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
)__inference_rnn_2_layer_call_fn_100084459inputs/0"å
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
)__inference_rnn_2_layer_call_fn_100084470inputs/0"å
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
)__inference_rnn_2_layer_call_fn_100084481inputs"å
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
)__inference_rnn_2_layer_call_fn_100084492inputs"å
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
D__inference_rnn_2_layer_call_and_return_conditional_losses_100084636inputs/0"å
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
D__inference_rnn_2_layer_call_and_return_conditional_losses_100084780inputs/0"å
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
D__inference_rnn_2_layer_call_and_return_conditional_losses_100084924inputs"å
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
D__inference_rnn_2_layer_call_and_return_conditional_losses_100085068inputs"å
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
/__inference_lstm_cell_2_layer_call_fn_100085264
/__inference_lstm_cell_2_layer_call_fn_100085281½
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
J__inference_lstm_cell_2_layer_call_and_return_conditional_losses_100085313
J__inference_lstm_cell_2_layer_call_and_return_conditional_losses_100085345½
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
,__inference_dense_10_layer_call_fn_100085077inputs"¢
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
G__inference_dense_10_layer_call_and_return_conditional_losses_100085088inputs"¢
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
,__inference_dense_11_layer_call_fn_100085097inputs"¢
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
G__inference_dense_11_layer_call_and_return_conditional_losses_100085107inputs"¢
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
ñ
ôtrace_02Ò
+__inference_dense_8_layer_call_fn_100085354¢
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

õtrace_02í
F__inference_dense_8_layer_call_and_return_conditional_losses_100085385¢
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
ñ
ûtrace_02Ò
+__inference_dense_9_layer_call_fn_100085394¢
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

ütrace_02í
F__inference_dense_9_layer_call_and_return_conditional_losses_100085424¢
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
B
0__inference_sequential_2_layer_call_fn_100081646dense_8_input"¿
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
0__inference_sequential_2_layer_call_fn_100085120inputs"¿
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
0__inference_sequential_2_layer_call_fn_100085133inputs"¿
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
B
0__inference_sequential_2_layer_call_fn_100081719dense_8_input"¿
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
K__inference_sequential_2_layer_call_and_return_conditional_losses_100085190inputs"¿
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
K__inference_sequential_2_layer_call_and_return_conditional_losses_100085247inputs"¿
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
£B 
K__inference_sequential_2_layer_call_and_return_conditional_losses_100081733dense_8_input"¿
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
£B 
K__inference_sequential_2_layer_call_and_return_conditional_losses_100081747dense_8_input"¿
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
/__inference_lstm_cell_2_layer_call_fn_100085264inputsstates/0states/1"½
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
/__inference_lstm_cell_2_layer_call_fn_100085281inputsstates/0states/1"½
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
J__inference_lstm_cell_2_layer_call_and_return_conditional_losses_100085313inputsstates/0states/1"½
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
J__inference_lstm_cell_2_layer_call_and_return_conditional_losses_100085345inputsstates/0states/1"½
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
ßBÜ
+__inference_dense_8_layer_call_fn_100085354inputs"¢
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
úB÷
F__inference_dense_8_layer_call_and_return_conditional_losses_100085385inputs"¢
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
ßBÜ
+__inference_dense_9_layer_call_fn_100085394inputs"¢
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
úB÷
F__inference_dense_9_layer_call_and_return_conditional_losses_100085424inputs"¢
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
&:$..2Adam/dense_10/kernel/m
 :.2Adam/dense_10/bias/m
&:$.2Adam/dense_11/kernel/m
 :2Adam/dense_11/bias/m
L:J22<Adam/token_and_position_embedding_2/embedding_4/embeddings/m
L:J222<Adam/token_and_position_embedding_2/embedding_5/embeddings/m
T:R222@Adam/transformer_encoder_2/multi_head_attention_2/query/kernel/m
N:L22>Adam/transformer_encoder_2/multi_head_attention_2/query/bias/m
R:P222>Adam/transformer_encoder_2/multi_head_attention_2/key/kernel/m
L:J22<Adam/transformer_encoder_2/multi_head_attention_2/key/bias/m
T:R222@Adam/transformer_encoder_2/multi_head_attention_2/value/kernel/m
N:L22>Adam/transformer_encoder_2/multi_head_attention_2/value/bias/m
_:]222KAdam/transformer_encoder_2/multi_head_attention_2/attention_output/kernel/m
U:S22IAdam/transformer_encoder_2/multi_head_attention_2/attention_output/bias/m
%:#2 2Adam/dense_8/kernel/m
: 2Adam/dense_8/bias/m
%:# 22Adam/dense_9/kernel/m
:22Adam/dense_9/bias/m
D:B228Adam/transformer_encoder_2/layer_normalization_4/gamma/m
C:A227Adam/transformer_encoder_2/layer_normalization_4/beta/m
D:B228Adam/transformer_encoder_2/layer_normalization_5/gamma/m
C:A227Adam/transformer_encoder_2/layer_normalization_5/beta/m
0:.	2¸2Adam/rnn_2/lstm_cell_2/kernel/m
::8	.¸2)Adam/rnn_2/lstm_cell_2/recurrent_kernel/m
*:(¸2Adam/rnn_2/lstm_cell_2/bias/m
&:$..2Adam/dense_10/kernel/v
 :.2Adam/dense_10/bias/v
&:$.2Adam/dense_11/kernel/v
 :2Adam/dense_11/bias/v
L:J22<Adam/token_and_position_embedding_2/embedding_4/embeddings/v
L:J222<Adam/token_and_position_embedding_2/embedding_5/embeddings/v
T:R222@Adam/transformer_encoder_2/multi_head_attention_2/query/kernel/v
N:L22>Adam/transformer_encoder_2/multi_head_attention_2/query/bias/v
R:P222>Adam/transformer_encoder_2/multi_head_attention_2/key/kernel/v
L:J22<Adam/transformer_encoder_2/multi_head_attention_2/key/bias/v
T:R222@Adam/transformer_encoder_2/multi_head_attention_2/value/kernel/v
N:L22>Adam/transformer_encoder_2/multi_head_attention_2/value/bias/v
_:]222KAdam/transformer_encoder_2/multi_head_attention_2/attention_output/kernel/v
U:S22IAdam/transformer_encoder_2/multi_head_attention_2/attention_output/bias/v
%:#2 2Adam/dense_8/kernel/v
: 2Adam/dense_8/bias/v
%:# 22Adam/dense_9/kernel/v
:22Adam/dense_9/bias/v
D:B228Adam/transformer_encoder_2/layer_normalization_4/gamma/v
C:A227Adam/transformer_encoder_2/layer_normalization_4/beta/v
D:B228Adam/transformer_encoder_2/layer_normalization_5/gamma/v
C:A227Adam/transformer_encoder_2/layer_normalization_5/beta/v
0:.	2¸2Adam/rnn_2/lstm_cell_2/kernel/v
::8	.¸2)Adam/rnn_2/lstm_cell_2/recurrent_kernel/v
*:(¸2Adam/rnn_2/lstm_cell_2/bias/v«
$__inference__wrapped_model_100081554=<>?@ABCDEJKFGHILMNOP23:;0¢-
&¢#
!
input_3ÿÿÿÿÿÿÿÿÿ2
ª "3ª0
.
dense_11"
dense_11ÿÿÿÿÿÿÿÿÿ§
G__inference_dense_10_layer_call_and_return_conditional_losses_100085088\23/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ.
 
,__inference_dense_10_layer_call_fn_100085077O23/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "ÿÿÿÿÿÿÿÿÿ.§
G__inference_dense_11_layer_call_and_return_conditional_losses_100085107\:;/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_dense_11_layer_call_fn_100085097O:;/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "ÿÿÿÿÿÿÿÿÿ®
F__inference_dense_8_layer_call_and_return_conditional_losses_100085385dFG3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ22
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ2 
 
+__inference_dense_8_layer_call_fn_100085354WFG3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ22
ª "ÿÿÿÿÿÿÿÿÿ2 ®
F__inference_dense_9_layer_call_and_return_conditional_losses_100085424dHI3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ2 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ22
 
+__inference_dense_9_layer_call_fn_100085394WHI3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ2 
ª "ÿÿÿÿÿÿÿÿÿ22Ì
J__inference_lstm_cell_2_layer_call_and_return_conditional_losses_100085313ýNOP¢}
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
J__inference_lstm_cell_2_layer_call_and_return_conditional_losses_100085345ýNOP¢}
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
/__inference_lstm_cell_2_layer_call_fn_100085264íNOP¢}
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
/__inference_lstm_cell_2_layer_call_fn_100085281íNOP¢}
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
F__inference_model_2_layer_call_and_return_conditional_losses_100083229|=<>?@ABCDEJKFGHILMNOP23:;8¢5
.¢+
!
input_3ÿÿÿÿÿÿÿÿÿ2
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Æ
F__inference_model_2_layer_call_and_return_conditional_losses_100083288|=<>?@ABCDEJKFGHILMNOP23:;8¢5
.¢+
!
input_3ÿÿÿÿÿÿÿÿÿ2
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Å
F__inference_model_2_layer_call_and_return_conditional_losses_100083761{=<>?@ABCDEJKFGHILMNOP23:;7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ2
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Å
F__inference_model_2_layer_call_and_return_conditional_losses_100084074{=<>?@ABCDEJKFGHILMNOP23:;7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ2
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_model_2_layer_call_fn_100082535o=<>?@ABCDEJKFGHILMNOP23:;8¢5
.¢+
!
input_3ÿÿÿÿÿÿÿÿÿ2
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_model_2_layer_call_fn_100083170o=<>?@ABCDEJKFGHILMNOP23:;8¢5
.¢+
!
input_3ÿÿÿÿÿÿÿÿÿ2
p

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_model_2_layer_call_fn_100083406n=<>?@ABCDEJKFGHILMNOP23:;7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ2
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_model_2_layer_call_fn_100083461n=<>?@ABCDEJKFGHILMNOP23:;7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ2
p

 
ª "ÿÿÿÿÿÿÿÿÿÊ
D__inference_rnn_2_layer_call_and_return_conditional_losses_100084636NOPS¢P
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
D__inference_rnn_2_layer_call_and_return_conditional_losses_100084780NOPS¢P
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
D__inference_rnn_2_layer_call_and_return_conditional_losses_100084924qNOPC¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ22
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
D__inference_rnn_2_layer_call_and_return_conditional_losses_100085068qNOPC¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ22
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
)__inference_rnn_2_layer_call_fn_100084459tNOPS¢P
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
)__inference_rnn_2_layer_call_fn_100084470tNOPS¢P
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
)__inference_rnn_2_layer_call_fn_100084481dNOPC¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ22

 
p 

 

 
ª "ÿÿÿÿÿÿÿÿÿ.
)__inference_rnn_2_layer_call_fn_100084492dNOPC¢@
9¢6
$!
inputsÿÿÿÿÿÿÿÿÿ22

 
p

 

 
ª "ÿÿÿÿÿÿÿÿÿ.Ä
K__inference_sequential_2_layer_call_and_return_conditional_losses_100081733uFGHIB¢?
8¢5
+(
dense_8_inputÿÿÿÿÿÿÿÿÿ22
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ22
 Ä
K__inference_sequential_2_layer_call_and_return_conditional_losses_100081747uFGHIB¢?
8¢5
+(
dense_8_inputÿÿÿÿÿÿÿÿÿ22
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ22
 ½
K__inference_sequential_2_layer_call_and_return_conditional_losses_100085190nFGHI;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ22
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ22
 ½
K__inference_sequential_2_layer_call_and_return_conditional_losses_100085247nFGHI;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ22
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ22
 
0__inference_sequential_2_layer_call_fn_100081646hFGHIB¢?
8¢5
+(
dense_8_inputÿÿÿÿÿÿÿÿÿ22
p 

 
ª "ÿÿÿÿÿÿÿÿÿ22
0__inference_sequential_2_layer_call_fn_100081719hFGHIB¢?
8¢5
+(
dense_8_inputÿÿÿÿÿÿÿÿÿ22
p

 
ª "ÿÿÿÿÿÿÿÿÿ22
0__inference_sequential_2_layer_call_fn_100085120aFGHI;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ22
p 

 
ª "ÿÿÿÿÿÿÿÿÿ22
0__inference_sequential_2_layer_call_fn_100085133aFGHI;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ22
p

 
ª "ÿÿÿÿÿÿÿÿÿ22¹
'__inference_signature_wrapper_100083351=<>?@ABCDEJKFGHILMNOP23:;;¢8
¢ 
1ª.
,
input_3!
input_3ÿÿÿÿÿÿÿÿÿ2"3ª0
.
dense_11"
dense_11ÿÿÿÿÿÿÿÿÿ¼
]__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_100084107[=<*¢'
 ¢

xÿÿÿÿÿÿÿÿÿ2
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ22
 
B__inference_token_and_position_embedding_2_layer_call_fn_100084083N=<*¢'
 ¢

xÿÿÿÿÿÿÿÿÿ2
ª "ÿÿÿÿÿÿÿÿÿ22Î
T__inference_transformer_encoder_2_layer_call_and_return_conditional_losses_100084308v>?@ABCDEJKFGHILM7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ22
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ22
 Î
T__inference_transformer_encoder_2_layer_call_and_return_conditional_losses_100084448v>?@ABCDEJKFGHILM7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ22
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ22
 ¦
9__inference_transformer_encoder_2_layer_call_fn_100084144i>?@ABCDEJKFGHILM7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ22
p 
ª "ÿÿÿÿÿÿÿÿÿ22¦
9__inference_transformer_encoder_2_layer_call_fn_100084181i>?@ABCDEJKFGHILM7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ22
p
ª "ÿÿÿÿÿÿÿÿÿ22