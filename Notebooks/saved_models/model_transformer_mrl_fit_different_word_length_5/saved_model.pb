хЧ,
†$р#
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
Ѓ
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
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
Н
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
dtypetypeИ
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
•
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
list(type)(0И
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

2	Р
Ѕ
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
executor_typestring И®
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
ч
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
∞
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint€€€€€€€€€
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
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
И"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8с§(
У
Adam/rnn_6/lstm_cell_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Є*.
shared_nameAdam/rnn_6/lstm_cell_6/bias/v
М
1Adam/rnn_6/lstm_cell_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/rnn_6/lstm_cell_6/bias/v*
_output_shapes	
:Є*
dtype0
ѓ
)Adam/rnn_6/lstm_cell_6/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.Є*:
shared_name+)Adam/rnn_6/lstm_cell_6/recurrent_kernel/v
®
=Adam/rnn_6/lstm_cell_6/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp)Adam/rnn_6/lstm_cell_6/recurrent_kernel/v*
_output_shapes
:	.Є*
dtype0
Ы
Adam/rnn_6/lstm_cell_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Є*0
shared_name!Adam/rnn_6/lstm_cell_6/kernel/v
Ф
3Adam/rnn_6/lstm_cell_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/rnn_6/lstm_cell_6/kernel/v*
_output_shapes
:	2Є*
dtype0
»
8Adam/transformer_encoder_6/layer_normalization_13/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*I
shared_name:8Adam/transformer_encoder_6/layer_normalization_13/beta/v
Ѕ
LAdam/transformer_encoder_6/layer_normalization_13/beta/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder_6/layer_normalization_13/beta/v*
_output_shapes
:2*
dtype0
 
9Adam/transformer_encoder_6/layer_normalization_13/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*J
shared_name;9Adam/transformer_encoder_6/layer_normalization_13/gamma/v
√
MAdam/transformer_encoder_6/layer_normalization_13/gamma/v/Read/ReadVariableOpReadVariableOp9Adam/transformer_encoder_6/layer_normalization_13/gamma/v*
_output_shapes
:2*
dtype0
»
8Adam/transformer_encoder_6/layer_normalization_12/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*I
shared_name:8Adam/transformer_encoder_6/layer_normalization_12/beta/v
Ѕ
LAdam/transformer_encoder_6/layer_normalization_12/beta/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder_6/layer_normalization_12/beta/v*
_output_shapes
:2*
dtype0
 
9Adam/transformer_encoder_6/layer_normalization_12/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*J
shared_name;9Adam/transformer_encoder_6/layer_normalization_12/gamma/v
√
MAdam/transformer_encoder_6/layer_normalization_12/gamma/v/Read/ReadVariableOpReadVariableOp9Adam/transformer_encoder_6/layer_normalization_12/gamma/v*
_output_shapes
:2*
dtype0
А
Adam/dense_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_25/bias/v
y
(Adam/dense_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/v*
_output_shapes
:2*
dtype0
И
Adam/dense_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 2*'
shared_nameAdam/dense_25/kernel/v
Б
*Adam/dense_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/v*
_output_shapes

: 2*
dtype0
А
Adam/dense_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_24/bias/v
y
(Adam/dense_24/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_24/bias/v*
_output_shapes
: *
dtype0
И
Adam/dense_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2 *'
shared_nameAdam/dense_24/kernel/v
Б
*Adam/dense_24/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_24/kernel/v*
_output_shapes

:2 *
dtype0
к
IAdam/transformer_encoder_6/multi_head_attention_6/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*Z
shared_nameKIAdam/transformer_encoder_6/multi_head_attention_6/attention_output/bias/v
г
]Adam/transformer_encoder_6/multi_head_attention_6/attention_output/bias/v/Read/ReadVariableOpReadVariableOpIAdam/transformer_encoder_6/multi_head_attention_6/attention_output/bias/v*
_output_shapes
:2*
dtype0
ц
KAdam/transformer_encoder_6/multi_head_attention_6/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*\
shared_nameMKAdam/transformer_encoder_6/multi_head_attention_6/attention_output/kernel/v
п
_Adam/transformer_encoder_6/multi_head_attention_6/attention_output/kernel/v/Read/ReadVariableOpReadVariableOpKAdam/transformer_encoder_6/multi_head_attention_6/attention_output/kernel/v*"
_output_shapes
:22*
dtype0
Ў
>Adam/transformer_encoder_6/multi_head_attention_6/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_6/multi_head_attention_6/value/bias/v
—
RAdam/transformer_encoder_6/multi_head_attention_6/value/bias/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_6/multi_head_attention_6/value/bias/v*
_output_shapes

:2*
dtype0
а
@Adam/transformer_encoder_6/multi_head_attention_6/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_6/multi_head_attention_6/value/kernel/v
ў
TAdam/transformer_encoder_6/multi_head_attention_6/value/kernel/v/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_6/multi_head_attention_6/value/kernel/v*"
_output_shapes
:22*
dtype0
‘
<Adam/transformer_encoder_6/multi_head_attention_6/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*M
shared_name><Adam/transformer_encoder_6/multi_head_attention_6/key/bias/v
Ќ
PAdam/transformer_encoder_6/multi_head_attention_6/key/bias/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_encoder_6/multi_head_attention_6/key/bias/v*
_output_shapes

:2*
dtype0
№
>Adam/transformer_encoder_6/multi_head_attention_6/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*O
shared_name@>Adam/transformer_encoder_6/multi_head_attention_6/key/kernel/v
’
RAdam/transformer_encoder_6/multi_head_attention_6/key/kernel/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_6/multi_head_attention_6/key/kernel/v*"
_output_shapes
:22*
dtype0
Ў
>Adam/transformer_encoder_6/multi_head_attention_6/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_6/multi_head_attention_6/query/bias/v
—
RAdam/transformer_encoder_6/multi_head_attention_6/query/bias/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_6/multi_head_attention_6/query/bias/v*
_output_shapes

:2*
dtype0
а
@Adam/transformer_encoder_6/multi_head_attention_6/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_6/multi_head_attention_6/query/kernel/v
ў
TAdam/transformer_encoder_6/multi_head_attention_6/query/kernel/v/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_6/multi_head_attention_6/query/kernel/v*"
_output_shapes
:22*
dtype0
÷
=Adam/token_and_position_embedding_6/embedding_13/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.2*N
shared_name?=Adam/token_and_position_embedding_6/embedding_13/embeddings/v
ѕ
QAdam/token_and_position_embedding_6/embedding_13/embeddings/v/Read/ReadVariableOpReadVariableOp=Adam/token_and_position_embedding_6/embedding_13/embeddings/v*
_output_shapes

:.2*
dtype0
„
=Adam/token_and_position_embedding_6/embedding_12/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Б2*N
shared_name?=Adam/token_and_position_embedding_6/embedding_12/embeddings/v
–
QAdam/token_and_position_embedding_6/embedding_12/embeddings/v/Read/ReadVariableOpReadVariableOp=Adam/token_and_position_embedding_6/embedding_12/embeddings/v*
_output_shapes
:	Б2*
dtype0
А
Adam/dense_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_27/bias/v
y
(Adam/dense_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/v*
_output_shapes
:*
dtype0
И
Adam/dense_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.*'
shared_nameAdam/dense_27/kernel/v
Б
*Adam/dense_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/v*
_output_shapes

:.*
dtype0
А
Adam/dense_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*%
shared_nameAdam/dense_26/bias/v
y
(Adam/dense_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/v*
_output_shapes
:.*
dtype0
И
Adam/dense_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:..*'
shared_nameAdam/dense_26/kernel/v
Б
*Adam/dense_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/v*
_output_shapes

:..*
dtype0
У
Adam/rnn_6/lstm_cell_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Є*.
shared_nameAdam/rnn_6/lstm_cell_6/bias/m
М
1Adam/rnn_6/lstm_cell_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/rnn_6/lstm_cell_6/bias/m*
_output_shapes	
:Є*
dtype0
ѓ
)Adam/rnn_6/lstm_cell_6/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.Є*:
shared_name+)Adam/rnn_6/lstm_cell_6/recurrent_kernel/m
®
=Adam/rnn_6/lstm_cell_6/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp)Adam/rnn_6/lstm_cell_6/recurrent_kernel/m*
_output_shapes
:	.Є*
dtype0
Ы
Adam/rnn_6/lstm_cell_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Є*0
shared_name!Adam/rnn_6/lstm_cell_6/kernel/m
Ф
3Adam/rnn_6/lstm_cell_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/rnn_6/lstm_cell_6/kernel/m*
_output_shapes
:	2Є*
dtype0
»
8Adam/transformer_encoder_6/layer_normalization_13/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*I
shared_name:8Adam/transformer_encoder_6/layer_normalization_13/beta/m
Ѕ
LAdam/transformer_encoder_6/layer_normalization_13/beta/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder_6/layer_normalization_13/beta/m*
_output_shapes
:2*
dtype0
 
9Adam/transformer_encoder_6/layer_normalization_13/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*J
shared_name;9Adam/transformer_encoder_6/layer_normalization_13/gamma/m
√
MAdam/transformer_encoder_6/layer_normalization_13/gamma/m/Read/ReadVariableOpReadVariableOp9Adam/transformer_encoder_6/layer_normalization_13/gamma/m*
_output_shapes
:2*
dtype0
»
8Adam/transformer_encoder_6/layer_normalization_12/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*I
shared_name:8Adam/transformer_encoder_6/layer_normalization_12/beta/m
Ѕ
LAdam/transformer_encoder_6/layer_normalization_12/beta/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder_6/layer_normalization_12/beta/m*
_output_shapes
:2*
dtype0
 
9Adam/transformer_encoder_6/layer_normalization_12/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*J
shared_name;9Adam/transformer_encoder_6/layer_normalization_12/gamma/m
√
MAdam/transformer_encoder_6/layer_normalization_12/gamma/m/Read/ReadVariableOpReadVariableOp9Adam/transformer_encoder_6/layer_normalization_12/gamma/m*
_output_shapes
:2*
dtype0
А
Adam/dense_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_25/bias/m
y
(Adam/dense_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/m*
_output_shapes
:2*
dtype0
И
Adam/dense_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 2*'
shared_nameAdam/dense_25/kernel/m
Б
*Adam/dense_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/m*
_output_shapes

: 2*
dtype0
А
Adam/dense_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_24/bias/m
y
(Adam/dense_24/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_24/bias/m*
_output_shapes
: *
dtype0
И
Adam/dense_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2 *'
shared_nameAdam/dense_24/kernel/m
Б
*Adam/dense_24/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_24/kernel/m*
_output_shapes

:2 *
dtype0
к
IAdam/transformer_encoder_6/multi_head_attention_6/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*Z
shared_nameKIAdam/transformer_encoder_6/multi_head_attention_6/attention_output/bias/m
г
]Adam/transformer_encoder_6/multi_head_attention_6/attention_output/bias/m/Read/ReadVariableOpReadVariableOpIAdam/transformer_encoder_6/multi_head_attention_6/attention_output/bias/m*
_output_shapes
:2*
dtype0
ц
KAdam/transformer_encoder_6/multi_head_attention_6/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*\
shared_nameMKAdam/transformer_encoder_6/multi_head_attention_6/attention_output/kernel/m
п
_Adam/transformer_encoder_6/multi_head_attention_6/attention_output/kernel/m/Read/ReadVariableOpReadVariableOpKAdam/transformer_encoder_6/multi_head_attention_6/attention_output/kernel/m*"
_output_shapes
:22*
dtype0
Ў
>Adam/transformer_encoder_6/multi_head_attention_6/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_6/multi_head_attention_6/value/bias/m
—
RAdam/transformer_encoder_6/multi_head_attention_6/value/bias/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_6/multi_head_attention_6/value/bias/m*
_output_shapes

:2*
dtype0
а
@Adam/transformer_encoder_6/multi_head_attention_6/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_6/multi_head_attention_6/value/kernel/m
ў
TAdam/transformer_encoder_6/multi_head_attention_6/value/kernel/m/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_6/multi_head_attention_6/value/kernel/m*"
_output_shapes
:22*
dtype0
‘
<Adam/transformer_encoder_6/multi_head_attention_6/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*M
shared_name><Adam/transformer_encoder_6/multi_head_attention_6/key/bias/m
Ќ
PAdam/transformer_encoder_6/multi_head_attention_6/key/bias/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_encoder_6/multi_head_attention_6/key/bias/m*
_output_shapes

:2*
dtype0
№
>Adam/transformer_encoder_6/multi_head_attention_6/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*O
shared_name@>Adam/transformer_encoder_6/multi_head_attention_6/key/kernel/m
’
RAdam/transformer_encoder_6/multi_head_attention_6/key/kernel/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_6/multi_head_attention_6/key/kernel/m*"
_output_shapes
:22*
dtype0
Ў
>Adam/transformer_encoder_6/multi_head_attention_6/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_6/multi_head_attention_6/query/bias/m
—
RAdam/transformer_encoder_6/multi_head_attention_6/query/bias/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_6/multi_head_attention_6/query/bias/m*
_output_shapes

:2*
dtype0
а
@Adam/transformer_encoder_6/multi_head_attention_6/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_6/multi_head_attention_6/query/kernel/m
ў
TAdam/transformer_encoder_6/multi_head_attention_6/query/kernel/m/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_6/multi_head_attention_6/query/kernel/m*"
_output_shapes
:22*
dtype0
÷
=Adam/token_and_position_embedding_6/embedding_13/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.2*N
shared_name?=Adam/token_and_position_embedding_6/embedding_13/embeddings/m
ѕ
QAdam/token_and_position_embedding_6/embedding_13/embeddings/m/Read/ReadVariableOpReadVariableOp=Adam/token_and_position_embedding_6/embedding_13/embeddings/m*
_output_shapes

:.2*
dtype0
„
=Adam/token_and_position_embedding_6/embedding_12/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Б2*N
shared_name?=Adam/token_and_position_embedding_6/embedding_12/embeddings/m
–
QAdam/token_and_position_embedding_6/embedding_12/embeddings/m/Read/ReadVariableOpReadVariableOp=Adam/token_and_position_embedding_6/embedding_12/embeddings/m*
_output_shapes
:	Б2*
dtype0
А
Adam/dense_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_27/bias/m
y
(Adam/dense_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/m*
_output_shapes
:*
dtype0
И
Adam/dense_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.*'
shared_nameAdam/dense_27/kernel/m
Б
*Adam/dense_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/m*
_output_shapes

:.*
dtype0
А
Adam/dense_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*%
shared_nameAdam/dense_26/bias/m
y
(Adam/dense_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/m*
_output_shapes
:.*
dtype0
И
Adam/dense_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:..*'
shared_nameAdam/dense_26/kernel/m
Б
*Adam/dense_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/m*
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
Е
rnn_6/lstm_cell_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Є*'
shared_namernn_6/lstm_cell_6/bias
~
*rnn_6/lstm_cell_6/bias/Read/ReadVariableOpReadVariableOprnn_6/lstm_cell_6/bias*
_output_shapes	
:Є*
dtype0
°
"rnn_6/lstm_cell_6/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.Є*3
shared_name$"rnn_6/lstm_cell_6/recurrent_kernel
Ъ
6rnn_6/lstm_cell_6/recurrent_kernel/Read/ReadVariableOpReadVariableOp"rnn_6/lstm_cell_6/recurrent_kernel*
_output_shapes
:	.Є*
dtype0
Н
rnn_6/lstm_cell_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Є*)
shared_namernn_6/lstm_cell_6/kernel
Ж
,rnn_6/lstm_cell_6/kernel/Read/ReadVariableOpReadVariableOprnn_6/lstm_cell_6/kernel*
_output_shapes
:	2Є*
dtype0
Ї
1transformer_encoder_6/layer_normalization_13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*B
shared_name31transformer_encoder_6/layer_normalization_13/beta
≥
Etransformer_encoder_6/layer_normalization_13/beta/Read/ReadVariableOpReadVariableOp1transformer_encoder_6/layer_normalization_13/beta*
_output_shapes
:2*
dtype0
Љ
2transformer_encoder_6/layer_normalization_13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*C
shared_name42transformer_encoder_6/layer_normalization_13/gamma
µ
Ftransformer_encoder_6/layer_normalization_13/gamma/Read/ReadVariableOpReadVariableOp2transformer_encoder_6/layer_normalization_13/gamma*
_output_shapes
:2*
dtype0
Ї
1transformer_encoder_6/layer_normalization_12/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*B
shared_name31transformer_encoder_6/layer_normalization_12/beta
≥
Etransformer_encoder_6/layer_normalization_12/beta/Read/ReadVariableOpReadVariableOp1transformer_encoder_6/layer_normalization_12/beta*
_output_shapes
:2*
dtype0
Љ
2transformer_encoder_6/layer_normalization_12/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*C
shared_name42transformer_encoder_6/layer_normalization_12/gamma
µ
Ftransformer_encoder_6/layer_normalization_12/gamma/Read/ReadVariableOpReadVariableOp2transformer_encoder_6/layer_normalization_12/gamma*
_output_shapes
:2*
dtype0
r
dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_25/bias
k
!dense_25/bias/Read/ReadVariableOpReadVariableOpdense_25/bias*
_output_shapes
:2*
dtype0
z
dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 2* 
shared_namedense_25/kernel
s
#dense_25/kernel/Read/ReadVariableOpReadVariableOpdense_25/kernel*
_output_shapes

: 2*
dtype0
r
dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_24/bias
k
!dense_24/bias/Read/ReadVariableOpReadVariableOpdense_24/bias*
_output_shapes
: *
dtype0
z
dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2 * 
shared_namedense_24/kernel
s
#dense_24/kernel/Read/ReadVariableOpReadVariableOpdense_24/kernel*
_output_shapes

:2 *
dtype0
№
Btransformer_encoder_6/multi_head_attention_6/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*S
shared_nameDBtransformer_encoder_6/multi_head_attention_6/attention_output/bias
’
Vtransformer_encoder_6/multi_head_attention_6/attention_output/bias/Read/ReadVariableOpReadVariableOpBtransformer_encoder_6/multi_head_attention_6/attention_output/bias*
_output_shapes
:2*
dtype0
и
Dtransformer_encoder_6/multi_head_attention_6/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*U
shared_nameFDtransformer_encoder_6/multi_head_attention_6/attention_output/kernel
б
Xtransformer_encoder_6/multi_head_attention_6/attention_output/kernel/Read/ReadVariableOpReadVariableOpDtransformer_encoder_6/multi_head_attention_6/attention_output/kernel*"
_output_shapes
:22*
dtype0
 
7transformer_encoder_6/multi_head_attention_6/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*H
shared_name97transformer_encoder_6/multi_head_attention_6/value/bias
√
Ktransformer_encoder_6/multi_head_attention_6/value/bias/Read/ReadVariableOpReadVariableOp7transformer_encoder_6/multi_head_attention_6/value/bias*
_output_shapes

:2*
dtype0
“
9transformer_encoder_6/multi_head_attention_6/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*J
shared_name;9transformer_encoder_6/multi_head_attention_6/value/kernel
Ћ
Mtransformer_encoder_6/multi_head_attention_6/value/kernel/Read/ReadVariableOpReadVariableOp9transformer_encoder_6/multi_head_attention_6/value/kernel*"
_output_shapes
:22*
dtype0
∆
5transformer_encoder_6/multi_head_attention_6/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*F
shared_name75transformer_encoder_6/multi_head_attention_6/key/bias
њ
Itransformer_encoder_6/multi_head_attention_6/key/bias/Read/ReadVariableOpReadVariableOp5transformer_encoder_6/multi_head_attention_6/key/bias*
_output_shapes

:2*
dtype0
ќ
7transformer_encoder_6/multi_head_attention_6/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*H
shared_name97transformer_encoder_6/multi_head_attention_6/key/kernel
«
Ktransformer_encoder_6/multi_head_attention_6/key/kernel/Read/ReadVariableOpReadVariableOp7transformer_encoder_6/multi_head_attention_6/key/kernel*"
_output_shapes
:22*
dtype0
 
7transformer_encoder_6/multi_head_attention_6/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*H
shared_name97transformer_encoder_6/multi_head_attention_6/query/bias
√
Ktransformer_encoder_6/multi_head_attention_6/query/bias/Read/ReadVariableOpReadVariableOp7transformer_encoder_6/multi_head_attention_6/query/bias*
_output_shapes

:2*
dtype0
“
9transformer_encoder_6/multi_head_attention_6/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*J
shared_name;9transformer_encoder_6/multi_head_attention_6/query/kernel
Ћ
Mtransformer_encoder_6/multi_head_attention_6/query/kernel/Read/ReadVariableOpReadVariableOp9transformer_encoder_6/multi_head_attention_6/query/kernel*"
_output_shapes
:22*
dtype0
»
6token_and_position_embedding_6/embedding_13/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.2*G
shared_name86token_and_position_embedding_6/embedding_13/embeddings
Ѕ
Jtoken_and_position_embedding_6/embedding_13/embeddings/Read/ReadVariableOpReadVariableOp6token_and_position_embedding_6/embedding_13/embeddings*
_output_shapes

:.2*
dtype0
…
6token_and_position_embedding_6/embedding_12/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Б2*G
shared_name86token_and_position_embedding_6/embedding_12/embeddings
¬
Jtoken_and_position_embedding_6/embedding_12/embeddings/Read/ReadVariableOpReadVariableOp6token_and_position_embedding_6/embedding_12/embeddings*
_output_shapes
:	Б2*
dtype0
r
dense_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_27/bias
k
!dense_27/bias/Read/ReadVariableOpReadVariableOpdense_27/bias*
_output_shapes
:*
dtype0
z
dense_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.* 
shared_namedense_27/kernel
s
#dense_27/kernel/Read/ReadVariableOpReadVariableOpdense_27/kernel*
_output_shapes

:.*
dtype0
r
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*
shared_namedense_26/bias
k
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes
:.*
dtype0
z
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:..* 
shared_namedense_26/kernel
s
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel*
_output_shapes

:..*
dtype0
z
serving_default_input_7Placeholder*'
_output_shapes
:€€€€€€€€€.*
dtype0*
shape:€€€€€€€€€.
Ё

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_76token_and_position_embedding_6/embedding_13/embeddings6token_and_position_embedding_6/embedding_12/embeddings9transformer_encoder_6/multi_head_attention_6/query/kernel7transformer_encoder_6/multi_head_attention_6/query/bias7transformer_encoder_6/multi_head_attention_6/key/kernel5transformer_encoder_6/multi_head_attention_6/key/bias9transformer_encoder_6/multi_head_attention_6/value/kernel7transformer_encoder_6/multi_head_attention_6/value/biasDtransformer_encoder_6/multi_head_attention_6/attention_output/kernelBtransformer_encoder_6/multi_head_attention_6/attention_output/bias2transformer_encoder_6/layer_normalization_12/gamma1transformer_encoder_6/layer_normalization_12/betadense_24/kerneldense_24/biasdense_25/kerneldense_25/bias2transformer_encoder_6/layer_normalization_13/gamma1transformer_encoder_6/layer_normalization_13/betarnn_6/lstm_cell_6/kernel"rnn_6/lstm_cell_6/recurrent_kernelrnn_6/lstm_cell_6/biasdense_26/kerneldense_26/biasdense_27/kerneldense_27/bias*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*;
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *0
f+R)
'__inference_signature_wrapper_202287687

NoOpNoOp
еЋ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ЯЋ
valueФЋBРЋ BИЋ
Ь
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
ђ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	token_emb
pos_emb*
ё
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
™
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses
*cell
+
state_spec*
¶
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias*
¶
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias*
¬
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
¬
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
∞
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
Є
^iter

_beta_1

`beta_2
	adecay
blearning_rate2mэ3mю:m€;mА<mБ=mВ>mГ?mД@mЕAmЖBmЗCmИDmЙEmКFmЛGmМHmНImОJmПKmРLmСMmТNmУOmФPmХ2vЦ3vЧ:vШ;vЩ<vЪ=vЫ>vЬ?vЭ@vЮAvЯBv†Cv°DvҐEv£Fv§Gv•Hv¶IvІJv®Kv©Lv™MvЂNvђOv≠PvЃ*

cserving_default* 

<0
=1*

<0
=1*
* 
У
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
†
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
<
embeddings*
†
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
У
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
Е
А	variables
Бtrainable_variables
Вregularization_losses
Г	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses
Ж_query_dense
З
_key_dense
И_value_dense
Й_softmax
К_dropout_layer
Л_output_dense*
и
Мlayer_with_weights-0
Мlayer-0
Нlayer_with_weights-1
Нlayer-1
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
Т__call__
+У&call_and_return_all_conditional_losses*
ґ
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses
	Ъaxis
	Jgamma
Kbeta*
ґ
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+†&call_and_return_all_conditional_losses
	°axis
	Lgamma
Mbeta*
ђ
Ґ	variables
£trainable_variables
§regularization_losses
•	keras_api
¶__call__
+І&call_and_return_all_conditional_losses
®_random_generator* 
ђ
©	variables
™trainable_variables
Ђregularization_losses
ђ	keras_api
≠__call__
+Ѓ&call_and_return_all_conditional_losses
ѓ_random_generator* 

N0
O1
P2*

N0
O1
P2*
* 
•
∞states
±non_trainable_variables
≤layers
≥metrics
 іlayer_regularization_losses
µlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*
:
ґtrace_0
Јtrace_1
Єtrace_2
єtrace_3* 
:
Їtrace_0
їtrace_1
Љtrace_2
љtrace_3* 
л
Њ	variables
њtrainable_variables
јregularization_losses
Ѕ	keras_api
¬__call__
+√&call_and_return_all_conditional_losses
ƒ_random_generator
≈
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
Ш
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

Ћtrace_0* 

ћtrace_0* 
_Y
VARIABLE_VALUEdense_26/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_26/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

:0
;1*

:0
;1*
* 
Ш
Ќnon_trainable_variables
ќlayers
ѕmetrics
 –layer_regularization_losses
—layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

“trace_0* 

”trace_0* 
_Y
VARIABLE_VALUEdense_27/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_27/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE6token_and_position_embedding_6/embedding_12/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE6token_and_position_embedding_6/embedding_13/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE9transformer_encoder_6/multi_head_attention_6/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7transformer_encoder_6/multi_head_attention_6/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7transformer_encoder_6/multi_head_attention_6/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5transformer_encoder_6/multi_head_attention_6/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE9transformer_encoder_6/multi_head_attention_6/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7transformer_encoder_6/multi_head_attention_6/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUEDtransformer_encoder_6/multi_head_attention_6/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEBtransformer_encoder_6/multi_head_attention_6/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_24/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_24/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_25/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_25/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE2transformer_encoder_6/layer_normalization_12/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1transformer_encoder_6/layer_normalization_12/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE2transformer_encoder_6/layer_normalization_13/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1transformer_encoder_6/layer_normalization_13/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUErnn_6/lstm_cell_6/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"rnn_6/lstm_cell_6/recurrent_kernel'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUErnn_6/lstm_cell_6/bias'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

‘0
’1*
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
Ш
÷non_trainable_variables
„layers
Ўmetrics
 ўlayer_regularization_losses
Џlayer_metrics
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
Ш
џnon_trainable_variables
№layers
Ёmetrics
 ёlayer_regularization_losses
яlayer_metrics
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
Ю
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses*
* 
* 
я
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses
лpartial_output_shape
мfull_output_shape

>kernel
?bias*
я
н	variables
оtrainable_variables
пregularization_losses
р	keras_api
с__call__
+т&call_and_return_all_conditional_losses
уpartial_output_shape
фfull_output_shape

@kernel
Abias*
я
х	variables
цtrainable_variables
чregularization_losses
ш	keras_api
щ__call__
+ъ&call_and_return_all_conditional_losses
ыpartial_output_shape
ьfull_output_shape

Bkernel
Cbias*
Ф
э	variables
юtrainable_variables
€regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses* 
ђ
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses
Й_random_generator* 
я
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses
Рpartial_output_shape
Сfull_output_shape

Dkernel
Ebias*
ђ
Т	variables
Уtrainable_variables
Фregularization_losses
Х	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses

Fkernel
Gbias*
ђ
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ы	keras_api
Ь__call__
+Э&call_and_return_all_conditional_losses

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
Ю
Юnon_trainable_variables
Яlayers
†metrics
 °layer_regularization_losses
Ґlayer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses*
:
£trace_0
§trace_1
•trace_2
¶trace_3* 
:
Іtrace_0
®trace_1
©trace_2
™trace_3* 

J0
K1*

J0
K1*
* 
Ю
Ђnon_trainable_variables
ђlayers
≠metrics
 Ѓlayer_regularization_losses
ѓlayer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses*
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
Ю
∞non_trainable_variables
±layers
≤metrics
 ≥layer_regularization_losses
іlayer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+†&call_and_return_all_conditional_losses
'†"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
Ь
µnon_trainable_variables
ґlayers
Јmetrics
 Єlayer_regularization_losses
єlayer_metrics
Ґ	variables
£trainable_variables
§regularization_losses
¶__call__
+І&call_and_return_all_conditional_losses
'І"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
Ь
Їnon_trainable_variables
їlayers
Љmetrics
 љlayer_regularization_losses
Њlayer_metrics
©	variables
™trainable_variables
Ђregularization_losses
≠__call__
+Ѓ&call_and_return_all_conditional_losses
'Ѓ"call_and_return_conditional_losses* 
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
Ю
њnon_trainable_variables
јlayers
Ѕmetrics
 ¬layer_regularization_losses
√layer_metrics
Њ	variables
њtrainable_variables
јregularization_losses
¬__call__
+√&call_and_return_all_conditional_losses
'√"call_and_return_conditional_losses*

ƒtrace_0
≈trace_1* 

∆trace_0
«trace_1* 
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
»	variables
…	keras_api

 total

Ћcount*
M
ћ	variables
Ќ	keras_api

ќtotal

ѕcount
–
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
Ж0
З1
И2
Й3
К4
Л5*
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
Ю
—non_trainable_variables
“layers
”metrics
 ‘layer_regularization_losses
’layer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses*
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
Ю
÷non_trainable_variables
„layers
Ўmetrics
 ўlayer_regularization_losses
Џlayer_metrics
н	variables
оtrainable_variables
пregularization_losses
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses*
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
Ю
џnon_trainable_variables
№layers
Ёmetrics
 ёlayer_regularization_losses
яlayer_metrics
х	variables
цtrainable_variables
чregularization_losses
щ__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
Ь
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
э	variables
юtrainable_variables
€regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ь
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses* 
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
Ю
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses*
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
Ю
пnon_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
Т	variables
Уtrainable_variables
Фregularization_losses
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses*

фtrace_0* 

хtrace_0* 

H0
I1*

H0
I1*
* 
Ю
цnon_trainable_variables
чlayers
шmetrics
 щlayer_regularization_losses
ъlayer_metrics
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ь__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses*

ыtrace_0* 

ьtrace_0* 
* 

М0
Н1*
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
 0
Ћ1*

»	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

ќ0
ѕ1*

ћ	variables*
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
В|
VARIABLE_VALUEAdam/dense_26/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_26/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_27/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_27/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЪУ
VARIABLE_VALUE=Adam/token_and_position_embedding_6/embedding_12/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЪУ
VARIABLE_VALUE=Adam/token_and_position_embedding_6/embedding_13/embeddings/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЭЦ
VARIABLE_VALUE@Adam/transformer_encoder_6/multi_head_attention_6/query/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЫФ
VARIABLE_VALUE>Adam/transformer_encoder_6/multi_head_attention_6/query/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЫФ
VARIABLE_VALUE>Adam/transformer_encoder_6/multi_head_attention_6/key/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЩТ
VARIABLE_VALUE<Adam/transformer_encoder_6/multi_head_attention_6/key/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЭЦ
VARIABLE_VALUE@Adam/transformer_encoder_6/multi_head_attention_6/value/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЫФ
VARIABLE_VALUE>Adam/transformer_encoder_6/multi_head_attention_6/value/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
®°
VARIABLE_VALUEKAdam/transformer_encoder_6/multi_head_attention_6/attention_output/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¶Я
VARIABLE_VALUEIAdam/transformer_encoder_6/multi_head_attention_6/attention_output/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_24/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_24/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_25/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_25/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЧР
VARIABLE_VALUE9Adam/transformer_encoder_6/layer_normalization_12/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЦП
VARIABLE_VALUE8Adam/transformer_encoder_6/layer_normalization_12/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЧР
VARIABLE_VALUE9Adam/transformer_encoder_6/layer_normalization_13/gamma/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЦП
VARIABLE_VALUE8Adam/transformer_encoder_6/layer_normalization_13/beta/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/rnn_6/lstm_cell_6/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUE)Adam/rnn_6/lstm_cell_6/recurrent_kernel/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/rnn_6/lstm_cell_6/bias/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_26/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_26/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_27/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_27/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЪУ
VARIABLE_VALUE=Adam/token_and_position_embedding_6/embedding_12/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЪУ
VARIABLE_VALUE=Adam/token_and_position_embedding_6/embedding_13/embeddings/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЭЦ
VARIABLE_VALUE@Adam/transformer_encoder_6/multi_head_attention_6/query/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЫФ
VARIABLE_VALUE>Adam/transformer_encoder_6/multi_head_attention_6/query/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЫФ
VARIABLE_VALUE>Adam/transformer_encoder_6/multi_head_attention_6/key/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЩТ
VARIABLE_VALUE<Adam/transformer_encoder_6/multi_head_attention_6/key/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЭЦ
VARIABLE_VALUE@Adam/transformer_encoder_6/multi_head_attention_6/value/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЫФ
VARIABLE_VALUE>Adam/transformer_encoder_6/multi_head_attention_6/value/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
®°
VARIABLE_VALUEKAdam/transformer_encoder_6/multi_head_attention_6/attention_output/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¶Я
VARIABLE_VALUEIAdam/transformer_encoder_6/multi_head_attention_6/attention_output/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_24/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_24/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_25/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_25/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЧР
VARIABLE_VALUE9Adam/transformer_encoder_6/layer_normalization_12/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЦП
VARIABLE_VALUE8Adam/transformer_encoder_6/layer_normalization_12/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЧР
VARIABLE_VALUE9Adam/transformer_encoder_6/layer_normalization_13/gamma/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЦП
VARIABLE_VALUE8Adam/transformer_encoder_6/layer_normalization_13/beta/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/rnn_6/lstm_cell_6/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUE)Adam/rnn_6/lstm_cell_6/recurrent_kernel/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/rnn_6/lstm_cell_6/bias/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
І+
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOp#dense_27/kernel/Read/ReadVariableOp!dense_27/bias/Read/ReadVariableOpJtoken_and_position_embedding_6/embedding_12/embeddings/Read/ReadVariableOpJtoken_and_position_embedding_6/embedding_13/embeddings/Read/ReadVariableOpMtransformer_encoder_6/multi_head_attention_6/query/kernel/Read/ReadVariableOpKtransformer_encoder_6/multi_head_attention_6/query/bias/Read/ReadVariableOpKtransformer_encoder_6/multi_head_attention_6/key/kernel/Read/ReadVariableOpItransformer_encoder_6/multi_head_attention_6/key/bias/Read/ReadVariableOpMtransformer_encoder_6/multi_head_attention_6/value/kernel/Read/ReadVariableOpKtransformer_encoder_6/multi_head_attention_6/value/bias/Read/ReadVariableOpXtransformer_encoder_6/multi_head_attention_6/attention_output/kernel/Read/ReadVariableOpVtransformer_encoder_6/multi_head_attention_6/attention_output/bias/Read/ReadVariableOp#dense_24/kernel/Read/ReadVariableOp!dense_24/bias/Read/ReadVariableOp#dense_25/kernel/Read/ReadVariableOp!dense_25/bias/Read/ReadVariableOpFtransformer_encoder_6/layer_normalization_12/gamma/Read/ReadVariableOpEtransformer_encoder_6/layer_normalization_12/beta/Read/ReadVariableOpFtransformer_encoder_6/layer_normalization_13/gamma/Read/ReadVariableOpEtransformer_encoder_6/layer_normalization_13/beta/Read/ReadVariableOp,rnn_6/lstm_cell_6/kernel/Read/ReadVariableOp6rnn_6/lstm_cell_6/recurrent_kernel/Read/ReadVariableOp*rnn_6/lstm_cell_6/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_26/kernel/m/Read/ReadVariableOp(Adam/dense_26/bias/m/Read/ReadVariableOp*Adam/dense_27/kernel/m/Read/ReadVariableOp(Adam/dense_27/bias/m/Read/ReadVariableOpQAdam/token_and_position_embedding_6/embedding_12/embeddings/m/Read/ReadVariableOpQAdam/token_and_position_embedding_6/embedding_13/embeddings/m/Read/ReadVariableOpTAdam/transformer_encoder_6/multi_head_attention_6/query/kernel/m/Read/ReadVariableOpRAdam/transformer_encoder_6/multi_head_attention_6/query/bias/m/Read/ReadVariableOpRAdam/transformer_encoder_6/multi_head_attention_6/key/kernel/m/Read/ReadVariableOpPAdam/transformer_encoder_6/multi_head_attention_6/key/bias/m/Read/ReadVariableOpTAdam/transformer_encoder_6/multi_head_attention_6/value/kernel/m/Read/ReadVariableOpRAdam/transformer_encoder_6/multi_head_attention_6/value/bias/m/Read/ReadVariableOp_Adam/transformer_encoder_6/multi_head_attention_6/attention_output/kernel/m/Read/ReadVariableOp]Adam/transformer_encoder_6/multi_head_attention_6/attention_output/bias/m/Read/ReadVariableOp*Adam/dense_24/kernel/m/Read/ReadVariableOp(Adam/dense_24/bias/m/Read/ReadVariableOp*Adam/dense_25/kernel/m/Read/ReadVariableOp(Adam/dense_25/bias/m/Read/ReadVariableOpMAdam/transformer_encoder_6/layer_normalization_12/gamma/m/Read/ReadVariableOpLAdam/transformer_encoder_6/layer_normalization_12/beta/m/Read/ReadVariableOpMAdam/transformer_encoder_6/layer_normalization_13/gamma/m/Read/ReadVariableOpLAdam/transformer_encoder_6/layer_normalization_13/beta/m/Read/ReadVariableOp3Adam/rnn_6/lstm_cell_6/kernel/m/Read/ReadVariableOp=Adam/rnn_6/lstm_cell_6/recurrent_kernel/m/Read/ReadVariableOp1Adam/rnn_6/lstm_cell_6/bias/m/Read/ReadVariableOp*Adam/dense_26/kernel/v/Read/ReadVariableOp(Adam/dense_26/bias/v/Read/ReadVariableOp*Adam/dense_27/kernel/v/Read/ReadVariableOp(Adam/dense_27/bias/v/Read/ReadVariableOpQAdam/token_and_position_embedding_6/embedding_12/embeddings/v/Read/ReadVariableOpQAdam/token_and_position_embedding_6/embedding_13/embeddings/v/Read/ReadVariableOpTAdam/transformer_encoder_6/multi_head_attention_6/query/kernel/v/Read/ReadVariableOpRAdam/transformer_encoder_6/multi_head_attention_6/query/bias/v/Read/ReadVariableOpRAdam/transformer_encoder_6/multi_head_attention_6/key/kernel/v/Read/ReadVariableOpPAdam/transformer_encoder_6/multi_head_attention_6/key/bias/v/Read/ReadVariableOpTAdam/transformer_encoder_6/multi_head_attention_6/value/kernel/v/Read/ReadVariableOpRAdam/transformer_encoder_6/multi_head_attention_6/value/bias/v/Read/ReadVariableOp_Adam/transformer_encoder_6/multi_head_attention_6/attention_output/kernel/v/Read/ReadVariableOp]Adam/transformer_encoder_6/multi_head_attention_6/attention_output/bias/v/Read/ReadVariableOp*Adam/dense_24/kernel/v/Read/ReadVariableOp(Adam/dense_24/bias/v/Read/ReadVariableOp*Adam/dense_25/kernel/v/Read/ReadVariableOp(Adam/dense_25/bias/v/Read/ReadVariableOpMAdam/transformer_encoder_6/layer_normalization_12/gamma/v/Read/ReadVariableOpLAdam/transformer_encoder_6/layer_normalization_12/beta/v/Read/ReadVariableOpMAdam/transformer_encoder_6/layer_normalization_13/gamma/v/Read/ReadVariableOpLAdam/transformer_encoder_6/layer_normalization_13/beta/v/Read/ReadVariableOp3Adam/rnn_6/lstm_cell_6/kernel/v/Read/ReadVariableOp=Adam/rnn_6/lstm_cell_6/recurrent_kernel/v/Read/ReadVariableOp1Adam/rnn_6/lstm_cell_6/bias/v/Read/ReadVariableOpConst*a
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
GPU 2J 8В *+
f&R$
"__inference__traced_save_202290035
Т
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_26/kerneldense_26/biasdense_27/kerneldense_27/bias6token_and_position_embedding_6/embedding_12/embeddings6token_and_position_embedding_6/embedding_13/embeddings9transformer_encoder_6/multi_head_attention_6/query/kernel7transformer_encoder_6/multi_head_attention_6/query/bias7transformer_encoder_6/multi_head_attention_6/key/kernel5transformer_encoder_6/multi_head_attention_6/key/bias9transformer_encoder_6/multi_head_attention_6/value/kernel7transformer_encoder_6/multi_head_attention_6/value/biasDtransformer_encoder_6/multi_head_attention_6/attention_output/kernelBtransformer_encoder_6/multi_head_attention_6/attention_output/biasdense_24/kerneldense_24/biasdense_25/kerneldense_25/bias2transformer_encoder_6/layer_normalization_12/gamma1transformer_encoder_6/layer_normalization_12/beta2transformer_encoder_6/layer_normalization_13/gamma1transformer_encoder_6/layer_normalization_13/betarnn_6/lstm_cell_6/kernel"rnn_6/lstm_cell_6/recurrent_kernelrnn_6/lstm_cell_6/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_26/kernel/mAdam/dense_26/bias/mAdam/dense_27/kernel/mAdam/dense_27/bias/m=Adam/token_and_position_embedding_6/embedding_12/embeddings/m=Adam/token_and_position_embedding_6/embedding_13/embeddings/m@Adam/transformer_encoder_6/multi_head_attention_6/query/kernel/m>Adam/transformer_encoder_6/multi_head_attention_6/query/bias/m>Adam/transformer_encoder_6/multi_head_attention_6/key/kernel/m<Adam/transformer_encoder_6/multi_head_attention_6/key/bias/m@Adam/transformer_encoder_6/multi_head_attention_6/value/kernel/m>Adam/transformer_encoder_6/multi_head_attention_6/value/bias/mKAdam/transformer_encoder_6/multi_head_attention_6/attention_output/kernel/mIAdam/transformer_encoder_6/multi_head_attention_6/attention_output/bias/mAdam/dense_24/kernel/mAdam/dense_24/bias/mAdam/dense_25/kernel/mAdam/dense_25/bias/m9Adam/transformer_encoder_6/layer_normalization_12/gamma/m8Adam/transformer_encoder_6/layer_normalization_12/beta/m9Adam/transformer_encoder_6/layer_normalization_13/gamma/m8Adam/transformer_encoder_6/layer_normalization_13/beta/mAdam/rnn_6/lstm_cell_6/kernel/m)Adam/rnn_6/lstm_cell_6/recurrent_kernel/mAdam/rnn_6/lstm_cell_6/bias/mAdam/dense_26/kernel/vAdam/dense_26/bias/vAdam/dense_27/kernel/vAdam/dense_27/bias/v=Adam/token_and_position_embedding_6/embedding_12/embeddings/v=Adam/token_and_position_embedding_6/embedding_13/embeddings/v@Adam/transformer_encoder_6/multi_head_attention_6/query/kernel/v>Adam/transformer_encoder_6/multi_head_attention_6/query/bias/v>Adam/transformer_encoder_6/multi_head_attention_6/key/kernel/v<Adam/transformer_encoder_6/multi_head_attention_6/key/bias/v@Adam/transformer_encoder_6/multi_head_attention_6/value/kernel/v>Adam/transformer_encoder_6/multi_head_attention_6/value/bias/vKAdam/transformer_encoder_6/multi_head_attention_6/attention_output/kernel/vIAdam/transformer_encoder_6/multi_head_attention_6/attention_output/bias/vAdam/dense_24/kernel/vAdam/dense_24/bias/vAdam/dense_25/kernel/vAdam/dense_25/bias/v9Adam/transformer_encoder_6/layer_normalization_12/gamma/v8Adam/transformer_encoder_6/layer_normalization_12/beta/v9Adam/transformer_encoder_6/layer_normalization_13/gamma/v8Adam/transformer_encoder_6/layer_normalization_13/beta/vAdam/rnn_6/lstm_cell_6/kernel/v)Adam/rnn_6/lstm_cell_6/recurrent_kernel/vAdam/rnn_6/lstm_cell_6/bias/v*`
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
GPU 2J 8В *.
f)R'
%__inference__traced_restore_202290297ґ•$
…
≤
+__inference_model_6_layer_call_fn_202286871
input_7
unknown:.2
	unknown_0:	Б2
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

unknown_17:	2Є

unknown_18:	.Є

unknown_19:	Є

unknown_20:..

unknown_21:.

unknown_22:.

unknown_23:
identityИҐStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:€€€€€€€€€*;
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_model_6_layer_call_and_return_conditional_losses_202286818o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€.: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€.
!
_user_specified_name	input_7
ƒ
“
while_cond_202286691
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_202286691___redundant_placeholder07
3while_while_cond_202286691___redundant_placeholder17
3while_while_cond_202286691___redundant_placeholder27
3while_while_cond_202286691___redundant_placeholder3
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
@: : : : :€€€€€€€€€.:€€€€€€€€€.: ::::: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
:
•I
К
"model_6_rnn_6_while_body_2022857938
4model_6_rnn_6_while_model_6_rnn_6_while_loop_counter>
:model_6_rnn_6_while_model_6_rnn_6_while_maximum_iterations#
model_6_rnn_6_while_placeholder%
!model_6_rnn_6_while_placeholder_1%
!model_6_rnn_6_while_placeholder_2%
!model_6_rnn_6_while_placeholder_37
3model_6_rnn_6_while_model_6_rnn_6_strided_slice_1_0s
omodel_6_rnn_6_while_tensorarrayv2read_tensorlistgetitem_model_6_rnn_6_tensorarrayunstack_tensorlistfromtensor_0S
@model_6_rnn_6_while_lstm_cell_6_matmul_readvariableop_resource_0:	2ЄU
Bmodel_6_rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0:	.ЄP
Amodel_6_rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource_0:	Є 
model_6_rnn_6_while_identity"
model_6_rnn_6_while_identity_1"
model_6_rnn_6_while_identity_2"
model_6_rnn_6_while_identity_3"
model_6_rnn_6_while_identity_4"
model_6_rnn_6_while_identity_55
1model_6_rnn_6_while_model_6_rnn_6_strided_slice_1q
mmodel_6_rnn_6_while_tensorarrayv2read_tensorlistgetitem_model_6_rnn_6_tensorarrayunstack_tensorlistfromtensorQ
>model_6_rnn_6_while_lstm_cell_6_matmul_readvariableop_resource:	2ЄS
@model_6_rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource:	.ЄN
?model_6_rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource:	ЄИҐ6model_6/rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOpҐ5model_6/rnn_6/while/lstm_cell_6/MatMul/ReadVariableOpҐ7model_6/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOpЦ
Emodel_6/rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   м
7model_6/rnn_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemomodel_6_rnn_6_while_tensorarrayv2read_tensorlistgetitem_model_6_rnn_6_tensorarrayunstack_tensorlistfromtensor_0model_6_rnn_6_while_placeholderNmodel_6/rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0Ј
5model_6/rnn_6/while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp@model_6_rnn_6_while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	2Є*
dtype0в
&model_6/rnn_6/while/lstm_cell_6/MatMulMatMul>model_6/rnn_6/while/TensorArrayV2Read/TensorListGetItem:item:0=model_6/rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Єї
7model_6/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOpBmodel_6_rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	.Є*
dtype0…
(model_6/rnn_6/while/lstm_cell_6/MatMul_1MatMul!model_6_rnn_6_while_placeholder_2?model_6/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Є≈
#model_6/rnn_6/while/lstm_cell_6/addAddV20model_6/rnn_6/while/lstm_cell_6/MatMul:product:02model_6/rnn_6/while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Єµ
6model_6/rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOpAmodel_6_rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:Є*
dtype0ќ
'model_6/rnn_6/while/lstm_cell_6/BiasAddBiasAdd'model_6/rnn_6/while/lstm_cell_6/add:z:0>model_6/rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Єq
/model_6/rnn_6/while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
%model_6/rnn_6/while/lstm_cell_6/splitSplit8model_6/rnn_6/while/lstm_cell_6/split/split_dim:output:00model_6/rnn_6/while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitФ
'model_6/rnn_6/while/lstm_cell_6/SigmoidSigmoid.model_6/rnn_6/while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€.Ц
)model_6/rnn_6/while/lstm_cell_6/Sigmoid_1Sigmoid.model_6/rnn_6/while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€.Ѓ
#model_6/rnn_6/while/lstm_cell_6/mulMul-model_6/rnn_6/while/lstm_cell_6/Sigmoid_1:y:0!model_6_rnn_6_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€.О
$model_6/rnn_6/while/lstm_cell_6/TanhTanh.model_6/rnn_6/while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€.µ
%model_6/rnn_6/while/lstm_cell_6/mul_1Mul+model_6/rnn_6/while/lstm_cell_6/Sigmoid:y:0(model_6/rnn_6/while/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.і
%model_6/rnn_6/while/lstm_cell_6/add_1AddV2'model_6/rnn_6/while/lstm_cell_6/mul:z:0)model_6/rnn_6/while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.Ц
)model_6/rnn_6/while/lstm_cell_6/Sigmoid_2Sigmoid.model_6/rnn_6/while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€.Л
&model_6/rnn_6/while/lstm_cell_6/Tanh_1Tanh)model_6/rnn_6/while/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.є
%model_6/rnn_6/while/lstm_cell_6/mul_2Mul-model_6/rnn_6/while/lstm_cell_6/Sigmoid_2:y:0*model_6/rnn_6/while/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.А
>model_6/rnn_6/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : §
8model_6/rnn_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!model_6_rnn_6_while_placeholder_1Gmodel_6/rnn_6/while/TensorArrayV2Write/TensorListSetItem/index:output:0)model_6/rnn_6/while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“[
model_6/rnn_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ж
model_6/rnn_6/while/addAddV2model_6_rnn_6_while_placeholder"model_6/rnn_6/while/add/y:output:0*
T0*
_output_shapes
: ]
model_6/rnn_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Я
model_6/rnn_6/while/add_1AddV24model_6_rnn_6_while_model_6_rnn_6_while_loop_counter$model_6/rnn_6/while/add_1/y:output:0*
T0*
_output_shapes
: Г
model_6/rnn_6/while/IdentityIdentitymodel_6/rnn_6/while/add_1:z:0^model_6/rnn_6/while/NoOp*
T0*
_output_shapes
: Ґ
model_6/rnn_6/while/Identity_1Identity:model_6_rnn_6_while_model_6_rnn_6_while_maximum_iterations^model_6/rnn_6/while/NoOp*
T0*
_output_shapes
: Г
model_6/rnn_6/while/Identity_2Identitymodel_6/rnn_6/while/add:z:0^model_6/rnn_6/while/NoOp*
T0*
_output_shapes
: ∞
model_6/rnn_6/while/Identity_3IdentityHmodel_6/rnn_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model_6/rnn_6/while/NoOp*
T0*
_output_shapes
: Ґ
model_6/rnn_6/while/Identity_4Identity)model_6/rnn_6/while/lstm_cell_6/mul_2:z:0^model_6/rnn_6/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.Ґ
model_6/rnn_6/while/Identity_5Identity)model_6/rnn_6/while/lstm_cell_6/add_1:z:0^model_6/rnn_6/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.Е
model_6/rnn_6/while/NoOpNoOp7^model_6/rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp6^model_6/rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp8^model_6/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
model_6_rnn_6_while_identity%model_6/rnn_6/while/Identity:output:0"I
model_6_rnn_6_while_identity_1'model_6/rnn_6/while/Identity_1:output:0"I
model_6_rnn_6_while_identity_2'model_6/rnn_6/while/Identity_2:output:0"I
model_6_rnn_6_while_identity_3'model_6/rnn_6/while/Identity_3:output:0"I
model_6_rnn_6_while_identity_4'model_6/rnn_6/while/Identity_4:output:0"I
model_6_rnn_6_while_identity_5'model_6/rnn_6/while/Identity_5:output:0"Д
?model_6_rnn_6_while_lstm_cell_6_biasadd_readvariableop_resourceAmodel_6_rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource_0"Ж
@model_6_rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resourceBmodel_6_rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0"В
>model_6_rnn_6_while_lstm_cell_6_matmul_readvariableop_resource@model_6_rnn_6_while_lstm_cell_6_matmul_readvariableop_resource_0"h
1model_6_rnn_6_while_model_6_rnn_6_strided_slice_13model_6_rnn_6_while_model_6_rnn_6_strided_slice_1_0"а
mmodel_6_rnn_6_while_tensorarrayv2read_tensorlistgetitem_model_6_rnn_6_tensorarrayunstack_tensorlistfromtensoromodel_6_rnn_6_while_tensorarrayv2read_tensorlistgetitem_model_6_rnn_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : 2p
6model_6/rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp6model_6/rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp2n
5model_6/rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp5model_6/rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp2r
7model_6/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp7model_6/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
: 
С
Є
)__inference_rnn_6_layer_call_fn_202288795
inputs_0
unknown:	2Є
	unknown_0:	.Є
	unknown_1:	Є
identityИҐStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rnn_6_layer_call_and_return_conditional_losses_202286234o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
"
_user_specified_name
inputs/0
ПЗ
й
F__inference_model_6_layer_call_and_return_conditional_losses_202288410

inputsX
Ftoken_and_position_embedding_6_embedding_13_embedding_lookup_202288108:.2Y
Ftoken_and_position_embedding_6_embedding_12_embedding_lookup_202288114:	Б2n
Xtransformer_encoder_6_multi_head_attention_6_query_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_6_multi_head_attention_6_query_add_readvariableop_resource:2l
Vtransformer_encoder_6_multi_head_attention_6_key_einsum_einsum_readvariableop_resource:22^
Ltransformer_encoder_6_multi_head_attention_6_key_add_readvariableop_resource:2n
Xtransformer_encoder_6_multi_head_attention_6_value_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_6_multi_head_attention_6_value_add_readvariableop_resource:2y
ctransformer_encoder_6_multi_head_attention_6_attention_output_einsum_einsum_readvariableop_resource:22g
Ytransformer_encoder_6_multi_head_attention_6_attention_output_add_readvariableop_resource:2`
Rtransformer_encoder_6_layer_normalization_12_batchnorm_mul_readvariableop_resource:2\
Ntransformer_encoder_6_layer_normalization_12_batchnorm_readvariableop_resource:2_
Mtransformer_encoder_6_sequential_6_dense_24_tensordot_readvariableop_resource:2 Y
Ktransformer_encoder_6_sequential_6_dense_24_biasadd_readvariableop_resource: _
Mtransformer_encoder_6_sequential_6_dense_25_tensordot_readvariableop_resource: 2Y
Ktransformer_encoder_6_sequential_6_dense_25_biasadd_readvariableop_resource:2`
Rtransformer_encoder_6_layer_normalization_13_batchnorm_mul_readvariableop_resource:2\
Ntransformer_encoder_6_layer_normalization_13_batchnorm_readvariableop_resource:2C
0rnn_6_lstm_cell_6_matmul_readvariableop_resource:	2ЄE
2rnn_6_lstm_cell_6_matmul_1_readvariableop_resource:	.Є@
1rnn_6_lstm_cell_6_biasadd_readvariableop_resource:	Є9
'dense_26_matmul_readvariableop_resource:..6
(dense_26_biasadd_readvariableop_resource:.9
'dense_27_matmul_readvariableop_resource:.6
(dense_27_biasadd_readvariableop_resource:
identityИҐdense_26/BiasAdd/ReadVariableOpҐdense_26/MatMul/ReadVariableOpҐdense_27/BiasAdd/ReadVariableOpҐdense_27/MatMul/ReadVariableOpҐ(rnn_6/lstm_cell_6/BiasAdd/ReadVariableOpҐ'rnn_6/lstm_cell_6/MatMul/ReadVariableOpҐ)rnn_6/lstm_cell_6/MatMul_1/ReadVariableOpҐrnn_6/whileҐ<token_and_position_embedding_6/embedding_12/embedding_lookupҐ<token_and_position_embedding_6/embedding_13/embedding_lookupҐEtransformer_encoder_6/layer_normalization_12/batchnorm/ReadVariableOpҐItransformer_encoder_6/layer_normalization_12/batchnorm/mul/ReadVariableOpҐEtransformer_encoder_6/layer_normalization_13/batchnorm/ReadVariableOpҐItransformer_encoder_6/layer_normalization_13/batchnorm/mul/ReadVariableOpҐPtransformer_encoder_6/multi_head_attention_6/attention_output/add/ReadVariableOpҐZtransformer_encoder_6/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpҐCtransformer_encoder_6/multi_head_attention_6/key/add/ReadVariableOpҐMtransformer_encoder_6/multi_head_attention_6/key/einsum/Einsum/ReadVariableOpҐEtransformer_encoder_6/multi_head_attention_6/query/add/ReadVariableOpҐOtransformer_encoder_6/multi_head_attention_6/query/einsum/Einsum/ReadVariableOpҐEtransformer_encoder_6/multi_head_attention_6/value/add/ReadVariableOpҐOtransformer_encoder_6/multi_head_attention_6/value/einsum/Einsum/ReadVariableOpҐBtransformer_encoder_6/sequential_6/dense_24/BiasAdd/ReadVariableOpҐDtransformer_encoder_6/sequential_6/dense_24/Tensordot/ReadVariableOpҐBtransformer_encoder_6/sequential_6/dense_25/BiasAdd/ReadVariableOpҐDtransformer_encoder_6/sequential_6/dense_25/Tensordot/ReadVariableOpZ
$token_and_position_embedding_6/ShapeShapeinputs*
T0*
_output_shapes
:Е
2token_and_position_embedding_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€~
4token_and_position_embedding_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:м
,token_and_position_embedding_6/strided_sliceStridedSlice-token_and_position_embedding_6/Shape:output:0;token_and_position_embedding_6/strided_slice/stack:output:0=token_and_position_embedding_6/strided_slice/stack_1:output:0=token_and_position_embedding_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_6/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_6/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :к
$token_and_position_embedding_6/rangeRange3token_and_position_embedding_6/range/start:output:05token_and_position_embedding_6/strided_slice:output:03token_and_position_embedding_6/range/delta:output:0*
_output_shapes
:.Ё
<token_and_position_embedding_6/embedding_13/embedding_lookupResourceGatherFtoken_and_position_embedding_6_embedding_13_embedding_lookup_202288108-token_and_position_embedding_6/range:output:0*
Tindices0*Y
_classO
MKloc:@token_and_position_embedding_6/embedding_13/embedding_lookup/202288108*
_output_shapes

:.2*
dtype0Ь
Etoken_and_position_embedding_6/embedding_13/embedding_lookup/IdentityIdentityEtoken_and_position_embedding_6/embedding_13/embedding_lookup:output:0*
T0*Y
_classO
MKloc:@token_and_position_embedding_6/embedding_13/embedding_lookup/202288108*
_output_shapes

:.2ћ
Gtoken_and_position_embedding_6/embedding_13/embedding_lookup/Identity_1IdentityNtoken_and_position_embedding_6/embedding_13/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:.2Б
0token_and_position_embedding_6/embedding_12/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€.с
<token_and_position_embedding_6/embedding_12/embedding_lookupResourceGatherFtoken_and_position_embedding_6_embedding_12_embedding_lookup_2022881144token_and_position_embedding_6/embedding_12/Cast:y:0*
Tindices0*Y
_classO
MKloc:@token_and_position_embedding_6/embedding_12/embedding_lookup/202288114*+
_output_shapes
:€€€€€€€€€.2*
dtype0©
Etoken_and_position_embedding_6/embedding_12/embedding_lookup/IdentityIdentityEtoken_and_position_embedding_6/embedding_12/embedding_lookup:output:0*
T0*Y
_classO
MKloc:@token_and_position_embedding_6/embedding_12/embedding_lookup/202288114*+
_output_shapes
:€€€€€€€€€.2ў
Gtoken_and_position_embedding_6/embedding_12/embedding_lookup/Identity_1IdentityNtoken_and_position_embedding_6/embedding_12/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Е
"token_and_position_embedding_6/addAddV2Ptoken_and_position_embedding_6/embedding_12/embedding_lookup/Identity_1:output:0Ptoken_and_position_embedding_6/embedding_13/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2м
Otransformer_encoder_6/multi_head_attention_6/query/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_6_multi_head_attention_6_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ђ
@transformer_encoder_6/multi_head_attention_6/query/einsum/EinsumEinsum&token_and_position_embedding_6/add:z:0Wtransformer_encoder_6/multi_head_attention_6/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationabc,cde->abde‘
Etransformer_encoder_6/multi_head_attention_6/query/add/ReadVariableOpReadVariableOpNtransformer_encoder_6_multi_head_attention_6_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0У
6transformer_encoder_6/multi_head_attention_6/query/addAddV2Itransformer_encoder_6/multi_head_attention_6/query/einsum/Einsum:output:0Mtransformer_encoder_6/multi_head_attention_6/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€.2и
Mtransformer_encoder_6/multi_head_attention_6/key/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_encoder_6_multi_head_attention_6_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0І
>transformer_encoder_6/multi_head_attention_6/key/einsum/EinsumEinsum&token_and_position_embedding_6/add:z:0Utransformer_encoder_6/multi_head_attention_6/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationabc,cde->abde–
Ctransformer_encoder_6/multi_head_attention_6/key/add/ReadVariableOpReadVariableOpLtransformer_encoder_6_multi_head_attention_6_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Н
4transformer_encoder_6/multi_head_attention_6/key/addAddV2Gtransformer_encoder_6/multi_head_attention_6/key/einsum/Einsum:output:0Ktransformer_encoder_6/multi_head_attention_6/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€.2м
Otransformer_encoder_6/multi_head_attention_6/value/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_6_multi_head_attention_6_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ђ
@transformer_encoder_6/multi_head_attention_6/value/einsum/EinsumEinsum&token_and_position_embedding_6/add:z:0Wtransformer_encoder_6/multi_head_attention_6/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationabc,cde->abde‘
Etransformer_encoder_6/multi_head_attention_6/value/add/ReadVariableOpReadVariableOpNtransformer_encoder_6_multi_head_attention_6_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0У
6transformer_encoder_6/multi_head_attention_6/value/addAddV2Itransformer_encoder_6/multi_head_attention_6/value/einsum/Einsum:output:0Mtransformer_encoder_6/multi_head_attention_6/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€.2w
2transformer_encoder_6/multi_head_attention_6/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *√–>к
0transformer_encoder_6/multi_head_attention_6/MulMul:transformer_encoder_6/multi_head_attention_6/query/add:z:0;transformer_encoder_6/multi_head_attention_6/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€.2Ц
:transformer_encoder_6/multi_head_attention_6/einsum/EinsumEinsum8transformer_encoder_6/multi_head_attention_6/key/add:z:04transformer_encoder_6/multi_head_attention_6/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€..*
equationaecd,abcd->acbe∆
<transformer_encoder_6/multi_head_attention_6/softmax/SoftmaxSoftmaxCtransformer_encoder_6/multi_head_attention_6/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€..ђ
<transformer_encoder_6/multi_head_attention_6/einsum_1/EinsumEinsumFtransformer_encoder_6/multi_head_attention_6/softmax/Softmax:softmax:0:transformer_encoder_6/multi_head_attention_6/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationacbe,aecd->abcdВ
Ztransformer_encoder_6/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpctransformer_encoder_6_multi_head_attention_6_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0№
Ktransformer_encoder_6/multi_head_attention_6/attention_output/einsum/EinsumEinsumEtransformer_encoder_6/multi_head_attention_6/einsum_1/Einsum:output:0btransformer_encoder_6/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€.2*
equationabcd,cde->abeж
Ptransformer_encoder_6/multi_head_attention_6/attention_output/add/ReadVariableOpReadVariableOpYtransformer_encoder_6_multi_head_attention_6_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0∞
Atransformer_encoder_6/multi_head_attention_6/attention_output/addAddV2Ttransformer_encoder_6/multi_head_attention_6/attention_output/einsum/Einsum:output:0Xtransformer_encoder_6/multi_head_attention_6/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2s
.transformer_encoder_6/dropout_18/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @й
,transformer_encoder_6/dropout_18/dropout/MulMulEtransformer_encoder_6/multi_head_attention_6/attention_output/add:z:07transformer_encoder_6/dropout_18/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2£
.transformer_encoder_6/dropout_18/dropout/ShapeShapeEtransformer_encoder_6/multi_head_attention_6/attention_output/add:z:0*
T0*
_output_shapes
:“
Etransformer_encoder_6/dropout_18/dropout/random_uniform/RandomUniformRandomUniform7transformer_encoder_6/dropout_18/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2*
dtype0|
7transformer_encoder_6/dropout_18/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Н
5transformer_encoder_6/dropout_18/dropout/GreaterEqualGreaterEqualNtransformer_encoder_6/dropout_18/dropout/random_uniform/RandomUniform:output:0@transformer_encoder_6/dropout_18/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2µ
-transformer_encoder_6/dropout_18/dropout/CastCast9transformer_encoder_6/dropout_18/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€.2–
.transformer_encoder_6/dropout_18/dropout/Mul_1Mul0transformer_encoder_6/dropout_18/dropout/Mul:z:01transformer_encoder_6/dropout_18/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€.2і
transformer_encoder_6/addAddV2&token_and_position_embedding_6/add:z:02transformer_encoder_6/dropout_18/dropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2Х
Ktransformer_encoder_6/layer_normalization_12/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:э
9transformer_encoder_6/layer_normalization_12/moments/meanMeantransformer_encoder_6/add:z:0Ttransformer_encoder_6/layer_normalization_12/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(Ћ
Atransformer_encoder_6/layer_normalization_12/moments/StopGradientStopGradientBtransformer_encoder_6/layer_normalization_12/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€.ь
Ftransformer_encoder_6/layer_normalization_12/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_6/add:z:0Jtransformer_encoder_6/layer_normalization_12/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Щ
Otransformer_encoder_6/layer_normalization_12/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:≤
=transformer_encoder_6/layer_normalization_12/moments/varianceMeanJtransformer_encoder_6/layer_normalization_12/moments/SquaredDifference:z:0Xtransformer_encoder_6/layer_normalization_12/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(Б
<transformer_encoder_6/layer_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5И
:transformer_encoder_6/layer_normalization_12/batchnorm/addAddV2Ftransformer_encoder_6/layer_normalization_12/moments/variance:output:0Etransformer_encoder_6/layer_normalization_12/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€.ї
<transformer_encoder_6/layer_normalization_12/batchnorm/RsqrtRsqrt>transformer_encoder_6/layer_normalization_12/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€.Ў
Itransformer_encoder_6/layer_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOpRtransformer_encoder_6_layer_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0М
:transformer_encoder_6/layer_normalization_12/batchnorm/mulMul@transformer_encoder_6/layer_normalization_12/batchnorm/Rsqrt:y:0Qtransformer_encoder_6/layer_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2Ў
<transformer_encoder_6/layer_normalization_12/batchnorm/mul_1Multransformer_encoder_6/add:z:0>transformer_encoder_6/layer_normalization_12/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2э
<transformer_encoder_6/layer_normalization_12/batchnorm/mul_2MulBtransformer_encoder_6/layer_normalization_12/moments/mean:output:0>transformer_encoder_6/layer_normalization_12/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2–
Etransformer_encoder_6/layer_normalization_12/batchnorm/ReadVariableOpReadVariableOpNtransformer_encoder_6_layer_normalization_12_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0И
:transformer_encoder_6/layer_normalization_12/batchnorm/subSubMtransformer_encoder_6/layer_normalization_12/batchnorm/ReadVariableOp:value:0@transformer_encoder_6/layer_normalization_12/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2э
<transformer_encoder_6/layer_normalization_12/batchnorm/add_1AddV2@transformer_encoder_6/layer_normalization_12/batchnorm/mul_1:z:0>transformer_encoder_6/layer_normalization_12/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2“
Dtransformer_encoder_6/sequential_6/dense_24/Tensordot/ReadVariableOpReadVariableOpMtransformer_encoder_6_sequential_6_dense_24_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0Д
:transformer_encoder_6/sequential_6/dense_24/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:Л
:transformer_encoder_6/sequential_6/dense_24/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Ђ
;transformer_encoder_6/sequential_6/dense_24/Tensordot/ShapeShape@transformer_encoder_6/layer_normalization_12/batchnorm/add_1:z:0*
T0*
_output_shapes
:Е
Ctransformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : л
>transformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2GatherV2Dtransformer_encoder_6/sequential_6/dense_24/Tensordot/Shape:output:0Ctransformer_encoder_6/sequential_6/dense_24/Tensordot/free:output:0Ltransformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:З
Etransformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : п
@transformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2_1GatherV2Dtransformer_encoder_6/sequential_6/dense_24/Tensordot/Shape:output:0Ctransformer_encoder_6/sequential_6/dense_24/Tensordot/axes:output:0Ntransformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Е
;transformer_encoder_6/sequential_6/dense_24/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: т
:transformer_encoder_6/sequential_6/dense_24/Tensordot/ProdProdGtransformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2:output:0Dtransformer_encoder_6/sequential_6/dense_24/Tensordot/Const:output:0*
T0*
_output_shapes
: З
=transformer_encoder_6/sequential_6/dense_24/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ш
<transformer_encoder_6/sequential_6/dense_24/Tensordot/Prod_1ProdItransformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2_1:output:0Ftransformer_encoder_6/sequential_6/dense_24/Tensordot/Const_1:output:0*
T0*
_output_shapes
: Г
Atransformer_encoder_6/sequential_6/dense_24/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ћ
<transformer_encoder_6/sequential_6/dense_24/Tensordot/concatConcatV2Ctransformer_encoder_6/sequential_6/dense_24/Tensordot/free:output:0Ctransformer_encoder_6/sequential_6/dense_24/Tensordot/axes:output:0Jtransformer_encoder_6/sequential_6/dense_24/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:э
;transformer_encoder_6/sequential_6/dense_24/Tensordot/stackPackCtransformer_encoder_6/sequential_6/dense_24/Tensordot/Prod:output:0Etransformer_encoder_6/sequential_6/dense_24/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Л
?transformer_encoder_6/sequential_6/dense_24/Tensordot/transpose	Transpose@transformer_encoder_6/layer_normalization_12/batchnorm/add_1:z:0Etransformer_encoder_6/sequential_6/dense_24/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2О
=transformer_encoder_6/sequential_6/dense_24/Tensordot/ReshapeReshapeCtransformer_encoder_6/sequential_6/dense_24/Tensordot/transpose:y:0Dtransformer_encoder_6/sequential_6/dense_24/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€О
<transformer_encoder_6/sequential_6/dense_24/Tensordot/MatMulMatMulFtransformer_encoder_6/sequential_6/dense_24/Tensordot/Reshape:output:0Ltransformer_encoder_6/sequential_6/dense_24/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ З
=transformer_encoder_6/sequential_6/dense_24/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Е
Ctransformer_encoder_6/sequential_6/dense_24/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : „
>transformer_encoder_6/sequential_6/dense_24/Tensordot/concat_1ConcatV2Gtransformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2:output:0Ftransformer_encoder_6/sequential_6/dense_24/Tensordot/Const_2:output:0Ltransformer_encoder_6/sequential_6/dense_24/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:З
5transformer_encoder_6/sequential_6/dense_24/TensordotReshapeFtransformer_encoder_6/sequential_6/dense_24/Tensordot/MatMul:product:0Gtransformer_encoder_6/sequential_6/dense_24/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€.  
Btransformer_encoder_6/sequential_6/dense_24/BiasAdd/ReadVariableOpReadVariableOpKtransformer_encoder_6_sequential_6_dense_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0А
3transformer_encoder_6/sequential_6/dense_24/BiasAddBiasAdd>transformer_encoder_6/sequential_6/dense_24/Tensordot:output:0Jtransformer_encoder_6/sequential_6/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€. ђ
0transformer_encoder_6/sequential_6/dense_24/ReluRelu<transformer_encoder_6/sequential_6/dense_24/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€. “
Dtransformer_encoder_6/sequential_6/dense_25/Tensordot/ReadVariableOpReadVariableOpMtransformer_encoder_6_sequential_6_dense_25_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0Д
:transformer_encoder_6/sequential_6/dense_25/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:Л
:transformer_encoder_6/sequential_6/dense_25/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ©
;transformer_encoder_6/sequential_6/dense_25/Tensordot/ShapeShape>transformer_encoder_6/sequential_6/dense_24/Relu:activations:0*
T0*
_output_shapes
:Е
Ctransformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : л
>transformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2GatherV2Dtransformer_encoder_6/sequential_6/dense_25/Tensordot/Shape:output:0Ctransformer_encoder_6/sequential_6/dense_25/Tensordot/free:output:0Ltransformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:З
Etransformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : п
@transformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2_1GatherV2Dtransformer_encoder_6/sequential_6/dense_25/Tensordot/Shape:output:0Ctransformer_encoder_6/sequential_6/dense_25/Tensordot/axes:output:0Ntransformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Е
;transformer_encoder_6/sequential_6/dense_25/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: т
:transformer_encoder_6/sequential_6/dense_25/Tensordot/ProdProdGtransformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2:output:0Dtransformer_encoder_6/sequential_6/dense_25/Tensordot/Const:output:0*
T0*
_output_shapes
: З
=transformer_encoder_6/sequential_6/dense_25/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ш
<transformer_encoder_6/sequential_6/dense_25/Tensordot/Prod_1ProdItransformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2_1:output:0Ftransformer_encoder_6/sequential_6/dense_25/Tensordot/Const_1:output:0*
T0*
_output_shapes
: Г
Atransformer_encoder_6/sequential_6/dense_25/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ћ
<transformer_encoder_6/sequential_6/dense_25/Tensordot/concatConcatV2Ctransformer_encoder_6/sequential_6/dense_25/Tensordot/free:output:0Ctransformer_encoder_6/sequential_6/dense_25/Tensordot/axes:output:0Jtransformer_encoder_6/sequential_6/dense_25/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:э
;transformer_encoder_6/sequential_6/dense_25/Tensordot/stackPackCtransformer_encoder_6/sequential_6/dense_25/Tensordot/Prod:output:0Etransformer_encoder_6/sequential_6/dense_25/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Й
?transformer_encoder_6/sequential_6/dense_25/Tensordot/transpose	Transpose>transformer_encoder_6/sequential_6/dense_24/Relu:activations:0Etransformer_encoder_6/sequential_6/dense_25/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€. О
=transformer_encoder_6/sequential_6/dense_25/Tensordot/ReshapeReshapeCtransformer_encoder_6/sequential_6/dense_25/Tensordot/transpose:y:0Dtransformer_encoder_6/sequential_6/dense_25/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€О
<transformer_encoder_6/sequential_6/dense_25/Tensordot/MatMulMatMulFtransformer_encoder_6/sequential_6/dense_25/Tensordot/Reshape:output:0Ltransformer_encoder_6/sequential_6/dense_25/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2З
=transformer_encoder_6/sequential_6/dense_25/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2Е
Ctransformer_encoder_6/sequential_6/dense_25/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : „
>transformer_encoder_6/sequential_6/dense_25/Tensordot/concat_1ConcatV2Gtransformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2:output:0Ftransformer_encoder_6/sequential_6/dense_25/Tensordot/Const_2:output:0Ltransformer_encoder_6/sequential_6/dense_25/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:З
5transformer_encoder_6/sequential_6/dense_25/TensordotReshapeFtransformer_encoder_6/sequential_6/dense_25/Tensordot/MatMul:product:0Gtransformer_encoder_6/sequential_6/dense_25/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2 
Btransformer_encoder_6/sequential_6/dense_25/BiasAdd/ReadVariableOpReadVariableOpKtransformer_encoder_6_sequential_6_dense_25_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0А
3transformer_encoder_6/sequential_6/dense_25/BiasAddBiasAdd>transformer_encoder_6/sequential_6/dense_25/Tensordot:output:0Jtransformer_encoder_6/sequential_6/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2s
.transformer_encoder_6/dropout_19/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @а
,transformer_encoder_6/dropout_19/dropout/MulMul<transformer_encoder_6/sequential_6/dense_25/BiasAdd:output:07transformer_encoder_6/dropout_19/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Ъ
.transformer_encoder_6/dropout_19/dropout/ShapeShape<transformer_encoder_6/sequential_6/dense_25/BiasAdd:output:0*
T0*
_output_shapes
:“
Etransformer_encoder_6/dropout_19/dropout/random_uniform/RandomUniformRandomUniform7transformer_encoder_6/dropout_19/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2*
dtype0|
7transformer_encoder_6/dropout_19/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Н
5transformer_encoder_6/dropout_19/dropout/GreaterEqualGreaterEqualNtransformer_encoder_6/dropout_19/dropout/random_uniform/RandomUniform:output:0@transformer_encoder_6/dropout_19/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2µ
-transformer_encoder_6/dropout_19/dropout/CastCast9transformer_encoder_6/dropout_19/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€.2–
.transformer_encoder_6/dropout_19/dropout/Mul_1Mul0transformer_encoder_6/dropout_19/dropout/Mul:z:01transformer_encoder_6/dropout_19/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€.2–
transformer_encoder_6/add_1AddV2@transformer_encoder_6/layer_normalization_12/batchnorm/add_1:z:02transformer_encoder_6/dropout_19/dropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2Х
Ktransformer_encoder_6/layer_normalization_13/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:€
9transformer_encoder_6/layer_normalization_13/moments/meanMeantransformer_encoder_6/add_1:z:0Ttransformer_encoder_6/layer_normalization_13/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(Ћ
Atransformer_encoder_6/layer_normalization_13/moments/StopGradientStopGradientBtransformer_encoder_6/layer_normalization_13/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€.ю
Ftransformer_encoder_6/layer_normalization_13/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_6/add_1:z:0Jtransformer_encoder_6/layer_normalization_13/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Щ
Otransformer_encoder_6/layer_normalization_13/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:≤
=transformer_encoder_6/layer_normalization_13/moments/varianceMeanJtransformer_encoder_6/layer_normalization_13/moments/SquaredDifference:z:0Xtransformer_encoder_6/layer_normalization_13/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(Б
<transformer_encoder_6/layer_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5И
:transformer_encoder_6/layer_normalization_13/batchnorm/addAddV2Ftransformer_encoder_6/layer_normalization_13/moments/variance:output:0Etransformer_encoder_6/layer_normalization_13/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€.ї
<transformer_encoder_6/layer_normalization_13/batchnorm/RsqrtRsqrt>transformer_encoder_6/layer_normalization_13/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€.Ў
Itransformer_encoder_6/layer_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOpRtransformer_encoder_6_layer_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0М
:transformer_encoder_6/layer_normalization_13/batchnorm/mulMul@transformer_encoder_6/layer_normalization_13/batchnorm/Rsqrt:y:0Qtransformer_encoder_6/layer_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2Џ
<transformer_encoder_6/layer_normalization_13/batchnorm/mul_1Multransformer_encoder_6/add_1:z:0>transformer_encoder_6/layer_normalization_13/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2э
<transformer_encoder_6/layer_normalization_13/batchnorm/mul_2MulBtransformer_encoder_6/layer_normalization_13/moments/mean:output:0>transformer_encoder_6/layer_normalization_13/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2–
Etransformer_encoder_6/layer_normalization_13/batchnorm/ReadVariableOpReadVariableOpNtransformer_encoder_6_layer_normalization_13_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0И
:transformer_encoder_6/layer_normalization_13/batchnorm/subSubMtransformer_encoder_6/layer_normalization_13/batchnorm/ReadVariableOp:value:0@transformer_encoder_6/layer_normalization_13/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2э
<transformer_encoder_6/layer_normalization_13/batchnorm/add_1AddV2@transformer_encoder_6/layer_normalization_13/batchnorm/mul_1:z:0>transformer_encoder_6/layer_normalization_13/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2{
rnn_6/ShapeShape@transformer_encoder_6/layer_normalization_13/batchnorm/add_1:z:0*
T0*
_output_shapes
:c
rnn_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
rnn_6/strided_sliceStridedSlicernn_6/Shape:output:0"rnn_6/strided_slice/stack:output:0$rnn_6/strided_slice/stack_1:output:0$rnn_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
rnn_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.Е
rnn_6/zeros/packedPackrnn_6/strided_slice:output:0rnn_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
rnn_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
rnn_6/zerosFillrnn_6/zeros/packed:output:0rnn_6/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€.X
rnn_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.Й
rnn_6/zeros_1/packedPackrnn_6/strided_slice:output:0rnn_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:X
rnn_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
rnn_6/zeros_1Fillrnn_6/zeros_1/packed:output:0rnn_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€.i
rnn_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ≥
rnn_6/transpose	Transpose@transformer_encoder_6/layer_normalization_13/batchnorm/add_1:z:0rnn_6/transpose/perm:output:0*
T0*+
_output_shapes
:.€€€€€€€€€2P
rnn_6/Shape_1Shapernn_6/transpose:y:0*
T0*
_output_shapes
:e
rnn_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
rnn_6/strided_slice_1StridedSlicernn_6/Shape_1:output:0$rnn_6/strided_slice_1/stack:output:0&rnn_6/strided_slice_1/stack_1:output:0&rnn_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!rnn_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€∆
rnn_6/TensorArrayV2TensorListReserve*rnn_6/TensorArrayV2/element_shape:output:0rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“М
;rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   т
-rnn_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn_6/transpose:y:0Drnn_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“e
rnn_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
rnn_6/strided_slice_2StridedSlicernn_6/transpose:y:0$rnn_6/strided_slice_2/stack:output:0&rnn_6/strided_slice_2/stack_1:output:0&rnn_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskЩ
'rnn_6/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp0rnn_6_lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	2Є*
dtype0¶
rnn_6/lstm_cell_6/MatMulMatMulrnn_6/strided_slice_2:output:0/rnn_6/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЭ
)rnn_6/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp2rnn_6_lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	.Є*
dtype0†
rnn_6/lstm_cell_6/MatMul_1MatMulrnn_6/zeros:output:01rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЫ
rnn_6/lstm_cell_6/addAddV2"rnn_6/lstm_cell_6/MatMul:product:0$rnn_6/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЧ
(rnn_6/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp1rnn_6_lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:Є*
dtype0§
rnn_6/lstm_cell_6/BiasAddBiasAddrnn_6/lstm_cell_6/add:z:00rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Єc
!rnn_6/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :м
rnn_6/lstm_cell_6/splitSplit*rnn_6/lstm_cell_6/split/split_dim:output:0"rnn_6/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitx
rnn_6/lstm_cell_6/SigmoidSigmoid rnn_6/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€.z
rnn_6/lstm_cell_6/Sigmoid_1Sigmoid rnn_6/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€.З
rnn_6/lstm_cell_6/mulMulrnn_6/lstm_cell_6/Sigmoid_1:y:0rnn_6/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€.r
rnn_6/lstm_cell_6/TanhTanh rnn_6/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€.Л
rnn_6/lstm_cell_6/mul_1Mulrnn_6/lstm_cell_6/Sigmoid:y:0rnn_6/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.К
rnn_6/lstm_cell_6/add_1AddV2rnn_6/lstm_cell_6/mul:z:0rnn_6/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.z
rnn_6/lstm_cell_6/Sigmoid_2Sigmoid rnn_6/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€.o
rnn_6/lstm_cell_6/Tanh_1Tanhrnn_6/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.П
rnn_6/lstm_cell_6/mul_2Mulrnn_6/lstm_cell_6/Sigmoid_2:y:0rnn_6/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.t
#rnn_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   d
"rnn_6/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :„
rnn_6/TensorArrayV2_1TensorListReserve,rnn_6/TensorArrayV2_1/element_shape:output:0+rnn_6/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“L

rnn_6/timeConst*
_output_shapes
: *
dtype0*
value	B : i
rnn_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Z
rnn_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ў
rnn_6/whileWhile!rnn_6/while/loop_counter:output:0'rnn_6/while/maximum_iterations:output:0rnn_6/time:output:0rnn_6/TensorArrayV2_1:handle:0rnn_6/zeros:output:0rnn_6/zeros_1:output:0rnn_6/strided_slice_1:output:0=rnn_6/TensorArrayUnstack/TensorListFromTensor:output_handle:00rnn_6_lstm_cell_6_matmul_readvariableop_resource2rnn_6_lstm_cell_6_matmul_1_readvariableop_resource1rnn_6_lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
rnn_6_while_body_202288313*&
condR
rnn_6_while_cond_202288312*K
output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *
parallel_iterations З
6rnn_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   и
(rnn_6/TensorArrayV2Stack/TensorListStackTensorListStackrnn_6/while:output:3?rnn_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€.*
element_dtype0*
num_elementsn
rnn_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€g
rnn_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
rnn_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:•
rnn_6/strided_slice_3StridedSlice1rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0$rnn_6/strided_slice_3/stack:output:0&rnn_6/strided_slice_3/stack_1:output:0&rnn_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€.*
shrink_axis_maskk
rnn_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
rnn_6/transpose_1	Transpose1rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0rnn_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€.Ж
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:..*
dtype0У
dense_26/MatMulMatMulrnn_6/strided_slice_3:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€.Д
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0С
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€.b
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€.Ж
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

:.*
dtype0Р
dense_27/MatMulMatMuldense_26/Relu:activations:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€h
IdentityIdentitydense_27/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€У
NoOpNoOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp)^rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp(^rnn_6/lstm_cell_6/MatMul/ReadVariableOp*^rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp^rnn_6/while=^token_and_position_embedding_6/embedding_12/embedding_lookup=^token_and_position_embedding_6/embedding_13/embedding_lookupF^transformer_encoder_6/layer_normalization_12/batchnorm/ReadVariableOpJ^transformer_encoder_6/layer_normalization_12/batchnorm/mul/ReadVariableOpF^transformer_encoder_6/layer_normalization_13/batchnorm/ReadVariableOpJ^transformer_encoder_6/layer_normalization_13/batchnorm/mul/ReadVariableOpQ^transformer_encoder_6/multi_head_attention_6/attention_output/add/ReadVariableOp[^transformer_encoder_6/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpD^transformer_encoder_6/multi_head_attention_6/key/add/ReadVariableOpN^transformer_encoder_6/multi_head_attention_6/key/einsum/Einsum/ReadVariableOpF^transformer_encoder_6/multi_head_attention_6/query/add/ReadVariableOpP^transformer_encoder_6/multi_head_attention_6/query/einsum/Einsum/ReadVariableOpF^transformer_encoder_6/multi_head_attention_6/value/add/ReadVariableOpP^transformer_encoder_6/multi_head_attention_6/value/einsum/Einsum/ReadVariableOpC^transformer_encoder_6/sequential_6/dense_24/BiasAdd/ReadVariableOpE^transformer_encoder_6/sequential_6/dense_24/Tensordot/ReadVariableOpC^transformer_encoder_6/sequential_6/dense_25/BiasAdd/ReadVariableOpE^transformer_encoder_6/sequential_6/dense_25/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€.: : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2T
(rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp(rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp2R
'rnn_6/lstm_cell_6/MatMul/ReadVariableOp'rnn_6/lstm_cell_6/MatMul/ReadVariableOp2V
)rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp)rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp2
rnn_6/whilernn_6/while2|
<token_and_position_embedding_6/embedding_12/embedding_lookup<token_and_position_embedding_6/embedding_12/embedding_lookup2|
<token_and_position_embedding_6/embedding_13/embedding_lookup<token_and_position_embedding_6/embedding_13/embedding_lookup2О
Etransformer_encoder_6/layer_normalization_12/batchnorm/ReadVariableOpEtransformer_encoder_6/layer_normalization_12/batchnorm/ReadVariableOp2Ц
Itransformer_encoder_6/layer_normalization_12/batchnorm/mul/ReadVariableOpItransformer_encoder_6/layer_normalization_12/batchnorm/mul/ReadVariableOp2О
Etransformer_encoder_6/layer_normalization_13/batchnorm/ReadVariableOpEtransformer_encoder_6/layer_normalization_13/batchnorm/ReadVariableOp2Ц
Itransformer_encoder_6/layer_normalization_13/batchnorm/mul/ReadVariableOpItransformer_encoder_6/layer_normalization_13/batchnorm/mul/ReadVariableOp2§
Ptransformer_encoder_6/multi_head_attention_6/attention_output/add/ReadVariableOpPtransformer_encoder_6/multi_head_attention_6/attention_output/add/ReadVariableOp2Є
Ztransformer_encoder_6/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpZtransformer_encoder_6/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp2К
Ctransformer_encoder_6/multi_head_attention_6/key/add/ReadVariableOpCtransformer_encoder_6/multi_head_attention_6/key/add/ReadVariableOp2Ю
Mtransformer_encoder_6/multi_head_attention_6/key/einsum/Einsum/ReadVariableOpMtransformer_encoder_6/multi_head_attention_6/key/einsum/Einsum/ReadVariableOp2О
Etransformer_encoder_6/multi_head_attention_6/query/add/ReadVariableOpEtransformer_encoder_6/multi_head_attention_6/query/add/ReadVariableOp2Ґ
Otransformer_encoder_6/multi_head_attention_6/query/einsum/Einsum/ReadVariableOpOtransformer_encoder_6/multi_head_attention_6/query/einsum/Einsum/ReadVariableOp2О
Etransformer_encoder_6/multi_head_attention_6/value/add/ReadVariableOpEtransformer_encoder_6/multi_head_attention_6/value/add/ReadVariableOp2Ґ
Otransformer_encoder_6/multi_head_attention_6/value/einsum/Einsum/ReadVariableOpOtransformer_encoder_6/multi_head_attention_6/value/einsum/Einsum/ReadVariableOp2И
Btransformer_encoder_6/sequential_6/dense_24/BiasAdd/ReadVariableOpBtransformer_encoder_6/sequential_6/dense_24/BiasAdd/ReadVariableOp2М
Dtransformer_encoder_6/sequential_6/dense_24/Tensordot/ReadVariableOpDtransformer_encoder_6/sequential_6/dense_24/Tensordot/ReadVariableOp2И
Btransformer_encoder_6/sequential_6/dense_25/BiasAdd/ReadVariableOpBtransformer_encoder_6/sequential_6/dense_25/BiasAdd/ReadVariableOp2М
Dtransformer_encoder_6/sequential_6/dense_25/Tensordot/ReadVariableOpDtransformer_encoder_6/sequential_6/dense_25/Tensordot/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€.
 
_user_specified_nameinputs
Пв
ЕB
%__inference__traced_restore_202290297
file_prefix2
 assignvariableop_dense_26_kernel:...
 assignvariableop_1_dense_26_bias:.4
"assignvariableop_2_dense_27_kernel:..
 assignvariableop_3_dense_27_bias:\
Iassignvariableop_4_token_and_position_embedding_6_embedding_12_embeddings:	Б2[
Iassignvariableop_5_token_and_position_embedding_6_embedding_13_embeddings:.2b
Lassignvariableop_6_transformer_encoder_6_multi_head_attention_6_query_kernel:22\
Jassignvariableop_7_transformer_encoder_6_multi_head_attention_6_query_bias:2`
Jassignvariableop_8_transformer_encoder_6_multi_head_attention_6_key_kernel:22Z
Hassignvariableop_9_transformer_encoder_6_multi_head_attention_6_key_bias:2c
Massignvariableop_10_transformer_encoder_6_multi_head_attention_6_value_kernel:22]
Kassignvariableop_11_transformer_encoder_6_multi_head_attention_6_value_bias:2n
Xassignvariableop_12_transformer_encoder_6_multi_head_attention_6_attention_output_kernel:22d
Vassignvariableop_13_transformer_encoder_6_multi_head_attention_6_attention_output_bias:25
#assignvariableop_14_dense_24_kernel:2 /
!assignvariableop_15_dense_24_bias: 5
#assignvariableop_16_dense_25_kernel: 2/
!assignvariableop_17_dense_25_bias:2T
Fassignvariableop_18_transformer_encoder_6_layer_normalization_12_gamma:2S
Eassignvariableop_19_transformer_encoder_6_layer_normalization_12_beta:2T
Fassignvariableop_20_transformer_encoder_6_layer_normalization_13_gamma:2S
Eassignvariableop_21_transformer_encoder_6_layer_normalization_13_beta:2?
,assignvariableop_22_rnn_6_lstm_cell_6_kernel:	2ЄI
6assignvariableop_23_rnn_6_lstm_cell_6_recurrent_kernel:	.Є9
*assignvariableop_24_rnn_6_lstm_cell_6_bias:	Є'
assignvariableop_25_adam_iter:	 )
assignvariableop_26_adam_beta_1: )
assignvariableop_27_adam_beta_2: (
assignvariableop_28_adam_decay: 0
&assignvariableop_29_adam_learning_rate: %
assignvariableop_30_total_1: %
assignvariableop_31_count_1: #
assignvariableop_32_total: #
assignvariableop_33_count: <
*assignvariableop_34_adam_dense_26_kernel_m:..6
(assignvariableop_35_adam_dense_26_bias_m:.<
*assignvariableop_36_adam_dense_27_kernel_m:.6
(assignvariableop_37_adam_dense_27_bias_m:d
Qassignvariableop_38_adam_token_and_position_embedding_6_embedding_12_embeddings_m:	Б2c
Qassignvariableop_39_adam_token_and_position_embedding_6_embedding_13_embeddings_m:.2j
Tassignvariableop_40_adam_transformer_encoder_6_multi_head_attention_6_query_kernel_m:22d
Rassignvariableop_41_adam_transformer_encoder_6_multi_head_attention_6_query_bias_m:2h
Rassignvariableop_42_adam_transformer_encoder_6_multi_head_attention_6_key_kernel_m:22b
Passignvariableop_43_adam_transformer_encoder_6_multi_head_attention_6_key_bias_m:2j
Tassignvariableop_44_adam_transformer_encoder_6_multi_head_attention_6_value_kernel_m:22d
Rassignvariableop_45_adam_transformer_encoder_6_multi_head_attention_6_value_bias_m:2u
_assignvariableop_46_adam_transformer_encoder_6_multi_head_attention_6_attention_output_kernel_m:22k
]assignvariableop_47_adam_transformer_encoder_6_multi_head_attention_6_attention_output_bias_m:2<
*assignvariableop_48_adam_dense_24_kernel_m:2 6
(assignvariableop_49_adam_dense_24_bias_m: <
*assignvariableop_50_adam_dense_25_kernel_m: 26
(assignvariableop_51_adam_dense_25_bias_m:2[
Massignvariableop_52_adam_transformer_encoder_6_layer_normalization_12_gamma_m:2Z
Lassignvariableop_53_adam_transformer_encoder_6_layer_normalization_12_beta_m:2[
Massignvariableop_54_adam_transformer_encoder_6_layer_normalization_13_gamma_m:2Z
Lassignvariableop_55_adam_transformer_encoder_6_layer_normalization_13_beta_m:2F
3assignvariableop_56_adam_rnn_6_lstm_cell_6_kernel_m:	2ЄP
=assignvariableop_57_adam_rnn_6_lstm_cell_6_recurrent_kernel_m:	.Є@
1assignvariableop_58_adam_rnn_6_lstm_cell_6_bias_m:	Є<
*assignvariableop_59_adam_dense_26_kernel_v:..6
(assignvariableop_60_adam_dense_26_bias_v:.<
*assignvariableop_61_adam_dense_27_kernel_v:.6
(assignvariableop_62_adam_dense_27_bias_v:d
Qassignvariableop_63_adam_token_and_position_embedding_6_embedding_12_embeddings_v:	Б2c
Qassignvariableop_64_adam_token_and_position_embedding_6_embedding_13_embeddings_v:.2j
Tassignvariableop_65_adam_transformer_encoder_6_multi_head_attention_6_query_kernel_v:22d
Rassignvariableop_66_adam_transformer_encoder_6_multi_head_attention_6_query_bias_v:2h
Rassignvariableop_67_adam_transformer_encoder_6_multi_head_attention_6_key_kernel_v:22b
Passignvariableop_68_adam_transformer_encoder_6_multi_head_attention_6_key_bias_v:2j
Tassignvariableop_69_adam_transformer_encoder_6_multi_head_attention_6_value_kernel_v:22d
Rassignvariableop_70_adam_transformer_encoder_6_multi_head_attention_6_value_bias_v:2u
_assignvariableop_71_adam_transformer_encoder_6_multi_head_attention_6_attention_output_kernel_v:22k
]assignvariableop_72_adam_transformer_encoder_6_multi_head_attention_6_attention_output_bias_v:2<
*assignvariableop_73_adam_dense_24_kernel_v:2 6
(assignvariableop_74_adam_dense_24_bias_v: <
*assignvariableop_75_adam_dense_25_kernel_v: 26
(assignvariableop_76_adam_dense_25_bias_v:2[
Massignvariableop_77_adam_transformer_encoder_6_layer_normalization_12_gamma_v:2Z
Lassignvariableop_78_adam_transformer_encoder_6_layer_normalization_12_beta_v:2[
Massignvariableop_79_adam_transformer_encoder_6_layer_normalization_13_gamma_v:2Z
Lassignvariableop_80_adam_transformer_encoder_6_layer_normalization_13_beta_v:2F
3assignvariableop_81_adam_rnn_6_lstm_cell_6_kernel_v:	2ЄP
=assignvariableop_82_adam_rnn_6_lstm_cell_6_recurrent_kernel_v:	.Є@
1assignvariableop_83_adam_rnn_6_lstm_cell_6_bias_v:	Є
identity_85ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_60ҐAssignVariableOp_61ҐAssignVariableOp_62ҐAssignVariableOp_63ҐAssignVariableOp_64ҐAssignVariableOp_65ҐAssignVariableOp_66ҐAssignVariableOp_67ҐAssignVariableOp_68ҐAssignVariableOp_69ҐAssignVariableOp_7ҐAssignVariableOp_70ҐAssignVariableOp_71ҐAssignVariableOp_72ҐAssignVariableOp_73ҐAssignVariableOp_74ҐAssignVariableOp_75ҐAssignVariableOp_76ҐAssignVariableOp_77ҐAssignVariableOp_78ҐAssignVariableOp_79ҐAssignVariableOp_8ҐAssignVariableOp_80ҐAssignVariableOp_81ҐAssignVariableOp_82ҐAssignVariableOp_83ҐAssignVariableOp_9ѕ(
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*х'
valueл'Bи'UB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЭ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*њ
valueµB≤UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B  
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*к
_output_shapes„
‘:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*c
dtypesY
W2U	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOpAssignVariableOp assignvariableop_dense_26_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_26_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_27_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_27_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_4AssignVariableOpIassignvariableop_4_token_and_position_embedding_6_embedding_12_embeddingsIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_5AssignVariableOpIassignvariableop_5_token_and_position_embedding_6_embedding_13_embeddingsIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_6AssignVariableOpLassignvariableop_6_transformer_encoder_6_multi_head_attention_6_query_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_7AssignVariableOpJassignvariableop_7_transformer_encoder_6_multi_head_attention_6_query_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_8AssignVariableOpJassignvariableop_8_transformer_encoder_6_multi_head_attention_6_key_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_9AssignVariableOpHassignvariableop_9_transformer_encoder_6_multi_head_attention_6_key_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_10AssignVariableOpMassignvariableop_10_transformer_encoder_6_multi_head_attention_6_value_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_11AssignVariableOpKassignvariableop_11_transformer_encoder_6_multi_head_attention_6_value_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:…
AssignVariableOp_12AssignVariableOpXassignvariableop_12_transformer_encoder_6_multi_head_attention_6_attention_output_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_13AssignVariableOpVassignvariableop_13_transformer_encoder_6_multi_head_attention_6_attention_output_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_24_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_24_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_16AssignVariableOp#assignvariableop_16_dense_25_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_17AssignVariableOp!assignvariableop_17_dense_25_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_18AssignVariableOpFassignvariableop_18_transformer_encoder_6_layer_normalization_12_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_19AssignVariableOpEassignvariableop_19_transformer_encoder_6_layer_normalization_12_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_20AssignVariableOpFassignvariableop_20_transformer_encoder_6_layer_normalization_13_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_21AssignVariableOpEassignvariableop_21_transformer_encoder_6_layer_normalization_13_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_22AssignVariableOp,assignvariableop_22_rnn_6_lstm_cell_6_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_23AssignVariableOp6assignvariableop_23_rnn_6_lstm_cell_6_recurrent_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_24AssignVariableOp*assignvariableop_24_rnn_6_lstm_cell_6_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_25AssignVariableOpassignvariableop_25_adam_iterIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_26AssignVariableOpassignvariableop_26_adam_beta_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_27AssignVariableOpassignvariableop_27_adam_beta_2Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_28AssignVariableOpassignvariableop_28_adam_decayIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_29AssignVariableOp&assignvariableop_29_adam_learning_rateIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_30AssignVariableOpassignvariableop_30_total_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_31AssignVariableOpassignvariableop_31_count_1Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_32AssignVariableOpassignvariableop_32_totalIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_33AssignVariableOpassignvariableop_33_countIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_dense_26_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_dense_26_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_dense_27_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_dense_27_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_38AssignVariableOpQassignvariableop_38_adam_token_and_position_embedding_6_embedding_12_embeddings_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_39AssignVariableOpQassignvariableop_39_adam_token_and_position_embedding_6_embedding_13_embeddings_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_40AssignVariableOpTassignvariableop_40_adam_transformer_encoder_6_multi_head_attention_6_query_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_41AssignVariableOpRassignvariableop_41_adam_transformer_encoder_6_multi_head_attention_6_query_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_42AssignVariableOpRassignvariableop_42_adam_transformer_encoder_6_multi_head_attention_6_key_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_43AssignVariableOpPassignvariableop_43_adam_transformer_encoder_6_multi_head_attention_6_key_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_44AssignVariableOpTassignvariableop_44_adam_transformer_encoder_6_multi_head_attention_6_value_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_45AssignVariableOpRassignvariableop_45_adam_transformer_encoder_6_multi_head_attention_6_value_bias_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:–
AssignVariableOp_46AssignVariableOp_assignvariableop_46_adam_transformer_encoder_6_multi_head_attention_6_attention_output_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_47AssignVariableOp]assignvariableop_47_adam_transformer_encoder_6_multi_head_attention_6_attention_output_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_48AssignVariableOp*assignvariableop_48_adam_dense_24_kernel_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_dense_24_bias_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_50AssignVariableOp*assignvariableop_50_adam_dense_25_kernel_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_51AssignVariableOp(assignvariableop_51_adam_dense_25_bias_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_52AssignVariableOpMassignvariableop_52_adam_transformer_encoder_6_layer_normalization_12_gamma_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_53AssignVariableOpLassignvariableop_53_adam_transformer_encoder_6_layer_normalization_12_beta_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_54AssignVariableOpMassignvariableop_54_adam_transformer_encoder_6_layer_normalization_13_gamma_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_55AssignVariableOpLassignvariableop_55_adam_transformer_encoder_6_layer_normalization_13_beta_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_56AssignVariableOp3assignvariableop_56_adam_rnn_6_lstm_cell_6_kernel_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_57AssignVariableOp=assignvariableop_57_adam_rnn_6_lstm_cell_6_recurrent_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:Ґ
AssignVariableOp_58AssignVariableOp1assignvariableop_58_adam_rnn_6_lstm_cell_6_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_dense_26_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_dense_26_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_61AssignVariableOp*assignvariableop_61_adam_dense_27_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_62AssignVariableOp(assignvariableop_62_adam_dense_27_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_63AssignVariableOpQassignvariableop_63_adam_token_and_position_embedding_6_embedding_12_embeddings_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_64AssignVariableOpQassignvariableop_64_adam_token_and_position_embedding_6_embedding_13_embeddings_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_65AssignVariableOpTassignvariableop_65_adam_transformer_encoder_6_multi_head_attention_6_query_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_66AssignVariableOpRassignvariableop_66_adam_transformer_encoder_6_multi_head_attention_6_query_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_67AssignVariableOpRassignvariableop_67_adam_transformer_encoder_6_multi_head_attention_6_key_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_68AssignVariableOpPassignvariableop_68_adam_transformer_encoder_6_multi_head_attention_6_key_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_69AssignVariableOpTassignvariableop_69_adam_transformer_encoder_6_multi_head_attention_6_value_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_70AssignVariableOpRassignvariableop_70_adam_transformer_encoder_6_multi_head_attention_6_value_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:–
AssignVariableOp_71AssignVariableOp_assignvariableop_71_adam_transformer_encoder_6_multi_head_attention_6_attention_output_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_72AssignVariableOp]assignvariableop_72_adam_transformer_encoder_6_multi_head_attention_6_attention_output_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_73AssignVariableOp*assignvariableop_73_adam_dense_24_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_74AssignVariableOp(assignvariableop_74_adam_dense_24_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_75AssignVariableOp*assignvariableop_75_adam_dense_25_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_76AssignVariableOp(assignvariableop_76_adam_dense_25_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_77AssignVariableOpMassignvariableop_77_adam_transformer_encoder_6_layer_normalization_12_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_78AssignVariableOpLassignvariableop_78_adam_transformer_encoder_6_layer_normalization_12_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_79AssignVariableOpMassignvariableop_79_adam_transformer_encoder_6_layer_normalization_13_gamma_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_80AssignVariableOpLassignvariableop_80_adam_transformer_encoder_6_layer_normalization_13_beta_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_81AssignVariableOp3assignvariableop_81_adam_rnn_6_lstm_cell_6_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_82AssignVariableOp=assignvariableop_82_adam_rnn_6_lstm_cell_6_recurrent_kernel_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:Ґ
AssignVariableOp_83AssignVariableOp1assignvariableop_83_adam_rnn_6_lstm_cell_6_bias_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 З
Identity_84Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_85IdentityIdentity_84:output:0^NoOp_1*
T0*
_output_shapes
: ф
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_85Identity_85:output:0*њ
_input_shapes≠
™: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
•J
Ш
D__inference_rnn_6_layer_call_and_return_conditional_losses_202289116
inputs_0=
*lstm_cell_6_matmul_readvariableop_resource:	2Є?
,lstm_cell_6_matmul_1_readvariableop_resource:	.Є:
+lstm_cell_6_biasadd_readvariableop_resource:	Є
identityИҐ"lstm_cell_6/BiasAdd/ReadVariableOpҐ!lstm_cell_6/MatMul/ReadVariableOpҐ#lstm_cell_6/MatMul_1/ReadVariableOpҐwhile=
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
valueB:—
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
:€€€€€€€€€.R
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
:€€€€€€€€€.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2D
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskН
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	2Є*
dtype0Ф
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄС
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	.Є*
dtype0О
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЙ
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЛ
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:Є*
dtype0Т
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Є]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Џ
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€.n
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€.u
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€.f
lstm_cell_6/TanhTanhlstm_cell_6/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€.y
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.x
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.n
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€.c
lstm_cell_6/Tanh_1Tanhlstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.}
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
while_body_202289032* 
condR
while_cond_202289031*K
output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.љ
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€2: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
"
_user_specified_name
inputs/0
й
»
K__inference_sequential_6_layer_call_and_return_conditional_losses_202286083
dense_24_input$
dense_24_202286072:2  
dense_24_202286074: $
dense_25_202286077: 2 
dense_25_202286079:2
identityИҐ dense_24/StatefulPartitionedCallҐ dense_25/StatefulPartitionedCallЕ
 dense_24/StatefulPartitionedCallStatefulPartitionedCalldense_24_inputdense_24_202286072dense_24_202286074*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€. *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_24_layer_call_and_return_conditional_losses_202285928†
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_202286077dense_25_202286079*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_25_layer_call_and_return_conditional_losses_202285964|
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2М
NoOpNoOp!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€.2: : : : 2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall:[ W
+
_output_shapes
:€€€€€€€€€.2
(
_user_specified_namedense_24_input
•J
Ш
D__inference_rnn_6_layer_call_and_return_conditional_losses_202288972
inputs_0=
*lstm_cell_6_matmul_readvariableop_resource:	2Є?
,lstm_cell_6_matmul_1_readvariableop_resource:	.Є:
+lstm_cell_6_biasadd_readvariableop_resource:	Є
identityИҐ"lstm_cell_6/BiasAdd/ReadVariableOpҐ!lstm_cell_6/MatMul/ReadVariableOpҐ#lstm_cell_6/MatMul_1/ReadVariableOpҐwhile=
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
valueB:—
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
:€€€€€€€€€.R
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
:€€€€€€€€€.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2D
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskН
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	2Є*
dtype0Ф
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄС
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	.Є*
dtype0О
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЙ
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЛ
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:Є*
dtype0Т
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Є]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Џ
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€.n
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€.u
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€.f
lstm_cell_6/TanhTanhlstm_cell_6/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€.y
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.x
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.n
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€.c
lstm_cell_6/Tanh_1Tanhlstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.}
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
while_body_202288888* 
condR
while_cond_202288887*K
output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.љ
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€2: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
"
_user_specified_name
inputs/0
№
є
9__inference_transformer_encoder_6_layer_call_fn_202288517

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
identityИҐStatefulPartitionedCall®
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
:€€€€€€€€€.2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_transformer_encoder_6_layer_call_and_return_conditional_losses_202287237s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€.2: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€.2
 
_user_specified_nameinputs
√
Ж
J__inference_lstm_cell_6_layer_call_and_return_conditional_losses_202286297

inputs

states
states_11
matmul_readvariableop_resource:	2Є3
 matmul_1_readvariableop_resource:	.Є.
biasadd_readvariableop_resource:	Є
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2Є*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Єy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	.Є*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Єe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Єs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Є*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€.V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€.U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€.N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€.U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€.K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€2:€€€€€€€€€.:€€€€€€€€€.: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€.
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€.
 
_user_specified_namestates
і
”
0__inference_sequential_6_layer_call_fn_202289469

inputs
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identityИҐStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€.2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_sequential_6_layer_call_and_return_conditional_losses_202286031s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€.2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€.2
 
_user_specified_nameinputs
Ў
Щ
,__inference_dense_24_layer_call_fn_202289690

inputs
unknown:2 
	unknown_0: 
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€. *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_24_layer_call_and_return_conditional_losses_202285928s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€. `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€.2: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€.2
 
_user_specified_nameinputs
ВJ
Ц
D__inference_rnn_6_layer_call_and_return_conditional_losses_202286776

inputs=
*lstm_cell_6_matmul_readvariableop_resource:	2Є?
,lstm_cell_6_matmul_1_readvariableop_resource:	.Є:
+lstm_cell_6_biasadd_readvariableop_resource:	Є
identityИҐ"lstm_cell_6/BiasAdd/ReadVariableOpҐ!lstm_cell_6/MatMul/ReadVariableOpҐ#lstm_cell_6/MatMul_1/ReadVariableOpҐwhile;
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
valueB:—
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
:€€€€€€€€€.R
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
:€€€€€€€€€.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:.€€€€€€€€€2D
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskН
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	2Є*
dtype0Ф
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄС
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	.Є*
dtype0О
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЙ
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЛ
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:Є*
dtype0Т
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Є]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Џ
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€.n
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€.u
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€.f
lstm_cell_6/TanhTanhlstm_cell_6/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€.y
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.x
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.n
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€.c
lstm_cell_6/Tanh_1Tanhlstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.}
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
while_body_202286692* 
condR
while_cond_202286691*K
output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.љ
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€.2: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€.2
 
_user_specified_nameinputs
”8
 
while_body_202289176
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	2ЄG
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	.ЄB
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	Є
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	2ЄE
2while_lstm_cell_6_matmul_1_readvariableop_resource:	.Є@
1while_lstm_cell_6_biasadd_readvariableop_resource:	ЄИҐ(while/lstm_cell_6/BiasAdd/ReadVariableOpҐ'while/lstm_cell_6/MatMul/ReadVariableOpҐ)while/lstm_cell_6/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0Ы
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	2Є*
dtype0Є
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЯ
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	.Є*
dtype0Я
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЫ
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЩ
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:Є*
dtype0§
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Єc
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :м
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€.z
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€.Д
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€.r
while/lstm_cell_6/TanhTanh while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€.Л
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0while/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.К
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.z
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€.o
while/lstm_cell_6/Tanh_1Tanhwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.П
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0while/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.x
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.Ќ

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
: 
жу
й
F__inference_model_6_layer_call_and_return_conditional_losses_202288097

inputsX
Ftoken_and_position_embedding_6_embedding_13_embedding_lookup_202287808:.2Y
Ftoken_and_position_embedding_6_embedding_12_embedding_lookup_202287814:	Б2n
Xtransformer_encoder_6_multi_head_attention_6_query_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_6_multi_head_attention_6_query_add_readvariableop_resource:2l
Vtransformer_encoder_6_multi_head_attention_6_key_einsum_einsum_readvariableop_resource:22^
Ltransformer_encoder_6_multi_head_attention_6_key_add_readvariableop_resource:2n
Xtransformer_encoder_6_multi_head_attention_6_value_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_6_multi_head_attention_6_value_add_readvariableop_resource:2y
ctransformer_encoder_6_multi_head_attention_6_attention_output_einsum_einsum_readvariableop_resource:22g
Ytransformer_encoder_6_multi_head_attention_6_attention_output_add_readvariableop_resource:2`
Rtransformer_encoder_6_layer_normalization_12_batchnorm_mul_readvariableop_resource:2\
Ntransformer_encoder_6_layer_normalization_12_batchnorm_readvariableop_resource:2_
Mtransformer_encoder_6_sequential_6_dense_24_tensordot_readvariableop_resource:2 Y
Ktransformer_encoder_6_sequential_6_dense_24_biasadd_readvariableop_resource: _
Mtransformer_encoder_6_sequential_6_dense_25_tensordot_readvariableop_resource: 2Y
Ktransformer_encoder_6_sequential_6_dense_25_biasadd_readvariableop_resource:2`
Rtransformer_encoder_6_layer_normalization_13_batchnorm_mul_readvariableop_resource:2\
Ntransformer_encoder_6_layer_normalization_13_batchnorm_readvariableop_resource:2C
0rnn_6_lstm_cell_6_matmul_readvariableop_resource:	2ЄE
2rnn_6_lstm_cell_6_matmul_1_readvariableop_resource:	.Є@
1rnn_6_lstm_cell_6_biasadd_readvariableop_resource:	Є9
'dense_26_matmul_readvariableop_resource:..6
(dense_26_biasadd_readvariableop_resource:.9
'dense_27_matmul_readvariableop_resource:.6
(dense_27_biasadd_readvariableop_resource:
identityИҐdense_26/BiasAdd/ReadVariableOpҐdense_26/MatMul/ReadVariableOpҐdense_27/BiasAdd/ReadVariableOpҐdense_27/MatMul/ReadVariableOpҐ(rnn_6/lstm_cell_6/BiasAdd/ReadVariableOpҐ'rnn_6/lstm_cell_6/MatMul/ReadVariableOpҐ)rnn_6/lstm_cell_6/MatMul_1/ReadVariableOpҐrnn_6/whileҐ<token_and_position_embedding_6/embedding_12/embedding_lookupҐ<token_and_position_embedding_6/embedding_13/embedding_lookupҐEtransformer_encoder_6/layer_normalization_12/batchnorm/ReadVariableOpҐItransformer_encoder_6/layer_normalization_12/batchnorm/mul/ReadVariableOpҐEtransformer_encoder_6/layer_normalization_13/batchnorm/ReadVariableOpҐItransformer_encoder_6/layer_normalization_13/batchnorm/mul/ReadVariableOpҐPtransformer_encoder_6/multi_head_attention_6/attention_output/add/ReadVariableOpҐZtransformer_encoder_6/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpҐCtransformer_encoder_6/multi_head_attention_6/key/add/ReadVariableOpҐMtransformer_encoder_6/multi_head_attention_6/key/einsum/Einsum/ReadVariableOpҐEtransformer_encoder_6/multi_head_attention_6/query/add/ReadVariableOpҐOtransformer_encoder_6/multi_head_attention_6/query/einsum/Einsum/ReadVariableOpҐEtransformer_encoder_6/multi_head_attention_6/value/add/ReadVariableOpҐOtransformer_encoder_6/multi_head_attention_6/value/einsum/Einsum/ReadVariableOpҐBtransformer_encoder_6/sequential_6/dense_24/BiasAdd/ReadVariableOpҐDtransformer_encoder_6/sequential_6/dense_24/Tensordot/ReadVariableOpҐBtransformer_encoder_6/sequential_6/dense_25/BiasAdd/ReadVariableOpҐDtransformer_encoder_6/sequential_6/dense_25/Tensordot/ReadVariableOpZ
$token_and_position_embedding_6/ShapeShapeinputs*
T0*
_output_shapes
:Е
2token_and_position_embedding_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€~
4token_and_position_embedding_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:м
,token_and_position_embedding_6/strided_sliceStridedSlice-token_and_position_embedding_6/Shape:output:0;token_and_position_embedding_6/strided_slice/stack:output:0=token_and_position_embedding_6/strided_slice/stack_1:output:0=token_and_position_embedding_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_6/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_6/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :к
$token_and_position_embedding_6/rangeRange3token_and_position_embedding_6/range/start:output:05token_and_position_embedding_6/strided_slice:output:03token_and_position_embedding_6/range/delta:output:0*
_output_shapes
:.Ё
<token_and_position_embedding_6/embedding_13/embedding_lookupResourceGatherFtoken_and_position_embedding_6_embedding_13_embedding_lookup_202287808-token_and_position_embedding_6/range:output:0*
Tindices0*Y
_classO
MKloc:@token_and_position_embedding_6/embedding_13/embedding_lookup/202287808*
_output_shapes

:.2*
dtype0Ь
Etoken_and_position_embedding_6/embedding_13/embedding_lookup/IdentityIdentityEtoken_and_position_embedding_6/embedding_13/embedding_lookup:output:0*
T0*Y
_classO
MKloc:@token_and_position_embedding_6/embedding_13/embedding_lookup/202287808*
_output_shapes

:.2ћ
Gtoken_and_position_embedding_6/embedding_13/embedding_lookup/Identity_1IdentityNtoken_and_position_embedding_6/embedding_13/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:.2Б
0token_and_position_embedding_6/embedding_12/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€.с
<token_and_position_embedding_6/embedding_12/embedding_lookupResourceGatherFtoken_and_position_embedding_6_embedding_12_embedding_lookup_2022878144token_and_position_embedding_6/embedding_12/Cast:y:0*
Tindices0*Y
_classO
MKloc:@token_and_position_embedding_6/embedding_12/embedding_lookup/202287814*+
_output_shapes
:€€€€€€€€€.2*
dtype0©
Etoken_and_position_embedding_6/embedding_12/embedding_lookup/IdentityIdentityEtoken_and_position_embedding_6/embedding_12/embedding_lookup:output:0*
T0*Y
_classO
MKloc:@token_and_position_embedding_6/embedding_12/embedding_lookup/202287814*+
_output_shapes
:€€€€€€€€€.2ў
Gtoken_and_position_embedding_6/embedding_12/embedding_lookup/Identity_1IdentityNtoken_and_position_embedding_6/embedding_12/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Е
"token_and_position_embedding_6/addAddV2Ptoken_and_position_embedding_6/embedding_12/embedding_lookup/Identity_1:output:0Ptoken_and_position_embedding_6/embedding_13/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2м
Otransformer_encoder_6/multi_head_attention_6/query/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_6_multi_head_attention_6_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ђ
@transformer_encoder_6/multi_head_attention_6/query/einsum/EinsumEinsum&token_and_position_embedding_6/add:z:0Wtransformer_encoder_6/multi_head_attention_6/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationabc,cde->abde‘
Etransformer_encoder_6/multi_head_attention_6/query/add/ReadVariableOpReadVariableOpNtransformer_encoder_6_multi_head_attention_6_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0У
6transformer_encoder_6/multi_head_attention_6/query/addAddV2Itransformer_encoder_6/multi_head_attention_6/query/einsum/Einsum:output:0Mtransformer_encoder_6/multi_head_attention_6/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€.2и
Mtransformer_encoder_6/multi_head_attention_6/key/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_encoder_6_multi_head_attention_6_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0І
>transformer_encoder_6/multi_head_attention_6/key/einsum/EinsumEinsum&token_and_position_embedding_6/add:z:0Utransformer_encoder_6/multi_head_attention_6/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationabc,cde->abde–
Ctransformer_encoder_6/multi_head_attention_6/key/add/ReadVariableOpReadVariableOpLtransformer_encoder_6_multi_head_attention_6_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Н
4transformer_encoder_6/multi_head_attention_6/key/addAddV2Gtransformer_encoder_6/multi_head_attention_6/key/einsum/Einsum:output:0Ktransformer_encoder_6/multi_head_attention_6/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€.2м
Otransformer_encoder_6/multi_head_attention_6/value/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_6_multi_head_attention_6_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ђ
@transformer_encoder_6/multi_head_attention_6/value/einsum/EinsumEinsum&token_and_position_embedding_6/add:z:0Wtransformer_encoder_6/multi_head_attention_6/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationabc,cde->abde‘
Etransformer_encoder_6/multi_head_attention_6/value/add/ReadVariableOpReadVariableOpNtransformer_encoder_6_multi_head_attention_6_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0У
6transformer_encoder_6/multi_head_attention_6/value/addAddV2Itransformer_encoder_6/multi_head_attention_6/value/einsum/Einsum:output:0Mtransformer_encoder_6/multi_head_attention_6/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€.2w
2transformer_encoder_6/multi_head_attention_6/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *√–>к
0transformer_encoder_6/multi_head_attention_6/MulMul:transformer_encoder_6/multi_head_attention_6/query/add:z:0;transformer_encoder_6/multi_head_attention_6/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€.2Ц
:transformer_encoder_6/multi_head_attention_6/einsum/EinsumEinsum8transformer_encoder_6/multi_head_attention_6/key/add:z:04transformer_encoder_6/multi_head_attention_6/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€..*
equationaecd,abcd->acbe∆
<transformer_encoder_6/multi_head_attention_6/softmax/SoftmaxSoftmaxCtransformer_encoder_6/multi_head_attention_6/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€..Ћ
=transformer_encoder_6/multi_head_attention_6/dropout/IdentityIdentityFtransformer_encoder_6/multi_head_attention_6/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€..ђ
<transformer_encoder_6/multi_head_attention_6/einsum_1/EinsumEinsumFtransformer_encoder_6/multi_head_attention_6/dropout/Identity:output:0:transformer_encoder_6/multi_head_attention_6/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationacbe,aecd->abcdВ
Ztransformer_encoder_6/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpctransformer_encoder_6_multi_head_attention_6_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0№
Ktransformer_encoder_6/multi_head_attention_6/attention_output/einsum/EinsumEinsumEtransformer_encoder_6/multi_head_attention_6/einsum_1/Einsum:output:0btransformer_encoder_6/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€.2*
equationabcd,cde->abeж
Ptransformer_encoder_6/multi_head_attention_6/attention_output/add/ReadVariableOpReadVariableOpYtransformer_encoder_6_multi_head_attention_6_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0∞
Atransformer_encoder_6/multi_head_attention_6/attention_output/addAddV2Ttransformer_encoder_6/multi_head_attention_6/attention_output/einsum/Einsum:output:0Xtransformer_encoder_6/multi_head_attention_6/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2≤
)transformer_encoder_6/dropout_18/IdentityIdentityEtransformer_encoder_6/multi_head_attention_6/attention_output/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2і
transformer_encoder_6/addAddV2&token_and_position_embedding_6/add:z:02transformer_encoder_6/dropout_18/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Х
Ktransformer_encoder_6/layer_normalization_12/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:э
9transformer_encoder_6/layer_normalization_12/moments/meanMeantransformer_encoder_6/add:z:0Ttransformer_encoder_6/layer_normalization_12/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(Ћ
Atransformer_encoder_6/layer_normalization_12/moments/StopGradientStopGradientBtransformer_encoder_6/layer_normalization_12/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€.ь
Ftransformer_encoder_6/layer_normalization_12/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_6/add:z:0Jtransformer_encoder_6/layer_normalization_12/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Щ
Otransformer_encoder_6/layer_normalization_12/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:≤
=transformer_encoder_6/layer_normalization_12/moments/varianceMeanJtransformer_encoder_6/layer_normalization_12/moments/SquaredDifference:z:0Xtransformer_encoder_6/layer_normalization_12/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(Б
<transformer_encoder_6/layer_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5И
:transformer_encoder_6/layer_normalization_12/batchnorm/addAddV2Ftransformer_encoder_6/layer_normalization_12/moments/variance:output:0Etransformer_encoder_6/layer_normalization_12/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€.ї
<transformer_encoder_6/layer_normalization_12/batchnorm/RsqrtRsqrt>transformer_encoder_6/layer_normalization_12/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€.Ў
Itransformer_encoder_6/layer_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOpRtransformer_encoder_6_layer_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0М
:transformer_encoder_6/layer_normalization_12/batchnorm/mulMul@transformer_encoder_6/layer_normalization_12/batchnorm/Rsqrt:y:0Qtransformer_encoder_6/layer_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2Ў
<transformer_encoder_6/layer_normalization_12/batchnorm/mul_1Multransformer_encoder_6/add:z:0>transformer_encoder_6/layer_normalization_12/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2э
<transformer_encoder_6/layer_normalization_12/batchnorm/mul_2MulBtransformer_encoder_6/layer_normalization_12/moments/mean:output:0>transformer_encoder_6/layer_normalization_12/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2–
Etransformer_encoder_6/layer_normalization_12/batchnorm/ReadVariableOpReadVariableOpNtransformer_encoder_6_layer_normalization_12_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0И
:transformer_encoder_6/layer_normalization_12/batchnorm/subSubMtransformer_encoder_6/layer_normalization_12/batchnorm/ReadVariableOp:value:0@transformer_encoder_6/layer_normalization_12/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2э
<transformer_encoder_6/layer_normalization_12/batchnorm/add_1AddV2@transformer_encoder_6/layer_normalization_12/batchnorm/mul_1:z:0>transformer_encoder_6/layer_normalization_12/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2“
Dtransformer_encoder_6/sequential_6/dense_24/Tensordot/ReadVariableOpReadVariableOpMtransformer_encoder_6_sequential_6_dense_24_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0Д
:transformer_encoder_6/sequential_6/dense_24/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:Л
:transformer_encoder_6/sequential_6/dense_24/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Ђ
;transformer_encoder_6/sequential_6/dense_24/Tensordot/ShapeShape@transformer_encoder_6/layer_normalization_12/batchnorm/add_1:z:0*
T0*
_output_shapes
:Е
Ctransformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : л
>transformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2GatherV2Dtransformer_encoder_6/sequential_6/dense_24/Tensordot/Shape:output:0Ctransformer_encoder_6/sequential_6/dense_24/Tensordot/free:output:0Ltransformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:З
Etransformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : п
@transformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2_1GatherV2Dtransformer_encoder_6/sequential_6/dense_24/Tensordot/Shape:output:0Ctransformer_encoder_6/sequential_6/dense_24/Tensordot/axes:output:0Ntransformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Е
;transformer_encoder_6/sequential_6/dense_24/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: т
:transformer_encoder_6/sequential_6/dense_24/Tensordot/ProdProdGtransformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2:output:0Dtransformer_encoder_6/sequential_6/dense_24/Tensordot/Const:output:0*
T0*
_output_shapes
: З
=transformer_encoder_6/sequential_6/dense_24/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ш
<transformer_encoder_6/sequential_6/dense_24/Tensordot/Prod_1ProdItransformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2_1:output:0Ftransformer_encoder_6/sequential_6/dense_24/Tensordot/Const_1:output:0*
T0*
_output_shapes
: Г
Atransformer_encoder_6/sequential_6/dense_24/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ћ
<transformer_encoder_6/sequential_6/dense_24/Tensordot/concatConcatV2Ctransformer_encoder_6/sequential_6/dense_24/Tensordot/free:output:0Ctransformer_encoder_6/sequential_6/dense_24/Tensordot/axes:output:0Jtransformer_encoder_6/sequential_6/dense_24/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:э
;transformer_encoder_6/sequential_6/dense_24/Tensordot/stackPackCtransformer_encoder_6/sequential_6/dense_24/Tensordot/Prod:output:0Etransformer_encoder_6/sequential_6/dense_24/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Л
?transformer_encoder_6/sequential_6/dense_24/Tensordot/transpose	Transpose@transformer_encoder_6/layer_normalization_12/batchnorm/add_1:z:0Etransformer_encoder_6/sequential_6/dense_24/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2О
=transformer_encoder_6/sequential_6/dense_24/Tensordot/ReshapeReshapeCtransformer_encoder_6/sequential_6/dense_24/Tensordot/transpose:y:0Dtransformer_encoder_6/sequential_6/dense_24/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€О
<transformer_encoder_6/sequential_6/dense_24/Tensordot/MatMulMatMulFtransformer_encoder_6/sequential_6/dense_24/Tensordot/Reshape:output:0Ltransformer_encoder_6/sequential_6/dense_24/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ З
=transformer_encoder_6/sequential_6/dense_24/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Е
Ctransformer_encoder_6/sequential_6/dense_24/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : „
>transformer_encoder_6/sequential_6/dense_24/Tensordot/concat_1ConcatV2Gtransformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2:output:0Ftransformer_encoder_6/sequential_6/dense_24/Tensordot/Const_2:output:0Ltransformer_encoder_6/sequential_6/dense_24/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:З
5transformer_encoder_6/sequential_6/dense_24/TensordotReshapeFtransformer_encoder_6/sequential_6/dense_24/Tensordot/MatMul:product:0Gtransformer_encoder_6/sequential_6/dense_24/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€.  
Btransformer_encoder_6/sequential_6/dense_24/BiasAdd/ReadVariableOpReadVariableOpKtransformer_encoder_6_sequential_6_dense_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0А
3transformer_encoder_6/sequential_6/dense_24/BiasAddBiasAdd>transformer_encoder_6/sequential_6/dense_24/Tensordot:output:0Jtransformer_encoder_6/sequential_6/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€. ђ
0transformer_encoder_6/sequential_6/dense_24/ReluRelu<transformer_encoder_6/sequential_6/dense_24/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€. “
Dtransformer_encoder_6/sequential_6/dense_25/Tensordot/ReadVariableOpReadVariableOpMtransformer_encoder_6_sequential_6_dense_25_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0Д
:transformer_encoder_6/sequential_6/dense_25/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:Л
:transformer_encoder_6/sequential_6/dense_25/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ©
;transformer_encoder_6/sequential_6/dense_25/Tensordot/ShapeShape>transformer_encoder_6/sequential_6/dense_24/Relu:activations:0*
T0*
_output_shapes
:Е
Ctransformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : л
>transformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2GatherV2Dtransformer_encoder_6/sequential_6/dense_25/Tensordot/Shape:output:0Ctransformer_encoder_6/sequential_6/dense_25/Tensordot/free:output:0Ltransformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:З
Etransformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : п
@transformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2_1GatherV2Dtransformer_encoder_6/sequential_6/dense_25/Tensordot/Shape:output:0Ctransformer_encoder_6/sequential_6/dense_25/Tensordot/axes:output:0Ntransformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Е
;transformer_encoder_6/sequential_6/dense_25/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: т
:transformer_encoder_6/sequential_6/dense_25/Tensordot/ProdProdGtransformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2:output:0Dtransformer_encoder_6/sequential_6/dense_25/Tensordot/Const:output:0*
T0*
_output_shapes
: З
=transformer_encoder_6/sequential_6/dense_25/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ш
<transformer_encoder_6/sequential_6/dense_25/Tensordot/Prod_1ProdItransformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2_1:output:0Ftransformer_encoder_6/sequential_6/dense_25/Tensordot/Const_1:output:0*
T0*
_output_shapes
: Г
Atransformer_encoder_6/sequential_6/dense_25/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ћ
<transformer_encoder_6/sequential_6/dense_25/Tensordot/concatConcatV2Ctransformer_encoder_6/sequential_6/dense_25/Tensordot/free:output:0Ctransformer_encoder_6/sequential_6/dense_25/Tensordot/axes:output:0Jtransformer_encoder_6/sequential_6/dense_25/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:э
;transformer_encoder_6/sequential_6/dense_25/Tensordot/stackPackCtransformer_encoder_6/sequential_6/dense_25/Tensordot/Prod:output:0Etransformer_encoder_6/sequential_6/dense_25/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Й
?transformer_encoder_6/sequential_6/dense_25/Tensordot/transpose	Transpose>transformer_encoder_6/sequential_6/dense_24/Relu:activations:0Etransformer_encoder_6/sequential_6/dense_25/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€. О
=transformer_encoder_6/sequential_6/dense_25/Tensordot/ReshapeReshapeCtransformer_encoder_6/sequential_6/dense_25/Tensordot/transpose:y:0Dtransformer_encoder_6/sequential_6/dense_25/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€О
<transformer_encoder_6/sequential_6/dense_25/Tensordot/MatMulMatMulFtransformer_encoder_6/sequential_6/dense_25/Tensordot/Reshape:output:0Ltransformer_encoder_6/sequential_6/dense_25/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2З
=transformer_encoder_6/sequential_6/dense_25/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2Е
Ctransformer_encoder_6/sequential_6/dense_25/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : „
>transformer_encoder_6/sequential_6/dense_25/Tensordot/concat_1ConcatV2Gtransformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2:output:0Ftransformer_encoder_6/sequential_6/dense_25/Tensordot/Const_2:output:0Ltransformer_encoder_6/sequential_6/dense_25/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:З
5transformer_encoder_6/sequential_6/dense_25/TensordotReshapeFtransformer_encoder_6/sequential_6/dense_25/Tensordot/MatMul:product:0Gtransformer_encoder_6/sequential_6/dense_25/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2 
Btransformer_encoder_6/sequential_6/dense_25/BiasAdd/ReadVariableOpReadVariableOpKtransformer_encoder_6_sequential_6_dense_25_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0А
3transformer_encoder_6/sequential_6/dense_25/BiasAddBiasAdd>transformer_encoder_6/sequential_6/dense_25/Tensordot:output:0Jtransformer_encoder_6/sequential_6/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2©
)transformer_encoder_6/dropout_19/IdentityIdentity<transformer_encoder_6/sequential_6/dense_25/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2–
transformer_encoder_6/add_1AddV2@transformer_encoder_6/layer_normalization_12/batchnorm/add_1:z:02transformer_encoder_6/dropout_19/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Х
Ktransformer_encoder_6/layer_normalization_13/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:€
9transformer_encoder_6/layer_normalization_13/moments/meanMeantransformer_encoder_6/add_1:z:0Ttransformer_encoder_6/layer_normalization_13/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(Ћ
Atransformer_encoder_6/layer_normalization_13/moments/StopGradientStopGradientBtransformer_encoder_6/layer_normalization_13/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€.ю
Ftransformer_encoder_6/layer_normalization_13/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_6/add_1:z:0Jtransformer_encoder_6/layer_normalization_13/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Щ
Otransformer_encoder_6/layer_normalization_13/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:≤
=transformer_encoder_6/layer_normalization_13/moments/varianceMeanJtransformer_encoder_6/layer_normalization_13/moments/SquaredDifference:z:0Xtransformer_encoder_6/layer_normalization_13/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(Б
<transformer_encoder_6/layer_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5И
:transformer_encoder_6/layer_normalization_13/batchnorm/addAddV2Ftransformer_encoder_6/layer_normalization_13/moments/variance:output:0Etransformer_encoder_6/layer_normalization_13/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€.ї
<transformer_encoder_6/layer_normalization_13/batchnorm/RsqrtRsqrt>transformer_encoder_6/layer_normalization_13/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€.Ў
Itransformer_encoder_6/layer_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOpRtransformer_encoder_6_layer_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0М
:transformer_encoder_6/layer_normalization_13/batchnorm/mulMul@transformer_encoder_6/layer_normalization_13/batchnorm/Rsqrt:y:0Qtransformer_encoder_6/layer_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2Џ
<transformer_encoder_6/layer_normalization_13/batchnorm/mul_1Multransformer_encoder_6/add_1:z:0>transformer_encoder_6/layer_normalization_13/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2э
<transformer_encoder_6/layer_normalization_13/batchnorm/mul_2MulBtransformer_encoder_6/layer_normalization_13/moments/mean:output:0>transformer_encoder_6/layer_normalization_13/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2–
Etransformer_encoder_6/layer_normalization_13/batchnorm/ReadVariableOpReadVariableOpNtransformer_encoder_6_layer_normalization_13_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0И
:transformer_encoder_6/layer_normalization_13/batchnorm/subSubMtransformer_encoder_6/layer_normalization_13/batchnorm/ReadVariableOp:value:0@transformer_encoder_6/layer_normalization_13/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2э
<transformer_encoder_6/layer_normalization_13/batchnorm/add_1AddV2@transformer_encoder_6/layer_normalization_13/batchnorm/mul_1:z:0>transformer_encoder_6/layer_normalization_13/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2{
rnn_6/ShapeShape@transformer_encoder_6/layer_normalization_13/batchnorm/add_1:z:0*
T0*
_output_shapes
:c
rnn_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
rnn_6/strided_sliceStridedSlicernn_6/Shape:output:0"rnn_6/strided_slice/stack:output:0$rnn_6/strided_slice/stack_1:output:0$rnn_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
rnn_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.Е
rnn_6/zeros/packedPackrnn_6/strided_slice:output:0rnn_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
rnn_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
rnn_6/zerosFillrnn_6/zeros/packed:output:0rnn_6/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€.X
rnn_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.Й
rnn_6/zeros_1/packedPackrnn_6/strided_slice:output:0rnn_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:X
rnn_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
rnn_6/zeros_1Fillrnn_6/zeros_1/packed:output:0rnn_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€.i
rnn_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ≥
rnn_6/transpose	Transpose@transformer_encoder_6/layer_normalization_13/batchnorm/add_1:z:0rnn_6/transpose/perm:output:0*
T0*+
_output_shapes
:.€€€€€€€€€2P
rnn_6/Shape_1Shapernn_6/transpose:y:0*
T0*
_output_shapes
:e
rnn_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
rnn_6/strided_slice_1StridedSlicernn_6/Shape_1:output:0$rnn_6/strided_slice_1/stack:output:0&rnn_6/strided_slice_1/stack_1:output:0&rnn_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!rnn_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€∆
rnn_6/TensorArrayV2TensorListReserve*rnn_6/TensorArrayV2/element_shape:output:0rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“М
;rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   т
-rnn_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn_6/transpose:y:0Drnn_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“e
rnn_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
rnn_6/strided_slice_2StridedSlicernn_6/transpose:y:0$rnn_6/strided_slice_2/stack:output:0&rnn_6/strided_slice_2/stack_1:output:0&rnn_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskЩ
'rnn_6/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp0rnn_6_lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	2Є*
dtype0¶
rnn_6/lstm_cell_6/MatMulMatMulrnn_6/strided_slice_2:output:0/rnn_6/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЭ
)rnn_6/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp2rnn_6_lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	.Є*
dtype0†
rnn_6/lstm_cell_6/MatMul_1MatMulrnn_6/zeros:output:01rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЫ
rnn_6/lstm_cell_6/addAddV2"rnn_6/lstm_cell_6/MatMul:product:0$rnn_6/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЧ
(rnn_6/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp1rnn_6_lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:Є*
dtype0§
rnn_6/lstm_cell_6/BiasAddBiasAddrnn_6/lstm_cell_6/add:z:00rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Єc
!rnn_6/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :м
rnn_6/lstm_cell_6/splitSplit*rnn_6/lstm_cell_6/split/split_dim:output:0"rnn_6/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitx
rnn_6/lstm_cell_6/SigmoidSigmoid rnn_6/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€.z
rnn_6/lstm_cell_6/Sigmoid_1Sigmoid rnn_6/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€.З
rnn_6/lstm_cell_6/mulMulrnn_6/lstm_cell_6/Sigmoid_1:y:0rnn_6/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€.r
rnn_6/lstm_cell_6/TanhTanh rnn_6/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€.Л
rnn_6/lstm_cell_6/mul_1Mulrnn_6/lstm_cell_6/Sigmoid:y:0rnn_6/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.К
rnn_6/lstm_cell_6/add_1AddV2rnn_6/lstm_cell_6/mul:z:0rnn_6/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.z
rnn_6/lstm_cell_6/Sigmoid_2Sigmoid rnn_6/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€.o
rnn_6/lstm_cell_6/Tanh_1Tanhrnn_6/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.П
rnn_6/lstm_cell_6/mul_2Mulrnn_6/lstm_cell_6/Sigmoid_2:y:0rnn_6/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.t
#rnn_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   d
"rnn_6/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :„
rnn_6/TensorArrayV2_1TensorListReserve,rnn_6/TensorArrayV2_1/element_shape:output:0+rnn_6/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“L

rnn_6/timeConst*
_output_shapes
: *
dtype0*
value	B : i
rnn_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Z
rnn_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ў
rnn_6/whileWhile!rnn_6/while/loop_counter:output:0'rnn_6/while/maximum_iterations:output:0rnn_6/time:output:0rnn_6/TensorArrayV2_1:handle:0rnn_6/zeros:output:0rnn_6/zeros_1:output:0rnn_6/strided_slice_1:output:0=rnn_6/TensorArrayUnstack/TensorListFromTensor:output_handle:00rnn_6_lstm_cell_6_matmul_readvariableop_resource2rnn_6_lstm_cell_6_matmul_1_readvariableop_resource1rnn_6_lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
rnn_6_while_body_202288000*&
condR
rnn_6_while_cond_202287999*K
output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *
parallel_iterations З
6rnn_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   и
(rnn_6/TensorArrayV2Stack/TensorListStackTensorListStackrnn_6/while:output:3?rnn_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€.*
element_dtype0*
num_elementsn
rnn_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€g
rnn_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
rnn_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:•
rnn_6/strided_slice_3StridedSlice1rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0$rnn_6/strided_slice_3/stack:output:0&rnn_6/strided_slice_3/stack_1:output:0&rnn_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€.*
shrink_axis_maskk
rnn_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
rnn_6/transpose_1	Transpose1rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0rnn_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€.Ж
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:..*
dtype0У
dense_26/MatMulMatMulrnn_6/strided_slice_3:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€.Д
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0С
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€.b
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€.Ж
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes

:.*
dtype0Р
dense_27/MatMulMatMuldense_26/Relu:activations:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€h
IdentityIdentitydense_27/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€У
NoOpNoOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp)^rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp(^rnn_6/lstm_cell_6/MatMul/ReadVariableOp*^rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp^rnn_6/while=^token_and_position_embedding_6/embedding_12/embedding_lookup=^token_and_position_embedding_6/embedding_13/embedding_lookupF^transformer_encoder_6/layer_normalization_12/batchnorm/ReadVariableOpJ^transformer_encoder_6/layer_normalization_12/batchnorm/mul/ReadVariableOpF^transformer_encoder_6/layer_normalization_13/batchnorm/ReadVariableOpJ^transformer_encoder_6/layer_normalization_13/batchnorm/mul/ReadVariableOpQ^transformer_encoder_6/multi_head_attention_6/attention_output/add/ReadVariableOp[^transformer_encoder_6/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpD^transformer_encoder_6/multi_head_attention_6/key/add/ReadVariableOpN^transformer_encoder_6/multi_head_attention_6/key/einsum/Einsum/ReadVariableOpF^transformer_encoder_6/multi_head_attention_6/query/add/ReadVariableOpP^transformer_encoder_6/multi_head_attention_6/query/einsum/Einsum/ReadVariableOpF^transformer_encoder_6/multi_head_attention_6/value/add/ReadVariableOpP^transformer_encoder_6/multi_head_attention_6/value/einsum/Einsum/ReadVariableOpC^transformer_encoder_6/sequential_6/dense_24/BiasAdd/ReadVariableOpE^transformer_encoder_6/sequential_6/dense_24/Tensordot/ReadVariableOpC^transformer_encoder_6/sequential_6/dense_25/BiasAdd/ReadVariableOpE^transformer_encoder_6/sequential_6/dense_25/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€.: : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2T
(rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp(rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp2R
'rnn_6/lstm_cell_6/MatMul/ReadVariableOp'rnn_6/lstm_cell_6/MatMul/ReadVariableOp2V
)rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp)rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp2
rnn_6/whilernn_6/while2|
<token_and_position_embedding_6/embedding_12/embedding_lookup<token_and_position_embedding_6/embedding_12/embedding_lookup2|
<token_and_position_embedding_6/embedding_13/embedding_lookup<token_and_position_embedding_6/embedding_13/embedding_lookup2О
Etransformer_encoder_6/layer_normalization_12/batchnorm/ReadVariableOpEtransformer_encoder_6/layer_normalization_12/batchnorm/ReadVariableOp2Ц
Itransformer_encoder_6/layer_normalization_12/batchnorm/mul/ReadVariableOpItransformer_encoder_6/layer_normalization_12/batchnorm/mul/ReadVariableOp2О
Etransformer_encoder_6/layer_normalization_13/batchnorm/ReadVariableOpEtransformer_encoder_6/layer_normalization_13/batchnorm/ReadVariableOp2Ц
Itransformer_encoder_6/layer_normalization_13/batchnorm/mul/ReadVariableOpItransformer_encoder_6/layer_normalization_13/batchnorm/mul/ReadVariableOp2§
Ptransformer_encoder_6/multi_head_attention_6/attention_output/add/ReadVariableOpPtransformer_encoder_6/multi_head_attention_6/attention_output/add/ReadVariableOp2Є
Ztransformer_encoder_6/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpZtransformer_encoder_6/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp2К
Ctransformer_encoder_6/multi_head_attention_6/key/add/ReadVariableOpCtransformer_encoder_6/multi_head_attention_6/key/add/ReadVariableOp2Ю
Mtransformer_encoder_6/multi_head_attention_6/key/einsum/Einsum/ReadVariableOpMtransformer_encoder_6/multi_head_attention_6/key/einsum/Einsum/ReadVariableOp2О
Etransformer_encoder_6/multi_head_attention_6/query/add/ReadVariableOpEtransformer_encoder_6/multi_head_attention_6/query/add/ReadVariableOp2Ґ
Otransformer_encoder_6/multi_head_attention_6/query/einsum/Einsum/ReadVariableOpOtransformer_encoder_6/multi_head_attention_6/query/einsum/Einsum/ReadVariableOp2О
Etransformer_encoder_6/multi_head_attention_6/value/add/ReadVariableOpEtransformer_encoder_6/multi_head_attention_6/value/add/ReadVariableOp2Ґ
Otransformer_encoder_6/multi_head_attention_6/value/einsum/Einsum/ReadVariableOpOtransformer_encoder_6/multi_head_attention_6/value/einsum/Einsum/ReadVariableOp2И
Btransformer_encoder_6/sequential_6/dense_24/BiasAdd/ReadVariableOpBtransformer_encoder_6/sequential_6/dense_24/BiasAdd/ReadVariableOp2М
Dtransformer_encoder_6/sequential_6/dense_24/Tensordot/ReadVariableOpDtransformer_encoder_6/sequential_6/dense_24/Tensordot/ReadVariableOp2И
Btransformer_encoder_6/sequential_6/dense_25/BiasAdd/ReadVariableOpBtransformer_encoder_6/sequential_6/dense_25/BiasAdd/ReadVariableOp2М
Dtransformer_encoder_6/sequential_6/dense_25/Tensordot/ReadVariableOpDtransformer_encoder_6/sequential_6/dense_25/Tensordot/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€.
 
_user_specified_nameinputs
ВJ
Ц
D__inference_rnn_6_layer_call_and_return_conditional_losses_202287048

inputs=
*lstm_cell_6_matmul_readvariableop_resource:	2Є?
,lstm_cell_6_matmul_1_readvariableop_resource:	.Є:
+lstm_cell_6_biasadd_readvariableop_resource:	Є
identityИҐ"lstm_cell_6/BiasAdd/ReadVariableOpҐ!lstm_cell_6/MatMul/ReadVariableOpҐ#lstm_cell_6/MatMul_1/ReadVariableOpҐwhile;
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
valueB:—
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
:€€€€€€€€€.R
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
:€€€€€€€€€.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:.€€€€€€€€€2D
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskН
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	2Є*
dtype0Ф
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄС
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	.Є*
dtype0О
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЙ
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЛ
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:Є*
dtype0Т
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Є]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Џ
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€.n
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€.u
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€.f
lstm_cell_6/TanhTanhlstm_cell_6/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€.y
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.x
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.n
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€.c
lstm_cell_6/Tanh_1Tanhlstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.}
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
while_body_202286964* 
condR
while_cond_202286963*K
output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.љ
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€.2: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€.2
 
_user_specified_nameinputs
Љ 
ї
T__inference_transformer_encoder_6_layer_call_and_return_conditional_losses_202288784

inputsX
Bmulti_head_attention_6_query_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_6_query_add_readvariableop_resource:2V
@multi_head_attention_6_key_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_6_key_add_readvariableop_resource:2X
Bmulti_head_attention_6_value_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_6_value_add_readvariableop_resource:2c
Mmulti_head_attention_6_attention_output_einsum_einsum_readvariableop_resource:22Q
Cmulti_head_attention_6_attention_output_add_readvariableop_resource:2J
<layer_normalization_12_batchnorm_mul_readvariableop_resource:2F
8layer_normalization_12_batchnorm_readvariableop_resource:2I
7sequential_6_dense_24_tensordot_readvariableop_resource:2 C
5sequential_6_dense_24_biasadd_readvariableop_resource: I
7sequential_6_dense_25_tensordot_readvariableop_resource: 2C
5sequential_6_dense_25_biasadd_readvariableop_resource:2J
<layer_normalization_13_batchnorm_mul_readvariableop_resource:2F
8layer_normalization_13_batchnorm_readvariableop_resource:2
identityИҐ/layer_normalization_12/batchnorm/ReadVariableOpҐ3layer_normalization_12/batchnorm/mul/ReadVariableOpҐ/layer_normalization_13/batchnorm/ReadVariableOpҐ3layer_normalization_13/batchnorm/mul/ReadVariableOpҐ:multi_head_attention_6/attention_output/add/ReadVariableOpҐDmulti_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_6/key/add/ReadVariableOpҐ7multi_head_attention_6/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_6/query/add/ReadVariableOpҐ9multi_head_attention_6/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_6/value/add/ReadVariableOpҐ9multi_head_attention_6/value/einsum/Einsum/ReadVariableOpҐ,sequential_6/dense_24/BiasAdd/ReadVariableOpҐ.sequential_6/dense_24/Tensordot/ReadVariableOpҐ,sequential_6/dense_25/BiasAdd/ReadVariableOpҐ.sequential_6/dense_25/Tensordot/ReadVariableOpј
9multi_head_attention_6/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_6_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0я
*multi_head_attention_6/query/einsum/EinsumEinsuminputsAmulti_head_attention_6/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationabc,cde->abde®
/multi_head_attention_6/query/add/ReadVariableOpReadVariableOp8multi_head_attention_6_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0—
 multi_head_attention_6/query/addAddV23multi_head_attention_6/query/einsum/Einsum:output:07multi_head_attention_6/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€.2Љ
7multi_head_attention_6/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_6_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0џ
(multi_head_attention_6/key/einsum/EinsumEinsuminputs?multi_head_attention_6/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationabc,cde->abde§
-multi_head_attention_6/key/add/ReadVariableOpReadVariableOp6multi_head_attention_6_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ћ
multi_head_attention_6/key/addAddV21multi_head_attention_6/key/einsum/Einsum:output:05multi_head_attention_6/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€.2ј
9multi_head_attention_6/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_6_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0я
*multi_head_attention_6/value/einsum/EinsumEinsuminputsAmulti_head_attention_6/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationabc,cde->abde®
/multi_head_attention_6/value/add/ReadVariableOpReadVariableOp8multi_head_attention_6_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0—
 multi_head_attention_6/value/addAddV23multi_head_attention_6/value/einsum/Einsum:output:07multi_head_attention_6/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€.2a
multi_head_attention_6/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *√–>®
multi_head_attention_6/MulMul$multi_head_attention_6/query/add:z:0%multi_head_attention_6/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€.2‘
$multi_head_attention_6/einsum/EinsumEinsum"multi_head_attention_6/key/add:z:0multi_head_attention_6/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€..*
equationaecd,abcd->acbeЪ
&multi_head_attention_6/softmax/SoftmaxSoftmax-multi_head_attention_6/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€..к
&multi_head_attention_6/einsum_1/EinsumEinsum0multi_head_attention_6/softmax/Softmax:softmax:0$multi_head_attention_6/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationacbe,aecd->abcd÷
Dmulti_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_6_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ъ
5multi_head_attention_6/attention_output/einsum/EinsumEinsum/multi_head_attention_6/einsum_1/Einsum:output:0Lmulti_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€.2*
equationabcd,cde->abeЇ
:multi_head_attention_6/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_6_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0о
+multi_head_attention_6/attention_output/addAddV2>multi_head_attention_6/attention_output/einsum/Einsum:output:0Bmulti_head_attention_6/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2]
dropout_18/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @І
dropout_18/dropout/MulMul/multi_head_attention_6/attention_output/add:z:0!dropout_18/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2w
dropout_18/dropout/ShapeShape/multi_head_attention_6/attention_output/add:z:0*
T0*
_output_shapes
:¶
/dropout_18/dropout/random_uniform/RandomUniformRandomUniform!dropout_18/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2*
dtype0f
!dropout_18/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ћ
dropout_18/dropout/GreaterEqualGreaterEqual8dropout_18/dropout/random_uniform/RandomUniform:output:0*dropout_18/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Й
dropout_18/dropout/CastCast#dropout_18/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€.2О
dropout_18/dropout/Mul_1Muldropout_18/dropout/Mul:z:0dropout_18/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€.2h
addAddV2inputsdropout_18/dropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2
5layer_normalization_12/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ї
#layer_normalization_12/moments/meanMeanadd:z:0>layer_normalization_12/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(Я
+layer_normalization_12/moments/StopGradientStopGradient,layer_normalization_12/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€.Ї
0layer_normalization_12/moments/SquaredDifferenceSquaredDifferenceadd:z:04layer_normalization_12/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Г
9layer_normalization_12/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:р
'layer_normalization_12/moments/varianceMean4layer_normalization_12/moments/SquaredDifference:z:0Blayer_normalization_12/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(k
&layer_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5∆
$layer_normalization_12/batchnorm/addAddV20layer_normalization_12/moments/variance:output:0/layer_normalization_12/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€.П
&layer_normalization_12/batchnorm/RsqrtRsqrt(layer_normalization_12/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€.ђ
3layer_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0 
$layer_normalization_12/batchnorm/mulMul*layer_normalization_12/batchnorm/Rsqrt:y:0;layer_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2Ц
&layer_normalization_12/batchnorm/mul_1Muladd:z:0(layer_normalization_12/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2ї
&layer_normalization_12/batchnorm/mul_2Mul,layer_normalization_12/moments/mean:output:0(layer_normalization_12/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2§
/layer_normalization_12/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_12_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0∆
$layer_normalization_12/batchnorm/subSub7layer_normalization_12/batchnorm/ReadVariableOp:value:0*layer_normalization_12/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2ї
&layer_normalization_12/batchnorm/add_1AddV2*layer_normalization_12/batchnorm/mul_1:z:0(layer_normalization_12/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2¶
.sequential_6/dense_24/Tensordot/ReadVariableOpReadVariableOp7sequential_6_dense_24_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0n
$sequential_6/dense_24/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_6/dense_24/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
%sequential_6/dense_24/Tensordot/ShapeShape*layer_normalization_12/batchnorm/add_1:z:0*
T0*
_output_shapes
:o
-sequential_6/dense_24/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : У
(sequential_6/dense_24/Tensordot/GatherV2GatherV2.sequential_6/dense_24/Tensordot/Shape:output:0-sequential_6/dense_24/Tensordot/free:output:06sequential_6/dense_24/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_6/dense_24/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ч
*sequential_6/dense_24/Tensordot/GatherV2_1GatherV2.sequential_6/dense_24/Tensordot/Shape:output:0-sequential_6/dense_24/Tensordot/axes:output:08sequential_6/dense_24/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_6/dense_24/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ∞
$sequential_6/dense_24/Tensordot/ProdProd1sequential_6/dense_24/Tensordot/GatherV2:output:0.sequential_6/dense_24/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_6/dense_24/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ґ
&sequential_6/dense_24/Tensordot/Prod_1Prod3sequential_6/dense_24/Tensordot/GatherV2_1:output:00sequential_6/dense_24/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_6/dense_24/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ф
&sequential_6/dense_24/Tensordot/concatConcatV2-sequential_6/dense_24/Tensordot/free:output:0-sequential_6/dense_24/Tensordot/axes:output:04sequential_6/dense_24/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ї
%sequential_6/dense_24/Tensordot/stackPack-sequential_6/dense_24/Tensordot/Prod:output:0/sequential_6/dense_24/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:…
)sequential_6/dense_24/Tensordot/transpose	Transpose*layer_normalization_12/batchnorm/add_1:z:0/sequential_6/dense_24/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2ћ
'sequential_6/dense_24/Tensordot/ReshapeReshape-sequential_6/dense_24/Tensordot/transpose:y:0.sequential_6/dense_24/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€ћ
&sequential_6/dense_24/Tensordot/MatMulMatMul0sequential_6/dense_24/Tensordot/Reshape:output:06sequential_6/dense_24/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ q
'sequential_6/dense_24/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: o
-sequential_6/dense_24/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : €
(sequential_6/dense_24/Tensordot/concat_1ConcatV21sequential_6/dense_24/Tensordot/GatherV2:output:00sequential_6/dense_24/Tensordot/Const_2:output:06sequential_6/dense_24/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:≈
sequential_6/dense_24/TensordotReshape0sequential_6/dense_24/Tensordot/MatMul:product:01sequential_6/dense_24/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€. Ю
,sequential_6/dense_24/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Њ
sequential_6/dense_24/BiasAddBiasAdd(sequential_6/dense_24/Tensordot:output:04sequential_6/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€. А
sequential_6/dense_24/ReluRelu&sequential_6/dense_24/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€. ¶
.sequential_6/dense_25/Tensordot/ReadVariableOpReadVariableOp7sequential_6_dense_25_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0n
$sequential_6/dense_25/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_6/dense_25/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_6/dense_25/Tensordot/ShapeShape(sequential_6/dense_24/Relu:activations:0*
T0*
_output_shapes
:o
-sequential_6/dense_25/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : У
(sequential_6/dense_25/Tensordot/GatherV2GatherV2.sequential_6/dense_25/Tensordot/Shape:output:0-sequential_6/dense_25/Tensordot/free:output:06sequential_6/dense_25/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_6/dense_25/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ч
*sequential_6/dense_25/Tensordot/GatherV2_1GatherV2.sequential_6/dense_25/Tensordot/Shape:output:0-sequential_6/dense_25/Tensordot/axes:output:08sequential_6/dense_25/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_6/dense_25/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ∞
$sequential_6/dense_25/Tensordot/ProdProd1sequential_6/dense_25/Tensordot/GatherV2:output:0.sequential_6/dense_25/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_6/dense_25/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ґ
&sequential_6/dense_25/Tensordot/Prod_1Prod3sequential_6/dense_25/Tensordot/GatherV2_1:output:00sequential_6/dense_25/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_6/dense_25/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ф
&sequential_6/dense_25/Tensordot/concatConcatV2-sequential_6/dense_25/Tensordot/free:output:0-sequential_6/dense_25/Tensordot/axes:output:04sequential_6/dense_25/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ї
%sequential_6/dense_25/Tensordot/stackPack-sequential_6/dense_25/Tensordot/Prod:output:0/sequential_6/dense_25/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:«
)sequential_6/dense_25/Tensordot/transpose	Transpose(sequential_6/dense_24/Relu:activations:0/sequential_6/dense_25/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€. ћ
'sequential_6/dense_25/Tensordot/ReshapeReshape-sequential_6/dense_25/Tensordot/transpose:y:0.sequential_6/dense_25/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€ћ
&sequential_6/dense_25/Tensordot/MatMulMatMul0sequential_6/dense_25/Tensordot/Reshape:output:06sequential_6/dense_25/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2q
'sequential_6/dense_25/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2o
-sequential_6/dense_25/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : €
(sequential_6/dense_25/Tensordot/concat_1ConcatV21sequential_6/dense_25/Tensordot/GatherV2:output:00sequential_6/dense_25/Tensordot/Const_2:output:06sequential_6/dense_25/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:≈
sequential_6/dense_25/TensordotReshape0sequential_6/dense_25/Tensordot/MatMul:product:01sequential_6/dense_25/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Ю
,sequential_6/dense_25/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_25_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Њ
sequential_6/dense_25/BiasAddBiasAdd(sequential_6/dense_25/Tensordot:output:04sequential_6/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2]
dropout_19/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ю
dropout_19/dropout/MulMul&sequential_6/dense_25/BiasAdd:output:0!dropout_19/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2n
dropout_19/dropout/ShapeShape&sequential_6/dense_25/BiasAdd:output:0*
T0*
_output_shapes
:¶
/dropout_19/dropout/random_uniform/RandomUniformRandomUniform!dropout_19/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2*
dtype0f
!dropout_19/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ћ
dropout_19/dropout/GreaterEqualGreaterEqual8dropout_19/dropout/random_uniform/RandomUniform:output:0*dropout_19/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Й
dropout_19/dropout/CastCast#dropout_19/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€.2О
dropout_19/dropout/Mul_1Muldropout_19/dropout/Mul:z:0dropout_19/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€.2О
add_1AddV2*layer_normalization_12/batchnorm/add_1:z:0dropout_19/dropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2
5layer_normalization_13/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:љ
#layer_normalization_13/moments/meanMean	add_1:z:0>layer_normalization_13/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(Я
+layer_normalization_13/moments/StopGradientStopGradient,layer_normalization_13/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€.Љ
0layer_normalization_13/moments/SquaredDifferenceSquaredDifference	add_1:z:04layer_normalization_13/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Г
9layer_normalization_13/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:р
'layer_normalization_13/moments/varianceMean4layer_normalization_13/moments/SquaredDifference:z:0Blayer_normalization_13/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(k
&layer_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5∆
$layer_normalization_13/batchnorm/addAddV20layer_normalization_13/moments/variance:output:0/layer_normalization_13/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€.П
&layer_normalization_13/batchnorm/RsqrtRsqrt(layer_normalization_13/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€.ђ
3layer_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0 
$layer_normalization_13/batchnorm/mulMul*layer_normalization_13/batchnorm/Rsqrt:y:0;layer_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2Ш
&layer_normalization_13/batchnorm/mul_1Mul	add_1:z:0(layer_normalization_13/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2ї
&layer_normalization_13/batchnorm/mul_2Mul,layer_normalization_13/moments/mean:output:0(layer_normalization_13/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2§
/layer_normalization_13/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_13_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0∆
$layer_normalization_13/batchnorm/subSub7layer_normalization_13/batchnorm/ReadVariableOp:value:0*layer_normalization_13/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2ї
&layer_normalization_13/batchnorm/add_1AddV2*layer_normalization_13/batchnorm/mul_1:z:0(layer_normalization_13/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2}
IdentityIdentity*layer_normalization_13/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2†
NoOpNoOp0^layer_normalization_12/batchnorm/ReadVariableOp4^layer_normalization_12/batchnorm/mul/ReadVariableOp0^layer_normalization_13/batchnorm/ReadVariableOp4^layer_normalization_13/batchnorm/mul/ReadVariableOp;^multi_head_attention_6/attention_output/add/ReadVariableOpE^multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_6/key/add/ReadVariableOp8^multi_head_attention_6/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_6/query/add/ReadVariableOp:^multi_head_attention_6/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_6/value/add/ReadVariableOp:^multi_head_attention_6/value/einsum/Einsum/ReadVariableOp-^sequential_6/dense_24/BiasAdd/ReadVariableOp/^sequential_6/dense_24/Tensordot/ReadVariableOp-^sequential_6/dense_25/BiasAdd/ReadVariableOp/^sequential_6/dense_25/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€.2: : : : : : : : : : : : : : : : 2b
/layer_normalization_12/batchnorm/ReadVariableOp/layer_normalization_12/batchnorm/ReadVariableOp2j
3layer_normalization_12/batchnorm/mul/ReadVariableOp3layer_normalization_12/batchnorm/mul/ReadVariableOp2b
/layer_normalization_13/batchnorm/ReadVariableOp/layer_normalization_13/batchnorm/ReadVariableOp2j
3layer_normalization_13/batchnorm/mul/ReadVariableOp3layer_normalization_13/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_6/attention_output/add/ReadVariableOp:multi_head_attention_6/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_6/key/add/ReadVariableOp-multi_head_attention_6/key/add/ReadVariableOp2r
7multi_head_attention_6/key/einsum/Einsum/ReadVariableOp7multi_head_attention_6/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_6/query/add/ReadVariableOp/multi_head_attention_6/query/add/ReadVariableOp2v
9multi_head_attention_6/query/einsum/Einsum/ReadVariableOp9multi_head_attention_6/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_6/value/add/ReadVariableOp/multi_head_attention_6/value/add/ReadVariableOp2v
9multi_head_attention_6/value/einsum/Einsum/ReadVariableOp9multi_head_attention_6/value/einsum/Einsum/ReadVariableOp2\
,sequential_6/dense_24/BiasAdd/ReadVariableOp,sequential_6/dense_24/BiasAdd/ReadVariableOp2`
.sequential_6/dense_24/Tensordot/ReadVariableOp.sequential_6/dense_24/Tensordot/ReadVariableOp2\
,sequential_6/dense_25/BiasAdd/ReadVariableOp,sequential_6/dense_25/BiasAdd/ReadVariableOp2`
.sequential_6/dense_25/Tensordot/ReadVariableOp.sequential_6/dense_25/Tensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€.2
 
_user_specified_nameinputs
Ќ
к
"model_6_rnn_6_while_cond_2022857928
4model_6_rnn_6_while_model_6_rnn_6_while_loop_counter>
:model_6_rnn_6_while_model_6_rnn_6_while_maximum_iterations#
model_6_rnn_6_while_placeholder%
!model_6_rnn_6_while_placeholder_1%
!model_6_rnn_6_while_placeholder_2%
!model_6_rnn_6_while_placeholder_3:
6model_6_rnn_6_while_less_model_6_rnn_6_strided_slice_1S
Omodel_6_rnn_6_while_model_6_rnn_6_while_cond_202285792___redundant_placeholder0S
Omodel_6_rnn_6_while_model_6_rnn_6_while_cond_202285792___redundant_placeholder1S
Omodel_6_rnn_6_while_model_6_rnn_6_while_cond_202285792___redundant_placeholder2S
Omodel_6_rnn_6_while_model_6_rnn_6_while_cond_202285792___redundant_placeholder3 
model_6_rnn_6_while_identity
Ъ
model_6/rnn_6/while/LessLessmodel_6_rnn_6_while_placeholder6model_6_rnn_6_while_less_model_6_rnn_6_strided_slice_1*
T0*
_output_shapes
: g
model_6/rnn_6/while/IdentityIdentitymodel_6/rnn_6/while/Less:z:0*
T0
*
_output_shapes
: "E
model_6_rnn_6_while_identity%model_6/rnn_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€.:€€€€€€€€€.: ::::: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
:
ƒ
“
while_cond_202286963
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_202286963___redundant_placeholder07
3while_while_cond_202286963___redundant_placeholder17
3while_while_cond_202286963___redundant_placeholder27
3while_while_cond_202286963___redundant_placeholder3
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
@: : : : :€€€€€€€€€.:€€€€€€€€€.: ::::: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
:
ƒ
“
while_cond_202289319
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_202289319___redundant_placeholder07
3while_while_cond_202289319___redundant_placeholder17
3while_while_cond_202289319___redundant_placeholder27
3while_while_cond_202289319___redundant_placeholder3
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
@: : : : :€€€€€€€€€.:€€€€€€€€€.: ::::: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
:
”8
 
while_body_202286964
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	2ЄG
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	.ЄB
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	Є
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	2ЄE
2while_lstm_cell_6_matmul_1_readvariableop_resource:	.Є@
1while_lstm_cell_6_biasadd_readvariableop_resource:	ЄИҐ(while/lstm_cell_6/BiasAdd/ReadVariableOpҐ'while/lstm_cell_6/MatMul/ReadVariableOpҐ)while/lstm_cell_6/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0Ы
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	2Є*
dtype0Є
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЯ
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	.Є*
dtype0Я
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЫ
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЩ
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:Є*
dtype0§
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Єc
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :м
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€.z
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€.Д
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€.r
while/lstm_cell_6/TanhTanh while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€.Л
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0while/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.К
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.z
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€.o
while/lstm_cell_6/Tanh_1Tanhwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.П
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0while/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.x
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.Ќ

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
: 
ґ8
Л
D__inference_rnn_6_layer_call_and_return_conditional_losses_202286234

inputs(
lstm_cell_6_202286151:	2Є(
lstm_cell_6_202286153:	.Є$
lstm_cell_6_202286155:	Є
identityИҐ#lstm_cell_6/StatefulPartitionedCallҐwhile;
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
valueB:—
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
:€€€€€€€€€.R
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
:€€€€€€€€€.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2D
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskь
#lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_6_202286151lstm_cell_6_202286153lstm_cell_6_202286155*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_6_layer_call_and_return_conditional_losses_202286150n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : √
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_6_202286151lstm_cell_6_202286153lstm_cell_6_202286155*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
while_body_202286165* 
condR
while_cond_202286164*K
output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.t
NoOpNoOp$^lstm_cell_6/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€2: : : 2J
#lstm_cell_6/StatefulPartitionedCall#lstm_cell_6/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
 
_user_specified_nameinputs
ќ
ю
G__inference_dense_25_layer_call_and_return_conditional_losses_202285964

inputs3
!tensordot_readvariableop_resource: 2-
biasadd_readvariableop_resource:2
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
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
value	B : ї
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
value	B : њ
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
value	B : Ь
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
:€€€€€€€€€. К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€. : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€. 
 
_user_specified_nameinputs
ді
ј0
"__inference__traced_save_202290035
file_prefix.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop.
*savev2_dense_27_kernel_read_readvariableop,
(savev2_dense_27_bias_read_readvariableopU
Qsavev2_token_and_position_embedding_6_embedding_12_embeddings_read_readvariableopU
Qsavev2_token_and_position_embedding_6_embedding_13_embeddings_read_readvariableopX
Tsavev2_transformer_encoder_6_multi_head_attention_6_query_kernel_read_readvariableopV
Rsavev2_transformer_encoder_6_multi_head_attention_6_query_bias_read_readvariableopV
Rsavev2_transformer_encoder_6_multi_head_attention_6_key_kernel_read_readvariableopT
Psavev2_transformer_encoder_6_multi_head_attention_6_key_bias_read_readvariableopX
Tsavev2_transformer_encoder_6_multi_head_attention_6_value_kernel_read_readvariableopV
Rsavev2_transformer_encoder_6_multi_head_attention_6_value_bias_read_readvariableopc
_savev2_transformer_encoder_6_multi_head_attention_6_attention_output_kernel_read_readvariableopa
]savev2_transformer_encoder_6_multi_head_attention_6_attention_output_bias_read_readvariableop.
*savev2_dense_24_kernel_read_readvariableop,
(savev2_dense_24_bias_read_readvariableop.
*savev2_dense_25_kernel_read_readvariableop,
(savev2_dense_25_bias_read_readvariableopQ
Msavev2_transformer_encoder_6_layer_normalization_12_gamma_read_readvariableopP
Lsavev2_transformer_encoder_6_layer_normalization_12_beta_read_readvariableopQ
Msavev2_transformer_encoder_6_layer_normalization_13_gamma_read_readvariableopP
Lsavev2_transformer_encoder_6_layer_normalization_13_beta_read_readvariableop7
3savev2_rnn_6_lstm_cell_6_kernel_read_readvariableopA
=savev2_rnn_6_lstm_cell_6_recurrent_kernel_read_readvariableop5
1savev2_rnn_6_lstm_cell_6_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_26_kernel_m_read_readvariableop3
/savev2_adam_dense_26_bias_m_read_readvariableop5
1savev2_adam_dense_27_kernel_m_read_readvariableop3
/savev2_adam_dense_27_bias_m_read_readvariableop\
Xsavev2_adam_token_and_position_embedding_6_embedding_12_embeddings_m_read_readvariableop\
Xsavev2_adam_token_and_position_embedding_6_embedding_13_embeddings_m_read_readvariableop_
[savev2_adam_transformer_encoder_6_multi_head_attention_6_query_kernel_m_read_readvariableop]
Ysavev2_adam_transformer_encoder_6_multi_head_attention_6_query_bias_m_read_readvariableop]
Ysavev2_adam_transformer_encoder_6_multi_head_attention_6_key_kernel_m_read_readvariableop[
Wsavev2_adam_transformer_encoder_6_multi_head_attention_6_key_bias_m_read_readvariableop_
[savev2_adam_transformer_encoder_6_multi_head_attention_6_value_kernel_m_read_readvariableop]
Ysavev2_adam_transformer_encoder_6_multi_head_attention_6_value_bias_m_read_readvariableopj
fsavev2_adam_transformer_encoder_6_multi_head_attention_6_attention_output_kernel_m_read_readvariableoph
dsavev2_adam_transformer_encoder_6_multi_head_attention_6_attention_output_bias_m_read_readvariableop5
1savev2_adam_dense_24_kernel_m_read_readvariableop3
/savev2_adam_dense_24_bias_m_read_readvariableop5
1savev2_adam_dense_25_kernel_m_read_readvariableop3
/savev2_adam_dense_25_bias_m_read_readvariableopX
Tsavev2_adam_transformer_encoder_6_layer_normalization_12_gamma_m_read_readvariableopW
Ssavev2_adam_transformer_encoder_6_layer_normalization_12_beta_m_read_readvariableopX
Tsavev2_adam_transformer_encoder_6_layer_normalization_13_gamma_m_read_readvariableopW
Ssavev2_adam_transformer_encoder_6_layer_normalization_13_beta_m_read_readvariableop>
:savev2_adam_rnn_6_lstm_cell_6_kernel_m_read_readvariableopH
Dsavev2_adam_rnn_6_lstm_cell_6_recurrent_kernel_m_read_readvariableop<
8savev2_adam_rnn_6_lstm_cell_6_bias_m_read_readvariableop5
1savev2_adam_dense_26_kernel_v_read_readvariableop3
/savev2_adam_dense_26_bias_v_read_readvariableop5
1savev2_adam_dense_27_kernel_v_read_readvariableop3
/savev2_adam_dense_27_bias_v_read_readvariableop\
Xsavev2_adam_token_and_position_embedding_6_embedding_12_embeddings_v_read_readvariableop\
Xsavev2_adam_token_and_position_embedding_6_embedding_13_embeddings_v_read_readvariableop_
[savev2_adam_transformer_encoder_6_multi_head_attention_6_query_kernel_v_read_readvariableop]
Ysavev2_adam_transformer_encoder_6_multi_head_attention_6_query_bias_v_read_readvariableop]
Ysavev2_adam_transformer_encoder_6_multi_head_attention_6_key_kernel_v_read_readvariableop[
Wsavev2_adam_transformer_encoder_6_multi_head_attention_6_key_bias_v_read_readvariableop_
[savev2_adam_transformer_encoder_6_multi_head_attention_6_value_kernel_v_read_readvariableop]
Ysavev2_adam_transformer_encoder_6_multi_head_attention_6_value_bias_v_read_readvariableopj
fsavev2_adam_transformer_encoder_6_multi_head_attention_6_attention_output_kernel_v_read_readvariableoph
dsavev2_adam_transformer_encoder_6_multi_head_attention_6_attention_output_bias_v_read_readvariableop5
1savev2_adam_dense_24_kernel_v_read_readvariableop3
/savev2_adam_dense_24_bias_v_read_readvariableop5
1savev2_adam_dense_25_kernel_v_read_readvariableop3
/savev2_adam_dense_25_bias_v_read_readvariableopX
Tsavev2_adam_transformer_encoder_6_layer_normalization_12_gamma_v_read_readvariableopW
Ssavev2_adam_transformer_encoder_6_layer_normalization_12_beta_v_read_readvariableopX
Tsavev2_adam_transformer_encoder_6_layer_normalization_13_gamma_v_read_readvariableopW
Ssavev2_adam_transformer_encoder_6_layer_normalization_13_beta_v_read_readvariableop>
:savev2_adam_rnn_6_lstm_cell_6_kernel_v_read_readvariableopH
Dsavev2_adam_rnn_6_lstm_cell_6_recurrent_kernel_v_read_readvariableop<
8savev2_adam_rnn_6_lstm_cell_6_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ћ(
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*х'
valueл'Bи'UB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЪ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*њ
valueµB≤UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Е/
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop*savev2_dense_27_kernel_read_readvariableop(savev2_dense_27_bias_read_readvariableopQsavev2_token_and_position_embedding_6_embedding_12_embeddings_read_readvariableopQsavev2_token_and_position_embedding_6_embedding_13_embeddings_read_readvariableopTsavev2_transformer_encoder_6_multi_head_attention_6_query_kernel_read_readvariableopRsavev2_transformer_encoder_6_multi_head_attention_6_query_bias_read_readvariableopRsavev2_transformer_encoder_6_multi_head_attention_6_key_kernel_read_readvariableopPsavev2_transformer_encoder_6_multi_head_attention_6_key_bias_read_readvariableopTsavev2_transformer_encoder_6_multi_head_attention_6_value_kernel_read_readvariableopRsavev2_transformer_encoder_6_multi_head_attention_6_value_bias_read_readvariableop_savev2_transformer_encoder_6_multi_head_attention_6_attention_output_kernel_read_readvariableop]savev2_transformer_encoder_6_multi_head_attention_6_attention_output_bias_read_readvariableop*savev2_dense_24_kernel_read_readvariableop(savev2_dense_24_bias_read_readvariableop*savev2_dense_25_kernel_read_readvariableop(savev2_dense_25_bias_read_readvariableopMsavev2_transformer_encoder_6_layer_normalization_12_gamma_read_readvariableopLsavev2_transformer_encoder_6_layer_normalization_12_beta_read_readvariableopMsavev2_transformer_encoder_6_layer_normalization_13_gamma_read_readvariableopLsavev2_transformer_encoder_6_layer_normalization_13_beta_read_readvariableop3savev2_rnn_6_lstm_cell_6_kernel_read_readvariableop=savev2_rnn_6_lstm_cell_6_recurrent_kernel_read_readvariableop1savev2_rnn_6_lstm_cell_6_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_26_kernel_m_read_readvariableop/savev2_adam_dense_26_bias_m_read_readvariableop1savev2_adam_dense_27_kernel_m_read_readvariableop/savev2_adam_dense_27_bias_m_read_readvariableopXsavev2_adam_token_and_position_embedding_6_embedding_12_embeddings_m_read_readvariableopXsavev2_adam_token_and_position_embedding_6_embedding_13_embeddings_m_read_readvariableop[savev2_adam_transformer_encoder_6_multi_head_attention_6_query_kernel_m_read_readvariableopYsavev2_adam_transformer_encoder_6_multi_head_attention_6_query_bias_m_read_readvariableopYsavev2_adam_transformer_encoder_6_multi_head_attention_6_key_kernel_m_read_readvariableopWsavev2_adam_transformer_encoder_6_multi_head_attention_6_key_bias_m_read_readvariableop[savev2_adam_transformer_encoder_6_multi_head_attention_6_value_kernel_m_read_readvariableopYsavev2_adam_transformer_encoder_6_multi_head_attention_6_value_bias_m_read_readvariableopfsavev2_adam_transformer_encoder_6_multi_head_attention_6_attention_output_kernel_m_read_readvariableopdsavev2_adam_transformer_encoder_6_multi_head_attention_6_attention_output_bias_m_read_readvariableop1savev2_adam_dense_24_kernel_m_read_readvariableop/savev2_adam_dense_24_bias_m_read_readvariableop1savev2_adam_dense_25_kernel_m_read_readvariableop/savev2_adam_dense_25_bias_m_read_readvariableopTsavev2_adam_transformer_encoder_6_layer_normalization_12_gamma_m_read_readvariableopSsavev2_adam_transformer_encoder_6_layer_normalization_12_beta_m_read_readvariableopTsavev2_adam_transformer_encoder_6_layer_normalization_13_gamma_m_read_readvariableopSsavev2_adam_transformer_encoder_6_layer_normalization_13_beta_m_read_readvariableop:savev2_adam_rnn_6_lstm_cell_6_kernel_m_read_readvariableopDsavev2_adam_rnn_6_lstm_cell_6_recurrent_kernel_m_read_readvariableop8savev2_adam_rnn_6_lstm_cell_6_bias_m_read_readvariableop1savev2_adam_dense_26_kernel_v_read_readvariableop/savev2_adam_dense_26_bias_v_read_readvariableop1savev2_adam_dense_27_kernel_v_read_readvariableop/savev2_adam_dense_27_bias_v_read_readvariableopXsavev2_adam_token_and_position_embedding_6_embedding_12_embeddings_v_read_readvariableopXsavev2_adam_token_and_position_embedding_6_embedding_13_embeddings_v_read_readvariableop[savev2_adam_transformer_encoder_6_multi_head_attention_6_query_kernel_v_read_readvariableopYsavev2_adam_transformer_encoder_6_multi_head_attention_6_query_bias_v_read_readvariableopYsavev2_adam_transformer_encoder_6_multi_head_attention_6_key_kernel_v_read_readvariableopWsavev2_adam_transformer_encoder_6_multi_head_attention_6_key_bias_v_read_readvariableop[savev2_adam_transformer_encoder_6_multi_head_attention_6_value_kernel_v_read_readvariableopYsavev2_adam_transformer_encoder_6_multi_head_attention_6_value_bias_v_read_readvariableopfsavev2_adam_transformer_encoder_6_multi_head_attention_6_attention_output_kernel_v_read_readvariableopdsavev2_adam_transformer_encoder_6_multi_head_attention_6_attention_output_bias_v_read_readvariableop1savev2_adam_dense_24_kernel_v_read_readvariableop/savev2_adam_dense_24_bias_v_read_readvariableop1savev2_adam_dense_25_kernel_v_read_readvariableop/savev2_adam_dense_25_bias_v_read_readvariableopTsavev2_adam_transformer_encoder_6_layer_normalization_12_gamma_v_read_readvariableopSsavev2_adam_transformer_encoder_6_layer_normalization_12_beta_v_read_readvariableopTsavev2_adam_transformer_encoder_6_layer_normalization_13_gamma_v_read_readvariableopSsavev2_adam_transformer_encoder_6_layer_normalization_13_beta_v_read_readvariableop:savev2_adam_rnn_6_lstm_cell_6_kernel_v_read_readvariableopDsavev2_adam_rnn_6_lstm_cell_6_recurrent_kernel_v_read_readvariableop8savev2_adam_rnn_6_lstm_cell_6_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *c
dtypesY
W2U	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*Ё
_input_shapesЋ
»: :..:.:.::	Б2:.2:22:2:22:2:22:2:22:2:2 : : 2:2:2:2:2:2:	2Є:	.Є:Є: : : : : : : : : :..:.:.::	Б2:.2:22:2:22:2:22:2:22:2:2 : : 2:2:2:2:2:2:	2Є:	.Є:Є:..:.:.::	Б2:.2:22:2:22:2:22:2:22:2:2 : : 2:2:2:2:2:2:	2Є:	.Є:Є: 2(
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
:	Б2:$ 

_output_shapes

:.2:($
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
:	2Є:%!

_output_shapes
:	.Є:!

_output_shapes	
:Є:
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
:	Б2:$( 

_output_shapes

:.2:()$
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
:	2Є:%:!

_output_shapes
:	.Є:!;

_output_shapes	
:Є:$< 

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
:	Б2:$A 

_output_shapes

:.2:(B$
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
:	2Є:%S!

_output_shapes
:	.Є:!T

_output_shapes	
:Є:U

_output_shapes
: 
—
ј
K__inference_sequential_6_layer_call_and_return_conditional_losses_202285971

inputs$
dense_24_202285929:2  
dense_24_202285931: $
dense_25_202285965: 2 
dense_25_202285967:2
identityИҐ dense_24/StatefulPartitionedCallҐ dense_25/StatefulPartitionedCallэ
 dense_24/StatefulPartitionedCallStatefulPartitionedCallinputsdense_24_202285929dense_24_202285931*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€. *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_24_layer_call_and_return_conditional_losses_202285928†
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_202285965dense_25_202285967*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_25_layer_call_and_return_conditional_losses_202285964|
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2М
NoOpNoOp!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€.2: : : : 2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€.2
 
_user_specified_nameinputs
¶
ю
G__inference_dense_24_layer_call_and_return_conditional_losses_202289721

inputs3
!tensordot_readvariableop_resource:2 -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
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
value	B : ї
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
value	B : њ
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
value	B : Ь
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
:€€€€€€€€€.2К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€. r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€. T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€. e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€. z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€.2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€.2
 
_user_specified_nameinputs
¶
ю
G__inference_dense_24_layer_call_and_return_conditional_losses_202285928

inputs3
!tensordot_readvariableop_resource:2 -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
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
value	B : ї
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
value	B : њ
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
value	B : Ь
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
:€€€€€€€€€.2К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€. r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€. T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€. e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€. z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€.2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€.2
 
_user_specified_nameinputs
Љ 
ї
T__inference_transformer_encoder_6_layer_call_and_return_conditional_losses_202287237

inputsX
Bmulti_head_attention_6_query_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_6_query_add_readvariableop_resource:2V
@multi_head_attention_6_key_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_6_key_add_readvariableop_resource:2X
Bmulti_head_attention_6_value_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_6_value_add_readvariableop_resource:2c
Mmulti_head_attention_6_attention_output_einsum_einsum_readvariableop_resource:22Q
Cmulti_head_attention_6_attention_output_add_readvariableop_resource:2J
<layer_normalization_12_batchnorm_mul_readvariableop_resource:2F
8layer_normalization_12_batchnorm_readvariableop_resource:2I
7sequential_6_dense_24_tensordot_readvariableop_resource:2 C
5sequential_6_dense_24_biasadd_readvariableop_resource: I
7sequential_6_dense_25_tensordot_readvariableop_resource: 2C
5sequential_6_dense_25_biasadd_readvariableop_resource:2J
<layer_normalization_13_batchnorm_mul_readvariableop_resource:2F
8layer_normalization_13_batchnorm_readvariableop_resource:2
identityИҐ/layer_normalization_12/batchnorm/ReadVariableOpҐ3layer_normalization_12/batchnorm/mul/ReadVariableOpҐ/layer_normalization_13/batchnorm/ReadVariableOpҐ3layer_normalization_13/batchnorm/mul/ReadVariableOpҐ:multi_head_attention_6/attention_output/add/ReadVariableOpҐDmulti_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_6/key/add/ReadVariableOpҐ7multi_head_attention_6/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_6/query/add/ReadVariableOpҐ9multi_head_attention_6/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_6/value/add/ReadVariableOpҐ9multi_head_attention_6/value/einsum/Einsum/ReadVariableOpҐ,sequential_6/dense_24/BiasAdd/ReadVariableOpҐ.sequential_6/dense_24/Tensordot/ReadVariableOpҐ,sequential_6/dense_25/BiasAdd/ReadVariableOpҐ.sequential_6/dense_25/Tensordot/ReadVariableOpј
9multi_head_attention_6/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_6_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0я
*multi_head_attention_6/query/einsum/EinsumEinsuminputsAmulti_head_attention_6/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationabc,cde->abde®
/multi_head_attention_6/query/add/ReadVariableOpReadVariableOp8multi_head_attention_6_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0—
 multi_head_attention_6/query/addAddV23multi_head_attention_6/query/einsum/Einsum:output:07multi_head_attention_6/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€.2Љ
7multi_head_attention_6/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_6_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0џ
(multi_head_attention_6/key/einsum/EinsumEinsuminputs?multi_head_attention_6/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationabc,cde->abde§
-multi_head_attention_6/key/add/ReadVariableOpReadVariableOp6multi_head_attention_6_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ћ
multi_head_attention_6/key/addAddV21multi_head_attention_6/key/einsum/Einsum:output:05multi_head_attention_6/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€.2ј
9multi_head_attention_6/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_6_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0я
*multi_head_attention_6/value/einsum/EinsumEinsuminputsAmulti_head_attention_6/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationabc,cde->abde®
/multi_head_attention_6/value/add/ReadVariableOpReadVariableOp8multi_head_attention_6_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0—
 multi_head_attention_6/value/addAddV23multi_head_attention_6/value/einsum/Einsum:output:07multi_head_attention_6/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€.2a
multi_head_attention_6/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *√–>®
multi_head_attention_6/MulMul$multi_head_attention_6/query/add:z:0%multi_head_attention_6/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€.2‘
$multi_head_attention_6/einsum/EinsumEinsum"multi_head_attention_6/key/add:z:0multi_head_attention_6/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€..*
equationaecd,abcd->acbeЪ
&multi_head_attention_6/softmax/SoftmaxSoftmax-multi_head_attention_6/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€..к
&multi_head_attention_6/einsum_1/EinsumEinsum0multi_head_attention_6/softmax/Softmax:softmax:0$multi_head_attention_6/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationacbe,aecd->abcd÷
Dmulti_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_6_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ъ
5multi_head_attention_6/attention_output/einsum/EinsumEinsum/multi_head_attention_6/einsum_1/Einsum:output:0Lmulti_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€.2*
equationabcd,cde->abeЇ
:multi_head_attention_6/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_6_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0о
+multi_head_attention_6/attention_output/addAddV2>multi_head_attention_6/attention_output/einsum/Einsum:output:0Bmulti_head_attention_6/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2]
dropout_18/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @І
dropout_18/dropout/MulMul/multi_head_attention_6/attention_output/add:z:0!dropout_18/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2w
dropout_18/dropout/ShapeShape/multi_head_attention_6/attention_output/add:z:0*
T0*
_output_shapes
:¶
/dropout_18/dropout/random_uniform/RandomUniformRandomUniform!dropout_18/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2*
dtype0f
!dropout_18/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ћ
dropout_18/dropout/GreaterEqualGreaterEqual8dropout_18/dropout/random_uniform/RandomUniform:output:0*dropout_18/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Й
dropout_18/dropout/CastCast#dropout_18/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€.2О
dropout_18/dropout/Mul_1Muldropout_18/dropout/Mul:z:0dropout_18/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€.2h
addAddV2inputsdropout_18/dropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2
5layer_normalization_12/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ї
#layer_normalization_12/moments/meanMeanadd:z:0>layer_normalization_12/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(Я
+layer_normalization_12/moments/StopGradientStopGradient,layer_normalization_12/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€.Ї
0layer_normalization_12/moments/SquaredDifferenceSquaredDifferenceadd:z:04layer_normalization_12/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Г
9layer_normalization_12/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:р
'layer_normalization_12/moments/varianceMean4layer_normalization_12/moments/SquaredDifference:z:0Blayer_normalization_12/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(k
&layer_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5∆
$layer_normalization_12/batchnorm/addAddV20layer_normalization_12/moments/variance:output:0/layer_normalization_12/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€.П
&layer_normalization_12/batchnorm/RsqrtRsqrt(layer_normalization_12/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€.ђ
3layer_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0 
$layer_normalization_12/batchnorm/mulMul*layer_normalization_12/batchnorm/Rsqrt:y:0;layer_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2Ц
&layer_normalization_12/batchnorm/mul_1Muladd:z:0(layer_normalization_12/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2ї
&layer_normalization_12/batchnorm/mul_2Mul,layer_normalization_12/moments/mean:output:0(layer_normalization_12/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2§
/layer_normalization_12/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_12_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0∆
$layer_normalization_12/batchnorm/subSub7layer_normalization_12/batchnorm/ReadVariableOp:value:0*layer_normalization_12/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2ї
&layer_normalization_12/batchnorm/add_1AddV2*layer_normalization_12/batchnorm/mul_1:z:0(layer_normalization_12/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2¶
.sequential_6/dense_24/Tensordot/ReadVariableOpReadVariableOp7sequential_6_dense_24_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0n
$sequential_6/dense_24/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_6/dense_24/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
%sequential_6/dense_24/Tensordot/ShapeShape*layer_normalization_12/batchnorm/add_1:z:0*
T0*
_output_shapes
:o
-sequential_6/dense_24/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : У
(sequential_6/dense_24/Tensordot/GatherV2GatherV2.sequential_6/dense_24/Tensordot/Shape:output:0-sequential_6/dense_24/Tensordot/free:output:06sequential_6/dense_24/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_6/dense_24/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ч
*sequential_6/dense_24/Tensordot/GatherV2_1GatherV2.sequential_6/dense_24/Tensordot/Shape:output:0-sequential_6/dense_24/Tensordot/axes:output:08sequential_6/dense_24/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_6/dense_24/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ∞
$sequential_6/dense_24/Tensordot/ProdProd1sequential_6/dense_24/Tensordot/GatherV2:output:0.sequential_6/dense_24/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_6/dense_24/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ґ
&sequential_6/dense_24/Tensordot/Prod_1Prod3sequential_6/dense_24/Tensordot/GatherV2_1:output:00sequential_6/dense_24/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_6/dense_24/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ф
&sequential_6/dense_24/Tensordot/concatConcatV2-sequential_6/dense_24/Tensordot/free:output:0-sequential_6/dense_24/Tensordot/axes:output:04sequential_6/dense_24/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ї
%sequential_6/dense_24/Tensordot/stackPack-sequential_6/dense_24/Tensordot/Prod:output:0/sequential_6/dense_24/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:…
)sequential_6/dense_24/Tensordot/transpose	Transpose*layer_normalization_12/batchnorm/add_1:z:0/sequential_6/dense_24/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2ћ
'sequential_6/dense_24/Tensordot/ReshapeReshape-sequential_6/dense_24/Tensordot/transpose:y:0.sequential_6/dense_24/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€ћ
&sequential_6/dense_24/Tensordot/MatMulMatMul0sequential_6/dense_24/Tensordot/Reshape:output:06sequential_6/dense_24/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ q
'sequential_6/dense_24/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: o
-sequential_6/dense_24/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : €
(sequential_6/dense_24/Tensordot/concat_1ConcatV21sequential_6/dense_24/Tensordot/GatherV2:output:00sequential_6/dense_24/Tensordot/Const_2:output:06sequential_6/dense_24/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:≈
sequential_6/dense_24/TensordotReshape0sequential_6/dense_24/Tensordot/MatMul:product:01sequential_6/dense_24/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€. Ю
,sequential_6/dense_24/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Њ
sequential_6/dense_24/BiasAddBiasAdd(sequential_6/dense_24/Tensordot:output:04sequential_6/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€. А
sequential_6/dense_24/ReluRelu&sequential_6/dense_24/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€. ¶
.sequential_6/dense_25/Tensordot/ReadVariableOpReadVariableOp7sequential_6_dense_25_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0n
$sequential_6/dense_25/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_6/dense_25/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_6/dense_25/Tensordot/ShapeShape(sequential_6/dense_24/Relu:activations:0*
T0*
_output_shapes
:o
-sequential_6/dense_25/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : У
(sequential_6/dense_25/Tensordot/GatherV2GatherV2.sequential_6/dense_25/Tensordot/Shape:output:0-sequential_6/dense_25/Tensordot/free:output:06sequential_6/dense_25/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_6/dense_25/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ч
*sequential_6/dense_25/Tensordot/GatherV2_1GatherV2.sequential_6/dense_25/Tensordot/Shape:output:0-sequential_6/dense_25/Tensordot/axes:output:08sequential_6/dense_25/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_6/dense_25/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ∞
$sequential_6/dense_25/Tensordot/ProdProd1sequential_6/dense_25/Tensordot/GatherV2:output:0.sequential_6/dense_25/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_6/dense_25/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ґ
&sequential_6/dense_25/Tensordot/Prod_1Prod3sequential_6/dense_25/Tensordot/GatherV2_1:output:00sequential_6/dense_25/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_6/dense_25/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ф
&sequential_6/dense_25/Tensordot/concatConcatV2-sequential_6/dense_25/Tensordot/free:output:0-sequential_6/dense_25/Tensordot/axes:output:04sequential_6/dense_25/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ї
%sequential_6/dense_25/Tensordot/stackPack-sequential_6/dense_25/Tensordot/Prod:output:0/sequential_6/dense_25/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:«
)sequential_6/dense_25/Tensordot/transpose	Transpose(sequential_6/dense_24/Relu:activations:0/sequential_6/dense_25/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€. ћ
'sequential_6/dense_25/Tensordot/ReshapeReshape-sequential_6/dense_25/Tensordot/transpose:y:0.sequential_6/dense_25/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€ћ
&sequential_6/dense_25/Tensordot/MatMulMatMul0sequential_6/dense_25/Tensordot/Reshape:output:06sequential_6/dense_25/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2q
'sequential_6/dense_25/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2o
-sequential_6/dense_25/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : €
(sequential_6/dense_25/Tensordot/concat_1ConcatV21sequential_6/dense_25/Tensordot/GatherV2:output:00sequential_6/dense_25/Tensordot/Const_2:output:06sequential_6/dense_25/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:≈
sequential_6/dense_25/TensordotReshape0sequential_6/dense_25/Tensordot/MatMul:product:01sequential_6/dense_25/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Ю
,sequential_6/dense_25/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_25_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Њ
sequential_6/dense_25/BiasAddBiasAdd(sequential_6/dense_25/Tensordot:output:04sequential_6/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2]
dropout_19/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ю
dropout_19/dropout/MulMul&sequential_6/dense_25/BiasAdd:output:0!dropout_19/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2n
dropout_19/dropout/ShapeShape&sequential_6/dense_25/BiasAdd:output:0*
T0*
_output_shapes
:¶
/dropout_19/dropout/random_uniform/RandomUniformRandomUniform!dropout_19/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2*
dtype0f
!dropout_19/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ћ
dropout_19/dropout/GreaterEqualGreaterEqual8dropout_19/dropout/random_uniform/RandomUniform:output:0*dropout_19/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Й
dropout_19/dropout/CastCast#dropout_19/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€.2О
dropout_19/dropout/Mul_1Muldropout_19/dropout/Mul:z:0dropout_19/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€.2О
add_1AddV2*layer_normalization_12/batchnorm/add_1:z:0dropout_19/dropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2
5layer_normalization_13/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:љ
#layer_normalization_13/moments/meanMean	add_1:z:0>layer_normalization_13/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(Я
+layer_normalization_13/moments/StopGradientStopGradient,layer_normalization_13/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€.Љ
0layer_normalization_13/moments/SquaredDifferenceSquaredDifference	add_1:z:04layer_normalization_13/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Г
9layer_normalization_13/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:р
'layer_normalization_13/moments/varianceMean4layer_normalization_13/moments/SquaredDifference:z:0Blayer_normalization_13/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(k
&layer_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5∆
$layer_normalization_13/batchnorm/addAddV20layer_normalization_13/moments/variance:output:0/layer_normalization_13/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€.П
&layer_normalization_13/batchnorm/RsqrtRsqrt(layer_normalization_13/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€.ђ
3layer_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0 
$layer_normalization_13/batchnorm/mulMul*layer_normalization_13/batchnorm/Rsqrt:y:0;layer_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2Ш
&layer_normalization_13/batchnorm/mul_1Mul	add_1:z:0(layer_normalization_13/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2ї
&layer_normalization_13/batchnorm/mul_2Mul,layer_normalization_13/moments/mean:output:0(layer_normalization_13/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2§
/layer_normalization_13/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_13_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0∆
$layer_normalization_13/batchnorm/subSub7layer_normalization_13/batchnorm/ReadVariableOp:value:0*layer_normalization_13/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2ї
&layer_normalization_13/batchnorm/add_1AddV2*layer_normalization_13/batchnorm/mul_1:z:0(layer_normalization_13/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2}
IdentityIdentity*layer_normalization_13/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2†
NoOpNoOp0^layer_normalization_12/batchnorm/ReadVariableOp4^layer_normalization_12/batchnorm/mul/ReadVariableOp0^layer_normalization_13/batchnorm/ReadVariableOp4^layer_normalization_13/batchnorm/mul/ReadVariableOp;^multi_head_attention_6/attention_output/add/ReadVariableOpE^multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_6/key/add/ReadVariableOp8^multi_head_attention_6/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_6/query/add/ReadVariableOp:^multi_head_attention_6/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_6/value/add/ReadVariableOp:^multi_head_attention_6/value/einsum/Einsum/ReadVariableOp-^sequential_6/dense_24/BiasAdd/ReadVariableOp/^sequential_6/dense_24/Tensordot/ReadVariableOp-^sequential_6/dense_25/BiasAdd/ReadVariableOp/^sequential_6/dense_25/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€.2: : : : : : : : : : : : : : : : 2b
/layer_normalization_12/batchnorm/ReadVariableOp/layer_normalization_12/batchnorm/ReadVariableOp2j
3layer_normalization_12/batchnorm/mul/ReadVariableOp3layer_normalization_12/batchnorm/mul/ReadVariableOp2b
/layer_normalization_13/batchnorm/ReadVariableOp/layer_normalization_13/batchnorm/ReadVariableOp2j
3layer_normalization_13/batchnorm/mul/ReadVariableOp3layer_normalization_13/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_6/attention_output/add/ReadVariableOp:multi_head_attention_6/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_6/key/add/ReadVariableOp-multi_head_attention_6/key/add/ReadVariableOp2r
7multi_head_attention_6/key/einsum/Einsum/ReadVariableOp7multi_head_attention_6/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_6/query/add/ReadVariableOp/multi_head_attention_6/query/add/ReadVariableOp2v
9multi_head_attention_6/query/einsum/Einsum/ReadVariableOp9multi_head_attention_6/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_6/value/add/ReadVariableOp/multi_head_attention_6/value/add/ReadVariableOp2v
9multi_head_attention_6/value/einsum/Einsum/ReadVariableOp9multi_head_attention_6/value/einsum/Einsum/ReadVariableOp2\
,sequential_6/dense_24/BiasAdd/ReadVariableOp,sequential_6/dense_24/BiasAdd/ReadVariableOp2`
.sequential_6/dense_24/Tensordot/ReadVariableOp.sequential_6/dense_24/Tensordot/ReadVariableOp2\
,sequential_6/dense_25/BiasAdd/ReadVariableOp,sequential_6/dense_25/BiasAdd/ReadVariableOp2`
.sequential_6/dense_25/Tensordot/ReadVariableOp.sequential_6/dense_25/Tensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€.2
 
_user_specified_nameinputs
ћ
џ
0__inference_sequential_6_layer_call_fn_202286055
dense_24_input
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identityИҐStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCalldense_24_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€.2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_sequential_6_layer_call_and_return_conditional_losses_202286031s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€.2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:€€€€€€€€€.2
(
_user_specified_namedense_24_input
Ћ
И
J__inference_lstm_cell_6_layer_call_and_return_conditional_losses_202289649

inputs
states_0
states_11
matmul_readvariableop_resource:	2Є3
 matmul_1_readvariableop_resource:	.Є.
biasadd_readvariableop_resource:	Є
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2Є*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Єy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	.Є*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Єe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Єs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Є*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€.V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€.U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€.N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€.U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€.K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€2:€€€€€€€€€.:€€€€€€€€€.: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€.
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€.
"
_user_specified_name
states/1
ƒ
“
while_cond_202289175
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_202289175___redundant_placeholder07
3while_while_cond_202289175___redundant_placeholder17
3while_while_cond_202289175___redundant_placeholder27
3while_while_cond_202289175___redundant_placeholder3
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
@: : : : :€€€€€€€€€.:€€€€€€€€€.: ::::: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
:
ьї
ї
T__inference_transformer_encoder_6_layer_call_and_return_conditional_losses_202288644

inputsX
Bmulti_head_attention_6_query_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_6_query_add_readvariableop_resource:2V
@multi_head_attention_6_key_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_6_key_add_readvariableop_resource:2X
Bmulti_head_attention_6_value_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_6_value_add_readvariableop_resource:2c
Mmulti_head_attention_6_attention_output_einsum_einsum_readvariableop_resource:22Q
Cmulti_head_attention_6_attention_output_add_readvariableop_resource:2J
<layer_normalization_12_batchnorm_mul_readvariableop_resource:2F
8layer_normalization_12_batchnorm_readvariableop_resource:2I
7sequential_6_dense_24_tensordot_readvariableop_resource:2 C
5sequential_6_dense_24_biasadd_readvariableop_resource: I
7sequential_6_dense_25_tensordot_readvariableop_resource: 2C
5sequential_6_dense_25_biasadd_readvariableop_resource:2J
<layer_normalization_13_batchnorm_mul_readvariableop_resource:2F
8layer_normalization_13_batchnorm_readvariableop_resource:2
identityИҐ/layer_normalization_12/batchnorm/ReadVariableOpҐ3layer_normalization_12/batchnorm/mul/ReadVariableOpҐ/layer_normalization_13/batchnorm/ReadVariableOpҐ3layer_normalization_13/batchnorm/mul/ReadVariableOpҐ:multi_head_attention_6/attention_output/add/ReadVariableOpҐDmulti_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_6/key/add/ReadVariableOpҐ7multi_head_attention_6/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_6/query/add/ReadVariableOpҐ9multi_head_attention_6/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_6/value/add/ReadVariableOpҐ9multi_head_attention_6/value/einsum/Einsum/ReadVariableOpҐ,sequential_6/dense_24/BiasAdd/ReadVariableOpҐ.sequential_6/dense_24/Tensordot/ReadVariableOpҐ,sequential_6/dense_25/BiasAdd/ReadVariableOpҐ.sequential_6/dense_25/Tensordot/ReadVariableOpј
9multi_head_attention_6/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_6_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0я
*multi_head_attention_6/query/einsum/EinsumEinsuminputsAmulti_head_attention_6/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationabc,cde->abde®
/multi_head_attention_6/query/add/ReadVariableOpReadVariableOp8multi_head_attention_6_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0—
 multi_head_attention_6/query/addAddV23multi_head_attention_6/query/einsum/Einsum:output:07multi_head_attention_6/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€.2Љ
7multi_head_attention_6/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_6_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0џ
(multi_head_attention_6/key/einsum/EinsumEinsuminputs?multi_head_attention_6/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationabc,cde->abde§
-multi_head_attention_6/key/add/ReadVariableOpReadVariableOp6multi_head_attention_6_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ћ
multi_head_attention_6/key/addAddV21multi_head_attention_6/key/einsum/Einsum:output:05multi_head_attention_6/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€.2ј
9multi_head_attention_6/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_6_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0я
*multi_head_attention_6/value/einsum/EinsumEinsuminputsAmulti_head_attention_6/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationabc,cde->abde®
/multi_head_attention_6/value/add/ReadVariableOpReadVariableOp8multi_head_attention_6_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0—
 multi_head_attention_6/value/addAddV23multi_head_attention_6/value/einsum/Einsum:output:07multi_head_attention_6/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€.2a
multi_head_attention_6/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *√–>®
multi_head_attention_6/MulMul$multi_head_attention_6/query/add:z:0%multi_head_attention_6/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€.2‘
$multi_head_attention_6/einsum/EinsumEinsum"multi_head_attention_6/key/add:z:0multi_head_attention_6/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€..*
equationaecd,abcd->acbeЪ
&multi_head_attention_6/softmax/SoftmaxSoftmax-multi_head_attention_6/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€..Я
'multi_head_attention_6/dropout/IdentityIdentity0multi_head_attention_6/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€..к
&multi_head_attention_6/einsum_1/EinsumEinsum0multi_head_attention_6/dropout/Identity:output:0$multi_head_attention_6/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationacbe,aecd->abcd÷
Dmulti_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_6_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ъ
5multi_head_attention_6/attention_output/einsum/EinsumEinsum/multi_head_attention_6/einsum_1/Einsum:output:0Lmulti_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€.2*
equationabcd,cde->abeЇ
:multi_head_attention_6/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_6_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0о
+multi_head_attention_6/attention_output/addAddV2>multi_head_attention_6/attention_output/einsum/Einsum:output:0Bmulti_head_attention_6/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2Ж
dropout_18/IdentityIdentity/multi_head_attention_6/attention_output/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2h
addAddV2inputsdropout_18/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2
5layer_normalization_12/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ї
#layer_normalization_12/moments/meanMeanadd:z:0>layer_normalization_12/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(Я
+layer_normalization_12/moments/StopGradientStopGradient,layer_normalization_12/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€.Ї
0layer_normalization_12/moments/SquaredDifferenceSquaredDifferenceadd:z:04layer_normalization_12/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Г
9layer_normalization_12/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:р
'layer_normalization_12/moments/varianceMean4layer_normalization_12/moments/SquaredDifference:z:0Blayer_normalization_12/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(k
&layer_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5∆
$layer_normalization_12/batchnorm/addAddV20layer_normalization_12/moments/variance:output:0/layer_normalization_12/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€.П
&layer_normalization_12/batchnorm/RsqrtRsqrt(layer_normalization_12/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€.ђ
3layer_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0 
$layer_normalization_12/batchnorm/mulMul*layer_normalization_12/batchnorm/Rsqrt:y:0;layer_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2Ц
&layer_normalization_12/batchnorm/mul_1Muladd:z:0(layer_normalization_12/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2ї
&layer_normalization_12/batchnorm/mul_2Mul,layer_normalization_12/moments/mean:output:0(layer_normalization_12/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2§
/layer_normalization_12/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_12_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0∆
$layer_normalization_12/batchnorm/subSub7layer_normalization_12/batchnorm/ReadVariableOp:value:0*layer_normalization_12/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2ї
&layer_normalization_12/batchnorm/add_1AddV2*layer_normalization_12/batchnorm/mul_1:z:0(layer_normalization_12/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2¶
.sequential_6/dense_24/Tensordot/ReadVariableOpReadVariableOp7sequential_6_dense_24_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0n
$sequential_6/dense_24/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_6/dense_24/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
%sequential_6/dense_24/Tensordot/ShapeShape*layer_normalization_12/batchnorm/add_1:z:0*
T0*
_output_shapes
:o
-sequential_6/dense_24/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : У
(sequential_6/dense_24/Tensordot/GatherV2GatherV2.sequential_6/dense_24/Tensordot/Shape:output:0-sequential_6/dense_24/Tensordot/free:output:06sequential_6/dense_24/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_6/dense_24/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ч
*sequential_6/dense_24/Tensordot/GatherV2_1GatherV2.sequential_6/dense_24/Tensordot/Shape:output:0-sequential_6/dense_24/Tensordot/axes:output:08sequential_6/dense_24/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_6/dense_24/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ∞
$sequential_6/dense_24/Tensordot/ProdProd1sequential_6/dense_24/Tensordot/GatherV2:output:0.sequential_6/dense_24/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_6/dense_24/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ґ
&sequential_6/dense_24/Tensordot/Prod_1Prod3sequential_6/dense_24/Tensordot/GatherV2_1:output:00sequential_6/dense_24/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_6/dense_24/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ф
&sequential_6/dense_24/Tensordot/concatConcatV2-sequential_6/dense_24/Tensordot/free:output:0-sequential_6/dense_24/Tensordot/axes:output:04sequential_6/dense_24/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ї
%sequential_6/dense_24/Tensordot/stackPack-sequential_6/dense_24/Tensordot/Prod:output:0/sequential_6/dense_24/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:…
)sequential_6/dense_24/Tensordot/transpose	Transpose*layer_normalization_12/batchnorm/add_1:z:0/sequential_6/dense_24/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2ћ
'sequential_6/dense_24/Tensordot/ReshapeReshape-sequential_6/dense_24/Tensordot/transpose:y:0.sequential_6/dense_24/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€ћ
&sequential_6/dense_24/Tensordot/MatMulMatMul0sequential_6/dense_24/Tensordot/Reshape:output:06sequential_6/dense_24/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ q
'sequential_6/dense_24/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: o
-sequential_6/dense_24/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : €
(sequential_6/dense_24/Tensordot/concat_1ConcatV21sequential_6/dense_24/Tensordot/GatherV2:output:00sequential_6/dense_24/Tensordot/Const_2:output:06sequential_6/dense_24/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:≈
sequential_6/dense_24/TensordotReshape0sequential_6/dense_24/Tensordot/MatMul:product:01sequential_6/dense_24/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€. Ю
,sequential_6/dense_24/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Њ
sequential_6/dense_24/BiasAddBiasAdd(sequential_6/dense_24/Tensordot:output:04sequential_6/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€. А
sequential_6/dense_24/ReluRelu&sequential_6/dense_24/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€. ¶
.sequential_6/dense_25/Tensordot/ReadVariableOpReadVariableOp7sequential_6_dense_25_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0n
$sequential_6/dense_25/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_6/dense_25/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_6/dense_25/Tensordot/ShapeShape(sequential_6/dense_24/Relu:activations:0*
T0*
_output_shapes
:o
-sequential_6/dense_25/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : У
(sequential_6/dense_25/Tensordot/GatherV2GatherV2.sequential_6/dense_25/Tensordot/Shape:output:0-sequential_6/dense_25/Tensordot/free:output:06sequential_6/dense_25/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_6/dense_25/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ч
*sequential_6/dense_25/Tensordot/GatherV2_1GatherV2.sequential_6/dense_25/Tensordot/Shape:output:0-sequential_6/dense_25/Tensordot/axes:output:08sequential_6/dense_25/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_6/dense_25/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ∞
$sequential_6/dense_25/Tensordot/ProdProd1sequential_6/dense_25/Tensordot/GatherV2:output:0.sequential_6/dense_25/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_6/dense_25/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ґ
&sequential_6/dense_25/Tensordot/Prod_1Prod3sequential_6/dense_25/Tensordot/GatherV2_1:output:00sequential_6/dense_25/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_6/dense_25/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ф
&sequential_6/dense_25/Tensordot/concatConcatV2-sequential_6/dense_25/Tensordot/free:output:0-sequential_6/dense_25/Tensordot/axes:output:04sequential_6/dense_25/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ї
%sequential_6/dense_25/Tensordot/stackPack-sequential_6/dense_25/Tensordot/Prod:output:0/sequential_6/dense_25/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:«
)sequential_6/dense_25/Tensordot/transpose	Transpose(sequential_6/dense_24/Relu:activations:0/sequential_6/dense_25/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€. ћ
'sequential_6/dense_25/Tensordot/ReshapeReshape-sequential_6/dense_25/Tensordot/transpose:y:0.sequential_6/dense_25/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€ћ
&sequential_6/dense_25/Tensordot/MatMulMatMul0sequential_6/dense_25/Tensordot/Reshape:output:06sequential_6/dense_25/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2q
'sequential_6/dense_25/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2o
-sequential_6/dense_25/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : €
(sequential_6/dense_25/Tensordot/concat_1ConcatV21sequential_6/dense_25/Tensordot/GatherV2:output:00sequential_6/dense_25/Tensordot/Const_2:output:06sequential_6/dense_25/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:≈
sequential_6/dense_25/TensordotReshape0sequential_6/dense_25/Tensordot/MatMul:product:01sequential_6/dense_25/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Ю
,sequential_6/dense_25/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_25_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Њ
sequential_6/dense_25/BiasAddBiasAdd(sequential_6/dense_25/Tensordot:output:04sequential_6/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2}
dropout_19/IdentityIdentity&sequential_6/dense_25/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2О
add_1AddV2*layer_normalization_12/batchnorm/add_1:z:0dropout_19/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2
5layer_normalization_13/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:љ
#layer_normalization_13/moments/meanMean	add_1:z:0>layer_normalization_13/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(Я
+layer_normalization_13/moments/StopGradientStopGradient,layer_normalization_13/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€.Љ
0layer_normalization_13/moments/SquaredDifferenceSquaredDifference	add_1:z:04layer_normalization_13/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Г
9layer_normalization_13/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:р
'layer_normalization_13/moments/varianceMean4layer_normalization_13/moments/SquaredDifference:z:0Blayer_normalization_13/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(k
&layer_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5∆
$layer_normalization_13/batchnorm/addAddV20layer_normalization_13/moments/variance:output:0/layer_normalization_13/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€.П
&layer_normalization_13/batchnorm/RsqrtRsqrt(layer_normalization_13/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€.ђ
3layer_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0 
$layer_normalization_13/batchnorm/mulMul*layer_normalization_13/batchnorm/Rsqrt:y:0;layer_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2Ш
&layer_normalization_13/batchnorm/mul_1Mul	add_1:z:0(layer_normalization_13/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2ї
&layer_normalization_13/batchnorm/mul_2Mul,layer_normalization_13/moments/mean:output:0(layer_normalization_13/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2§
/layer_normalization_13/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_13_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0∆
$layer_normalization_13/batchnorm/subSub7layer_normalization_13/batchnorm/ReadVariableOp:value:0*layer_normalization_13/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2ї
&layer_normalization_13/batchnorm/add_1AddV2*layer_normalization_13/batchnorm/mul_1:z:0(layer_normalization_13/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2}
IdentityIdentity*layer_normalization_13/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2†
NoOpNoOp0^layer_normalization_12/batchnorm/ReadVariableOp4^layer_normalization_12/batchnorm/mul/ReadVariableOp0^layer_normalization_13/batchnorm/ReadVariableOp4^layer_normalization_13/batchnorm/mul/ReadVariableOp;^multi_head_attention_6/attention_output/add/ReadVariableOpE^multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_6/key/add/ReadVariableOp8^multi_head_attention_6/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_6/query/add/ReadVariableOp:^multi_head_attention_6/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_6/value/add/ReadVariableOp:^multi_head_attention_6/value/einsum/Einsum/ReadVariableOp-^sequential_6/dense_24/BiasAdd/ReadVariableOp/^sequential_6/dense_24/Tensordot/ReadVariableOp-^sequential_6/dense_25/BiasAdd/ReadVariableOp/^sequential_6/dense_25/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€.2: : : : : : : : : : : : : : : : 2b
/layer_normalization_12/batchnorm/ReadVariableOp/layer_normalization_12/batchnorm/ReadVariableOp2j
3layer_normalization_12/batchnorm/mul/ReadVariableOp3layer_normalization_12/batchnorm/mul/ReadVariableOp2b
/layer_normalization_13/batchnorm/ReadVariableOp/layer_normalization_13/batchnorm/ReadVariableOp2j
3layer_normalization_13/batchnorm/mul/ReadVariableOp3layer_normalization_13/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_6/attention_output/add/ReadVariableOp:multi_head_attention_6/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_6/key/add/ReadVariableOp-multi_head_attention_6/key/add/ReadVariableOp2r
7multi_head_attention_6/key/einsum/Einsum/ReadVariableOp7multi_head_attention_6/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_6/query/add/ReadVariableOp/multi_head_attention_6/query/add/ReadVariableOp2v
9multi_head_attention_6/query/einsum/Einsum/ReadVariableOp9multi_head_attention_6/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_6/value/add/ReadVariableOp/multi_head_attention_6/value/add/ReadVariableOp2v
9multi_head_attention_6/value/einsum/Einsum/ReadVariableOp9multi_head_attention_6/value/einsum/Einsum/ReadVariableOp2\
,sequential_6/dense_24/BiasAdd/ReadVariableOp,sequential_6/dense_24/BiasAdd/ReadVariableOp2`
.sequential_6/dense_24/Tensordot/ReadVariableOp.sequential_6/dense_24/Tensordot/ReadVariableOp2\
,sequential_6/dense_25/BiasAdd/ReadVariableOp,sequential_6/dense_25/BiasAdd/ReadVariableOp2`
.sequential_6/dense_25/Tensordot/ReadVariableOp.sequential_6/dense_25/Tensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€.2
 
_user_specified_nameinputs
ƒ
“
while_cond_202289031
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_202289031___redundant_placeholder07
3while_while_cond_202289031___redundant_placeholder17
3while_while_cond_202289031___redundant_placeholder27
3while_while_cond_202289031___redundant_placeholder3
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
@: : : : :€€€€€€€€€.:€€€€€€€€€.: ::::: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
:
щ
ґ
)__inference_rnn_6_layer_call_fn_202288817

inputs
unknown:	2Є
	unknown_0:	.Є
	unknown_1:	Є
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rnn_6_layer_call_and_return_conditional_losses_202286776o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€.2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€.2
 
_user_specified_nameinputs
ьї
ї
T__inference_transformer_encoder_6_layer_call_and_return_conditional_losses_202286599

inputsX
Bmulti_head_attention_6_query_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_6_query_add_readvariableop_resource:2V
@multi_head_attention_6_key_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_6_key_add_readvariableop_resource:2X
Bmulti_head_attention_6_value_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_6_value_add_readvariableop_resource:2c
Mmulti_head_attention_6_attention_output_einsum_einsum_readvariableop_resource:22Q
Cmulti_head_attention_6_attention_output_add_readvariableop_resource:2J
<layer_normalization_12_batchnorm_mul_readvariableop_resource:2F
8layer_normalization_12_batchnorm_readvariableop_resource:2I
7sequential_6_dense_24_tensordot_readvariableop_resource:2 C
5sequential_6_dense_24_biasadd_readvariableop_resource: I
7sequential_6_dense_25_tensordot_readvariableop_resource: 2C
5sequential_6_dense_25_biasadd_readvariableop_resource:2J
<layer_normalization_13_batchnorm_mul_readvariableop_resource:2F
8layer_normalization_13_batchnorm_readvariableop_resource:2
identityИҐ/layer_normalization_12/batchnorm/ReadVariableOpҐ3layer_normalization_12/batchnorm/mul/ReadVariableOpҐ/layer_normalization_13/batchnorm/ReadVariableOpҐ3layer_normalization_13/batchnorm/mul/ReadVariableOpҐ:multi_head_attention_6/attention_output/add/ReadVariableOpҐDmulti_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_6/key/add/ReadVariableOpҐ7multi_head_attention_6/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_6/query/add/ReadVariableOpҐ9multi_head_attention_6/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_6/value/add/ReadVariableOpҐ9multi_head_attention_6/value/einsum/Einsum/ReadVariableOpҐ,sequential_6/dense_24/BiasAdd/ReadVariableOpҐ.sequential_6/dense_24/Tensordot/ReadVariableOpҐ,sequential_6/dense_25/BiasAdd/ReadVariableOpҐ.sequential_6/dense_25/Tensordot/ReadVariableOpј
9multi_head_attention_6/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_6_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0я
*multi_head_attention_6/query/einsum/EinsumEinsuminputsAmulti_head_attention_6/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationabc,cde->abde®
/multi_head_attention_6/query/add/ReadVariableOpReadVariableOp8multi_head_attention_6_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0—
 multi_head_attention_6/query/addAddV23multi_head_attention_6/query/einsum/Einsum:output:07multi_head_attention_6/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€.2Љ
7multi_head_attention_6/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_6_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0џ
(multi_head_attention_6/key/einsum/EinsumEinsuminputs?multi_head_attention_6/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationabc,cde->abde§
-multi_head_attention_6/key/add/ReadVariableOpReadVariableOp6multi_head_attention_6_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ћ
multi_head_attention_6/key/addAddV21multi_head_attention_6/key/einsum/Einsum:output:05multi_head_attention_6/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€.2ј
9multi_head_attention_6/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_6_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0я
*multi_head_attention_6/value/einsum/EinsumEinsuminputsAmulti_head_attention_6/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationabc,cde->abde®
/multi_head_attention_6/value/add/ReadVariableOpReadVariableOp8multi_head_attention_6_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0—
 multi_head_attention_6/value/addAddV23multi_head_attention_6/value/einsum/Einsum:output:07multi_head_attention_6/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€.2a
multi_head_attention_6/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *√–>®
multi_head_attention_6/MulMul$multi_head_attention_6/query/add:z:0%multi_head_attention_6/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€.2‘
$multi_head_attention_6/einsum/EinsumEinsum"multi_head_attention_6/key/add:z:0multi_head_attention_6/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€..*
equationaecd,abcd->acbeЪ
&multi_head_attention_6/softmax/SoftmaxSoftmax-multi_head_attention_6/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€..Я
'multi_head_attention_6/dropout/IdentityIdentity0multi_head_attention_6/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€..к
&multi_head_attention_6/einsum_1/EinsumEinsum0multi_head_attention_6/dropout/Identity:output:0$multi_head_attention_6/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationacbe,aecd->abcd÷
Dmulti_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_6_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ъ
5multi_head_attention_6/attention_output/einsum/EinsumEinsum/multi_head_attention_6/einsum_1/Einsum:output:0Lmulti_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€.2*
equationabcd,cde->abeЇ
:multi_head_attention_6/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_6_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0о
+multi_head_attention_6/attention_output/addAddV2>multi_head_attention_6/attention_output/einsum/Einsum:output:0Bmulti_head_attention_6/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2Ж
dropout_18/IdentityIdentity/multi_head_attention_6/attention_output/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2h
addAddV2inputsdropout_18/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2
5layer_normalization_12/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ї
#layer_normalization_12/moments/meanMeanadd:z:0>layer_normalization_12/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(Я
+layer_normalization_12/moments/StopGradientStopGradient,layer_normalization_12/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€.Ї
0layer_normalization_12/moments/SquaredDifferenceSquaredDifferenceadd:z:04layer_normalization_12/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Г
9layer_normalization_12/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:р
'layer_normalization_12/moments/varianceMean4layer_normalization_12/moments/SquaredDifference:z:0Blayer_normalization_12/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(k
&layer_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5∆
$layer_normalization_12/batchnorm/addAddV20layer_normalization_12/moments/variance:output:0/layer_normalization_12/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€.П
&layer_normalization_12/batchnorm/RsqrtRsqrt(layer_normalization_12/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€.ђ
3layer_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0 
$layer_normalization_12/batchnorm/mulMul*layer_normalization_12/batchnorm/Rsqrt:y:0;layer_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2Ц
&layer_normalization_12/batchnorm/mul_1Muladd:z:0(layer_normalization_12/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2ї
&layer_normalization_12/batchnorm/mul_2Mul,layer_normalization_12/moments/mean:output:0(layer_normalization_12/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2§
/layer_normalization_12/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_12_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0∆
$layer_normalization_12/batchnorm/subSub7layer_normalization_12/batchnorm/ReadVariableOp:value:0*layer_normalization_12/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2ї
&layer_normalization_12/batchnorm/add_1AddV2*layer_normalization_12/batchnorm/mul_1:z:0(layer_normalization_12/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2¶
.sequential_6/dense_24/Tensordot/ReadVariableOpReadVariableOp7sequential_6_dense_24_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0n
$sequential_6/dense_24/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_6/dense_24/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
%sequential_6/dense_24/Tensordot/ShapeShape*layer_normalization_12/batchnorm/add_1:z:0*
T0*
_output_shapes
:o
-sequential_6/dense_24/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : У
(sequential_6/dense_24/Tensordot/GatherV2GatherV2.sequential_6/dense_24/Tensordot/Shape:output:0-sequential_6/dense_24/Tensordot/free:output:06sequential_6/dense_24/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_6/dense_24/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ч
*sequential_6/dense_24/Tensordot/GatherV2_1GatherV2.sequential_6/dense_24/Tensordot/Shape:output:0-sequential_6/dense_24/Tensordot/axes:output:08sequential_6/dense_24/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_6/dense_24/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ∞
$sequential_6/dense_24/Tensordot/ProdProd1sequential_6/dense_24/Tensordot/GatherV2:output:0.sequential_6/dense_24/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_6/dense_24/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ґ
&sequential_6/dense_24/Tensordot/Prod_1Prod3sequential_6/dense_24/Tensordot/GatherV2_1:output:00sequential_6/dense_24/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_6/dense_24/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ф
&sequential_6/dense_24/Tensordot/concatConcatV2-sequential_6/dense_24/Tensordot/free:output:0-sequential_6/dense_24/Tensordot/axes:output:04sequential_6/dense_24/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ї
%sequential_6/dense_24/Tensordot/stackPack-sequential_6/dense_24/Tensordot/Prod:output:0/sequential_6/dense_24/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:…
)sequential_6/dense_24/Tensordot/transpose	Transpose*layer_normalization_12/batchnorm/add_1:z:0/sequential_6/dense_24/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2ћ
'sequential_6/dense_24/Tensordot/ReshapeReshape-sequential_6/dense_24/Tensordot/transpose:y:0.sequential_6/dense_24/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€ћ
&sequential_6/dense_24/Tensordot/MatMulMatMul0sequential_6/dense_24/Tensordot/Reshape:output:06sequential_6/dense_24/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ q
'sequential_6/dense_24/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: o
-sequential_6/dense_24/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : €
(sequential_6/dense_24/Tensordot/concat_1ConcatV21sequential_6/dense_24/Tensordot/GatherV2:output:00sequential_6/dense_24/Tensordot/Const_2:output:06sequential_6/dense_24/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:≈
sequential_6/dense_24/TensordotReshape0sequential_6/dense_24/Tensordot/MatMul:product:01sequential_6/dense_24/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€. Ю
,sequential_6/dense_24/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Њ
sequential_6/dense_24/BiasAddBiasAdd(sequential_6/dense_24/Tensordot:output:04sequential_6/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€. А
sequential_6/dense_24/ReluRelu&sequential_6/dense_24/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€. ¶
.sequential_6/dense_25/Tensordot/ReadVariableOpReadVariableOp7sequential_6_dense_25_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0n
$sequential_6/dense_25/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_6/dense_25/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_6/dense_25/Tensordot/ShapeShape(sequential_6/dense_24/Relu:activations:0*
T0*
_output_shapes
:o
-sequential_6/dense_25/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : У
(sequential_6/dense_25/Tensordot/GatherV2GatherV2.sequential_6/dense_25/Tensordot/Shape:output:0-sequential_6/dense_25/Tensordot/free:output:06sequential_6/dense_25/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_6/dense_25/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ч
*sequential_6/dense_25/Tensordot/GatherV2_1GatherV2.sequential_6/dense_25/Tensordot/Shape:output:0-sequential_6/dense_25/Tensordot/axes:output:08sequential_6/dense_25/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_6/dense_25/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ∞
$sequential_6/dense_25/Tensordot/ProdProd1sequential_6/dense_25/Tensordot/GatherV2:output:0.sequential_6/dense_25/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_6/dense_25/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ґ
&sequential_6/dense_25/Tensordot/Prod_1Prod3sequential_6/dense_25/Tensordot/GatherV2_1:output:00sequential_6/dense_25/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_6/dense_25/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ф
&sequential_6/dense_25/Tensordot/concatConcatV2-sequential_6/dense_25/Tensordot/free:output:0-sequential_6/dense_25/Tensordot/axes:output:04sequential_6/dense_25/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ї
%sequential_6/dense_25/Tensordot/stackPack-sequential_6/dense_25/Tensordot/Prod:output:0/sequential_6/dense_25/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:«
)sequential_6/dense_25/Tensordot/transpose	Transpose(sequential_6/dense_24/Relu:activations:0/sequential_6/dense_25/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€. ћ
'sequential_6/dense_25/Tensordot/ReshapeReshape-sequential_6/dense_25/Tensordot/transpose:y:0.sequential_6/dense_25/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€ћ
&sequential_6/dense_25/Tensordot/MatMulMatMul0sequential_6/dense_25/Tensordot/Reshape:output:06sequential_6/dense_25/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2q
'sequential_6/dense_25/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2o
-sequential_6/dense_25/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : €
(sequential_6/dense_25/Tensordot/concat_1ConcatV21sequential_6/dense_25/Tensordot/GatherV2:output:00sequential_6/dense_25/Tensordot/Const_2:output:06sequential_6/dense_25/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:≈
sequential_6/dense_25/TensordotReshape0sequential_6/dense_25/Tensordot/MatMul:product:01sequential_6/dense_25/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Ю
,sequential_6/dense_25/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_25_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Њ
sequential_6/dense_25/BiasAddBiasAdd(sequential_6/dense_25/Tensordot:output:04sequential_6/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2}
dropout_19/IdentityIdentity&sequential_6/dense_25/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2О
add_1AddV2*layer_normalization_12/batchnorm/add_1:z:0dropout_19/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2
5layer_normalization_13/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:љ
#layer_normalization_13/moments/meanMean	add_1:z:0>layer_normalization_13/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(Я
+layer_normalization_13/moments/StopGradientStopGradient,layer_normalization_13/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€.Љ
0layer_normalization_13/moments/SquaredDifferenceSquaredDifference	add_1:z:04layer_normalization_13/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Г
9layer_normalization_13/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:р
'layer_normalization_13/moments/varianceMean4layer_normalization_13/moments/SquaredDifference:z:0Blayer_normalization_13/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(k
&layer_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5∆
$layer_normalization_13/batchnorm/addAddV20layer_normalization_13/moments/variance:output:0/layer_normalization_13/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€.П
&layer_normalization_13/batchnorm/RsqrtRsqrt(layer_normalization_13/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€.ђ
3layer_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0 
$layer_normalization_13/batchnorm/mulMul*layer_normalization_13/batchnorm/Rsqrt:y:0;layer_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2Ш
&layer_normalization_13/batchnorm/mul_1Mul	add_1:z:0(layer_normalization_13/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2ї
&layer_normalization_13/batchnorm/mul_2Mul,layer_normalization_13/moments/mean:output:0(layer_normalization_13/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2§
/layer_normalization_13/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_13_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0∆
$layer_normalization_13/batchnorm/subSub7layer_normalization_13/batchnorm/ReadVariableOp:value:0*layer_normalization_13/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2ї
&layer_normalization_13/batchnorm/add_1AddV2*layer_normalization_13/batchnorm/mul_1:z:0(layer_normalization_13/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2}
IdentityIdentity*layer_normalization_13/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2†
NoOpNoOp0^layer_normalization_12/batchnorm/ReadVariableOp4^layer_normalization_12/batchnorm/mul/ReadVariableOp0^layer_normalization_13/batchnorm/ReadVariableOp4^layer_normalization_13/batchnorm/mul/ReadVariableOp;^multi_head_attention_6/attention_output/add/ReadVariableOpE^multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_6/key/add/ReadVariableOp8^multi_head_attention_6/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_6/query/add/ReadVariableOp:^multi_head_attention_6/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_6/value/add/ReadVariableOp:^multi_head_attention_6/value/einsum/Einsum/ReadVariableOp-^sequential_6/dense_24/BiasAdd/ReadVariableOp/^sequential_6/dense_24/Tensordot/ReadVariableOp-^sequential_6/dense_25/BiasAdd/ReadVariableOp/^sequential_6/dense_25/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€.2: : : : : : : : : : : : : : : : 2b
/layer_normalization_12/batchnorm/ReadVariableOp/layer_normalization_12/batchnorm/ReadVariableOp2j
3layer_normalization_12/batchnorm/mul/ReadVariableOp3layer_normalization_12/batchnorm/mul/ReadVariableOp2b
/layer_normalization_13/batchnorm/ReadVariableOp/layer_normalization_13/batchnorm/ReadVariableOp2j
3layer_normalization_13/batchnorm/mul/ReadVariableOp3layer_normalization_13/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_6/attention_output/add/ReadVariableOp:multi_head_attention_6/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_6/key/add/ReadVariableOp-multi_head_attention_6/key/add/ReadVariableOp2r
7multi_head_attention_6/key/einsum/Einsum/ReadVariableOp7multi_head_attention_6/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_6/query/add/ReadVariableOp/multi_head_attention_6/query/add/ReadVariableOp2v
9multi_head_attention_6/query/einsum/Einsum/ReadVariableOp9multi_head_attention_6/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_6/value/add/ReadVariableOp/multi_head_attention_6/value/add/ReadVariableOp2v
9multi_head_attention_6/value/einsum/Einsum/ReadVariableOp9multi_head_attention_6/value/einsum/Einsum/ReadVariableOp2\
,sequential_6/dense_24/BiasAdd/ReadVariableOp,sequential_6/dense_24/BiasAdd/ReadVariableOp2`
.sequential_6/dense_24/Tensordot/ReadVariableOp.sequential_6/dense_24/Tensordot/ReadVariableOp2\
,sequential_6/dense_25/BiasAdd/ReadVariableOp,sequential_6/dense_25/BiasAdd/ReadVariableOp2`
.sequential_6/dense_25/Tensordot/ReadVariableOp.sequential_6/dense_25/Tensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€.2
 
_user_specified_nameinputs
∆
±
+__inference_model_6_layer_call_fn_202287797

inputs
unknown:.2
	unknown_0:	Б2
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

unknown_17:	2Є

unknown_18:	.Є

unknown_19:	Є

unknown_20:..

unknown_21:.

unknown_22:.

unknown_23:
identityИҐStatefulPartitionedCallФ
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
:€€€€€€€€€*;
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_model_6_layer_call_and_return_conditional_losses_202287398o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€.: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€.
 
_user_specified_nameinputs
№
є
9__inference_transformer_encoder_6_layer_call_fn_202288480

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
identityИҐStatefulPartitionedCall®
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
:€€€€€€€€€.2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_transformer_encoder_6_layer_call_and_return_conditional_losses_202286599s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:€€€€€€€€€.2: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€.2
 
_user_specified_nameinputs
п
ш
/__inference_lstm_cell_6_layer_call_fn_202289617

inputs
states_0
states_1
unknown:	2Є
	unknown_0:	.Є
	unknown_1:	Є
identity

identity_1

identity_2ИҐStatefulPartitionedCall™
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_6_layer_call_and_return_conditional_losses_202286297o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€2:€€€€€€€€€.:€€€€€€€€€.: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€.
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€.
"
_user_specified_name
states/1
ћ
џ
0__inference_sequential_6_layer_call_fn_202285982
dense_24_input
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identityИҐStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCalldense_24_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€.2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_sequential_6_layer_call_and_return_conditional_losses_202285971s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€.2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:€€€€€€€€€.2
(
_user_specified_namedense_24_input
т
ѓ
B__inference_token_and_position_embedding_6_layer_call_fn_202288419
x
unknown:.2
	unknown_0:	Б2
identityИҐStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *f
faR_
]__inference_token_and_position_embedding_6_layer_call_and_return_conditional_losses_202286466s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€.: : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:€€€€€€€€€.

_user_specified_namex
ƒ
“
while_cond_202286164
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_202286164___redundant_placeholder07
3while_while_cond_202286164___redundant_placeholder17
3while_while_cond_202286164___redundant_placeholder27
3while_while_cond_202286164___redundant_placeholder3
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
@: : : : :€€€€€€€€€.:€€€€€€€€€.: ::::: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
:
 	
ш
G__inference_dense_27_layer_call_and_return_conditional_losses_202289443

inputs0
matmul_readvariableop_resource:.-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:.*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€.: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€.
 
_user_specified_nameinputs
і
”
0__inference_sequential_6_layer_call_fn_202289456

inputs
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identityИҐStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€.2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_sequential_6_layer_call_and_return_conditional_losses_202285971s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€.2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€.2
 
_user_specified_nameinputs
Ю

ш
G__inference_dense_26_layer_call_and_return_conditional_losses_202289424

inputs0
matmul_readvariableop_resource:..-
biasadd_readvariableop_resource:.
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:..*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€.r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:.*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€.P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€.a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€.: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€.
 
_user_specified_nameinputs
м	
 
rnn_6_while_cond_202287999(
$rnn_6_while_rnn_6_while_loop_counter.
*rnn_6_while_rnn_6_while_maximum_iterations
rnn_6_while_placeholder
rnn_6_while_placeholder_1
rnn_6_while_placeholder_2
rnn_6_while_placeholder_3*
&rnn_6_while_less_rnn_6_strided_slice_1C
?rnn_6_while_rnn_6_while_cond_202287999___redundant_placeholder0C
?rnn_6_while_rnn_6_while_cond_202287999___redundant_placeholder1C
?rnn_6_while_rnn_6_while_cond_202287999___redundant_placeholder2C
?rnn_6_while_rnn_6_while_cond_202287999___redundant_placeholder3
rnn_6_while_identity
z
rnn_6/while/LessLessrnn_6_while_placeholder&rnn_6_while_less_rnn_6_strided_slice_1*
T0*
_output_shapes
: W
rnn_6/while/IdentityIdentityrnn_6/while/Less:z:0*
T0
*
_output_shapes
: "5
rnn_6_while_identityrnn_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€.:€€€€€€€€€.: ::::: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
:
Ў
Щ
,__inference_dense_25_layer_call_fn_202289730

inputs
unknown: 2
	unknown_0:2
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_25_layer_call_and_return_conditional_losses_202285964s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€. : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€. 
 
_user_specified_nameinputs
”8
 
while_body_202289320
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	2ЄG
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	.ЄB
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	Є
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	2ЄE
2while_lstm_cell_6_matmul_1_readvariableop_resource:	.Є@
1while_lstm_cell_6_biasadd_readvariableop_resource:	ЄИҐ(while/lstm_cell_6/BiasAdd/ReadVariableOpҐ'while/lstm_cell_6/MatMul/ReadVariableOpҐ)while/lstm_cell_6/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0Ы
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	2Є*
dtype0Є
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЯ
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	.Є*
dtype0Я
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЫ
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЩ
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:Є*
dtype0§
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Єc
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :м
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€.z
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€.Д
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€.r
while/lstm_cell_6/TanhTanh while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€.Л
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0while/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.К
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.z
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€.o
while/lstm_cell_6/Tanh_1Tanhwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.П
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0while/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.x
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.Ќ

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
: 
ВJ
Ц
D__inference_rnn_6_layer_call_and_return_conditional_losses_202289404

inputs=
*lstm_cell_6_matmul_readvariableop_resource:	2Є?
,lstm_cell_6_matmul_1_readvariableop_resource:	.Є:
+lstm_cell_6_biasadd_readvariableop_resource:	Є
identityИҐ"lstm_cell_6/BiasAdd/ReadVariableOpҐ!lstm_cell_6/MatMul/ReadVariableOpҐ#lstm_cell_6/MatMul_1/ReadVariableOpҐwhile;
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
valueB:—
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
:€€€€€€€€€.R
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
:€€€€€€€€€.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:.€€€€€€€€€2D
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskН
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	2Є*
dtype0Ф
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄС
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	.Є*
dtype0О
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЙ
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЛ
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:Є*
dtype0Т
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Є]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Џ
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€.n
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€.u
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€.f
lstm_cell_6/TanhTanhlstm_cell_6/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€.y
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.x
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.n
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€.c
lstm_cell_6/Tanh_1Tanhlstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.}
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
while_body_202289320* 
condR
while_cond_202289319*K
output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.љ
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€.2: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€.2
 
_user_specified_nameinputs
Р)
 
F__inference_model_6_layer_call_and_return_conditional_losses_202287565
input_7:
(token_and_position_embedding_6_202287509:.2;
(token_and_position_embedding_6_202287511:	Б25
transformer_encoder_6_202287514:221
transformer_encoder_6_202287516:25
transformer_encoder_6_202287518:221
transformer_encoder_6_202287520:25
transformer_encoder_6_202287522:221
transformer_encoder_6_202287524:25
transformer_encoder_6_202287526:22-
transformer_encoder_6_202287528:2-
transformer_encoder_6_202287530:2-
transformer_encoder_6_202287532:21
transformer_encoder_6_202287534:2 -
transformer_encoder_6_202287536: 1
transformer_encoder_6_202287538: 2-
transformer_encoder_6_202287540:2-
transformer_encoder_6_202287542:2-
transformer_encoder_6_202287544:2"
rnn_6_202287547:	2Є"
rnn_6_202287549:	.Є
rnn_6_202287551:	Є$
dense_26_202287554:.. 
dense_26_202287556:.$
dense_27_202287559:. 
dense_27_202287561:
identityИҐ dense_26/StatefulPartitionedCallҐ dense_27/StatefulPartitionedCallҐrnn_6/StatefulPartitionedCallҐ6token_and_position_embedding_6/StatefulPartitionedCallҐ-transformer_encoder_6/StatefulPartitionedCall÷
6token_and_position_embedding_6/StatefulPartitionedCallStatefulPartitionedCallinput_7(token_and_position_embedding_6_202287509(token_and_position_embedding_6_202287511*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *f
faR_
]__inference_token_and_position_embedding_6_layer_call_and_return_conditional_losses_202286466‘
-transformer_encoder_6/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_6/StatefulPartitionedCall:output:0transformer_encoder_6_202287514transformer_encoder_6_202287516transformer_encoder_6_202287518transformer_encoder_6_202287520transformer_encoder_6_202287522transformer_encoder_6_202287524transformer_encoder_6_202287526transformer_encoder_6_202287528transformer_encoder_6_202287530transformer_encoder_6_202287532transformer_encoder_6_202287534transformer_encoder_6_202287536transformer_encoder_6_202287538transformer_encoder_6_202287540transformer_encoder_6_202287542transformer_encoder_6_202287544*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€.2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_transformer_encoder_6_layer_call_and_return_conditional_losses_202286599∞
rnn_6/StatefulPartitionedCallStatefulPartitionedCall6transformer_encoder_6/StatefulPartitionedCall:output:0rnn_6_202287547rnn_6_202287549rnn_6_202287551*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rnn_6_layer_call_and_return_conditional_losses_202286776Щ
 dense_26/StatefulPartitionedCallStatefulPartitionedCall&rnn_6/StatefulPartitionedCall:output:0dense_26_202287554dense_26_202287556*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_26_layer_call_and_return_conditional_losses_202286795Ь
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_202287559dense_27_202287561*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_27_layer_call_and_return_conditional_losses_202286811x
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Х
NoOpNoOp!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall^rnn_6/StatefulPartitionedCall7^token_and_position_embedding_6/StatefulPartitionedCall.^transformer_encoder_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€.: : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2>
rnn_6/StatefulPartitionedCallrnn_6/StatefulPartitionedCall2p
6token_and_position_embedding_6/StatefulPartitionedCall6token_and_position_embedding_6/StatefulPartitionedCall2^
-transformer_encoder_6/StatefulPartitionedCall-transformer_encoder_6/StatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€.
!
_user_specified_name	input_7
Ў?
в
K__inference_sequential_6_layer_call_and_return_conditional_losses_202289583

inputs<
*dense_24_tensordot_readvariableop_resource:2 6
(dense_24_biasadd_readvariableop_resource: <
*dense_25_tensordot_readvariableop_resource: 26
(dense_25_biasadd_readvariableop_resource:2
identityИҐdense_24/BiasAdd/ReadVariableOpҐ!dense_24/Tensordot/ReadVariableOpҐdense_25/BiasAdd/ReadVariableOpҐ!dense_25/Tensordot/ReadVariableOpМ
!dense_24/Tensordot/ReadVariableOpReadVariableOp*dense_24_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0a
dense_24/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_24/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       N
dense_24/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:b
 dense_24/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_24/Tensordot/GatherV2GatherV2!dense_24/Tensordot/Shape:output:0 dense_24/Tensordot/free:output:0)dense_24/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_24/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense_24/Tensordot/GatherV2_1GatherV2!dense_24/Tensordot/Shape:output:0 dense_24/Tensordot/axes:output:0+dense_24/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_24/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Й
dense_24/Tensordot/ProdProd$dense_24/Tensordot/GatherV2:output:0!dense_24/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_24/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: П
dense_24/Tensordot/Prod_1Prod&dense_24/Tensordot/GatherV2_1:output:0#dense_24/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_24/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ј
dense_24/Tensordot/concatConcatV2 dense_24/Tensordot/free:output:0 dense_24/Tensordot/axes:output:0'dense_24/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ф
dense_24/Tensordot/stackPack dense_24/Tensordot/Prod:output:0"dense_24/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Л
dense_24/Tensordot/transpose	Transposeinputs"dense_24/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2•
dense_24/Tensordot/ReshapeReshape dense_24/Tensordot/transpose:y:0!dense_24/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€•
dense_24/Tensordot/MatMulMatMul#dense_24/Tensordot/Reshape:output:0)dense_24/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ d
dense_24/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: b
 dense_24/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
dense_24/Tensordot/concat_1ConcatV2$dense_24/Tensordot/GatherV2:output:0#dense_24/Tensordot/Const_2:output:0)dense_24/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ю
dense_24/TensordotReshape#dense_24/Tensordot/MatMul:product:0$dense_24/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€. Д
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ч
dense_24/BiasAddBiasAdddense_24/Tensordot:output:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€. f
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€. М
!dense_25/Tensordot/ReadVariableOpReadVariableOp*dense_25_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0a
dense_25/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_25/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_25/Tensordot/ShapeShapedense_24/Relu:activations:0*
T0*
_output_shapes
:b
 dense_25/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_25/Tensordot/GatherV2GatherV2!dense_25/Tensordot/Shape:output:0 dense_25/Tensordot/free:output:0)dense_25/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_25/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense_25/Tensordot/GatherV2_1GatherV2!dense_25/Tensordot/Shape:output:0 dense_25/Tensordot/axes:output:0+dense_25/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_25/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Й
dense_25/Tensordot/ProdProd$dense_25/Tensordot/GatherV2:output:0!dense_25/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_25/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: П
dense_25/Tensordot/Prod_1Prod&dense_25/Tensordot/GatherV2_1:output:0#dense_25/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_25/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ј
dense_25/Tensordot/concatConcatV2 dense_25/Tensordot/free:output:0 dense_25/Tensordot/axes:output:0'dense_25/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ф
dense_25/Tensordot/stackPack dense_25/Tensordot/Prod:output:0"dense_25/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:†
dense_25/Tensordot/transpose	Transposedense_24/Relu:activations:0"dense_25/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€. •
dense_25/Tensordot/ReshapeReshape dense_25/Tensordot/transpose:y:0!dense_25/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€•
dense_25/Tensordot/MatMulMatMul#dense_25/Tensordot/Reshape:output:0)dense_25/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2d
dense_25/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2b
 dense_25/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
dense_25/Tensordot/concat_1ConcatV2$dense_25/Tensordot/GatherV2:output:0#dense_25/Tensordot/Const_2:output:0)dense_25/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ю
dense_25/TensordotReshape#dense_25/Tensordot/MatMul:product:0$dense_25/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Д
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ч
dense_25/BiasAddBiasAdddense_25/Tensordot:output:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2l
IdentityIdentitydense_25/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2“
NoOpNoOp ^dense_24/BiasAdd/ReadVariableOp"^dense_24/Tensordot/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp"^dense_25/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€.2: : : : 2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2F
!dense_24/Tensordot/ReadVariableOp!dense_24/Tensordot/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2F
!dense_25/Tensordot/ReadVariableOp!dense_25/Tensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€.2
 
_user_specified_nameinputs
—
ј
K__inference_sequential_6_layer_call_and_return_conditional_losses_202286031

inputs$
dense_24_202286020:2  
dense_24_202286022: $
dense_25_202286025: 2 
dense_25_202286027:2
identityИҐ dense_24/StatefulPartitionedCallҐ dense_25/StatefulPartitionedCallэ
 dense_24/StatefulPartitionedCallStatefulPartitionedCallinputsdense_24_202286020dense_24_202286022*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€. *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_24_layer_call_and_return_conditional_losses_202285928†
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_202286025dense_25_202286027*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_25_layer_call_and_return_conditional_losses_202285964|
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2М
NoOpNoOp!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€.2: : : : 2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€.2
 
_user_specified_nameinputs
Н)
…
F__inference_model_6_layer_call_and_return_conditional_losses_202286818

inputs:
(token_and_position_embedding_6_202286467:.2;
(token_and_position_embedding_6_202286469:	Б25
transformer_encoder_6_202286600:221
transformer_encoder_6_202286602:25
transformer_encoder_6_202286604:221
transformer_encoder_6_202286606:25
transformer_encoder_6_202286608:221
transformer_encoder_6_202286610:25
transformer_encoder_6_202286612:22-
transformer_encoder_6_202286614:2-
transformer_encoder_6_202286616:2-
transformer_encoder_6_202286618:21
transformer_encoder_6_202286620:2 -
transformer_encoder_6_202286622: 1
transformer_encoder_6_202286624: 2-
transformer_encoder_6_202286626:2-
transformer_encoder_6_202286628:2-
transformer_encoder_6_202286630:2"
rnn_6_202286777:	2Є"
rnn_6_202286779:	.Є
rnn_6_202286781:	Є$
dense_26_202286796:.. 
dense_26_202286798:.$
dense_27_202286812:. 
dense_27_202286814:
identityИҐ dense_26/StatefulPartitionedCallҐ dense_27/StatefulPartitionedCallҐrnn_6/StatefulPartitionedCallҐ6token_and_position_embedding_6/StatefulPartitionedCallҐ-transformer_encoder_6/StatefulPartitionedCall’
6token_and_position_embedding_6/StatefulPartitionedCallStatefulPartitionedCallinputs(token_and_position_embedding_6_202286467(token_and_position_embedding_6_202286469*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *f
faR_
]__inference_token_and_position_embedding_6_layer_call_and_return_conditional_losses_202286466‘
-transformer_encoder_6/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_6/StatefulPartitionedCall:output:0transformer_encoder_6_202286600transformer_encoder_6_202286602transformer_encoder_6_202286604transformer_encoder_6_202286606transformer_encoder_6_202286608transformer_encoder_6_202286610transformer_encoder_6_202286612transformer_encoder_6_202286614transformer_encoder_6_202286616transformer_encoder_6_202286618transformer_encoder_6_202286620transformer_encoder_6_202286622transformer_encoder_6_202286624transformer_encoder_6_202286626transformer_encoder_6_202286628transformer_encoder_6_202286630*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€.2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_transformer_encoder_6_layer_call_and_return_conditional_losses_202286599∞
rnn_6/StatefulPartitionedCallStatefulPartitionedCall6transformer_encoder_6/StatefulPartitionedCall:output:0rnn_6_202286777rnn_6_202286779rnn_6_202286781*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rnn_6_layer_call_and_return_conditional_losses_202286776Щ
 dense_26/StatefulPartitionedCallStatefulPartitionedCall&rnn_6/StatefulPartitionedCall:output:0dense_26_202286796dense_26_202286798*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_26_layer_call_and_return_conditional_losses_202286795Ь
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_202286812dense_27_202286814*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_27_layer_call_and_return_conditional_losses_202286811x
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Х
NoOpNoOp!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall^rnn_6/StatefulPartitionedCall7^token_and_position_embedding_6/StatefulPartitionedCall.^transformer_encoder_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€.: : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2>
rnn_6/StatefulPartitionedCallrnn_6/StatefulPartitionedCall2p
6token_and_position_embedding_6/StatefulPartitionedCall6token_and_position_embedding_6/StatefulPartitionedCall2^
-transformer_encoder_6/StatefulPartitionedCall-transformer_encoder_6/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€.
 
_user_specified_nameinputs
”8
 
while_body_202289032
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	2ЄG
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	.ЄB
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	Є
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	2ЄE
2while_lstm_cell_6_matmul_1_readvariableop_resource:	.Є@
1while_lstm_cell_6_biasadd_readvariableop_resource:	ЄИҐ(while/lstm_cell_6/BiasAdd/ReadVariableOpҐ'while/lstm_cell_6/MatMul/ReadVariableOpҐ)while/lstm_cell_6/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0Ы
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	2Є*
dtype0Є
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЯ
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	.Є*
dtype0Я
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЫ
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЩ
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:Є*
dtype0§
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Єc
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :м
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€.z
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€.Д
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€.r
while/lstm_cell_6/TanhTanh while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€.Л
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0while/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.К
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.z
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€.o
while/lstm_cell_6/Tanh_1Tanhwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.П
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0while/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.x
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.Ќ

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
: 
Ѕ
Ѓ
]__inference_token_and_position_embedding_6_layer_call_and_return_conditional_losses_202288443
x9
'embedding_13_embedding_lookup_202288430:.2:
'embedding_12_embedding_lookup_202288436:	Б2
identityИҐembedding_12/embedding_lookupҐembedding_13/embedding_lookup6
ShapeShapex*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
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
:.б
embedding_13/embedding_lookupResourceGather'embedding_13_embedding_lookup_202288430range:output:0*
Tindices0*:
_class0
.,loc:@embedding_13/embedding_lookup/202288430*
_output_shapes

:.2*
dtype0њ
&embedding_13/embedding_lookup/IdentityIdentity&embedding_13/embedding_lookup:output:0*
T0*:
_class0
.,loc:@embedding_13/embedding_lookup/202288430*
_output_shapes

:.2О
(embedding_13/embedding_lookup/Identity_1Identity/embedding_13/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:.2]
embedding_12/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€.х
embedding_12/embedding_lookupResourceGather'embedding_12_embedding_lookup_202288436embedding_12/Cast:y:0*
Tindices0*:
_class0
.,loc:@embedding_12/embedding_lookup/202288436*+
_output_shapes
:€€€€€€€€€.2*
dtype0ћ
&embedding_12/embedding_lookup/IdentityIdentity&embedding_12/embedding_lookup:output:0*
T0*:
_class0
.,loc:@embedding_12/embedding_lookup/202288436*+
_output_shapes
:€€€€€€€€€.2Ы
(embedding_12/embedding_lookup/Identity_1Identity/embedding_12/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2®
addAddV21embedding_12/embedding_lookup/Identity_1:output:01embedding_13/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Z
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2Ж
NoOpNoOp^embedding_12/embedding_lookup^embedding_13/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€.: : 2>
embedding_12/embedding_lookupembedding_12/embedding_lookup2>
embedding_13/embedding_lookupembedding_13/embedding_lookup:J F
'
_output_shapes
:€€€€€€€€€.

_user_specified_namex
г?
К

rnn_6_while_body_202288000(
$rnn_6_while_rnn_6_while_loop_counter.
*rnn_6_while_rnn_6_while_maximum_iterations
rnn_6_while_placeholder
rnn_6_while_placeholder_1
rnn_6_while_placeholder_2
rnn_6_while_placeholder_3'
#rnn_6_while_rnn_6_strided_slice_1_0c
_rnn_6_while_tensorarrayv2read_tensorlistgetitem_rnn_6_tensorarrayunstack_tensorlistfromtensor_0K
8rnn_6_while_lstm_cell_6_matmul_readvariableop_resource_0:	2ЄM
:rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0:	.ЄH
9rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource_0:	Є
rnn_6_while_identity
rnn_6_while_identity_1
rnn_6_while_identity_2
rnn_6_while_identity_3
rnn_6_while_identity_4
rnn_6_while_identity_5%
!rnn_6_while_rnn_6_strided_slice_1a
]rnn_6_while_tensorarrayv2read_tensorlistgetitem_rnn_6_tensorarrayunstack_tensorlistfromtensorI
6rnn_6_while_lstm_cell_6_matmul_readvariableop_resource:	2ЄK
8rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource:	.ЄF
7rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource:	ЄИҐ.rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOpҐ-rnn_6/while/lstm_cell_6/MatMul/ReadVariableOpҐ/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOpО
=rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ƒ
/rnn_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_rnn_6_while_tensorarrayv2read_tensorlistgetitem_rnn_6_tensorarrayunstack_tensorlistfromtensor_0rnn_6_while_placeholderFrnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0І
-rnn_6/while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp8rnn_6_while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	2Є*
dtype0 
rnn_6/while/lstm_cell_6/MatMulMatMul6rnn_6/while/TensorArrayV2Read/TensorListGetItem:item:05rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЂ
/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp:rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	.Є*
dtype0±
 rnn_6/while/lstm_cell_6/MatMul_1MatMulrnn_6_while_placeholder_27rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Є≠
rnn_6/while/lstm_cell_6/addAddV2(rnn_6/while/lstm_cell_6/MatMul:product:0*rnn_6/while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Є•
.rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp9rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:Є*
dtype0ґ
rnn_6/while/lstm_cell_6/BiasAddBiasAddrnn_6/while/lstm_cell_6/add:z:06rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Єi
'rnn_6/while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ю
rnn_6/while/lstm_cell_6/splitSplit0rnn_6/while/lstm_cell_6/split/split_dim:output:0(rnn_6/while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitД
rnn_6/while/lstm_cell_6/SigmoidSigmoid&rnn_6/while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€.Ж
!rnn_6/while/lstm_cell_6/Sigmoid_1Sigmoid&rnn_6/while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€.Ц
rnn_6/while/lstm_cell_6/mulMul%rnn_6/while/lstm_cell_6/Sigmoid_1:y:0rnn_6_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€.~
rnn_6/while/lstm_cell_6/TanhTanh&rnn_6/while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€.Э
rnn_6/while/lstm_cell_6/mul_1Mul#rnn_6/while/lstm_cell_6/Sigmoid:y:0 rnn_6/while/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.Ь
rnn_6/while/lstm_cell_6/add_1AddV2rnn_6/while/lstm_cell_6/mul:z:0!rnn_6/while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.Ж
!rnn_6/while/lstm_cell_6/Sigmoid_2Sigmoid&rnn_6/while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€.{
rnn_6/while/lstm_cell_6/Tanh_1Tanh!rnn_6/while/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.°
rnn_6/while/lstm_cell_6/mul_2Mul%rnn_6/while/lstm_cell_6/Sigmoid_2:y:0"rnn_6/while/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.x
6rnn_6/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Д
0rnn_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_6_while_placeholder_1?rnn_6/while/TensorArrayV2Write/TensorListSetItem/index:output:0!rnn_6/while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“S
rnn_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
rnn_6/while/addAddV2rnn_6_while_placeholderrnn_6/while/add/y:output:0*
T0*
_output_shapes
: U
rnn_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
rnn_6/while/add_1AddV2$rnn_6_while_rnn_6_while_loop_counterrnn_6/while/add_1/y:output:0*
T0*
_output_shapes
: k
rnn_6/while/IdentityIdentityrnn_6/while/add_1:z:0^rnn_6/while/NoOp*
T0*
_output_shapes
: В
rnn_6/while/Identity_1Identity*rnn_6_while_rnn_6_while_maximum_iterations^rnn_6/while/NoOp*
T0*
_output_shapes
: k
rnn_6/while/Identity_2Identityrnn_6/while/add:z:0^rnn_6/while/NoOp*
T0*
_output_shapes
: Ш
rnn_6/while/Identity_3Identity@rnn_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn_6/while/NoOp*
T0*
_output_shapes
: К
rnn_6/while/Identity_4Identity!rnn_6/while/lstm_cell_6/mul_2:z:0^rnn_6/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.К
rnn_6/while/Identity_5Identity!rnn_6/while/lstm_cell_6/add_1:z:0^rnn_6/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.е
rnn_6/while/NoOpNoOp/^rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp.^rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp0^rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "5
rnn_6_while_identityrnn_6/while/Identity:output:0"9
rnn_6_while_identity_1rnn_6/while/Identity_1:output:0"9
rnn_6_while_identity_2rnn_6/while/Identity_2:output:0"9
rnn_6_while_identity_3rnn_6/while/Identity_3:output:0"9
rnn_6_while_identity_4rnn_6/while/Identity_4:output:0"9
rnn_6_while_identity_5rnn_6/while/Identity_5:output:0"t
7rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource9rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource_0"v
8rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource:rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0"r
6rnn_6_while_lstm_cell_6_matmul_readvariableop_resource8rnn_6_while_lstm_cell_6_matmul_readvariableop_resource_0"H
!rnn_6_while_rnn_6_strided_slice_1#rnn_6_while_rnn_6_strided_slice_1_0"ј
]rnn_6_while_tensorarrayv2read_tensorlistgetitem_rnn_6_tensorarrayunstack_tensorlistfromtensor_rnn_6_while_tensorarrayv2read_tensorlistgetitem_rnn_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : 2`
.rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp.rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp2^
-rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp-rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp2b
/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
: 
лЧ
б!
$__inference__wrapped_model_202285890
input_7`
Nmodel_6_token_and_position_embedding_6_embedding_13_embedding_lookup_202285601:.2a
Nmodel_6_token_and_position_embedding_6_embedding_12_embedding_lookup_202285607:	Б2v
`model_6_transformer_encoder_6_multi_head_attention_6_query_einsum_einsum_readvariableop_resource:22h
Vmodel_6_transformer_encoder_6_multi_head_attention_6_query_add_readvariableop_resource:2t
^model_6_transformer_encoder_6_multi_head_attention_6_key_einsum_einsum_readvariableop_resource:22f
Tmodel_6_transformer_encoder_6_multi_head_attention_6_key_add_readvariableop_resource:2v
`model_6_transformer_encoder_6_multi_head_attention_6_value_einsum_einsum_readvariableop_resource:22h
Vmodel_6_transformer_encoder_6_multi_head_attention_6_value_add_readvariableop_resource:2Б
kmodel_6_transformer_encoder_6_multi_head_attention_6_attention_output_einsum_einsum_readvariableop_resource:22o
amodel_6_transformer_encoder_6_multi_head_attention_6_attention_output_add_readvariableop_resource:2h
Zmodel_6_transformer_encoder_6_layer_normalization_12_batchnorm_mul_readvariableop_resource:2d
Vmodel_6_transformer_encoder_6_layer_normalization_12_batchnorm_readvariableop_resource:2g
Umodel_6_transformer_encoder_6_sequential_6_dense_24_tensordot_readvariableop_resource:2 a
Smodel_6_transformer_encoder_6_sequential_6_dense_24_biasadd_readvariableop_resource: g
Umodel_6_transformer_encoder_6_sequential_6_dense_25_tensordot_readvariableop_resource: 2a
Smodel_6_transformer_encoder_6_sequential_6_dense_25_biasadd_readvariableop_resource:2h
Zmodel_6_transformer_encoder_6_layer_normalization_13_batchnorm_mul_readvariableop_resource:2d
Vmodel_6_transformer_encoder_6_layer_normalization_13_batchnorm_readvariableop_resource:2K
8model_6_rnn_6_lstm_cell_6_matmul_readvariableop_resource:	2ЄM
:model_6_rnn_6_lstm_cell_6_matmul_1_readvariableop_resource:	.ЄH
9model_6_rnn_6_lstm_cell_6_biasadd_readvariableop_resource:	ЄA
/model_6_dense_26_matmul_readvariableop_resource:..>
0model_6_dense_26_biasadd_readvariableop_resource:.A
/model_6_dense_27_matmul_readvariableop_resource:.>
0model_6_dense_27_biasadd_readvariableop_resource:
identityИҐ'model_6/dense_26/BiasAdd/ReadVariableOpҐ&model_6/dense_26/MatMul/ReadVariableOpҐ'model_6/dense_27/BiasAdd/ReadVariableOpҐ&model_6/dense_27/MatMul/ReadVariableOpҐ0model_6/rnn_6/lstm_cell_6/BiasAdd/ReadVariableOpҐ/model_6/rnn_6/lstm_cell_6/MatMul/ReadVariableOpҐ1model_6/rnn_6/lstm_cell_6/MatMul_1/ReadVariableOpҐmodel_6/rnn_6/whileҐDmodel_6/token_and_position_embedding_6/embedding_12/embedding_lookupҐDmodel_6/token_and_position_embedding_6/embedding_13/embedding_lookupҐMmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/ReadVariableOpҐQmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/mul/ReadVariableOpҐMmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/ReadVariableOpҐQmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/mul/ReadVariableOpҐXmodel_6/transformer_encoder_6/multi_head_attention_6/attention_output/add/ReadVariableOpҐbmodel_6/transformer_encoder_6/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpҐKmodel_6/transformer_encoder_6/multi_head_attention_6/key/add/ReadVariableOpҐUmodel_6/transformer_encoder_6/multi_head_attention_6/key/einsum/Einsum/ReadVariableOpҐMmodel_6/transformer_encoder_6/multi_head_attention_6/query/add/ReadVariableOpҐWmodel_6/transformer_encoder_6/multi_head_attention_6/query/einsum/Einsum/ReadVariableOpҐMmodel_6/transformer_encoder_6/multi_head_attention_6/value/add/ReadVariableOpҐWmodel_6/transformer_encoder_6/multi_head_attention_6/value/einsum/Einsum/ReadVariableOpҐJmodel_6/transformer_encoder_6/sequential_6/dense_24/BiasAdd/ReadVariableOpҐLmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/ReadVariableOpҐJmodel_6/transformer_encoder_6/sequential_6/dense_25/BiasAdd/ReadVariableOpҐLmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/ReadVariableOpc
,model_6/token_and_position_embedding_6/ShapeShapeinput_7*
T0*
_output_shapes
:Н
:model_6/token_and_position_embedding_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€Ж
<model_6/token_and_position_embedding_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: Ж
<model_6/token_and_position_embedding_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
4model_6/token_and_position_embedding_6/strided_sliceStridedSlice5model_6/token_and_position_embedding_6/Shape:output:0Cmodel_6/token_and_position_embedding_6/strided_slice/stack:output:0Emodel_6/token_and_position_embedding_6/strided_slice/stack_1:output:0Emodel_6/token_and_position_embedding_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
2model_6/token_and_position_embedding_6/range/startConst*
_output_shapes
: *
dtype0*
value	B : t
2model_6/token_and_position_embedding_6/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :К
,model_6/token_and_position_embedding_6/rangeRange;model_6/token_and_position_embedding_6/range/start:output:0=model_6/token_and_position_embedding_6/strided_slice:output:0;model_6/token_and_position_embedding_6/range/delta:output:0*
_output_shapes
:.э
Dmodel_6/token_and_position_embedding_6/embedding_13/embedding_lookupResourceGatherNmodel_6_token_and_position_embedding_6_embedding_13_embedding_lookup_2022856015model_6/token_and_position_embedding_6/range:output:0*
Tindices0*a
_classW
USloc:@model_6/token_and_position_embedding_6/embedding_13/embedding_lookup/202285601*
_output_shapes

:.2*
dtype0і
Mmodel_6/token_and_position_embedding_6/embedding_13/embedding_lookup/IdentityIdentityMmodel_6/token_and_position_embedding_6/embedding_13/embedding_lookup:output:0*
T0*a
_classW
USloc:@model_6/token_and_position_embedding_6/embedding_13/embedding_lookup/202285601*
_output_shapes

:.2№
Omodel_6/token_and_position_embedding_6/embedding_13/embedding_lookup/Identity_1IdentityVmodel_6/token_and_position_embedding_6/embedding_13/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:.2К
8model_6/token_and_position_embedding_6/embedding_12/CastCastinput_7*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€.С
Dmodel_6/token_and_position_embedding_6/embedding_12/embedding_lookupResourceGatherNmodel_6_token_and_position_embedding_6_embedding_12_embedding_lookup_202285607<model_6/token_and_position_embedding_6/embedding_12/Cast:y:0*
Tindices0*a
_classW
USloc:@model_6/token_and_position_embedding_6/embedding_12/embedding_lookup/202285607*+
_output_shapes
:€€€€€€€€€.2*
dtype0Ѕ
Mmodel_6/token_and_position_embedding_6/embedding_12/embedding_lookup/IdentityIdentityMmodel_6/token_and_position_embedding_6/embedding_12/embedding_lookup:output:0*
T0*a
_classW
USloc:@model_6/token_and_position_embedding_6/embedding_12/embedding_lookup/202285607*+
_output_shapes
:€€€€€€€€€.2й
Omodel_6/token_and_position_embedding_6/embedding_12/embedding_lookup/Identity_1IdentityVmodel_6/token_and_position_embedding_6/embedding_12/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Э
*model_6/token_and_position_embedding_6/addAddV2Xmodel_6/token_and_position_embedding_6/embedding_12/embedding_lookup/Identity_1:output:0Xmodel_6/token_and_position_embedding_6/embedding_13/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2ь
Wmodel_6/transformer_encoder_6/multi_head_attention_6/query/einsum/Einsum/ReadVariableOpReadVariableOp`model_6_transformer_encoder_6_multi_head_attention_6_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0√
Hmodel_6/transformer_encoder_6/multi_head_attention_6/query/einsum/EinsumEinsum.model_6/token_and_position_embedding_6/add:z:0_model_6/transformer_encoder_6/multi_head_attention_6/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationabc,cde->abdeд
Mmodel_6/transformer_encoder_6/multi_head_attention_6/query/add/ReadVariableOpReadVariableOpVmodel_6_transformer_encoder_6_multi_head_attention_6_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ђ
>model_6/transformer_encoder_6/multi_head_attention_6/query/addAddV2Qmodel_6/transformer_encoder_6/multi_head_attention_6/query/einsum/Einsum:output:0Umodel_6/transformer_encoder_6/multi_head_attention_6/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€.2ш
Umodel_6/transformer_encoder_6/multi_head_attention_6/key/einsum/Einsum/ReadVariableOpReadVariableOp^model_6_transformer_encoder_6_multi_head_attention_6_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0њ
Fmodel_6/transformer_encoder_6/multi_head_attention_6/key/einsum/EinsumEinsum.model_6/token_and_position_embedding_6/add:z:0]model_6/transformer_encoder_6/multi_head_attention_6/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationabc,cde->abdeа
Kmodel_6/transformer_encoder_6/multi_head_attention_6/key/add/ReadVariableOpReadVariableOpTmodel_6_transformer_encoder_6_multi_head_attention_6_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0•
<model_6/transformer_encoder_6/multi_head_attention_6/key/addAddV2Omodel_6/transformer_encoder_6/multi_head_attention_6/key/einsum/Einsum:output:0Smodel_6/transformer_encoder_6/multi_head_attention_6/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€.2ь
Wmodel_6/transformer_encoder_6/multi_head_attention_6/value/einsum/Einsum/ReadVariableOpReadVariableOp`model_6_transformer_encoder_6_multi_head_attention_6_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0√
Hmodel_6/transformer_encoder_6/multi_head_attention_6/value/einsum/EinsumEinsum.model_6/token_and_position_embedding_6/add:z:0_model_6/transformer_encoder_6/multi_head_attention_6/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationabc,cde->abdeд
Mmodel_6/transformer_encoder_6/multi_head_attention_6/value/add/ReadVariableOpReadVariableOpVmodel_6_transformer_encoder_6_multi_head_attention_6_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ђ
>model_6/transformer_encoder_6/multi_head_attention_6/value/addAddV2Qmodel_6/transformer_encoder_6/multi_head_attention_6/value/einsum/Einsum:output:0Umodel_6/transformer_encoder_6/multi_head_attention_6/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€.2
:model_6/transformer_encoder_6/multi_head_attention_6/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *√–>В
8model_6/transformer_encoder_6/multi_head_attention_6/MulMulBmodel_6/transformer_encoder_6/multi_head_attention_6/query/add:z:0Cmodel_6/transformer_encoder_6/multi_head_attention_6/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€.2Ѓ
Bmodel_6/transformer_encoder_6/multi_head_attention_6/einsum/EinsumEinsum@model_6/transformer_encoder_6/multi_head_attention_6/key/add:z:0<model_6/transformer_encoder_6/multi_head_attention_6/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€..*
equationaecd,abcd->acbe÷
Dmodel_6/transformer_encoder_6/multi_head_attention_6/softmax/SoftmaxSoftmaxKmodel_6/transformer_encoder_6/multi_head_attention_6/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€..џ
Emodel_6/transformer_encoder_6/multi_head_attention_6/dropout/IdentityIdentityNmodel_6/transformer_encoder_6/multi_head_attention_6/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€..ƒ
Dmodel_6/transformer_encoder_6/multi_head_attention_6/einsum_1/EinsumEinsumNmodel_6/transformer_encoder_6/multi_head_attention_6/dropout/Identity:output:0Bmodel_6/transformer_encoder_6/multi_head_attention_6/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€.2*
equationacbe,aecd->abcdТ
bmodel_6/transformer_encoder_6/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpkmodel_6_transformer_encoder_6_multi_head_attention_6_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ф
Smodel_6/transformer_encoder_6/multi_head_attention_6/attention_output/einsum/EinsumEinsumMmodel_6/transformer_encoder_6/multi_head_attention_6/einsum_1/Einsum:output:0jmodel_6/transformer_encoder_6/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€.2*
equationabcd,cde->abeц
Xmodel_6/transformer_encoder_6/multi_head_attention_6/attention_output/add/ReadVariableOpReadVariableOpamodel_6_transformer_encoder_6_multi_head_attention_6_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0»
Imodel_6/transformer_encoder_6/multi_head_attention_6/attention_output/addAddV2\model_6/transformer_encoder_6/multi_head_attention_6/attention_output/einsum/Einsum:output:0`model_6/transformer_encoder_6/multi_head_attention_6/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2¬
1model_6/transformer_encoder_6/dropout_18/IdentityIdentityMmodel_6/transformer_encoder_6/multi_head_attention_6/attention_output/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2ћ
!model_6/transformer_encoder_6/addAddV2.model_6/token_and_position_embedding_6/add:z:0:model_6/transformer_encoder_6/dropout_18/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Э
Smodel_6/transformer_encoder_6/layer_normalization_12/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Х
Amodel_6/transformer_encoder_6/layer_normalization_12/moments/meanMean%model_6/transformer_encoder_6/add:z:0\model_6/transformer_encoder_6/layer_normalization_12/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(џ
Imodel_6/transformer_encoder_6/layer_normalization_12/moments/StopGradientStopGradientJmodel_6/transformer_encoder_6/layer_normalization_12/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€.Ф
Nmodel_6/transformer_encoder_6/layer_normalization_12/moments/SquaredDifferenceSquaredDifference%model_6/transformer_encoder_6/add:z:0Rmodel_6/transformer_encoder_6/layer_normalization_12/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2°
Wmodel_6/transformer_encoder_6/layer_normalization_12/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
Emodel_6/transformer_encoder_6/layer_normalization_12/moments/varianceMeanRmodel_6/transformer_encoder_6/layer_normalization_12/moments/SquaredDifference:z:0`model_6/transformer_encoder_6/layer_normalization_12/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(Й
Dmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5†
Bmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/addAddV2Nmodel_6/transformer_encoder_6/layer_normalization_12/moments/variance:output:0Mmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€.Ћ
Dmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/RsqrtRsqrtFmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€.и
Qmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOpZmodel_6_transformer_encoder_6_layer_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0§
Bmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/mulMulHmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/Rsqrt:y:0Ymodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2р
Dmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/mul_1Mul%model_6/transformer_encoder_6/add:z:0Fmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2Х
Dmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/mul_2MulJmodel_6/transformer_encoder_6/layer_normalization_12/moments/mean:output:0Fmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2а
Mmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/ReadVariableOpReadVariableOpVmodel_6_transformer_encoder_6_layer_normalization_12_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0†
Bmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/subSubUmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/ReadVariableOp:value:0Hmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2Х
Dmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/add_1AddV2Hmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/mul_1:z:0Fmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2в
Lmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/ReadVariableOpReadVariableOpUmodel_6_transformer_encoder_6_sequential_6_dense_24_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0М
Bmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:У
Bmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ї
Cmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/ShapeShapeHmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/add_1:z:0*
T0*
_output_shapes
:Н
Kmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Л
Fmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2GatherV2Lmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/Shape:output:0Kmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/free:output:0Tmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:П
Mmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : П
Hmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2_1GatherV2Lmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/Shape:output:0Kmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/axes:output:0Vmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Н
Cmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: К
Bmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/ProdProdOmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2:output:0Lmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/Const:output:0*
T0*
_output_shapes
: П
Emodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Р
Dmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/Prod_1ProdQmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2_1:output:0Nmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/Const_1:output:0*
T0*
_output_shapes
: Л
Imodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : м
Dmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/concatConcatV2Kmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/free:output:0Kmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/axes:output:0Rmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Х
Cmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/stackPackKmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/Prod:output:0Mmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:£
Gmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/transpose	TransposeHmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/add_1:z:0Mmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2¶
Emodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/ReshapeReshapeKmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/transpose:y:0Lmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€¶
Dmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/MatMulMatMulNmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/Reshape:output:0Tmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ П
Emodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Н
Kmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ч
Fmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/concat_1ConcatV2Omodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/GatherV2:output:0Nmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/Const_2:output:0Tmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Я
=model_6/transformer_encoder_6/sequential_6/dense_24/TensordotReshapeNmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/MatMul:product:0Omodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€. Џ
Jmodel_6/transformer_encoder_6/sequential_6/dense_24/BiasAdd/ReadVariableOpReadVariableOpSmodel_6_transformer_encoder_6_sequential_6_dense_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ш
;model_6/transformer_encoder_6/sequential_6/dense_24/BiasAddBiasAddFmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot:output:0Rmodel_6/transformer_encoder_6/sequential_6/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€. Љ
8model_6/transformer_encoder_6/sequential_6/dense_24/ReluReluDmodel_6/transformer_encoder_6/sequential_6/dense_24/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€. в
Lmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/ReadVariableOpReadVariableOpUmodel_6_transformer_encoder_6_sequential_6_dense_25_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0М
Bmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:У
Bmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       є
Cmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/ShapeShapeFmodel_6/transformer_encoder_6/sequential_6/dense_24/Relu:activations:0*
T0*
_output_shapes
:Н
Kmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Л
Fmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2GatherV2Lmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/Shape:output:0Kmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/free:output:0Tmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:П
Mmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : П
Hmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2_1GatherV2Lmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/Shape:output:0Kmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/axes:output:0Vmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Н
Cmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: К
Bmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/ProdProdOmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2:output:0Lmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/Const:output:0*
T0*
_output_shapes
: П
Emodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Р
Dmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/Prod_1ProdQmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2_1:output:0Nmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/Const_1:output:0*
T0*
_output_shapes
: Л
Imodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : м
Dmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/concatConcatV2Kmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/free:output:0Kmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/axes:output:0Rmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Х
Cmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/stackPackKmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/Prod:output:0Mmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:°
Gmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/transpose	TransposeFmodel_6/transformer_encoder_6/sequential_6/dense_24/Relu:activations:0Mmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€. ¶
Emodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/ReshapeReshapeKmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/transpose:y:0Lmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€¶
Dmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/MatMulMatMulNmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/Reshape:output:0Tmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2П
Emodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2Н
Kmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ч
Fmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/concat_1ConcatV2Omodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/GatherV2:output:0Nmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/Const_2:output:0Tmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Я
=model_6/transformer_encoder_6/sequential_6/dense_25/TensordotReshapeNmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/MatMul:product:0Omodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Џ
Jmodel_6/transformer_encoder_6/sequential_6/dense_25/BiasAdd/ReadVariableOpReadVariableOpSmodel_6_transformer_encoder_6_sequential_6_dense_25_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ш
;model_6/transformer_encoder_6/sequential_6/dense_25/BiasAddBiasAddFmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot:output:0Rmodel_6/transformer_encoder_6/sequential_6/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2є
1model_6/transformer_encoder_6/dropout_19/IdentityIdentityDmodel_6/transformer_encoder_6/sequential_6/dense_25/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2и
#model_6/transformer_encoder_6/add_1AddV2Hmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/add_1:z:0:model_6/transformer_encoder_6/dropout_19/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Э
Smodel_6/transformer_encoder_6/layer_normalization_13/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ч
Amodel_6/transformer_encoder_6/layer_normalization_13/moments/meanMean'model_6/transformer_encoder_6/add_1:z:0\model_6/transformer_encoder_6/layer_normalization_13/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(џ
Imodel_6/transformer_encoder_6/layer_normalization_13/moments/StopGradientStopGradientJmodel_6/transformer_encoder_6/layer_normalization_13/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€.Ц
Nmodel_6/transformer_encoder_6/layer_normalization_13/moments/SquaredDifferenceSquaredDifference'model_6/transformer_encoder_6/add_1:z:0Rmodel_6/transformer_encoder_6/layer_normalization_13/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2°
Wmodel_6/transformer_encoder_6/layer_normalization_13/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
Emodel_6/transformer_encoder_6/layer_normalization_13/moments/varianceMeanRmodel_6/transformer_encoder_6/layer_normalization_13/moments/SquaredDifference:z:0`model_6/transformer_encoder_6/layer_normalization_13/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€.*
	keep_dims(Й
Dmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5†
Bmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/addAddV2Nmodel_6/transformer_encoder_6/layer_normalization_13/moments/variance:output:0Mmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€.Ћ
Dmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/RsqrtRsqrtFmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€.и
Qmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOpZmodel_6_transformer_encoder_6_layer_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0§
Bmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/mulMulHmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/Rsqrt:y:0Ymodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2т
Dmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/mul_1Mul'model_6/transformer_encoder_6/add_1:z:0Fmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2Х
Dmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/mul_2MulJmodel_6/transformer_encoder_6/layer_normalization_13/moments/mean:output:0Fmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2а
Mmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/ReadVariableOpReadVariableOpVmodel_6_transformer_encoder_6_layer_normalization_13_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0†
Bmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/subSubUmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/ReadVariableOp:value:0Hmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2Х
Dmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/add_1AddV2Hmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/mul_1:z:0Fmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€.2Л
model_6/rnn_6/ShapeShapeHmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/add_1:z:0*
T0*
_output_shapes
:k
!model_6/rnn_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#model_6/rnn_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#model_6/rnn_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ч
model_6/rnn_6/strided_sliceStridedSlicemodel_6/rnn_6/Shape:output:0*model_6/rnn_6/strided_slice/stack:output:0,model_6/rnn_6/strided_slice/stack_1:output:0,model_6/rnn_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
model_6/rnn_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.Э
model_6/rnn_6/zeros/packedPack$model_6/rnn_6/strided_slice:output:0%model_6/rnn_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
model_6/rnn_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
model_6/rnn_6/zerosFill#model_6/rnn_6/zeros/packed:output:0"model_6/rnn_6/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€.`
model_6/rnn_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :.°
model_6/rnn_6/zeros_1/packedPack$model_6/rnn_6/strided_slice:output:0'model_6/rnn_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:`
model_6/rnn_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ь
model_6/rnn_6/zeros_1Fill%model_6/rnn_6/zeros_1/packed:output:0$model_6/rnn_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€.q
model_6/rnn_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ћ
model_6/rnn_6/transpose	TransposeHmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/add_1:z:0%model_6/rnn_6/transpose/perm:output:0*
T0*+
_output_shapes
:.€€€€€€€€€2`
model_6/rnn_6/Shape_1Shapemodel_6/rnn_6/transpose:y:0*
T0*
_output_shapes
:m
#model_6/rnn_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%model_6/rnn_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%model_6/rnn_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
model_6/rnn_6/strided_slice_1StridedSlicemodel_6/rnn_6/Shape_1:output:0,model_6/rnn_6/strided_slice_1/stack:output:0.model_6/rnn_6/strided_slice_1/stack_1:output:0.model_6/rnn_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)model_6/rnn_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ё
model_6/rnn_6/TensorArrayV2TensorListReserve2model_6/rnn_6/TensorArrayV2/element_shape:output:0&model_6/rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ф
Cmodel_6/rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   К
5model_6/rnn_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel_6/rnn_6/transpose:y:0Lmodel_6/rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“m
#model_6/rnn_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%model_6/rnn_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%model_6/rnn_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
model_6/rnn_6/strided_slice_2StridedSlicemodel_6/rnn_6/transpose:y:0,model_6/rnn_6/strided_slice_2/stack:output:0.model_6/rnn_6/strided_slice_2/stack_1:output:0.model_6/rnn_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_mask©
/model_6/rnn_6/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp8model_6_rnn_6_lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	2Є*
dtype0Њ
 model_6/rnn_6/lstm_cell_6/MatMulMatMul&model_6/rnn_6/strided_slice_2:output:07model_6/rnn_6/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Є≠
1model_6/rnn_6/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp:model_6_rnn_6_lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	.Є*
dtype0Є
"model_6/rnn_6/lstm_cell_6/MatMul_1MatMulmodel_6/rnn_6/zeros:output:09model_6/rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Є≥
model_6/rnn_6/lstm_cell_6/addAddV2*model_6/rnn_6/lstm_cell_6/MatMul:product:0,model_6/rnn_6/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€ЄІ
0model_6/rnn_6/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp9model_6_rnn_6_lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:Є*
dtype0Љ
!model_6/rnn_6/lstm_cell_6/BiasAddBiasAdd!model_6/rnn_6/lstm_cell_6/add:z:08model_6/rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Єk
)model_6/rnn_6/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Д
model_6/rnn_6/lstm_cell_6/splitSplit2model_6/rnn_6/lstm_cell_6/split/split_dim:output:0*model_6/rnn_6/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitИ
!model_6/rnn_6/lstm_cell_6/SigmoidSigmoid(model_6/rnn_6/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€.К
#model_6/rnn_6/lstm_cell_6/Sigmoid_1Sigmoid(model_6/rnn_6/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€.Я
model_6/rnn_6/lstm_cell_6/mulMul'model_6/rnn_6/lstm_cell_6/Sigmoid_1:y:0model_6/rnn_6/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€.В
model_6/rnn_6/lstm_cell_6/TanhTanh(model_6/rnn_6/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€.£
model_6/rnn_6/lstm_cell_6/mul_1Mul%model_6/rnn_6/lstm_cell_6/Sigmoid:y:0"model_6/rnn_6/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.Ґ
model_6/rnn_6/lstm_cell_6/add_1AddV2!model_6/rnn_6/lstm_cell_6/mul:z:0#model_6/rnn_6/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.К
#model_6/rnn_6/lstm_cell_6/Sigmoid_2Sigmoid(model_6/rnn_6/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€.
 model_6/rnn_6/lstm_cell_6/Tanh_1Tanh#model_6/rnn_6/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.І
model_6/rnn_6/lstm_cell_6/mul_2Mul'model_6/rnn_6/lstm_cell_6/Sigmoid_2:y:0$model_6/rnn_6/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.|
+model_6/rnn_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   l
*model_6/rnn_6/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :п
model_6/rnn_6/TensorArrayV2_1TensorListReserve4model_6/rnn_6/TensorArrayV2_1/element_shape:output:03model_6/rnn_6/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“T
model_6/rnn_6/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&model_6/rnn_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€b
 model_6/rnn_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : …
model_6/rnn_6/whileWhile)model_6/rnn_6/while/loop_counter:output:0/model_6/rnn_6/while/maximum_iterations:output:0model_6/rnn_6/time:output:0&model_6/rnn_6/TensorArrayV2_1:handle:0model_6/rnn_6/zeros:output:0model_6/rnn_6/zeros_1:output:0&model_6/rnn_6/strided_slice_1:output:0Emodel_6/rnn_6/TensorArrayUnstack/TensorListFromTensor:output_handle:08model_6_rnn_6_lstm_cell_6_matmul_readvariableop_resource:model_6_rnn_6_lstm_cell_6_matmul_1_readvariableop_resource9model_6_rnn_6_lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *.
body&R$
"model_6_rnn_6_while_body_202285793*.
cond&R$
"model_6_rnn_6_while_cond_202285792*K
output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *
parallel_iterations П
>model_6/rnn_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   А
0model_6/rnn_6/TensorArrayV2Stack/TensorListStackTensorListStackmodel_6/rnn_6/while:output:3Gmodel_6/rnn_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€.*
element_dtype0*
num_elementsv
#model_6/rnn_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€o
%model_6/rnn_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%model_6/rnn_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ќ
model_6/rnn_6/strided_slice_3StridedSlice9model_6/rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0,model_6/rnn_6/strided_slice_3/stack:output:0.model_6/rnn_6/strided_slice_3/stack_1:output:0.model_6/rnn_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€.*
shrink_axis_masks
model_6/rnn_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ј
model_6/rnn_6/transpose_1	Transpose9model_6/rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0'model_6/rnn_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€.Ц
&model_6/dense_26/MatMul/ReadVariableOpReadVariableOp/model_6_dense_26_matmul_readvariableop_resource*
_output_shapes

:..*
dtype0Ђ
model_6/dense_26/MatMulMatMul&model_6/rnn_6/strided_slice_3:output:0.model_6/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€.Ф
'model_6/dense_26/BiasAdd/ReadVariableOpReadVariableOp0model_6_dense_26_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0©
model_6/dense_26/BiasAddBiasAdd!model_6/dense_26/MatMul:product:0/model_6/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€.r
model_6/dense_26/ReluRelu!model_6/dense_26/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€.Ц
&model_6/dense_27/MatMul/ReadVariableOpReadVariableOp/model_6_dense_27_matmul_readvariableop_resource*
_output_shapes

:.*
dtype0®
model_6/dense_27/MatMulMatMul#model_6/dense_26/Relu:activations:0.model_6/dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
'model_6/dense_27/BiasAdd/ReadVariableOpReadVariableOp0model_6_dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0©
model_6/dense_27/BiasAddBiasAdd!model_6/dense_27/MatMul:product:0/model_6/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€p
IdentityIdentity!model_6/dense_27/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€г
NoOpNoOp(^model_6/dense_26/BiasAdd/ReadVariableOp'^model_6/dense_26/MatMul/ReadVariableOp(^model_6/dense_27/BiasAdd/ReadVariableOp'^model_6/dense_27/MatMul/ReadVariableOp1^model_6/rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp0^model_6/rnn_6/lstm_cell_6/MatMul/ReadVariableOp2^model_6/rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp^model_6/rnn_6/whileE^model_6/token_and_position_embedding_6/embedding_12/embedding_lookupE^model_6/token_and_position_embedding_6/embedding_13/embedding_lookupN^model_6/transformer_encoder_6/layer_normalization_12/batchnorm/ReadVariableOpR^model_6/transformer_encoder_6/layer_normalization_12/batchnorm/mul/ReadVariableOpN^model_6/transformer_encoder_6/layer_normalization_13/batchnorm/ReadVariableOpR^model_6/transformer_encoder_6/layer_normalization_13/batchnorm/mul/ReadVariableOpY^model_6/transformer_encoder_6/multi_head_attention_6/attention_output/add/ReadVariableOpc^model_6/transformer_encoder_6/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpL^model_6/transformer_encoder_6/multi_head_attention_6/key/add/ReadVariableOpV^model_6/transformer_encoder_6/multi_head_attention_6/key/einsum/Einsum/ReadVariableOpN^model_6/transformer_encoder_6/multi_head_attention_6/query/add/ReadVariableOpX^model_6/transformer_encoder_6/multi_head_attention_6/query/einsum/Einsum/ReadVariableOpN^model_6/transformer_encoder_6/multi_head_attention_6/value/add/ReadVariableOpX^model_6/transformer_encoder_6/multi_head_attention_6/value/einsum/Einsum/ReadVariableOpK^model_6/transformer_encoder_6/sequential_6/dense_24/BiasAdd/ReadVariableOpM^model_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/ReadVariableOpK^model_6/transformer_encoder_6/sequential_6/dense_25/BiasAdd/ReadVariableOpM^model_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€.: : : : : : : : : : : : : : : : : : : : : : : : : 2R
'model_6/dense_26/BiasAdd/ReadVariableOp'model_6/dense_26/BiasAdd/ReadVariableOp2P
&model_6/dense_26/MatMul/ReadVariableOp&model_6/dense_26/MatMul/ReadVariableOp2R
'model_6/dense_27/BiasAdd/ReadVariableOp'model_6/dense_27/BiasAdd/ReadVariableOp2P
&model_6/dense_27/MatMul/ReadVariableOp&model_6/dense_27/MatMul/ReadVariableOp2d
0model_6/rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp0model_6/rnn_6/lstm_cell_6/BiasAdd/ReadVariableOp2b
/model_6/rnn_6/lstm_cell_6/MatMul/ReadVariableOp/model_6/rnn_6/lstm_cell_6/MatMul/ReadVariableOp2f
1model_6/rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp1model_6/rnn_6/lstm_cell_6/MatMul_1/ReadVariableOp2*
model_6/rnn_6/whilemodel_6/rnn_6/while2М
Dmodel_6/token_and_position_embedding_6/embedding_12/embedding_lookupDmodel_6/token_and_position_embedding_6/embedding_12/embedding_lookup2М
Dmodel_6/token_and_position_embedding_6/embedding_13/embedding_lookupDmodel_6/token_and_position_embedding_6/embedding_13/embedding_lookup2Ю
Mmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/ReadVariableOpMmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/ReadVariableOp2¶
Qmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/mul/ReadVariableOpQmodel_6/transformer_encoder_6/layer_normalization_12/batchnorm/mul/ReadVariableOp2Ю
Mmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/ReadVariableOpMmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/ReadVariableOp2¶
Qmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/mul/ReadVariableOpQmodel_6/transformer_encoder_6/layer_normalization_13/batchnorm/mul/ReadVariableOp2і
Xmodel_6/transformer_encoder_6/multi_head_attention_6/attention_output/add/ReadVariableOpXmodel_6/transformer_encoder_6/multi_head_attention_6/attention_output/add/ReadVariableOp2»
bmodel_6/transformer_encoder_6/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOpbmodel_6/transformer_encoder_6/multi_head_attention_6/attention_output/einsum/Einsum/ReadVariableOp2Ъ
Kmodel_6/transformer_encoder_6/multi_head_attention_6/key/add/ReadVariableOpKmodel_6/transformer_encoder_6/multi_head_attention_6/key/add/ReadVariableOp2Ѓ
Umodel_6/transformer_encoder_6/multi_head_attention_6/key/einsum/Einsum/ReadVariableOpUmodel_6/transformer_encoder_6/multi_head_attention_6/key/einsum/Einsum/ReadVariableOp2Ю
Mmodel_6/transformer_encoder_6/multi_head_attention_6/query/add/ReadVariableOpMmodel_6/transformer_encoder_6/multi_head_attention_6/query/add/ReadVariableOp2≤
Wmodel_6/transformer_encoder_6/multi_head_attention_6/query/einsum/Einsum/ReadVariableOpWmodel_6/transformer_encoder_6/multi_head_attention_6/query/einsum/Einsum/ReadVariableOp2Ю
Mmodel_6/transformer_encoder_6/multi_head_attention_6/value/add/ReadVariableOpMmodel_6/transformer_encoder_6/multi_head_attention_6/value/add/ReadVariableOp2≤
Wmodel_6/transformer_encoder_6/multi_head_attention_6/value/einsum/Einsum/ReadVariableOpWmodel_6/transformer_encoder_6/multi_head_attention_6/value/einsum/Einsum/ReadVariableOp2Ш
Jmodel_6/transformer_encoder_6/sequential_6/dense_24/BiasAdd/ReadVariableOpJmodel_6/transformer_encoder_6/sequential_6/dense_24/BiasAdd/ReadVariableOp2Ь
Lmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/ReadVariableOpLmodel_6/transformer_encoder_6/sequential_6/dense_24/Tensordot/ReadVariableOp2Ш
Jmodel_6/transformer_encoder_6/sequential_6/dense_25/BiasAdd/ReadVariableOpJmodel_6/transformer_encoder_6/sequential_6/dense_25/BiasAdd/ReadVariableOp2Ь
Lmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/ReadVariableOpLmodel_6/transformer_encoder_6/sequential_6/dense_25/Tensordot/ReadVariableOp:P L
'
_output_shapes
:€€€€€€€€€.
!
_user_specified_name	input_7
 	
ш
G__inference_dense_27_layer_call_and_return_conditional_losses_202286811

inputs0
matmul_readvariableop_resource:.-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:.*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€.: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€.
 
_user_specified_nameinputs
…
≤
+__inference_model_6_layer_call_fn_202287506
input_7
unknown:.2
	unknown_0:	Б2
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

unknown_17:	2Є

unknown_18:	.Є

unknown_19:	Є

unknown_20:..

unknown_21:.

unknown_22:.

unknown_23:
identityИҐStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:€€€€€€€€€*;
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_model_6_layer_call_and_return_conditional_losses_202287398o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€.: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€.
!
_user_specified_name	input_7
С
Є
)__inference_rnn_6_layer_call_fn_202288806
inputs_0
unknown:	2Є
	unknown_0:	.Є
	unknown_1:	Є
identityИҐStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rnn_6_layer_call_and_return_conditional_losses_202286426o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
"
_user_specified_name
inputs/0
Р)
 
F__inference_model_6_layer_call_and_return_conditional_losses_202287624
input_7:
(token_and_position_embedding_6_202287568:.2;
(token_and_position_embedding_6_202287570:	Б25
transformer_encoder_6_202287573:221
transformer_encoder_6_202287575:25
transformer_encoder_6_202287577:221
transformer_encoder_6_202287579:25
transformer_encoder_6_202287581:221
transformer_encoder_6_202287583:25
transformer_encoder_6_202287585:22-
transformer_encoder_6_202287587:2-
transformer_encoder_6_202287589:2-
transformer_encoder_6_202287591:21
transformer_encoder_6_202287593:2 -
transformer_encoder_6_202287595: 1
transformer_encoder_6_202287597: 2-
transformer_encoder_6_202287599:2-
transformer_encoder_6_202287601:2-
transformer_encoder_6_202287603:2"
rnn_6_202287606:	2Є"
rnn_6_202287608:	.Є
rnn_6_202287610:	Є$
dense_26_202287613:.. 
dense_26_202287615:.$
dense_27_202287618:. 
dense_27_202287620:
identityИҐ dense_26/StatefulPartitionedCallҐ dense_27/StatefulPartitionedCallҐrnn_6/StatefulPartitionedCallҐ6token_and_position_embedding_6/StatefulPartitionedCallҐ-transformer_encoder_6/StatefulPartitionedCall÷
6token_and_position_embedding_6/StatefulPartitionedCallStatefulPartitionedCallinput_7(token_and_position_embedding_6_202287568(token_and_position_embedding_6_202287570*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *f
faR_
]__inference_token_and_position_embedding_6_layer_call_and_return_conditional_losses_202286466‘
-transformer_encoder_6/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_6/StatefulPartitionedCall:output:0transformer_encoder_6_202287573transformer_encoder_6_202287575transformer_encoder_6_202287577transformer_encoder_6_202287579transformer_encoder_6_202287581transformer_encoder_6_202287583transformer_encoder_6_202287585transformer_encoder_6_202287587transformer_encoder_6_202287589transformer_encoder_6_202287591transformer_encoder_6_202287593transformer_encoder_6_202287595transformer_encoder_6_202287597transformer_encoder_6_202287599transformer_encoder_6_202287601transformer_encoder_6_202287603*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€.2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_transformer_encoder_6_layer_call_and_return_conditional_losses_202287237∞
rnn_6/StatefulPartitionedCallStatefulPartitionedCall6transformer_encoder_6/StatefulPartitionedCall:output:0rnn_6_202287606rnn_6_202287608rnn_6_202287610*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rnn_6_layer_call_and_return_conditional_losses_202287048Щ
 dense_26/StatefulPartitionedCallStatefulPartitionedCall&rnn_6/StatefulPartitionedCall:output:0dense_26_202287613dense_26_202287615*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_26_layer_call_and_return_conditional_losses_202286795Ь
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_202287618dense_27_202287620*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_27_layer_call_and_return_conditional_losses_202286811x
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Х
NoOpNoOp!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall^rnn_6/StatefulPartitionedCall7^token_and_position_embedding_6/StatefulPartitionedCall.^transformer_encoder_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€.: : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2>
rnn_6/StatefulPartitionedCallrnn_6/StatefulPartitionedCall2p
6token_and_position_embedding_6/StatefulPartitionedCall6token_and_position_embedding_6/StatefulPartitionedCall2^
-transformer_encoder_6/StatefulPartitionedCall-transformer_encoder_6/StatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€.
!
_user_specified_name	input_7
ВJ
Ц
D__inference_rnn_6_layer_call_and_return_conditional_losses_202289260

inputs=
*lstm_cell_6_matmul_readvariableop_resource:	2Є?
,lstm_cell_6_matmul_1_readvariableop_resource:	.Є:
+lstm_cell_6_biasadd_readvariableop_resource:	Є
identityИҐ"lstm_cell_6/BiasAdd/ReadVariableOpҐ!lstm_cell_6/MatMul/ReadVariableOpҐ#lstm_cell_6/MatMul_1/ReadVariableOpҐwhile;
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
valueB:—
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
:€€€€€€€€€.R
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
:€€€€€€€€€.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:.€€€€€€€€€2D
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskН
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	2Є*
dtype0Ф
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄС
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource*
_output_shapes
:	.Є*
dtype0О
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЙ
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЛ
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:Є*
dtype0Т
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Є]
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Џ
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitl
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€.n
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€.u
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€.f
lstm_cell_6/TanhTanhlstm_cell_6/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€.y
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.x
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.n
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€.c
lstm_cell_6/Tanh_1Tanhlstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.}
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
while_body_202289176* 
condR
while_cond_202289175*K
output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.љ
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€.2: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€.2
 
_user_specified_nameinputs
Э$
с
while_body_202286357
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_6_202286381_0:	2Є0
while_lstm_cell_6_202286383_0:	.Є,
while_lstm_cell_6_202286385_0:	Є
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_6_202286381:	2Є.
while_lstm_cell_6_202286383:	.Є*
while_lstm_cell_6_202286385:	ЄИҐ)while/lstm_cell_6/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0Ї
)while/lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_6_202286381_0while_lstm_cell_6_202286383_0while_lstm_cell_6_202286385_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_6_layer_call_and_return_conditional_losses_202286297r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:02while/lstm_cell_6/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: П
while/Identity_4Identity2while/lstm_cell_6/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.П
while/Identity_5Identity2while/lstm_cell_6/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.x

while/NoOpNoOp*^while/lstm_cell_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_6_202286381while_lstm_cell_6_202286381_0"<
while_lstm_cell_6_202286383while_lstm_cell_6_202286383_0"<
while_lstm_cell_6_202286385while_lstm_cell_6_202286385_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : 2V
)while/lstm_cell_6/StatefulPartitionedCall)while/lstm_cell_6/StatefulPartitionedCall: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
: 
Э$
с
while_body_202286165
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_6_202286189_0:	2Є0
while_lstm_cell_6_202286191_0:	.Є,
while_lstm_cell_6_202286193_0:	Є
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_6_202286189:	2Є.
while_lstm_cell_6_202286191:	.Є*
while_lstm_cell_6_202286193:	ЄИҐ)while/lstm_cell_6/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0Ї
)while/lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_6_202286189_0while_lstm_cell_6_202286191_0while_lstm_cell_6_202286193_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_6_layer_call_and_return_conditional_losses_202286150r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Г
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:02while/lstm_cell_6/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: П
while/Identity_4Identity2while/lstm_cell_6/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.П
while/Identity_5Identity2while/lstm_cell_6/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.x

while/NoOpNoOp*^while/lstm_cell_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_6_202286189while_lstm_cell_6_202286189_0"<
while_lstm_cell_6_202286191while_lstm_cell_6_202286191_0"<
while_lstm_cell_6_202286193while_lstm_cell_6_202286193_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : 2V
)while/lstm_cell_6/StatefulPartitionedCall)while/lstm_cell_6/StatefulPartitionedCall: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
: 
√
Ж
J__inference_lstm_cell_6_layer_call_and_return_conditional_losses_202286150

inputs

states
states_11
matmul_readvariableop_resource:	2Є3
 matmul_1_readvariableop_resource:	.Є.
biasadd_readvariableop_resource:	Є
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2Є*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Єy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	.Є*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Єe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Єs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Є*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€.V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€.U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€.N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€.U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€.K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€2:€€€€€€€€€.:€€€€€€€€€.: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€.
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€.
 
_user_specified_namestates
ќ
ю
G__inference_dense_25_layer_call_and_return_conditional_losses_202289760

inputs3
!tensordot_readvariableop_resource: 2-
biasadd_readvariableop_resource:2
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
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
value	B : ї
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
value	B : њ
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
value	B : Ь
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
:€€€€€€€€€. К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€. : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€. 
 
_user_specified_nameinputs
£
Ѓ
'__inference_signature_wrapper_202287687
input_7
unknown:.2
	unknown_0:	Б2
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

unknown_17:	2Є

unknown_18:	.Є

unknown_19:	Є

unknown_20:..

unknown_21:.

unknown_22:.

unknown_23:
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:€€€€€€€€€*;
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference__wrapped_model_202285890o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€.: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€.
!
_user_specified_name	input_7
щ
ґ
)__inference_rnn_6_layer_call_fn_202288828

inputs
unknown:	2Є
	unknown_0:	.Є
	unknown_1:	Є
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rnn_6_layer_call_and_return_conditional_losses_202287048o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€.2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€.2
 
_user_specified_nameinputs
Н)
…
F__inference_model_6_layer_call_and_return_conditional_losses_202287398

inputs:
(token_and_position_embedding_6_202287342:.2;
(token_and_position_embedding_6_202287344:	Б25
transformer_encoder_6_202287347:221
transformer_encoder_6_202287349:25
transformer_encoder_6_202287351:221
transformer_encoder_6_202287353:25
transformer_encoder_6_202287355:221
transformer_encoder_6_202287357:25
transformer_encoder_6_202287359:22-
transformer_encoder_6_202287361:2-
transformer_encoder_6_202287363:2-
transformer_encoder_6_202287365:21
transformer_encoder_6_202287367:2 -
transformer_encoder_6_202287369: 1
transformer_encoder_6_202287371: 2-
transformer_encoder_6_202287373:2-
transformer_encoder_6_202287375:2-
transformer_encoder_6_202287377:2"
rnn_6_202287380:	2Є"
rnn_6_202287382:	.Є
rnn_6_202287384:	Є$
dense_26_202287387:.. 
dense_26_202287389:.$
dense_27_202287392:. 
dense_27_202287394:
identityИҐ dense_26/StatefulPartitionedCallҐ dense_27/StatefulPartitionedCallҐrnn_6/StatefulPartitionedCallҐ6token_and_position_embedding_6/StatefulPartitionedCallҐ-transformer_encoder_6/StatefulPartitionedCall’
6token_and_position_embedding_6/StatefulPartitionedCallStatefulPartitionedCallinputs(token_and_position_embedding_6_202287342(token_and_position_embedding_6_202287344*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *f
faR_
]__inference_token_and_position_embedding_6_layer_call_and_return_conditional_losses_202286466‘
-transformer_encoder_6/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_6/StatefulPartitionedCall:output:0transformer_encoder_6_202287347transformer_encoder_6_202287349transformer_encoder_6_202287351transformer_encoder_6_202287353transformer_encoder_6_202287355transformer_encoder_6_202287357transformer_encoder_6_202287359transformer_encoder_6_202287361transformer_encoder_6_202287363transformer_encoder_6_202287365transformer_encoder_6_202287367transformer_encoder_6_202287369transformer_encoder_6_202287371transformer_encoder_6_202287373transformer_encoder_6_202287375transformer_encoder_6_202287377*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€.2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *]
fXRV
T__inference_transformer_encoder_6_layer_call_and_return_conditional_losses_202287237∞
rnn_6/StatefulPartitionedCallStatefulPartitionedCall6transformer_encoder_6/StatefulPartitionedCall:output:0rnn_6_202287380rnn_6_202287382rnn_6_202287384*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rnn_6_layer_call_and_return_conditional_losses_202287048Щ
 dense_26/StatefulPartitionedCallStatefulPartitionedCall&rnn_6/StatefulPartitionedCall:output:0dense_26_202287387dense_26_202287389*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_26_layer_call_and_return_conditional_losses_202286795Ь
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_202287392dense_27_202287394*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_27_layer_call_and_return_conditional_losses_202286811x
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Х
NoOpNoOp!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall^rnn_6/StatefulPartitionedCall7^token_and_position_embedding_6/StatefulPartitionedCall.^transformer_encoder_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€.: : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2>
rnn_6/StatefulPartitionedCallrnn_6/StatefulPartitionedCall2p
6token_and_position_embedding_6/StatefulPartitionedCall6token_and_position_embedding_6/StatefulPartitionedCall2^
-transformer_encoder_6/StatefulPartitionedCall-transformer_encoder_6/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€.
 
_user_specified_nameinputs
Ћ
И
J__inference_lstm_cell_6_layer_call_and_return_conditional_losses_202289681

inputs
states_0
states_11
matmul_readvariableop_resource:	2Є3
 matmul_1_readvariableop_resource:	.Є.
biasadd_readvariableop_resource:	Є
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2Є*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Єy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	.Є*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Єe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Єs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Є*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€.V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€.U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€.N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€.U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€.K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€2:€€€€€€€€€.:€€€€€€€€€.: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€.
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€.
"
_user_specified_name
states/1
”8
 
while_body_202288888
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	2ЄG
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	.ЄB
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	Є
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	2ЄE
2while_lstm_cell_6_matmul_1_readvariableop_resource:	.Є@
1while_lstm_cell_6_biasadd_readvariableop_resource:	ЄИҐ(while/lstm_cell_6/BiasAdd/ReadVariableOpҐ'while/lstm_cell_6/MatMul/ReadVariableOpҐ)while/lstm_cell_6/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0Ы
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	2Є*
dtype0Є
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЯ
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	.Є*
dtype0Я
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЫ
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЩ
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:Є*
dtype0§
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Єc
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :м
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€.z
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€.Д
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€.r
while/lstm_cell_6/TanhTanh while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€.Л
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0while/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.К
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.z
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€.o
while/lstm_cell_6/Tanh_1Tanhwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.П
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0while/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.x
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.Ќ

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
: 
Ѕ
Ѓ
]__inference_token_and_position_embedding_6_layer_call_and_return_conditional_losses_202286466
x9
'embedding_13_embedding_lookup_202286453:.2:
'embedding_12_embedding_lookup_202286459:	Б2
identityИҐembedding_12/embedding_lookupҐembedding_13/embedding_lookup6
ShapeShapex*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
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
:.б
embedding_13/embedding_lookupResourceGather'embedding_13_embedding_lookup_202286453range:output:0*
Tindices0*:
_class0
.,loc:@embedding_13/embedding_lookup/202286453*
_output_shapes

:.2*
dtype0њ
&embedding_13/embedding_lookup/IdentityIdentity&embedding_13/embedding_lookup:output:0*
T0*:
_class0
.,loc:@embedding_13/embedding_lookup/202286453*
_output_shapes

:.2О
(embedding_13/embedding_lookup/Identity_1Identity/embedding_13/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:.2]
embedding_12/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€.х
embedding_12/embedding_lookupResourceGather'embedding_12_embedding_lookup_202286459embedding_12/Cast:y:0*
Tindices0*:
_class0
.,loc:@embedding_12/embedding_lookup/202286459*+
_output_shapes
:€€€€€€€€€.2*
dtype0ћ
&embedding_12/embedding_lookup/IdentityIdentity&embedding_12/embedding_lookup:output:0*
T0*:
_class0
.,loc:@embedding_12/embedding_lookup/202286459*+
_output_shapes
:€€€€€€€€€.2Ы
(embedding_12/embedding_lookup/Identity_1Identity/embedding_12/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2®
addAddV21embedding_12/embedding_lookup/Identity_1:output:01embedding_13/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Z
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2Ж
NoOpNoOp^embedding_12/embedding_lookup^embedding_13/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€.: : 2>
embedding_12/embedding_lookupembedding_12/embedding_lookup2>
embedding_13/embedding_lookupembedding_13/embedding_lookup:J F
'
_output_shapes
:€€€€€€€€€.

_user_specified_namex
Ю

ш
G__inference_dense_26_layer_call_and_return_conditional_losses_202286795

inputs0
matmul_readvariableop_resource:..-
biasadd_readvariableop_resource:.
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:..*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€.r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:.*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€.P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€.a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€.: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€.
 
_user_specified_nameinputs
»
Щ
,__inference_dense_27_layer_call_fn_202289433

inputs
unknown:.
	unknown_0:
identityИҐStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_27_layer_call_and_return_conditional_losses_202286811o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€.: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€.
 
_user_specified_nameinputs
Ў?
в
K__inference_sequential_6_layer_call_and_return_conditional_losses_202289526

inputs<
*dense_24_tensordot_readvariableop_resource:2 6
(dense_24_biasadd_readvariableop_resource: <
*dense_25_tensordot_readvariableop_resource: 26
(dense_25_biasadd_readvariableop_resource:2
identityИҐdense_24/BiasAdd/ReadVariableOpҐ!dense_24/Tensordot/ReadVariableOpҐdense_25/BiasAdd/ReadVariableOpҐ!dense_25/Tensordot/ReadVariableOpМ
!dense_24/Tensordot/ReadVariableOpReadVariableOp*dense_24_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0a
dense_24/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_24/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       N
dense_24/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:b
 dense_24/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_24/Tensordot/GatherV2GatherV2!dense_24/Tensordot/Shape:output:0 dense_24/Tensordot/free:output:0)dense_24/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_24/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense_24/Tensordot/GatherV2_1GatherV2!dense_24/Tensordot/Shape:output:0 dense_24/Tensordot/axes:output:0+dense_24/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_24/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Й
dense_24/Tensordot/ProdProd$dense_24/Tensordot/GatherV2:output:0!dense_24/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_24/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: П
dense_24/Tensordot/Prod_1Prod&dense_24/Tensordot/GatherV2_1:output:0#dense_24/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_24/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ј
dense_24/Tensordot/concatConcatV2 dense_24/Tensordot/free:output:0 dense_24/Tensordot/axes:output:0'dense_24/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ф
dense_24/Tensordot/stackPack dense_24/Tensordot/Prod:output:0"dense_24/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Л
dense_24/Tensordot/transpose	Transposeinputs"dense_24/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2•
dense_24/Tensordot/ReshapeReshape dense_24/Tensordot/transpose:y:0!dense_24/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€•
dense_24/Tensordot/MatMulMatMul#dense_24/Tensordot/Reshape:output:0)dense_24/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ d
dense_24/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: b
 dense_24/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
dense_24/Tensordot/concat_1ConcatV2$dense_24/Tensordot/GatherV2:output:0#dense_24/Tensordot/Const_2:output:0)dense_24/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ю
dense_24/TensordotReshape#dense_24/Tensordot/MatMul:product:0$dense_24/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€. Д
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ч
dense_24/BiasAddBiasAdddense_24/Tensordot:output:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€. f
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€. М
!dense_25/Tensordot/ReadVariableOpReadVariableOp*dense_25_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0a
dense_25/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_25/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_25/Tensordot/ShapeShapedense_24/Relu:activations:0*
T0*
_output_shapes
:b
 dense_25/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_25/Tensordot/GatherV2GatherV2!dense_25/Tensordot/Shape:output:0 dense_25/Tensordot/free:output:0)dense_25/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_25/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense_25/Tensordot/GatherV2_1GatherV2!dense_25/Tensordot/Shape:output:0 dense_25/Tensordot/axes:output:0+dense_25/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_25/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Й
dense_25/Tensordot/ProdProd$dense_25/Tensordot/GatherV2:output:0!dense_25/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_25/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: П
dense_25/Tensordot/Prod_1Prod&dense_25/Tensordot/GatherV2_1:output:0#dense_25/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_25/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ј
dense_25/Tensordot/concatConcatV2 dense_25/Tensordot/free:output:0 dense_25/Tensordot/axes:output:0'dense_25/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ф
dense_25/Tensordot/stackPack dense_25/Tensordot/Prod:output:0"dense_25/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:†
dense_25/Tensordot/transpose	Transposedense_24/Relu:activations:0"dense_25/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€. •
dense_25/Tensordot/ReshapeReshape dense_25/Tensordot/transpose:y:0!dense_25/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€•
dense_25/Tensordot/MatMulMatMul#dense_25/Tensordot/Reshape:output:0)dense_25/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2d
dense_25/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2b
 dense_25/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
dense_25/Tensordot/concat_1ConcatV2$dense_25/Tensordot/GatherV2:output:0#dense_25/Tensordot/Const_2:output:0)dense_25/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ю
dense_25/TensordotReshape#dense_25/Tensordot/MatMul:product:0$dense_25/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€.2Д
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ч
dense_25/BiasAddBiasAdddense_25/Tensordot:output:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€.2l
IdentityIdentitydense_25/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2“
NoOpNoOp ^dense_24/BiasAdd/ReadVariableOp"^dense_24/Tensordot/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp"^dense_25/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€.2: : : : 2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2F
!dense_24/Tensordot/ReadVariableOp!dense_24/Tensordot/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2F
!dense_25/Tensordot/ReadVariableOp!dense_25/Tensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€.2
 
_user_specified_nameinputs
ƒ
“
while_cond_202286356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_202286356___redundant_placeholder07
3while_while_cond_202286356___redundant_placeholder17
3while_while_cond_202286356___redundant_placeholder27
3while_while_cond_202286356___redundant_placeholder3
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
@: : : : :€€€€€€€€€.:€€€€€€€€€.: ::::: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
:
ґ8
Л
D__inference_rnn_6_layer_call_and_return_conditional_losses_202286426

inputs(
lstm_cell_6_202286343:	2Є(
lstm_cell_6_202286345:	.Є$
lstm_cell_6_202286347:	Є
identityИҐ#lstm_cell_6/StatefulPartitionedCallҐwhile;
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
valueB:—
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
:€€€€€€€€€.R
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
:€€€€€€€€€.c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2D
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskь
#lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_6_202286343lstm_cell_6_202286345lstm_cell_6_202286347*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_6_layer_call_and_return_conditional_losses_202286297n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : √
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_6_202286343lstm_cell_6_202286345lstm_cell_6_202286347*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
while_body_202286357* 
condR
while_cond_202286356*K
output_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€.   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€.*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€.*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€.g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.t
NoOpNoOp$^lstm_cell_6/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€2: : : 2J
#lstm_cell_6/StatefulPartitionedCall#lstm_cell_6/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
 
_user_specified_nameinputs
»
Щ
,__inference_dense_26_layer_call_fn_202289413

inputs
unknown:..
	unknown_0:.
identityИҐStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_26_layer_call_and_return_conditional_losses_202286795o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€.: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€.
 
_user_specified_nameinputs
г?
К

rnn_6_while_body_202288313(
$rnn_6_while_rnn_6_while_loop_counter.
*rnn_6_while_rnn_6_while_maximum_iterations
rnn_6_while_placeholder
rnn_6_while_placeholder_1
rnn_6_while_placeholder_2
rnn_6_while_placeholder_3'
#rnn_6_while_rnn_6_strided_slice_1_0c
_rnn_6_while_tensorarrayv2read_tensorlistgetitem_rnn_6_tensorarrayunstack_tensorlistfromtensor_0K
8rnn_6_while_lstm_cell_6_matmul_readvariableop_resource_0:	2ЄM
:rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0:	.ЄH
9rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource_0:	Є
rnn_6_while_identity
rnn_6_while_identity_1
rnn_6_while_identity_2
rnn_6_while_identity_3
rnn_6_while_identity_4
rnn_6_while_identity_5%
!rnn_6_while_rnn_6_strided_slice_1a
]rnn_6_while_tensorarrayv2read_tensorlistgetitem_rnn_6_tensorarrayunstack_tensorlistfromtensorI
6rnn_6_while_lstm_cell_6_matmul_readvariableop_resource:	2ЄK
8rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource:	.ЄF
7rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource:	ЄИҐ.rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOpҐ-rnn_6/while/lstm_cell_6/MatMul/ReadVariableOpҐ/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOpО
=rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ƒ
/rnn_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_rnn_6_while_tensorarrayv2read_tensorlistgetitem_rnn_6_tensorarrayunstack_tensorlistfromtensor_0rnn_6_while_placeholderFrnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0І
-rnn_6/while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp8rnn_6_while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	2Є*
dtype0 
rnn_6/while/lstm_cell_6/MatMulMatMul6rnn_6/while/TensorArrayV2Read/TensorListGetItem:item:05rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЂ
/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp:rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	.Є*
dtype0±
 rnn_6/while/lstm_cell_6/MatMul_1MatMulrnn_6_while_placeholder_27rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Є≠
rnn_6/while/lstm_cell_6/addAddV2(rnn_6/while/lstm_cell_6/MatMul:product:0*rnn_6/while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Є•
.rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp9rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:Є*
dtype0ґ
rnn_6/while/lstm_cell_6/BiasAddBiasAddrnn_6/while/lstm_cell_6/add:z:06rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Єi
'rnn_6/while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ю
rnn_6/while/lstm_cell_6/splitSplit0rnn_6/while/lstm_cell_6/split/split_dim:output:0(rnn_6/while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitД
rnn_6/while/lstm_cell_6/SigmoidSigmoid&rnn_6/while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€.Ж
!rnn_6/while/lstm_cell_6/Sigmoid_1Sigmoid&rnn_6/while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€.Ц
rnn_6/while/lstm_cell_6/mulMul%rnn_6/while/lstm_cell_6/Sigmoid_1:y:0rnn_6_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€.~
rnn_6/while/lstm_cell_6/TanhTanh&rnn_6/while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€.Э
rnn_6/while/lstm_cell_6/mul_1Mul#rnn_6/while/lstm_cell_6/Sigmoid:y:0 rnn_6/while/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.Ь
rnn_6/while/lstm_cell_6/add_1AddV2rnn_6/while/lstm_cell_6/mul:z:0!rnn_6/while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.Ж
!rnn_6/while/lstm_cell_6/Sigmoid_2Sigmoid&rnn_6/while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€.{
rnn_6/while/lstm_cell_6/Tanh_1Tanh!rnn_6/while/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.°
rnn_6/while/lstm_cell_6/mul_2Mul%rnn_6/while/lstm_cell_6/Sigmoid_2:y:0"rnn_6/while/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.x
6rnn_6/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Д
0rnn_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_6_while_placeholder_1?rnn_6/while/TensorArrayV2Write/TensorListSetItem/index:output:0!rnn_6/while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“S
rnn_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
rnn_6/while/addAddV2rnn_6_while_placeholderrnn_6/while/add/y:output:0*
T0*
_output_shapes
: U
rnn_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
rnn_6/while/add_1AddV2$rnn_6_while_rnn_6_while_loop_counterrnn_6/while/add_1/y:output:0*
T0*
_output_shapes
: k
rnn_6/while/IdentityIdentityrnn_6/while/add_1:z:0^rnn_6/while/NoOp*
T0*
_output_shapes
: В
rnn_6/while/Identity_1Identity*rnn_6_while_rnn_6_while_maximum_iterations^rnn_6/while/NoOp*
T0*
_output_shapes
: k
rnn_6/while/Identity_2Identityrnn_6/while/add:z:0^rnn_6/while/NoOp*
T0*
_output_shapes
: Ш
rnn_6/while/Identity_3Identity@rnn_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn_6/while/NoOp*
T0*
_output_shapes
: К
rnn_6/while/Identity_4Identity!rnn_6/while/lstm_cell_6/mul_2:z:0^rnn_6/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.К
rnn_6/while/Identity_5Identity!rnn_6/while/lstm_cell_6/add_1:z:0^rnn_6/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.е
rnn_6/while/NoOpNoOp/^rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp.^rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp0^rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "5
rnn_6_while_identityrnn_6/while/Identity:output:0"9
rnn_6_while_identity_1rnn_6/while/Identity_1:output:0"9
rnn_6_while_identity_2rnn_6/while/Identity_2:output:0"9
rnn_6_while_identity_3rnn_6/while/Identity_3:output:0"9
rnn_6_while_identity_4rnn_6/while/Identity_4:output:0"9
rnn_6_while_identity_5rnn_6/while/Identity_5:output:0"t
7rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource9rnn_6_while_lstm_cell_6_biasadd_readvariableop_resource_0"v
8rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource:rnn_6_while_lstm_cell_6_matmul_1_readvariableop_resource_0"r
6rnn_6_while_lstm_cell_6_matmul_readvariableop_resource8rnn_6_while_lstm_cell_6_matmul_readvariableop_resource_0"H
!rnn_6_while_rnn_6_strided_slice_1#rnn_6_while_rnn_6_strided_slice_1_0"ј
]rnn_6_while_tensorarrayv2read_tensorlistgetitem_rnn_6_tensorarrayunstack_tensorlistfromtensor_rnn_6_while_tensorarrayv2read_tensorlistgetitem_rnn_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : 2`
.rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp.rnn_6/while/lstm_cell_6/BiasAdd/ReadVariableOp2^
-rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp-rnn_6/while/lstm_cell_6/MatMul/ReadVariableOp2b
/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp/rnn_6/while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
: 
п
ш
/__inference_lstm_cell_6_layer_call_fn_202289600

inputs
states_0
states_1
unknown:	2Є
	unknown_0:	.Є
	unknown_1:	Є
identity

identity_1

identity_2ИҐStatefulPartitionedCall™
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_lstm_cell_6_layer_call_and_return_conditional_losses_202286150o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€2:€€€€€€€€€.:€€€€€€€€€.: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€.
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€.
"
_user_specified_name
states/1
∆
±
+__inference_model_6_layer_call_fn_202287742

inputs
unknown:.2
	unknown_0:	Б2
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

unknown_17:	2Є

unknown_18:	.Є

unknown_19:	Є

unknown_20:..

unknown_21:.

unknown_22:.

unknown_23:
identityИҐStatefulPartitionedCallФ
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
:€€€€€€€€€*;
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_model_6_layer_call_and_return_conditional_losses_202286818o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€.: : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€.
 
_user_specified_nameinputs
”8
 
while_body_202286692
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	2ЄG
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:	.ЄB
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	Є
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	2ЄE
2while_lstm_cell_6_matmul_1_readvariableop_resource:	.Є@
1while_lstm_cell_6_biasadd_readvariableop_resource:	ЄИҐ(while/lstm_cell_6/BiasAdd/ReadVariableOpҐ'while/lstm_cell_6/MatMul/ReadVariableOpҐ)while/lstm_cell_6/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0Ы
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	2Є*
dtype0Є
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЯ
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0*
_output_shapes
:	.Є*
dtype0Я
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЫ
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€ЄЩ
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:Є*
dtype0§
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Єc
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :м
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.:€€€€€€€€€.*
	num_splitx
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€.z
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€.Д
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€.r
while/lstm_cell_6/TanhTanh while/lstm_cell_6/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€.Л
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0while/lstm_cell_6/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€.К
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.z
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€.o
while/lstm_cell_6/Tanh_1Tanhwhile/lstm_cell_6/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€.П
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0while/lstm_cell_6/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€.r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : м
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.x
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€.Ќ

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€.:€€€€€€€€€.: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
: 
ƒ
“
while_cond_202288887
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_17
3while_while_cond_202288887___redundant_placeholder07
3while_while_cond_202288887___redundant_placeholder17
3while_while_cond_202288887___redundant_placeholder27
3while_while_cond_202288887___redundant_placeholder3
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
@: : : : :€€€€€€€€€.:€€€€€€€€€.: ::::: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
:
й
»
K__inference_sequential_6_layer_call_and_return_conditional_losses_202286069
dense_24_input$
dense_24_202286058:2  
dense_24_202286060: $
dense_25_202286063: 2 
dense_25_202286065:2
identityИҐ dense_24/StatefulPartitionedCallҐ dense_25/StatefulPartitionedCallЕ
 dense_24/StatefulPartitionedCallStatefulPartitionedCalldense_24_inputdense_24_202286058dense_24_202286060*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€. *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_24_layer_call_and_return_conditional_losses_202285928†
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_202286063dense_25_202286065*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dense_25_layer_call_and_return_conditional_losses_202285964|
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€.2М
NoOpNoOp!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€.2: : : : 2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall:[ W
+
_output_shapes
:€€€€€€€€€.2
(
_user_specified_namedense_24_input
м	
 
rnn_6_while_cond_202288312(
$rnn_6_while_rnn_6_while_loop_counter.
*rnn_6_while_rnn_6_while_maximum_iterations
rnn_6_while_placeholder
rnn_6_while_placeholder_1
rnn_6_while_placeholder_2
rnn_6_while_placeholder_3*
&rnn_6_while_less_rnn_6_strided_slice_1C
?rnn_6_while_rnn_6_while_cond_202288312___redundant_placeholder0C
?rnn_6_while_rnn_6_while_cond_202288312___redundant_placeholder1C
?rnn_6_while_rnn_6_while_cond_202288312___redundant_placeholder2C
?rnn_6_while_rnn_6_while_cond_202288312___redundant_placeholder3
rnn_6_while_identity
z
rnn_6/while/LessLessrnn_6_while_placeholder&rnn_6_while_less_rnn_6_strided_slice_1*
T0*
_output_shapes
: W
rnn_6/while/IdentityIdentityrnn_6/while/Less:z:0*
T0
*
_output_shapes
: "5
rnn_6_while_identityrnn_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€.:€€€€€€€€€.: ::::: 
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
:€€€€€€€€€.:-)
'
_output_shapes
:€€€€€€€€€.:

_output_shapes
: :

_output_shapes
:"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ђ
serving_defaultЧ
;
input_70
serving_default_input_7:0€€€€€€€€€.<
dense_270
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:ьЋ
≥
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
Ѕ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	token_emb
pos_emb"
_tf_keras_layer
у
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
√
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
ї
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias"
_tf_keras_layer
ї
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias"
_tf_keras_layer
ё
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
ё
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
 
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
б
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_32ц
+__inference_model_6_layer_call_fn_202286871
+__inference_model_6_layer_call_fn_202287742
+__inference_model_6_layer_call_fn_202287797
+__inference_model_6_layer_call_fn_202287506њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zVtrace_0zWtrace_1zXtrace_2zYtrace_3
Ќ
Ztrace_0
[trace_1
\trace_2
]trace_32в
F__inference_model_6_layer_call_and_return_conditional_losses_202288097
F__inference_model_6_layer_call_and_return_conditional_losses_202288410
F__inference_model_6_layer_call_and_return_conditional_losses_202287565
F__inference_model_6_layer_call_and_return_conditional_losses_202287624њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zZtrace_0z[trace_1z\trace_2z]trace_3
ѕBћ
$__inference__wrapped_model_202285890input_7"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
«
^iter

_beta_1

`beta_2
	adecay
blearning_rate2mэ3mю:m€;mА<mБ=mВ>mГ?mД@mЕAmЖBmЗCmИDmЙEmКFmЛGmМHmНImОJmПKmРLmСMmТNmУOmФPmХ2vЦ3vЧ:vШ;vЩ<vЪ=vЫ>vЬ?vЭ@vЮAvЯBv†Cv°DvҐEv£Fv§Gv•Hv¶IvІJv®Kv©Lv™MvЂNvђOv≠PvЃ"
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
≠
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
Б
itrace_02д
B__inference_token_and_position_embedding_6_layer_call_fn_202288419Э
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zitrace_0
Ь
jtrace_02€
]__inference_token_and_position_embedding_6_layer_call_and_return_conditional_losses_202288443Э
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
Ц
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
Ц
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
≠
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
ё
|trace_0
}trace_12І
9__inference_transformer_encoder_6_layer_call_fn_202288480
9__inference_transformer_encoder_6_layer_call_fn_202288517Ѓ
•≤°
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z|trace_0z}trace_1
Ф
~trace_0
trace_12Ё
T__inference_transformer_encoder_6_layer_call_and_return_conditional_losses_202288644
T__inference_transformer_encoder_6_layer_call_and_return_conditional_losses_202288784Ѓ
•≤°
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z~trace_0ztrace_1
Ъ
А	variables
Бtrainable_variables
Вregularization_losses
Г	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses
Ж_query_dense
З
_key_dense
И_value_dense
Й_softmax
К_dropout_layer
Л_output_dense"
_tf_keras_layer
В
Мlayer_with_weights-0
Мlayer-0
Нlayer_with_weights-1
Нlayer-1
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
Т__call__
+У&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ћ
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses
	Ъaxis
	Jgamma
Kbeta"
_tf_keras_layer
Ћ
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+†&call_and_return_all_conditional_losses
	°axis
	Lgamma
Mbeta"
_tf_keras_layer
√
Ґ	variables
£trainable_variables
§regularization_losses
•	keras_api
¶__call__
+І&call_and_return_all_conditional_losses
®_random_generator"
_tf_keras_layer
√
©	variables
™trainable_variables
Ђregularization_losses
ђ	keras_api
≠__call__
+Ѓ&call_and_return_all_conditional_losses
ѓ_random_generator"
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
њ
∞states
±non_trainable_variables
≤layers
≥metrics
 іlayer_regularization_losses
µlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
З
ґtrace_0
Јtrace_1
Єtrace_2
єtrace_32Ф
)__inference_rnn_6_layer_call_fn_202288795
)__inference_rnn_6_layer_call_fn_202288806
)__inference_rnn_6_layer_call_fn_202288817
)__inference_rnn_6_layer_call_fn_202288828е
№≤Ў
FullArgSpecO
argsGЪD
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
defaultsЪ

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zґtrace_0zЈtrace_1zЄtrace_2zєtrace_3
у
Їtrace_0
їtrace_1
Љtrace_2
љtrace_32А
D__inference_rnn_6_layer_call_and_return_conditional_losses_202288972
D__inference_rnn_6_layer_call_and_return_conditional_losses_202289116
D__inference_rnn_6_layer_call_and_return_conditional_losses_202289260
D__inference_rnn_6_layer_call_and_return_conditional_losses_202289404е
№≤Ў
FullArgSpecO
argsGЪD
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
defaultsЪ

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЇtrace_0zїtrace_1zЉtrace_2zљtrace_3
А
Њ	variables
њtrainable_variables
јregularization_losses
Ѕ	keras_api
¬__call__
+√&call_and_return_all_conditional_losses
ƒ_random_generator
≈
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
≤
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
т
Ћtrace_02”
,__inference_dense_26_layer_call_fn_202289413Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЋtrace_0
Н
ћtrace_02о
G__inference_dense_26_layer_call_and_return_conditional_losses_202289424Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zћtrace_0
!:..2dense_26/kernel
:.2dense_26/bias
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
≤
Ќnon_trainable_variables
ќlayers
ѕmetrics
 –layer_regularization_losses
—layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
т
“trace_02”
,__inference_dense_27_layer_call_fn_202289433Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z“trace_0
Н
”trace_02о
G__inference_dense_27_layer_call_and_return_conditional_losses_202289443Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z”trace_0
!:.2dense_27/kernel
:2dense_27/bias
I:G	Б226token_and_position_embedding_6/embedding_12/embeddings
H:F.226token_and_position_embedding_6/embedding_13/embeddings
O:M2229transformer_encoder_6/multi_head_attention_6/query/kernel
I:G227transformer_encoder_6/multi_head_attention_6/query/bias
M:K2227transformer_encoder_6/multi_head_attention_6/key/kernel
G:E225transformer_encoder_6/multi_head_attention_6/key/bias
O:M2229transformer_encoder_6/multi_head_attention_6/value/kernel
I:G227transformer_encoder_6/multi_head_attention_6/value/bias
Z:X222Dtransformer_encoder_6/multi_head_attention_6/attention_output/kernel
P:N22Btransformer_encoder_6/multi_head_attention_6/attention_output/bias
!:2 2dense_24/kernel
: 2dense_24/bias
!: 22dense_25/kernel
:22dense_25/bias
@:>222transformer_encoder_6/layer_normalization_12/gamma
?:=221transformer_encoder_6/layer_normalization_12/beta
@:>222transformer_encoder_6/layer_normalization_13/gamma
?:=221transformer_encoder_6/layer_normalization_13/beta
+:)	2Є2rnn_6/lstm_cell_6/kernel
5:3	.Є2"rnn_6/lstm_cell_6/recurrent_kernel
%:#Є2rnn_6/lstm_cell_6/bias
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
‘0
’1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
эBъ
+__inference_model_6_layer_call_fn_202286871input_7"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
+__inference_model_6_layer_call_fn_202287742inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
+__inference_model_6_layer_call_fn_202287797inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
+__inference_model_6_layer_call_fn_202287506input_7"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
F__inference_model_6_layer_call_and_return_conditional_losses_202288097inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
F__inference_model_6_layer_call_and_return_conditional_losses_202288410inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ШBХ
F__inference_model_6_layer_call_and_return_conditional_losses_202287565input_7"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ШBХ
F__inference_model_6_layer_call_and_return_conditional_losses_202287624input_7"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ќBЋ
'__inference_signature_wrapper_202287687input_7"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
мBй
B__inference_token_and_position_embedding_6_layer_call_fn_202288419x"Э
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЗBД
]__inference_token_and_position_embedding_6_layer_call_and_return_conditional_losses_202288443x"Э
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
'
<0"
trackable_list_wrapper
'
<0"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
÷non_trainable_variables
„layers
Ўmetrics
 ўlayer_regularization_losses
Џlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
'
=0"
trackable_list_wrapper
'
=0"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
џnon_trainable_variables
№layers
Ёmetrics
 ёlayer_regularization_losses
яlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
щBц
9__inference_transformer_encoder_6_layer_call_fn_202288480inputs"Ѓ
•≤°
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
9__inference_transformer_encoder_6_layer_call_fn_202288517inputs"Ѓ
•≤°
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ФBС
T__inference_transformer_encoder_6_layer_call_and_return_conditional_losses_202288644inputs"Ѓ
•≤°
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ФBС
T__inference_transformer_encoder_6_layer_call_and_return_conditional_losses_202288784inputs"Ѓ
•≤°
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
Є
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
Ш2ХТ
Й≤Е
FullArgSpecx
argspЪm
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
defaultsЪ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ш2ХТ
Й≤Е
FullArgSpecx
argspЪm
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
defaultsЪ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ф
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses
лpartial_output_shape
мfull_output_shape

>kernel
?bias"
_tf_keras_layer
ф
н	variables
оtrainable_variables
пregularization_losses
р	keras_api
с__call__
+т&call_and_return_all_conditional_losses
уpartial_output_shape
фfull_output_shape

@kernel
Abias"
_tf_keras_layer
ф
х	variables
цtrainable_variables
чregularization_losses
ш	keras_api
щ__call__
+ъ&call_and_return_all_conditional_losses
ыpartial_output_shape
ьfull_output_shape

Bkernel
Cbias"
_tf_keras_layer
Ђ
э	variables
юtrainable_variables
€regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses"
_tf_keras_layer
√
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses
Й_random_generator"
_tf_keras_layer
ф
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses
Рpartial_output_shape
Сfull_output_shape

Dkernel
Ebias"
_tf_keras_layer
Ѕ
Т	variables
Уtrainable_variables
Фregularization_losses
Х	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses

Fkernel
Gbias"
_tf_keras_layer
Ѕ
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ы	keras_api
Ь__call__
+Э&call_and_return_all_conditional_losses

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
Є
Юnon_trainable_variables
Яlayers
†metrics
 °layer_regularization_losses
Ґlayer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
э
£trace_0
§trace_1
•trace_2
¶trace_32К
0__inference_sequential_6_layer_call_fn_202285982
0__inference_sequential_6_layer_call_fn_202289456
0__inference_sequential_6_layer_call_fn_202289469
0__inference_sequential_6_layer_call_fn_202286055њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z£trace_0z§trace_1z•trace_2z¶trace_3
й
Іtrace_0
®trace_1
©trace_2
™trace_32ц
K__inference_sequential_6_layer_call_and_return_conditional_losses_202289526
K__inference_sequential_6_layer_call_and_return_conditional_losses_202289583
K__inference_sequential_6_layer_call_and_return_conditional_losses_202286069
K__inference_sequential_6_layer_call_and_return_conditional_losses_202286083њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zІtrace_0z®trace_1z©trace_2z™trace_3
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
Є
Ђnon_trainable_variables
ђlayers
≠metrics
 Ѓlayer_regularization_losses
ѓlayer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
Є
∞non_trainable_variables
±layers
≤metrics
 ≥layer_regularization_losses
іlayer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+†&call_and_return_all_conditional_losses
'†"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
µnon_trainable_variables
ґlayers
Јmetrics
 Єlayer_regularization_losses
єlayer_metrics
Ґ	variables
£trainable_variables
§regularization_losses
¶__call__
+І&call_and_return_all_conditional_losses
'І"call_and_return_conditional_losses"
_generic_user_object
є2ґ≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
є2ґ≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Їnon_trainable_variables
їlayers
Љmetrics
 љlayer_regularization_losses
Њlayer_metrics
©	variables
™trainable_variables
Ђregularization_losses
≠__call__
+Ѓ&call_and_return_all_conditional_losses
'Ѓ"call_and_return_conditional_losses"
_generic_user_object
є2ґ≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
є2ґ≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ҐBЯ
)__inference_rnn_6_layer_call_fn_202288795inputs/0"е
№≤Ў
FullArgSpecO
argsGЪD
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
defaultsЪ

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ҐBЯ
)__inference_rnn_6_layer_call_fn_202288806inputs/0"е
№≤Ў
FullArgSpecO
argsGЪD
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
defaultsЪ

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
†BЭ
)__inference_rnn_6_layer_call_fn_202288817inputs"е
№≤Ў
FullArgSpecO
argsGЪD
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
defaultsЪ

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
†BЭ
)__inference_rnn_6_layer_call_fn_202288828inputs"е
№≤Ў
FullArgSpecO
argsGЪD
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
defaultsЪ

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
љBЇ
D__inference_rnn_6_layer_call_and_return_conditional_losses_202288972inputs/0"е
№≤Ў
FullArgSpecO
argsGЪD
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
defaultsЪ

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
љBЇ
D__inference_rnn_6_layer_call_and_return_conditional_losses_202289116inputs/0"е
№≤Ў
FullArgSpecO
argsGЪD
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
defaultsЪ

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
їBЄ
D__inference_rnn_6_layer_call_and_return_conditional_losses_202289260inputs"е
№≤Ў
FullArgSpecO
argsGЪD
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
defaultsЪ

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
їBЄ
D__inference_rnn_6_layer_call_and_return_conditional_losses_202289404inputs"е
№≤Ў
FullArgSpecO
argsGЪD
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
defaultsЪ

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
Є
њnon_trainable_variables
јlayers
Ѕmetrics
 ¬layer_regularization_losses
√layer_metrics
Њ	variables
њtrainable_variables
јregularization_losses
¬__call__
+√&call_and_return_all_conditional_losses
'√"call_and_return_conditional_losses"
_generic_user_object
Ё
ƒtrace_0
≈trace_12Ґ
/__inference_lstm_cell_6_layer_call_fn_202289600
/__inference_lstm_cell_6_layer_call_fn_202289617љ
і≤∞
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zƒtrace_0z≈trace_1
У
∆trace_0
«trace_12Ў
J__inference_lstm_cell_6_layer_call_and_return_conditional_losses_202289649
J__inference_lstm_cell_6_layer_call_and_return_conditional_losses_202289681љ
і≤∞
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z∆trace_0z«trace_1
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
аBЁ
,__inference_dense_26_layer_call_fn_202289413inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
G__inference_dense_26_layer_call_and_return_conditional_losses_202289424inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
аBЁ
,__inference_dense_27_layer_call_fn_202289433inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
G__inference_dense_27_layer_call_and_return_conditional_losses_202289443inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
»	variables
…	keras_api

 total

Ћcount"
_tf_keras_metric
c
ћ	variables
Ќ	keras_api

ќtotal

ѕcount
–
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
Ж0
З1
И2
Й3
К4
Л5"
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
Є
—non_trainable_variables
“layers
”metrics
 ‘layer_regularization_losses
’layer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
Є
÷non_trainable_variables
„layers
Ўmetrics
 ўlayer_regularization_losses
Џlayer_metrics
н	variables
оtrainable_variables
пregularization_losses
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
Є
џnon_trainable_variables
№layers
Ёmetrics
 ёlayer_regularization_losses
яlayer_metrics
х	variables
цtrainable_variables
чregularization_losses
щ__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
Є
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
э	variables
юtrainable_variables
€regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
µ2≤ѓ
¶≤Ґ
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
µ2≤ѓ
¶≤Ґ
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
є2ґ≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
є2ґ≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
Є
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
Є
пnon_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
Т	variables
Уtrainable_variables
Фregularization_losses
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
т
фtrace_02”
,__inference_dense_24_layer_call_fn_202289690Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zфtrace_0
Н
хtrace_02о
G__inference_dense_24_layer_call_and_return_conditional_losses_202289721Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zхtrace_0
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
Є
цnon_trainable_variables
чlayers
шmetrics
 щlayer_regularization_losses
ъlayer_metrics
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ь__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
т
ыtrace_02”
,__inference_dense_25_layer_call_fn_202289730Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zыtrace_0
Н
ьtrace_02о
G__inference_dense_25_layer_call_and_return_conditional_losses_202289760Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zьtrace_0
 "
trackable_list_wrapper
0
М0
Н1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЙBЖ
0__inference_sequential_6_layer_call_fn_202285982dense_24_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
0__inference_sequential_6_layer_call_fn_202289456inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
0__inference_sequential_6_layer_call_fn_202289469inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЙBЖ
0__inference_sequential_6_layer_call_fn_202286055dense_24_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЬBЩ
K__inference_sequential_6_layer_call_and_return_conditional_losses_202289526inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЬBЩ
K__inference_sequential_6_layer_call_and_return_conditional_losses_202289583inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
§B°
K__inference_sequential_6_layer_call_and_return_conditional_losses_202286069dense_24_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
§B°
K__inference_sequential_6_layer_call_and_return_conditional_losses_202286083dense_24_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ТBП
/__inference_lstm_cell_6_layer_call_fn_202289600inputsstates/0states/1"љ
і≤∞
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ТBП
/__inference_lstm_cell_6_layer_call_fn_202289617inputsstates/0states/1"љ
і≤∞
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
≠B™
J__inference_lstm_cell_6_layer_call_and_return_conditional_losses_202289649inputsstates/0states/1"љ
і≤∞
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
≠B™
J__inference_lstm_cell_6_layer_call_and_return_conditional_losses_202289681inputsstates/0states/1"љ
і≤∞
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
0
 0
Ћ1"
trackable_list_wrapper
.
»	variables"
_generic_user_object
:  (2total
:  (2count
0
ќ0
ѕ1"
trackable_list_wrapper
.
ћ	variables"
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
аBЁ
,__inference_dense_24_layer_call_fn_202289690inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
G__inference_dense_24_layer_call_and_return_conditional_losses_202289721inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
аBЁ
,__inference_dense_25_layer_call_fn_202289730inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
G__inference_dense_25_layer_call_and_return_conditional_losses_202289760inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
&:$..2Adam/dense_26/kernel/m
 :.2Adam/dense_26/bias/m
&:$.2Adam/dense_27/kernel/m
 :2Adam/dense_27/bias/m
N:L	Б22=Adam/token_and_position_embedding_6/embedding_12/embeddings/m
M:K.22=Adam/token_and_position_embedding_6/embedding_13/embeddings/m
T:R222@Adam/transformer_encoder_6/multi_head_attention_6/query/kernel/m
N:L22>Adam/transformer_encoder_6/multi_head_attention_6/query/bias/m
R:P222>Adam/transformer_encoder_6/multi_head_attention_6/key/kernel/m
L:J22<Adam/transformer_encoder_6/multi_head_attention_6/key/bias/m
T:R222@Adam/transformer_encoder_6/multi_head_attention_6/value/kernel/m
N:L22>Adam/transformer_encoder_6/multi_head_attention_6/value/bias/m
_:]222KAdam/transformer_encoder_6/multi_head_attention_6/attention_output/kernel/m
U:S22IAdam/transformer_encoder_6/multi_head_attention_6/attention_output/bias/m
&:$2 2Adam/dense_24/kernel/m
 : 2Adam/dense_24/bias/m
&:$ 22Adam/dense_25/kernel/m
 :22Adam/dense_25/bias/m
E:C229Adam/transformer_encoder_6/layer_normalization_12/gamma/m
D:B228Adam/transformer_encoder_6/layer_normalization_12/beta/m
E:C229Adam/transformer_encoder_6/layer_normalization_13/gamma/m
D:B228Adam/transformer_encoder_6/layer_normalization_13/beta/m
0:.	2Є2Adam/rnn_6/lstm_cell_6/kernel/m
::8	.Є2)Adam/rnn_6/lstm_cell_6/recurrent_kernel/m
*:(Є2Adam/rnn_6/lstm_cell_6/bias/m
&:$..2Adam/dense_26/kernel/v
 :.2Adam/dense_26/bias/v
&:$.2Adam/dense_27/kernel/v
 :2Adam/dense_27/bias/v
N:L	Б22=Adam/token_and_position_embedding_6/embedding_12/embeddings/v
M:K.22=Adam/token_and_position_embedding_6/embedding_13/embeddings/v
T:R222@Adam/transformer_encoder_6/multi_head_attention_6/query/kernel/v
N:L22>Adam/transformer_encoder_6/multi_head_attention_6/query/bias/v
R:P222>Adam/transformer_encoder_6/multi_head_attention_6/key/kernel/v
L:J22<Adam/transformer_encoder_6/multi_head_attention_6/key/bias/v
T:R222@Adam/transformer_encoder_6/multi_head_attention_6/value/kernel/v
N:L22>Adam/transformer_encoder_6/multi_head_attention_6/value/bias/v
_:]222KAdam/transformer_encoder_6/multi_head_attention_6/attention_output/kernel/v
U:S22IAdam/transformer_encoder_6/multi_head_attention_6/attention_output/bias/v
&:$2 2Adam/dense_24/kernel/v
 : 2Adam/dense_24/bias/v
&:$ 22Adam/dense_25/kernel/v
 :22Adam/dense_25/bias/v
E:C229Adam/transformer_encoder_6/layer_normalization_12/gamma/v
D:B228Adam/transformer_encoder_6/layer_normalization_12/beta/v
E:C229Adam/transformer_encoder_6/layer_normalization_13/gamma/v
D:B228Adam/transformer_encoder_6/layer_normalization_13/beta/v
0:.	2Є2Adam/rnn_6/lstm_cell_6/kernel/v
::8	.Є2)Adam/rnn_6/lstm_cell_6/recurrent_kernel/v
*:(Є2Adam/rnn_6/lstm_cell_6/bias/vЂ
$__inference__wrapped_model_202285890В=<>?@ABCDEJKFGHILMNOP23:;0Ґ-
&Ґ#
!К
input_7€€€€€€€€€.
™ "3™0
.
dense_27"К
dense_27€€€€€€€€€ѓ
G__inference_dense_24_layer_call_and_return_conditional_losses_202289721dFG3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€.2
™ ")Ґ&
К
0€€€€€€€€€. 
Ъ З
,__inference_dense_24_layer_call_fn_202289690WFG3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€.2
™ "К€€€€€€€€€. ѓ
G__inference_dense_25_layer_call_and_return_conditional_losses_202289760dHI3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€. 
™ ")Ґ&
К
0€€€€€€€€€.2
Ъ З
,__inference_dense_25_layer_call_fn_202289730WHI3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€. 
™ "К€€€€€€€€€.2І
G__inference_dense_26_layer_call_and_return_conditional_losses_202289424\23/Ґ,
%Ґ"
 К
inputs€€€€€€€€€.
™ "%Ґ"
К
0€€€€€€€€€.
Ъ 
,__inference_dense_26_layer_call_fn_202289413O23/Ґ,
%Ґ"
 К
inputs€€€€€€€€€.
™ "К€€€€€€€€€.І
G__inference_dense_27_layer_call_and_return_conditional_losses_202289443\:;/Ґ,
%Ґ"
 К
inputs€€€€€€€€€.
™ "%Ґ"
К
0€€€€€€€€€
Ъ 
,__inference_dense_27_layer_call_fn_202289433O:;/Ґ,
%Ґ"
 К
inputs€€€€€€€€€.
™ "К€€€€€€€€€ћ
J__inference_lstm_cell_6_layer_call_and_return_conditional_losses_202289649эNOPАҐ}
vҐs
 К
inputs€€€€€€€€€2
KҐH
"К
states/0€€€€€€€€€.
"К
states/1€€€€€€€€€.
p 
™ "sҐp
iҐf
К
0/0€€€€€€€€€.
EЪB
К
0/1/0€€€€€€€€€.
К
0/1/1€€€€€€€€€.
Ъ ћ
J__inference_lstm_cell_6_layer_call_and_return_conditional_losses_202289681эNOPАҐ}
vҐs
 К
inputs€€€€€€€€€2
KҐH
"К
states/0€€€€€€€€€.
"К
states/1€€€€€€€€€.
p
™ "sҐp
iҐf
К
0/0€€€€€€€€€.
EЪB
К
0/1/0€€€€€€€€€.
К
0/1/1€€€€€€€€€.
Ъ °
/__inference_lstm_cell_6_layer_call_fn_202289600нNOPАҐ}
vҐs
 К
inputs€€€€€€€€€2
KҐH
"К
states/0€€€€€€€€€.
"К
states/1€€€€€€€€€.
p 
™ "cҐ`
К
0€€€€€€€€€.
AЪ>
К
1/0€€€€€€€€€.
К
1/1€€€€€€€€€.°
/__inference_lstm_cell_6_layer_call_fn_202289617нNOPАҐ}
vҐs
 К
inputs€€€€€€€€€2
KҐH
"К
states/0€€€€€€€€€.
"К
states/1€€€€€€€€€.
p
™ "cҐ`
К
0€€€€€€€€€.
AЪ>
К
1/0€€€€€€€€€.
К
1/1€€€€€€€€€.∆
F__inference_model_6_layer_call_and_return_conditional_losses_202287565|=<>?@ABCDEJKFGHILMNOP23:;8Ґ5
.Ґ+
!К
input_7€€€€€€€€€.
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ∆
F__inference_model_6_layer_call_and_return_conditional_losses_202287624|=<>?@ABCDEJKFGHILMNOP23:;8Ґ5
.Ґ+
!К
input_7€€€€€€€€€.
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ≈
F__inference_model_6_layer_call_and_return_conditional_losses_202288097{=<>?@ABCDEJKFGHILMNOP23:;7Ґ4
-Ґ*
 К
inputs€€€€€€€€€.
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ≈
F__inference_model_6_layer_call_and_return_conditional_losses_202288410{=<>?@ABCDEJKFGHILMNOP23:;7Ґ4
-Ґ*
 К
inputs€€€€€€€€€.
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ю
+__inference_model_6_layer_call_fn_202286871o=<>?@ABCDEJKFGHILMNOP23:;8Ґ5
.Ґ+
!К
input_7€€€€€€€€€.
p 

 
™ "К€€€€€€€€€Ю
+__inference_model_6_layer_call_fn_202287506o=<>?@ABCDEJKFGHILMNOP23:;8Ґ5
.Ґ+
!К
input_7€€€€€€€€€.
p

 
™ "К€€€€€€€€€Э
+__inference_model_6_layer_call_fn_202287742n=<>?@ABCDEJKFGHILMNOP23:;7Ґ4
-Ґ*
 К
inputs€€€€€€€€€.
p 

 
™ "К€€€€€€€€€Э
+__inference_model_6_layer_call_fn_202287797n=<>?@ABCDEJKFGHILMNOP23:;7Ґ4
-Ґ*
 К
inputs€€€€€€€€€.
p

 
™ "К€€€€€€€€€ 
D__inference_rnn_6_layer_call_and_return_conditional_losses_202288972БNOPSҐP
IҐF
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€2

 
p 

 

 
™ "%Ґ"
К
0€€€€€€€€€.
Ъ  
D__inference_rnn_6_layer_call_and_return_conditional_losses_202289116БNOPSҐP
IҐF
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€2

 
p

 

 
™ "%Ґ"
К
0€€€€€€€€€.
Ъ є
D__inference_rnn_6_layer_call_and_return_conditional_losses_202289260qNOPCҐ@
9Ґ6
$К!
inputs€€€€€€€€€.2

 
p 

 

 
™ "%Ґ"
К
0€€€€€€€€€.
Ъ є
D__inference_rnn_6_layer_call_and_return_conditional_losses_202289404qNOPCҐ@
9Ґ6
$К!
inputs€€€€€€€€€.2

 
p

 

 
™ "%Ґ"
К
0€€€€€€€€€.
Ъ °
)__inference_rnn_6_layer_call_fn_202288795tNOPSҐP
IҐF
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€2

 
p 

 

 
™ "К€€€€€€€€€.°
)__inference_rnn_6_layer_call_fn_202288806tNOPSҐP
IҐF
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€2

 
p

 

 
™ "К€€€€€€€€€.С
)__inference_rnn_6_layer_call_fn_202288817dNOPCҐ@
9Ґ6
$К!
inputs€€€€€€€€€.2

 
p 

 

 
™ "К€€€€€€€€€.С
)__inference_rnn_6_layer_call_fn_202288828dNOPCҐ@
9Ґ6
$К!
inputs€€€€€€€€€.2

 
p

 

 
™ "К€€€€€€€€€.≈
K__inference_sequential_6_layer_call_and_return_conditional_losses_202286069vFGHICҐ@
9Ґ6
,К)
dense_24_input€€€€€€€€€.2
p 

 
™ ")Ґ&
К
0€€€€€€€€€.2
Ъ ≈
K__inference_sequential_6_layer_call_and_return_conditional_losses_202286083vFGHICҐ@
9Ґ6
,К)
dense_24_input€€€€€€€€€.2
p

 
™ ")Ґ&
К
0€€€€€€€€€.2
Ъ љ
K__inference_sequential_6_layer_call_and_return_conditional_losses_202289526nFGHI;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€.2
p 

 
™ ")Ґ&
К
0€€€€€€€€€.2
Ъ љ
K__inference_sequential_6_layer_call_and_return_conditional_losses_202289583nFGHI;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€.2
p

 
™ ")Ґ&
К
0€€€€€€€€€.2
Ъ Э
0__inference_sequential_6_layer_call_fn_202285982iFGHICҐ@
9Ґ6
,К)
dense_24_input€€€€€€€€€.2
p 

 
™ "К€€€€€€€€€.2Э
0__inference_sequential_6_layer_call_fn_202286055iFGHICҐ@
9Ґ6
,К)
dense_24_input€€€€€€€€€.2
p

 
™ "К€€€€€€€€€.2Х
0__inference_sequential_6_layer_call_fn_202289456aFGHI;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€.2
p 

 
™ "К€€€€€€€€€.2Х
0__inference_sequential_6_layer_call_fn_202289469aFGHI;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€.2
p

 
™ "К€€€€€€€€€.2є
'__inference_signature_wrapper_202287687Н=<>?@ABCDEJKFGHILMNOP23:;;Ґ8
Ґ 
1™.
,
input_7!К
input_7€€€€€€€€€."3™0
.
dense_27"К
dense_27€€€€€€€€€Љ
]__inference_token_and_position_embedding_6_layer_call_and_return_conditional_losses_202288443[=<*Ґ'
 Ґ
К
x€€€€€€€€€.
™ ")Ґ&
К
0€€€€€€€€€.2
Ъ Ф
B__inference_token_and_position_embedding_6_layer_call_fn_202288419N=<*Ґ'
 Ґ
К
x€€€€€€€€€.
™ "К€€€€€€€€€.2ќ
T__inference_transformer_encoder_6_layer_call_and_return_conditional_losses_202288644v>?@ABCDEJKFGHILM7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€.2
p 
™ ")Ґ&
К
0€€€€€€€€€.2
Ъ ќ
T__inference_transformer_encoder_6_layer_call_and_return_conditional_losses_202288784v>?@ABCDEJKFGHILM7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€.2
p
™ ")Ґ&
К
0€€€€€€€€€.2
Ъ ¶
9__inference_transformer_encoder_6_layer_call_fn_202288480i>?@ABCDEJKFGHILM7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€.2
p 
™ "К€€€€€€€€€.2¶
9__inference_transformer_encoder_6_layer_call_fn_202288517i>?@ABCDEJKFGHILM7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€.2
p
™ "К€€€€€€€€€.2