Íâ
Û
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
 "serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8Ñ·
Æ
7Adam/transformer_encoder_1/layer_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*H
shared_name97Adam/transformer_encoder_1/layer_normalization_3/beta/v
¿
KAdam/transformer_encoder_1/layer_normalization_3/beta/v/Read/ReadVariableOpReadVariableOp7Adam/transformer_encoder_1/layer_normalization_3/beta/v*
_output_shapes
:2*
dtype0
È
8Adam/transformer_encoder_1/layer_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*I
shared_name:8Adam/transformer_encoder_1/layer_normalization_3/gamma/v
Á
LAdam/transformer_encoder_1/layer_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder_1/layer_normalization_3/gamma/v*
_output_shapes
:2*
dtype0
Æ
7Adam/transformer_encoder_1/layer_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*H
shared_name97Adam/transformer_encoder_1/layer_normalization_2/beta/v
¿
KAdam/transformer_encoder_1/layer_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp7Adam/transformer_encoder_1/layer_normalization_2/beta/v*
_output_shapes
:2*
dtype0
È
8Adam/transformer_encoder_1/layer_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*I
shared_name:8Adam/transformer_encoder_1/layer_normalization_2/gamma/v
Á
LAdam/transformer_encoder_1/layer_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder_1/layer_normalization_2/gamma/v*
_output_shapes
:2*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:2*
dtype0

Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 2*&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes

: 2*
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
: *
dtype0

Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2 *&
shared_nameAdam/dense_4/kernel/v

)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes

:2 *
dtype0
ê
IAdam/transformer_encoder_1/multi_head_attention_1/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*Z
shared_nameKIAdam/transformer_encoder_1/multi_head_attention_1/attention_output/bias/v
ã
]Adam/transformer_encoder_1/multi_head_attention_1/attention_output/bias/v/Read/ReadVariableOpReadVariableOpIAdam/transformer_encoder_1/multi_head_attention_1/attention_output/bias/v*
_output_shapes
:2*
dtype0
ö
KAdam/transformer_encoder_1/multi_head_attention_1/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*\
shared_nameMKAdam/transformer_encoder_1/multi_head_attention_1/attention_output/kernel/v
ï
_Adam/transformer_encoder_1/multi_head_attention_1/attention_output/kernel/v/Read/ReadVariableOpReadVariableOpKAdam/transformer_encoder_1/multi_head_attention_1/attention_output/kernel/v*"
_output_shapes
:22*
dtype0
Ø
>Adam/transformer_encoder_1/multi_head_attention_1/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_1/multi_head_attention_1/value/bias/v
Ñ
RAdam/transformer_encoder_1/multi_head_attention_1/value/bias/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_1/multi_head_attention_1/value/bias/v*
_output_shapes

:2*
dtype0
à
@Adam/transformer_encoder_1/multi_head_attention_1/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_1/multi_head_attention_1/value/kernel/v
Ù
TAdam/transformer_encoder_1/multi_head_attention_1/value/kernel/v/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_1/multi_head_attention_1/value/kernel/v*"
_output_shapes
:22*
dtype0
Ô
<Adam/transformer_encoder_1/multi_head_attention_1/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*M
shared_name><Adam/transformer_encoder_1/multi_head_attention_1/key/bias/v
Í
PAdam/transformer_encoder_1/multi_head_attention_1/key/bias/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_encoder_1/multi_head_attention_1/key/bias/v*
_output_shapes

:2*
dtype0
Ü
>Adam/transformer_encoder_1/multi_head_attention_1/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*O
shared_name@>Adam/transformer_encoder_1/multi_head_attention_1/key/kernel/v
Õ
RAdam/transformer_encoder_1/multi_head_attention_1/key/kernel/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_1/multi_head_attention_1/key/kernel/v*"
_output_shapes
:22*
dtype0
Ø
>Adam/transformer_encoder_1/multi_head_attention_1/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_1/multi_head_attention_1/query/bias/v
Ñ
RAdam/transformer_encoder_1/multi_head_attention_1/query/bias/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_1/multi_head_attention_1/query/bias/v*
_output_shapes

:2*
dtype0
à
@Adam/transformer_encoder_1/multi_head_attention_1/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_1/multi_head_attention_1/query/kernel/v
Ù
TAdam/transformer_encoder_1/multi_head_attention_1/query/kernel/v/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_1/multi_head_attention_1/query/kernel/v*"
_output_shapes
:22*
dtype0
Ô
<Adam/token_and_position_embedding_1/embedding_3/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.2*M
shared_name><Adam/token_and_position_embedding_1/embedding_3/embeddings/v
Í
PAdam/token_and_position_embedding_1/embedding_3/embeddings/v/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_1/embedding_3/embeddings/v*
_output_shapes

:.2*
dtype0
Õ
<Adam/token_and_position_embedding_1/embedding_2/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*M
shared_name><Adam/token_and_position_embedding_1/embedding_2/embeddings/v
Î
PAdam/token_and_position_embedding_1/embedding_2/embeddings/v/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_1/embedding_2/embeddings/v*
_output_shapes
:	2*
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:*
dtype0

Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:.*
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:.*
dtype0

Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2.*&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes

:2.*
dtype0
Æ
7Adam/transformer_encoder_1/layer_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*H
shared_name97Adam/transformer_encoder_1/layer_normalization_3/beta/m
¿
KAdam/transformer_encoder_1/layer_normalization_3/beta/m/Read/ReadVariableOpReadVariableOp7Adam/transformer_encoder_1/layer_normalization_3/beta/m*
_output_shapes
:2*
dtype0
È
8Adam/transformer_encoder_1/layer_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*I
shared_name:8Adam/transformer_encoder_1/layer_normalization_3/gamma/m
Á
LAdam/transformer_encoder_1/layer_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder_1/layer_normalization_3/gamma/m*
_output_shapes
:2*
dtype0
Æ
7Adam/transformer_encoder_1/layer_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*H
shared_name97Adam/transformer_encoder_1/layer_normalization_2/beta/m
¿
KAdam/transformer_encoder_1/layer_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp7Adam/transformer_encoder_1/layer_normalization_2/beta/m*
_output_shapes
:2*
dtype0
È
8Adam/transformer_encoder_1/layer_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*I
shared_name:8Adam/transformer_encoder_1/layer_normalization_2/gamma/m
Á
LAdam/transformer_encoder_1/layer_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp8Adam/transformer_encoder_1/layer_normalization_2/gamma/m*
_output_shapes
:2*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:2*
dtype0

Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 2*&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes

: 2*
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
: *
dtype0

Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2 *&
shared_nameAdam/dense_4/kernel/m

)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes

:2 *
dtype0
ê
IAdam/transformer_encoder_1/multi_head_attention_1/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*Z
shared_nameKIAdam/transformer_encoder_1/multi_head_attention_1/attention_output/bias/m
ã
]Adam/transformer_encoder_1/multi_head_attention_1/attention_output/bias/m/Read/ReadVariableOpReadVariableOpIAdam/transformer_encoder_1/multi_head_attention_1/attention_output/bias/m*
_output_shapes
:2*
dtype0
ö
KAdam/transformer_encoder_1/multi_head_attention_1/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*\
shared_nameMKAdam/transformer_encoder_1/multi_head_attention_1/attention_output/kernel/m
ï
_Adam/transformer_encoder_1/multi_head_attention_1/attention_output/kernel/m/Read/ReadVariableOpReadVariableOpKAdam/transformer_encoder_1/multi_head_attention_1/attention_output/kernel/m*"
_output_shapes
:22*
dtype0
Ø
>Adam/transformer_encoder_1/multi_head_attention_1/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_1/multi_head_attention_1/value/bias/m
Ñ
RAdam/transformer_encoder_1/multi_head_attention_1/value/bias/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_1/multi_head_attention_1/value/bias/m*
_output_shapes

:2*
dtype0
à
@Adam/transformer_encoder_1/multi_head_attention_1/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_1/multi_head_attention_1/value/kernel/m
Ù
TAdam/transformer_encoder_1/multi_head_attention_1/value/kernel/m/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_1/multi_head_attention_1/value/kernel/m*"
_output_shapes
:22*
dtype0
Ô
<Adam/transformer_encoder_1/multi_head_attention_1/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*M
shared_name><Adam/transformer_encoder_1/multi_head_attention_1/key/bias/m
Í
PAdam/transformer_encoder_1/multi_head_attention_1/key/bias/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_encoder_1/multi_head_attention_1/key/bias/m*
_output_shapes

:2*
dtype0
Ü
>Adam/transformer_encoder_1/multi_head_attention_1/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*O
shared_name@>Adam/transformer_encoder_1/multi_head_attention_1/key/kernel/m
Õ
RAdam/transformer_encoder_1/multi_head_attention_1/key/kernel/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_1/multi_head_attention_1/key/kernel/m*"
_output_shapes
:22*
dtype0
Ø
>Adam/transformer_encoder_1/multi_head_attention_1/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*O
shared_name@>Adam/transformer_encoder_1/multi_head_attention_1/query/bias/m
Ñ
RAdam/transformer_encoder_1/multi_head_attention_1/query/bias/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_encoder_1/multi_head_attention_1/query/bias/m*
_output_shapes

:2*
dtype0
à
@Adam/transformer_encoder_1/multi_head_attention_1/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*Q
shared_nameB@Adam/transformer_encoder_1/multi_head_attention_1/query/kernel/m
Ù
TAdam/transformer_encoder_1/multi_head_attention_1/query/kernel/m/Read/ReadVariableOpReadVariableOp@Adam/transformer_encoder_1/multi_head_attention_1/query/kernel/m*"
_output_shapes
:22*
dtype0
Ô
<Adam/token_and_position_embedding_1/embedding_3/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.2*M
shared_name><Adam/token_and_position_embedding_1/embedding_3/embeddings/m
Í
PAdam/token_and_position_embedding_1/embedding_3/embeddings/m/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_1/embedding_3/embeddings/m*
_output_shapes

:.2*
dtype0
Õ
<Adam/token_and_position_embedding_1/embedding_2/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*M
shared_name><Adam/token_and_position_embedding_1/embedding_2/embeddings/m
Î
PAdam/token_and_position_embedding_1/embedding_2/embeddings/m/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_1/embedding_2/embeddings/m*
_output_shapes
:	2*
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:*
dtype0

Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:.*
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:.*
dtype0

Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2.*&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes

:2.*
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
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
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
¸
0transformer_encoder_1/layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*A
shared_name20transformer_encoder_1/layer_normalization_3/beta
±
Dtransformer_encoder_1/layer_normalization_3/beta/Read/ReadVariableOpReadVariableOp0transformer_encoder_1/layer_normalization_3/beta*
_output_shapes
:2*
dtype0
º
1transformer_encoder_1/layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*B
shared_name31transformer_encoder_1/layer_normalization_3/gamma
³
Etransformer_encoder_1/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOp1transformer_encoder_1/layer_normalization_3/gamma*
_output_shapes
:2*
dtype0
¸
0transformer_encoder_1/layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*A
shared_name20transformer_encoder_1/layer_normalization_2/beta
±
Dtransformer_encoder_1/layer_normalization_2/beta/Read/ReadVariableOpReadVariableOp0transformer_encoder_1/layer_normalization_2/beta*
_output_shapes
:2*
dtype0
º
1transformer_encoder_1/layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*B
shared_name31transformer_encoder_1/layer_normalization_2/gamma
³
Etransformer_encoder_1/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOp1transformer_encoder_1/layer_normalization_2/gamma*
_output_shapes
:2*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:2*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 2*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

: 2*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
: *
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2 *
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:2 *
dtype0
Ü
Btransformer_encoder_1/multi_head_attention_1/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*S
shared_nameDBtransformer_encoder_1/multi_head_attention_1/attention_output/bias
Õ
Vtransformer_encoder_1/multi_head_attention_1/attention_output/bias/Read/ReadVariableOpReadVariableOpBtransformer_encoder_1/multi_head_attention_1/attention_output/bias*
_output_shapes
:2*
dtype0
è
Dtransformer_encoder_1/multi_head_attention_1/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*U
shared_nameFDtransformer_encoder_1/multi_head_attention_1/attention_output/kernel
á
Xtransformer_encoder_1/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpReadVariableOpDtransformer_encoder_1/multi_head_attention_1/attention_output/kernel*"
_output_shapes
:22*
dtype0
Ê
7transformer_encoder_1/multi_head_attention_1/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*H
shared_name97transformer_encoder_1/multi_head_attention_1/value/bias
Ã
Ktransformer_encoder_1/multi_head_attention_1/value/bias/Read/ReadVariableOpReadVariableOp7transformer_encoder_1/multi_head_attention_1/value/bias*
_output_shapes

:2*
dtype0
Ò
9transformer_encoder_1/multi_head_attention_1/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*J
shared_name;9transformer_encoder_1/multi_head_attention_1/value/kernel
Ë
Mtransformer_encoder_1/multi_head_attention_1/value/kernel/Read/ReadVariableOpReadVariableOp9transformer_encoder_1/multi_head_attention_1/value/kernel*"
_output_shapes
:22*
dtype0
Æ
5transformer_encoder_1/multi_head_attention_1/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*F
shared_name75transformer_encoder_1/multi_head_attention_1/key/bias
¿
Itransformer_encoder_1/multi_head_attention_1/key/bias/Read/ReadVariableOpReadVariableOp5transformer_encoder_1/multi_head_attention_1/key/bias*
_output_shapes

:2*
dtype0
Î
7transformer_encoder_1/multi_head_attention_1/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*H
shared_name97transformer_encoder_1/multi_head_attention_1/key/kernel
Ç
Ktransformer_encoder_1/multi_head_attention_1/key/kernel/Read/ReadVariableOpReadVariableOp7transformer_encoder_1/multi_head_attention_1/key/kernel*"
_output_shapes
:22*
dtype0
Ê
7transformer_encoder_1/multi_head_attention_1/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*H
shared_name97transformer_encoder_1/multi_head_attention_1/query/bias
Ã
Ktransformer_encoder_1/multi_head_attention_1/query/bias/Read/ReadVariableOpReadVariableOp7transformer_encoder_1/multi_head_attention_1/query/bias*
_output_shapes

:2*
dtype0
Ò
9transformer_encoder_1/multi_head_attention_1/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22*J
shared_name;9transformer_encoder_1/multi_head_attention_1/query/kernel
Ë
Mtransformer_encoder_1/multi_head_attention_1/query/kernel/Read/ReadVariableOpReadVariableOp9transformer_encoder_1/multi_head_attention_1/query/kernel*"
_output_shapes
:22*
dtype0
Æ
5token_and_position_embedding_1/embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.2*F
shared_name75token_and_position_embedding_1/embedding_3/embeddings
¿
Itoken_and_position_embedding_1/embedding_3/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_1/embedding_3/embeddings*
_output_shapes

:.2*
dtype0
Ç
5token_and_position_embedding_1/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*F
shared_name75token_and_position_embedding_1/embedding_2/embeddings
À
Itoken_and_position_embedding_1/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_1/embedding_2/embeddings*
_output_shapes
:	2*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:.*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:.*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:.*
dtype0
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2.*
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:2.*
dtype0
z
serving_default_input_2Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ.
ò	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_25token_and_position_embedding_1/embedding_3/embeddings5token_and_position_embedding_1/embedding_2/embeddings9transformer_encoder_1/multi_head_attention_1/query/kernel7transformer_encoder_1/multi_head_attention_1/query/bias7transformer_encoder_1/multi_head_attention_1/key/kernel5transformer_encoder_1/multi_head_attention_1/key/bias9transformer_encoder_1/multi_head_attention_1/value/kernel7transformer_encoder_1/multi_head_attention_1/value/biasDtransformer_encoder_1/multi_head_attention_1/attention_output/kernelBtransformer_encoder_1/multi_head_attention_1/attention_output/bias1transformer_encoder_1/layer_normalization_2/gamma0transformer_encoder_1/layer_normalization_2/betadense_4/kerneldense_4/biasdense_5/kerneldense_5/bias1transformer_encoder_1/layer_normalization_3/gamma0transformer_encoder_1/layer_normalization_3/betadense_6/kerneldense_6/biasdense_7/kerneldense_7/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 */
f*R(
&__inference_signature_wrapper_45293310

NoOpNoOp
µ½
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ï¼
valueä¼Bà¼ BØ¼

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
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

$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses* 
¦
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias*
¦
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias*
ª
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
018
119
820
921*
ª
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
018
119
820
921*
* 
°
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Qtrace_0
Rtrace_1
Strace_2
Ttrace_3* 
6
Utrace_0
Vtrace_1
Wtrace_2
Xtrace_3* 
* 
ü
Yiter

Zbeta_1

[beta_2
	\decay
]learning_rate0mæ1mç8mè9mé:mê;më<mì=mí>mî?mï@mðAmñBmòCmóDmôEmõFmöGm÷HmøImùJmúKmû0vü1vý8vþ9vÿ:v;v<v=v>v?v@vAvBvCvDvEvFvGvHvIvJvKv*

^serving_default* 

:0
;1*

:0
;1*
* 

_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

dtrace_0* 

etrace_0* 
 
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses
:
embeddings*
 
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses
;
embeddings*
z
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
K15*
z
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
K15*
* 

rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

wtrace_0
xtrace_1* 

ytrace_0
ztrace_1* 

{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+&call_and_return_all_conditional_losses
_query_dense

_key_dense
_value_dense
_softmax
_dropout_layer
_output_dense*
è
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
¶
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	Hgamma
Ibeta*
¶
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	Jgamma
Kbeta*
¬
	variables
trainable_variables
regularization_losses
 	keras_api
¡__call__
+¢&call_and_return_all_conditional_losses
£_random_generator* 
¬
¤	variables
¥trainable_variables
¦regularization_losses
§	keras_api
¨__call__
+©&call_and_return_all_conditional_losses
ª_random_generator* 
* 
* 
* 

«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 

°trace_0* 

±trace_0* 

00
11*

00
11*
* 

²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

·trace_0* 

¸trace_0* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

80
91*

80
91*
* 

¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

¾trace_0* 

¿trace_0* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5token_and_position_embedding_1/embedding_2/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5token_and_position_embedding_1/embedding_3/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE9transformer_encoder_1/multi_head_attention_1/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7transformer_encoder_1/multi_head_attention_1/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7transformer_encoder_1/multi_head_attention_1/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5transformer_encoder_1/multi_head_attention_1/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE9transformer_encoder_1/multi_head_attention_1/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7transformer_encoder_1/multi_head_attention_1/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEDtransformer_encoder_1/multi_head_attention_1/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEBtransformer_encoder_1/multi_head_attention_1/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_4/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_4/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_5/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_5/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1transformer_encoder_1/layer_normalization_2/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0transformer_encoder_1/layer_normalization_2/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1transformer_encoder_1/layer_normalization_3/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0transformer_encoder_1/layer_normalization_3/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

À0
Á1
Â2*
* 
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

:0*

:0*
* 

Ãnon_trainable_variables
Älayers
Åmetrics
 Ælayer_regularization_losses
Çlayer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses*
* 
* 

;0*

;0*
* 

Ènon_trainable_variables
Élayers
Êmetrics
 Ëlayer_regularization_losses
Ìlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses*
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
<0
=1
>2
?3
@4
A5
B6
C7*
<
<0
=1
>2
?3
@4
A5
B6
C7*
* 

Ínon_trainable_variables
Îlayers
Ïmetrics
 Ðlayer_regularization_losses
Ñlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
ß
Ò	variables
Ótrainable_variables
Ôregularization_losses
Õ	keras_api
Ö__call__
+×&call_and_return_all_conditional_losses
Øpartial_output_shape
Ùfull_output_shape

<kernel
=bias*
ß
Ú	variables
Ûtrainable_variables
Üregularization_losses
Ý	keras_api
Þ__call__
+ß&call_and_return_all_conditional_losses
àpartial_output_shape
áfull_output_shape

>kernel
?bias*
ß
â	variables
ãtrainable_variables
äregularization_losses
å	keras_api
æ__call__
+ç&call_and_return_all_conditional_losses
èpartial_output_shape
éfull_output_shape

@kernel
Abias*

ê	variables
ëtrainable_variables
ìregularization_losses
í	keras_api
î__call__
+ï&call_and_return_all_conditional_losses* 
¬
ð	variables
ñtrainable_variables
òregularization_losses
ó	keras_api
ô__call__
+õ&call_and_return_all_conditional_losses
ö_random_generator* 
ß
÷	variables
øtrainable_variables
ùregularization_losses
ú	keras_api
û__call__
+ü&call_and_return_all_conditional_losses
ýpartial_output_shape
þfull_output_shape

Bkernel
Cbias*
¬
ÿ	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Dkernel
Ebias*
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Fkernel
Gbias*
 
D0
E1
F2
G3*
 
D0
E1
F2
G3*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 

H0
I1*

H0
I1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 

J0
K1*

J0
K1*
* 

non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

¢non_trainable_variables
£layers
¤metrics
 ¥layer_regularization_losses
¦layer_metrics
	variables
trainable_variables
regularization_losses
¡__call__
+¢&call_and_return_all_conditional_losses
'¢"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

§non_trainable_variables
¨layers
©metrics
 ªlayer_regularization_losses
«layer_metrics
¤	variables
¥trainable_variables
¦regularization_losses
¨__call__
+©&call_and_return_all_conditional_losses
'©"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
¬	variables
­	keras_api

®total

¯count*
M
°	variables
±	keras_api

²total

³count
´
_fn_kwargs*
M
µ	variables
¶	keras_api

·total

¸count
¹
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
0
1
2
3
4
5*
* 
* 
* 

<0
=1*

<0
=1*
* 

ºnon_trainable_variables
»layers
¼metrics
 ½layer_regularization_losses
¾layer_metrics
Ò	variables
Ótrainable_variables
Ôregularization_losses
Ö__call__
+×&call_and_return_all_conditional_losses
'×"call_and_return_conditional_losses*
* 
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
¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
Ú	variables
Ûtrainable_variables
Üregularization_losses
Þ__call__
+ß&call_and_return_all_conditional_losses
'ß"call_and_return_conditional_losses*
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
Änon_trainable_variables
Ålayers
Æmetrics
 Çlayer_regularization_losses
Èlayer_metrics
â	variables
ãtrainable_variables
äregularization_losses
æ__call__
+ç&call_and_return_all_conditional_losses
'ç"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 

Énon_trainable_variables
Êlayers
Ëmetrics
 Ìlayer_regularization_losses
Ílayer_metrics
ê	variables
ëtrainable_variables
ìregularization_losses
î__call__
+ï&call_and_return_all_conditional_losses
'ï"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

Înon_trainable_variables
Ïlayers
Ðmetrics
 Ñlayer_regularization_losses
Òlayer_metrics
ð	variables
ñtrainable_variables
òregularization_losses
ô__call__
+õ&call_and_return_all_conditional_losses
'õ"call_and_return_conditional_losses* 
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
Ónon_trainable_variables
Ôlayers
Õmetrics
 Ölayer_regularization_losses
×layer_metrics
÷	variables
øtrainable_variables
ùregularization_losses
û__call__
+ü&call_and_return_all_conditional_losses
'ü"call_and_return_conditional_losses*
* 
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
Ønon_trainable_variables
Ùlayers
Úmetrics
 Ûlayer_regularization_losses
Ülayer_metrics
ÿ	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Ýtrace_0* 

Þtrace_0* 

F0
G1*

F0
G1*
* 

ßnon_trainable_variables
àlayers
ámetrics
 âlayer_regularization_losses
ãlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

ätrace_0* 

åtrace_0* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
®0
¯1*

¬	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

²0
³1*

°	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

·0
¸1*

µ	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/token_and_position_embedding_1/embedding_2/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/token_and_position_embedding_1/embedding_3/embeddings/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_1/multi_head_attention_1/query/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_1/multi_head_attention_1/query/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_1/multi_head_attention_1/key/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/transformer_encoder_1/multi_head_attention_1/key/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_1/multi_head_attention_1/value/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_1/multi_head_attention_1/value/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¨¡
VARIABLE_VALUEKAdam/transformer_encoder_1/multi_head_attention_1/attention_output/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¦
VARIABLE_VALUEIAdam/transformer_encoder_1/multi_head_attention_1/attention_output/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_4/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_4/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_5/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_5/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/transformer_encoder_1/layer_normalization_2/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE7Adam/transformer_encoder_1/layer_normalization_2/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/transformer_encoder_1/layer_normalization_3/gamma/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE7Adam/transformer_encoder_1/layer_normalization_3/beta/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/token_and_position_embedding_1/embedding_2/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/token_and_position_embedding_1/embedding_3/embeddings/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_1/multi_head_attention_1/query/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_1/multi_head_attention_1/query/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_1/multi_head_attention_1/key/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/transformer_encoder_1/multi_head_attention_1/key/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE@Adam/transformer_encoder_1/multi_head_attention_1/value/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE>Adam/transformer_encoder_1/multi_head_attention_1/value/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¨¡
VARIABLE_VALUEKAdam/transformer_encoder_1/multi_head_attention_1/attention_output/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¦
VARIABLE_VALUEIAdam/transformer_encoder_1/multi_head_attention_1/attention_output/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_4/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_4/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_5/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_5/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/transformer_encoder_1/layer_normalization_2/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE7Adam/transformer_encoder_1/layer_normalization_2/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/transformer_encoder_1/layer_normalization_3/gamma/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE7Adam/transformer_encoder_1/layer_normalization_3/beta/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ï'
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpItoken_and_position_embedding_1/embedding_2/embeddings/Read/ReadVariableOpItoken_and_position_embedding_1/embedding_3/embeddings/Read/ReadVariableOpMtransformer_encoder_1/multi_head_attention_1/query/kernel/Read/ReadVariableOpKtransformer_encoder_1/multi_head_attention_1/query/bias/Read/ReadVariableOpKtransformer_encoder_1/multi_head_attention_1/key/kernel/Read/ReadVariableOpItransformer_encoder_1/multi_head_attention_1/key/bias/Read/ReadVariableOpMtransformer_encoder_1/multi_head_attention_1/value/kernel/Read/ReadVariableOpKtransformer_encoder_1/multi_head_attention_1/value/bias/Read/ReadVariableOpXtransformer_encoder_1/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpVtransformer_encoder_1/multi_head_attention_1/attention_output/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpEtransformer_encoder_1/layer_normalization_2/gamma/Read/ReadVariableOpDtransformer_encoder_1/layer_normalization_2/beta/Read/ReadVariableOpEtransformer_encoder_1/layer_normalization_3/gamma/Read/ReadVariableOpDtransformer_encoder_1/layer_normalization_3/beta/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOpPAdam/token_and_position_embedding_1/embedding_2/embeddings/m/Read/ReadVariableOpPAdam/token_and_position_embedding_1/embedding_3/embeddings/m/Read/ReadVariableOpTAdam/transformer_encoder_1/multi_head_attention_1/query/kernel/m/Read/ReadVariableOpRAdam/transformer_encoder_1/multi_head_attention_1/query/bias/m/Read/ReadVariableOpRAdam/transformer_encoder_1/multi_head_attention_1/key/kernel/m/Read/ReadVariableOpPAdam/transformer_encoder_1/multi_head_attention_1/key/bias/m/Read/ReadVariableOpTAdam/transformer_encoder_1/multi_head_attention_1/value/kernel/m/Read/ReadVariableOpRAdam/transformer_encoder_1/multi_head_attention_1/value/bias/m/Read/ReadVariableOp_Adam/transformer_encoder_1/multi_head_attention_1/attention_output/kernel/m/Read/ReadVariableOp]Adam/transformer_encoder_1/multi_head_attention_1/attention_output/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOpLAdam/transformer_encoder_1/layer_normalization_2/gamma/m/Read/ReadVariableOpKAdam/transformer_encoder_1/layer_normalization_2/beta/m/Read/ReadVariableOpLAdam/transformer_encoder_1/layer_normalization_3/gamma/m/Read/ReadVariableOpKAdam/transformer_encoder_1/layer_normalization_3/beta/m/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOpPAdam/token_and_position_embedding_1/embedding_2/embeddings/v/Read/ReadVariableOpPAdam/token_and_position_embedding_1/embedding_3/embeddings/v/Read/ReadVariableOpTAdam/transformer_encoder_1/multi_head_attention_1/query/kernel/v/Read/ReadVariableOpRAdam/transformer_encoder_1/multi_head_attention_1/query/bias/v/Read/ReadVariableOpRAdam/transformer_encoder_1/multi_head_attention_1/key/kernel/v/Read/ReadVariableOpPAdam/transformer_encoder_1/multi_head_attention_1/key/bias/v/Read/ReadVariableOpTAdam/transformer_encoder_1/multi_head_attention_1/value/kernel/v/Read/ReadVariableOpRAdam/transformer_encoder_1/multi_head_attention_1/value/bias/v/Read/ReadVariableOp_Adam/transformer_encoder_1/multi_head_attention_1/attention_output/kernel/v/Read/ReadVariableOp]Adam/transformer_encoder_1/multi_head_attention_1/attention_output/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOpLAdam/transformer_encoder_1/layer_normalization_2/gamma/v/Read/ReadVariableOpKAdam/transformer_encoder_1/layer_normalization_2/beta/v/Read/ReadVariableOpLAdam/transformer_encoder_1/layer_normalization_3/gamma/v/Read/ReadVariableOpKAdam/transformer_encoder_1/layer_normalization_3/beta/v/Read/ReadVariableOpConst*Z
TinS
Q2O	*
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
GPU 2J 8 **
f%R#
!__inference__traced_save_45294642
Æ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_6/kerneldense_6/biasdense_7/kerneldense_7/bias5token_and_position_embedding_1/embedding_2/embeddings5token_and_position_embedding_1/embedding_3/embeddings9transformer_encoder_1/multi_head_attention_1/query/kernel7transformer_encoder_1/multi_head_attention_1/query/bias7transformer_encoder_1/multi_head_attention_1/key/kernel5transformer_encoder_1/multi_head_attention_1/key/bias9transformer_encoder_1/multi_head_attention_1/value/kernel7transformer_encoder_1/multi_head_attention_1/value/biasDtransformer_encoder_1/multi_head_attention_1/attention_output/kernelBtransformer_encoder_1/multi_head_attention_1/attention_output/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias1transformer_encoder_1/layer_normalization_2/gamma0transformer_encoder_1/layer_normalization_2/beta1transformer_encoder_1/layer_normalization_3/gamma0transformer_encoder_1/layer_normalization_3/beta	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_2count_2total_1count_1totalcountAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/m<Adam/token_and_position_embedding_1/embedding_2/embeddings/m<Adam/token_and_position_embedding_1/embedding_3/embeddings/m@Adam/transformer_encoder_1/multi_head_attention_1/query/kernel/m>Adam/transformer_encoder_1/multi_head_attention_1/query/bias/m>Adam/transformer_encoder_1/multi_head_attention_1/key/kernel/m<Adam/transformer_encoder_1/multi_head_attention_1/key/bias/m@Adam/transformer_encoder_1/multi_head_attention_1/value/kernel/m>Adam/transformer_encoder_1/multi_head_attention_1/value/bias/mKAdam/transformer_encoder_1/multi_head_attention_1/attention_output/kernel/mIAdam/transformer_encoder_1/multi_head_attention_1/attention_output/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/m8Adam/transformer_encoder_1/layer_normalization_2/gamma/m7Adam/transformer_encoder_1/layer_normalization_2/beta/m8Adam/transformer_encoder_1/layer_normalization_3/gamma/m7Adam/transformer_encoder_1/layer_normalization_3/beta/mAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/v<Adam/token_and_position_embedding_1/embedding_2/embeddings/v<Adam/token_and_position_embedding_1/embedding_3/embeddings/v@Adam/transformer_encoder_1/multi_head_attention_1/query/kernel/v>Adam/transformer_encoder_1/multi_head_attention_1/query/bias/v>Adam/transformer_encoder_1/multi_head_attention_1/key/kernel/v<Adam/transformer_encoder_1/multi_head_attention_1/key/bias/v@Adam/transformer_encoder_1/multi_head_attention_1/value/kernel/v>Adam/transformer_encoder_1/multi_head_attention_1/value/bias/vKAdam/transformer_encoder_1/multi_head_attention_1/attention_output/kernel/vIAdam/transformer_encoder_1/multi_head_attention_1/attention_output/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/v8Adam/transformer_encoder_1/layer_normalization_2/gamma/v7Adam/transformer_encoder_1/layer_normalization_2/beta/v8Adam/transformer_encoder_1/layer_normalization_3/gamma/v7Adam/transformer_encoder_1/layer_normalization_3/beta/v*Y
TinR
P2N*
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
GPU 2J 8 *-
f(R&
$__inference__traced_restore_45294883Ûá
È	
ö
E__inference_dense_7_layer_call_and_return_conditional_losses_45294169

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
ð
®
A__inference_token_and_position_embedding_1_layer_call_fn_45293754
x
unknown:.2
	unknown_0:	2
identity¢StatefulPartitionedCallð
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *e
f`R^
\__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_45292453s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.: : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.

_user_specified_namex

§
\__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_45293778
x7
%embedding_3_embedding_lookup_45293765:.28
%embedding_2_embedding_lookup_45293771:	2
identity¢embedding_2/embedding_lookup¢embedding_3/embedding_lookup6
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
:.Ü
embedding_3/embedding_lookupResourceGather%embedding_3_embedding_lookup_45293765range:output:0*
Tindices0*8
_class.
,*loc:@embedding_3/embedding_lookup/45293765*
_output_shapes

:.2*
dtype0»
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_3/embedding_lookup/45293765*
_output_shapes

:.2
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:.2\
embedding_2/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ï
embedding_2/embedding_lookupResourceGather%embedding_2_embedding_lookup_45293771embedding_2/Cast:y:0*
Tindices0*8
_class.
,*loc:@embedding_2/embedding_lookup/45293771*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0È
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_2/embedding_lookup/45293771*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¦
addAddV20embedding_2/embedding_lookup/Identity_1:output:00embedding_3/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Z
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp^embedding_2/embedding_lookup^embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.: : 2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.

_user_specified_namex
²
Ò
/__inference_sequential_1_layer_call_fn_45294182

inputs
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identity¢StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_45292297s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
°
µ
J__inference_sequential_1_layer_call_and_return_conditional_losses_45292297

inputs"
dense_4_45292255:2 
dense_4_45292257: "
dense_5_45292291: 2
dense_5_45292293:2
identity¢dense_4/StatefulPartitionedCall¢dense_5/StatefulPartitionedCallö
dense_4/StatefulPartitionedCallStatefulPartitionedCallinputsdense_4_45292255dense_4_45292257*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_4_layer_call_and_return_conditional_losses_45292254
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_45292291dense_5_45292293*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_5_layer_call_and_return_conditional_losses_45292290{
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
Ô

*__inference_dense_5_layer_call_fn_45294358

inputs
unknown: 2
	unknown_0:2
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_5_layer_call_and_return_conditional_losses_45292290s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ. : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
 
_user_specified_nameinputs
°
µ
J__inference_sequential_1_layer_call_and_return_conditional_losses_45292357

inputs"
dense_4_45292346:2 
dense_4_45292348: "
dense_5_45292351: 2
dense_5_45292353:2
identity¢dense_4/StatefulPartitionedCall¢dense_5/StatefulPartitionedCallö
dense_4/StatefulPartitionedCallStatefulPartitionedCallinputsdense_4_45292346dense_4_45292348*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_4_layer_call_and_return_conditional_losses_45292254
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_45292351dense_5_45292353*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_5_layer_call_and_return_conditional_losses_45292290{
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs

§
\__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_45292453
x7
%embedding_3_embedding_lookup_45292440:.28
%embedding_2_embedding_lookup_45292446:	2
identity¢embedding_2/embedding_lookup¢embedding_3/embedding_lookup6
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
:.Ü
embedding_3/embedding_lookupResourceGather%embedding_3_embedding_lookup_45292440range:output:0*
Tindices0*8
_class.
,*loc:@embedding_3/embedding_lookup/45292440*
_output_shapes

:.2*
dtype0»
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_3/embedding_lookup/45292440*
_output_shapes

:.2
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:.2\
embedding_2/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ï
embedding_2/embedding_lookupResourceGather%embedding_2_embedding_lookup_45292446embedding_2/Cast:y:0*
Tindices0*8
_class.
,*loc:@embedding_2/embedding_lookup/45292446*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0È
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_2/embedding_lookup/45292446*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¦
addAddV20embedding_2/embedding_lookup/Identity_1:output:00embedding_3/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Z
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp^embedding_2/embedding_lookup^embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.: : 2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.

_user_specified_namex
Ô>
Ù
J__inference_sequential_1_layer_call_and_return_conditional_losses_45294252

inputs;
)dense_4_tensordot_readvariableop_resource:2 5
'dense_4_biasadd_readvariableop_resource: ;
)dense_5_tensordot_readvariableop_resource: 25
'dense_5_biasadd_readvariableop_resource:2
identity¢dense_4/BiasAdd/ReadVariableOp¢ dense_4/Tensordot/ReadVariableOp¢dense_5/BiasAdd/ReadVariableOp¢ dense_5/Tensordot/ReadVariableOp
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0`
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       M
dense_4/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:a
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_4/Tensordot/transpose	Transposeinputs!dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¢
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¢
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: a
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. d
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
 dense_5/Tensordot/ReadVariableOpReadVariableOp)dense_5_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0`
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       a
dense_5/Tensordot/ShapeShapedense_4/Relu:activations:0*
T0*
_output_shapes
:a
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_5/Tensordot/transpose	Transposedense_4/Relu:activations:0!dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ¢
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¢
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2a
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
dense_5/BiasAddBiasAdddense_5/Tensordot:output:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2k
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Î
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs


ö
E__inference_dense_6_layer_call_and_return_conditional_losses_45294150

inputs0
matmul_readvariableop_resource:2.-
biasadd_readvariableop_resource:.
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2.*
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
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ô

*__inference_dense_4_layer_call_fn_45294318

inputs
unknown:2 
	unknown_0: 
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_4_layer_call_and_return_conditional_losses_45292254s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.2: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
À&
¥

E__inference_model_1_layer_call_and_return_conditional_losses_45293253
input_29
'token_and_position_embedding_1_45293203:.2:
'token_and_position_embedding_1_45293205:	24
transformer_encoder_1_45293208:220
transformer_encoder_1_45293210:24
transformer_encoder_1_45293212:220
transformer_encoder_1_45293214:24
transformer_encoder_1_45293216:220
transformer_encoder_1_45293218:24
transformer_encoder_1_45293220:22,
transformer_encoder_1_45293222:2,
transformer_encoder_1_45293224:2,
transformer_encoder_1_45293226:20
transformer_encoder_1_45293228:2 ,
transformer_encoder_1_45293230: 0
transformer_encoder_1_45293232: 2,
transformer_encoder_1_45293234:2,
transformer_encoder_1_45293236:2,
transformer_encoder_1_45293238:2"
dense_6_45293242:2.
dense_6_45293244:."
dense_7_45293247:.
dense_7_45293249:
identity¢dense_6/StatefulPartitionedCall¢dense_7/StatefulPartitionedCall¢6token_and_position_embedding_1/StatefulPartitionedCall¢-transformer_encoder_1/StatefulPartitionedCallÓ
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_2'token_and_position_embedding_1_45293203'token_and_position_embedding_1_45293205*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *e
f`R^
\__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_45292453Ã
-transformer_encoder_1/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0transformer_encoder_1_45293208transformer_encoder_1_45293210transformer_encoder_1_45293212transformer_encoder_1_45293214transformer_encoder_1_45293216transformer_encoder_1_45293218transformer_encoder_1_45293220transformer_encoder_1_45293222transformer_encoder_1_45293224transformer_encoder_1_45293226transformer_encoder_1_45293228transformer_encoder_1_45293230transformer_encoder_1_45293232transformer_encoder_1_45293234transformer_encoder_1_45293236transformer_encoder_1_45293238*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_45292902
(global_average_pooling1d/PartitionedCallPartitionedCall6transformer_encoder_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_45292419
dense_6/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_6_45293242dense_6_45293244*
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
GPU 2J 8 *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_45292632
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_45293247dense_7_45293249*
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
GPU 2J 8 *N
fIRG
E__inference_dense_7_layer_call_and_return_conditional_losses_45292648w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿó
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall.^transformer_encoder_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2^
-transformer_encoder_1/StatefulPartitionedCall-transformer_encoder_1/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!
_user_specified_name	input_2
Ã¥
í
E__inference_model_1_layer_call_and_return_conditional_losses_45293570

inputsV
Dtoken_and_position_embedding_1_embedding_3_embedding_lookup_45293419:.2W
Dtoken_and_position_embedding_1_embedding_2_embedding_lookup_45293425:	2n
Xtransformer_encoder_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_1_multi_head_attention_1_query_add_readvariableop_resource:2l
Vtransformer_encoder_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:22^
Ltransformer_encoder_1_multi_head_attention_1_key_add_readvariableop_resource:2n
Xtransformer_encoder_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_1_multi_head_attention_1_value_add_readvariableop_resource:2y
ctransformer_encoder_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:22g
Ytransformer_encoder_1_multi_head_attention_1_attention_output_add_readvariableop_resource:2_
Qtransformer_encoder_1_layer_normalization_2_batchnorm_mul_readvariableop_resource:2[
Mtransformer_encoder_1_layer_normalization_2_batchnorm_readvariableop_resource:2^
Ltransformer_encoder_1_sequential_1_dense_4_tensordot_readvariableop_resource:2 X
Jtransformer_encoder_1_sequential_1_dense_4_biasadd_readvariableop_resource: ^
Ltransformer_encoder_1_sequential_1_dense_5_tensordot_readvariableop_resource: 2X
Jtransformer_encoder_1_sequential_1_dense_5_biasadd_readvariableop_resource:2_
Qtransformer_encoder_1_layer_normalization_3_batchnorm_mul_readvariableop_resource:2[
Mtransformer_encoder_1_layer_normalization_3_batchnorm_readvariableop_resource:28
&dense_6_matmul_readvariableop_resource:2.5
'dense_6_biasadd_readvariableop_resource:.8
&dense_7_matmul_readvariableop_resource:.5
'dense_7_biasadd_readvariableop_resource:
identity¢dense_6/BiasAdd/ReadVariableOp¢dense_6/MatMul/ReadVariableOp¢dense_7/BiasAdd/ReadVariableOp¢dense_7/MatMul/ReadVariableOp¢;token_and_position_embedding_1/embedding_2/embedding_lookup¢;token_and_position_embedding_1/embedding_3/embedding_lookup¢Dtransformer_encoder_1/layer_normalization_2/batchnorm/ReadVariableOp¢Htransformer_encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp¢Dtransformer_encoder_1/layer_normalization_3/batchnorm/ReadVariableOp¢Htransformer_encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOp¢Ptransformer_encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOp¢Ztransformer_encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp¢Ctransformer_encoder_1/multi_head_attention_1/key/add/ReadVariableOp¢Mtransformer_encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp¢Etransformer_encoder_1/multi_head_attention_1/query/add/ReadVariableOp¢Otransformer_encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp¢Etransformer_encoder_1/multi_head_attention_1/value/add/ReadVariableOp¢Otransformer_encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp¢Atransformer_encoder_1/sequential_1/dense_4/BiasAdd/ReadVariableOp¢Ctransformer_encoder_1/sequential_1/dense_4/Tensordot/ReadVariableOp¢Atransformer_encoder_1/sequential_1/dense_5/BiasAdd/ReadVariableOp¢Ctransformer_encoder_1/sequential_1/dense_5/Tensordot/ReadVariableOpZ
$token_and_position_embedding_1/ShapeShapeinputs*
T0*
_output_shapes
:
2token_and_position_embedding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ~
4token_and_position_embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,token_and_position_embedding_1/strided_sliceStridedSlice-token_and_position_embedding_1/Shape:output:0;token_and_position_embedding_1/strided_slice/stack:output:0=token_and_position_embedding_1/strided_slice/stack_1:output:0=token_and_position_embedding_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ê
$token_and_position_embedding_1/rangeRange3token_and_position_embedding_1/range/start:output:05token_and_position_embedding_1/strided_slice:output:03token_and_position_embedding_1/range/delta:output:0*
_output_shapes
:.Ø
;token_and_position_embedding_1/embedding_3/embedding_lookupResourceGatherDtoken_and_position_embedding_1_embedding_3_embedding_lookup_45293419-token_and_position_embedding_1/range:output:0*
Tindices0*W
_classM
KIloc:@token_and_position_embedding_1/embedding_3/embedding_lookup/45293419*
_output_shapes

:.2*
dtype0
Dtoken_and_position_embedding_1/embedding_3/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_1/embedding_3/embedding_lookup:output:0*
T0*W
_classM
KIloc:@token_and_position_embedding_1/embedding_3/embedding_lookup/45293419*
_output_shapes

:.2Ê
Ftoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:.2
/token_and_position_embedding_1/embedding_2/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ë
;token_and_position_embedding_1/embedding_2/embedding_lookupResourceGatherDtoken_and_position_embedding_1_embedding_2_embedding_lookup_452934253token_and_position_embedding_1/embedding_2/Cast:y:0*
Tindices0*W
_classM
KIloc:@token_and_position_embedding_1/embedding_2/embedding_lookup/45293425*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0¥
Dtoken_and_position_embedding_1/embedding_2/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_1/embedding_2/embedding_lookup:output:0*
T0*W
_classM
KIloc:@token_and_position_embedding_1/embedding_2/embedding_lookup/45293425*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2×
Ftoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
"token_and_position_embedding_1/addAddV2Otoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ì
Otransformer_encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0«
@transformer_encoder_1/multi_head_attention_1/query/einsum/EinsumEinsum&token_and_position_embedding_1/add:z:0Wtransformer_encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeÔ
Etransformer_encoder_1/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpNtransformer_encoder_1_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0
6transformer_encoder_1/multi_head_attention_1/query/addAddV2Itransformer_encoder_1/multi_head_attention_1/query/einsum/Einsum:output:0Mtransformer_encoder_1/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2è
Mtransformer_encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_encoder_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0§
>transformer_encoder_1/multi_head_attention_1/key/einsum/EinsumEinsum&token_and_position_embedding_1/add:z:0Utransformer_encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeÐ
Ctransformer_encoder_1/multi_head_attention_1/key/add/ReadVariableOpReadVariableOpLtransformer_encoder_1_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0
4transformer_encoder_1/multi_head_attention_1/key/addAddV2Gtransformer_encoder_1/multi_head_attention_1/key/einsum/Einsum:output:0Ktransformer_encoder_1/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ì
Otransformer_encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0«
@transformer_encoder_1/multi_head_attention_1/value/einsum/EinsumEinsum&token_and_position_embedding_1/add:z:0Wtransformer_encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeÔ
Etransformer_encoder_1/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpNtransformer_encoder_1_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0
6transformer_encoder_1/multi_head_attention_1/value/addAddV2Itransformer_encoder_1/multi_head_attention_1/value/einsum/Einsum:output:0Mtransformer_encoder_1/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2w
2transformer_encoder_1/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>ê
0transformer_encoder_1/multi_head_attention_1/MulMul:transformer_encoder_1/multi_head_attention_1/query/add:z:0;transformer_encoder_1/multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
:transformer_encoder_1/multi_head_attention_1/einsum/EinsumEinsum8transformer_encoder_1/multi_head_attention_1/key/add:z:04transformer_encoder_1/multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..*
equationaecd,abcd->acbeÆ
<transformer_encoder_1/multi_head_attention_1/softmax/SoftmaxSoftmaxCtransformer_encoder_1/multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..Ë
=transformer_encoder_1/multi_head_attention_1/dropout/IdentityIdentityFtransformer_encoder_1/multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..¬
<transformer_encoder_1/multi_head_attention_1/einsum_1/EinsumEinsumFtransformer_encoder_1/multi_head_attention_1/dropout/Identity:output:0:transformer_encoder_1/multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationacbe,aecd->abcd
Ztransformer_encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpctransformer_encoder_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ü
Ktransformer_encoder_1/multi_head_attention_1/attention_output/einsum/EinsumEinsumEtransformer_encoder_1/multi_head_attention_1/einsum_1/Einsum:output:0btransformer_encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabcd,cde->abeæ
Ptransformer_encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpYtransformer_encoder_1_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0°
Atransformer_encoder_1/multi_head_attention_1/attention_output/addAddV2Ttransformer_encoder_1/multi_head_attention_1/attention_output/einsum/Einsum:output:0Xtransformer_encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2±
(transformer_encoder_1/dropout_3/IdentityIdentityEtransformer_encoder_1/multi_head_attention_1/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2³
transformer_encoder_1/addAddV2&token_and_position_embedding_1/add:z:01transformer_encoder_1/dropout_3/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Jtransformer_encoder_1/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:û
8transformer_encoder_1/layer_normalization_2/moments/meanMeantransformer_encoder_1/add:z:0Stransformer_encoder_1/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(É
@transformer_encoder_1/layer_normalization_2/moments/StopGradientStopGradientAtransformer_encoder_1/layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ú
Etransformer_encoder_1/layer_normalization_2/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_1/add:z:0Itransformer_encoder_1/layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Ntransformer_encoder_1/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¯
<transformer_encoder_1/layer_normalization_2/moments/varianceMeanItransformer_encoder_1/layer_normalization_2/moments/SquaredDifference:z:0Wtransformer_encoder_1/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
;transformer_encoder_1/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
9transformer_encoder_1/layer_normalization_2/batchnorm/addAddV2Etransformer_encoder_1/layer_normalization_2/moments/variance:output:0Dtransformer_encoder_1/layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¹
;transformer_encoder_1/layer_normalization_2/batchnorm/RsqrtRsqrt=transformer_encoder_1/layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Ö
Htransformer_encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpQtransformer_encoder_1_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_1/layer_normalization_2/batchnorm/mulMul?transformer_encoder_1/layer_normalization_2/batchnorm/Rsqrt:y:0Ptransformer_encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ö
;transformer_encoder_1/layer_normalization_2/batchnorm/mul_1Multransformer_encoder_1/add:z:0=transformer_encoder_1/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ú
;transformer_encoder_1/layer_normalization_2/batchnorm/mul_2MulAtransformer_encoder_1/layer_normalization_2/moments/mean:output:0=transformer_encoder_1/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Î
Dtransformer_encoder_1/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOpMtransformer_encoder_1_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_1/layer_normalization_2/batchnorm/subSubLtransformer_encoder_1/layer_normalization_2/batchnorm/ReadVariableOp:value:0?transformer_encoder_1/layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ú
;transformer_encoder_1/layer_normalization_2/batchnorm/add_1AddV2?transformer_encoder_1/layer_normalization_2/batchnorm/mul_1:z:0=transformer_encoder_1/layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ð
Ctransformer_encoder_1/sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOpLtransformer_encoder_1_sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0
9transformer_encoder_1/sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
9transformer_encoder_1/sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ©
:transformer_encoder_1/sequential_1/dense_4/Tensordot/ShapeShape?transformer_encoder_1/layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Btransformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
=transformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2GatherV2Ctransformer_encoder_1/sequential_1/dense_4/Tensordot/Shape:output:0Btransformer_encoder_1/sequential_1/dense_4/Tensordot/free:output:0Ktransformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Dtransformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
?transformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2_1GatherV2Ctransformer_encoder_1/sequential_1/dense_4/Tensordot/Shape:output:0Btransformer_encoder_1/sequential_1/dense_4/Tensordot/axes:output:0Mtransformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
:transformer_encoder_1/sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ï
9transformer_encoder_1/sequential_1/dense_4/Tensordot/ProdProdFtransformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2:output:0Ctransformer_encoder_1/sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 
<transformer_encoder_1/sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: õ
;transformer_encoder_1/sequential_1/dense_4/Tensordot/Prod_1ProdHtransformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2_1:output:0Etransformer_encoder_1/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
@transformer_encoder_1/sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : È
;transformer_encoder_1/sequential_1/dense_4/Tensordot/concatConcatV2Btransformer_encoder_1/sequential_1/dense_4/Tensordot/free:output:0Btransformer_encoder_1/sequential_1/dense_4/Tensordot/axes:output:0Itransformer_encoder_1/sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ú
:transformer_encoder_1/sequential_1/dense_4/Tensordot/stackPackBtransformer_encoder_1/sequential_1/dense_4/Tensordot/Prod:output:0Dtransformer_encoder_1/sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
>transformer_encoder_1/sequential_1/dense_4/Tensordot/transpose	Transpose?transformer_encoder_1/layer_normalization_2/batchnorm/add_1:z:0Dtransformer_encoder_1/sequential_1/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
<transformer_encoder_1/sequential_1/dense_4/Tensordot/ReshapeReshapeBtransformer_encoder_1/sequential_1/dense_4/Tensordot/transpose:y:0Ctransformer_encoder_1/sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
;transformer_encoder_1/sequential_1/dense_4/Tensordot/MatMulMatMulEtransformer_encoder_1/sequential_1/dense_4/Tensordot/Reshape:output:0Ktransformer_encoder_1/sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
<transformer_encoder_1/sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
Btransformer_encoder_1/sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
=transformer_encoder_1/sequential_1/dense_4/Tensordot/concat_1ConcatV2Ftransformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2:output:0Etransformer_encoder_1/sequential_1/dense_4/Tensordot/Const_2:output:0Ktransformer_encoder_1/sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
4transformer_encoder_1/sequential_1/dense_4/TensordotReshapeEtransformer_encoder_1/sequential_1/dense_4/Tensordot/MatMul:product:0Ftransformer_encoder_1/sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. È
Atransformer_encoder_1/sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOpJtransformer_encoder_1_sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ý
2transformer_encoder_1/sequential_1/dense_4/BiasAddBiasAdd=transformer_encoder_1/sequential_1/dense_4/Tensordot:output:0Itransformer_encoder_1/sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ª
/transformer_encoder_1/sequential_1/dense_4/ReluRelu;transformer_encoder_1/sequential_1/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. Ð
Ctransformer_encoder_1/sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOpLtransformer_encoder_1_sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0
9transformer_encoder_1/sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
9transformer_encoder_1/sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       §
:transformer_encoder_1/sequential_1/dense_5/Tensordot/ShapeShape=transformer_encoder_1/sequential_1/dense_4/Relu:activations:0*
T0*
_output_shapes
:
Btransformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
=transformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2GatherV2Ctransformer_encoder_1/sequential_1/dense_5/Tensordot/Shape:output:0Btransformer_encoder_1/sequential_1/dense_5/Tensordot/free:output:0Ktransformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Dtransformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
?transformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2_1GatherV2Ctransformer_encoder_1/sequential_1/dense_5/Tensordot/Shape:output:0Btransformer_encoder_1/sequential_1/dense_5/Tensordot/axes:output:0Mtransformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
:transformer_encoder_1/sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ï
9transformer_encoder_1/sequential_1/dense_5/Tensordot/ProdProdFtransformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2:output:0Ctransformer_encoder_1/sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: 
<transformer_encoder_1/sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: õ
;transformer_encoder_1/sequential_1/dense_5/Tensordot/Prod_1ProdHtransformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2_1:output:0Etransformer_encoder_1/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
@transformer_encoder_1/sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : È
;transformer_encoder_1/sequential_1/dense_5/Tensordot/concatConcatV2Btransformer_encoder_1/sequential_1/dense_5/Tensordot/free:output:0Btransformer_encoder_1/sequential_1/dense_5/Tensordot/axes:output:0Itransformer_encoder_1/sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ú
:transformer_encoder_1/sequential_1/dense_5/Tensordot/stackPackBtransformer_encoder_1/sequential_1/dense_5/Tensordot/Prod:output:0Dtransformer_encoder_1/sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
>transformer_encoder_1/sequential_1/dense_5/Tensordot/transpose	Transpose=transformer_encoder_1/sequential_1/dense_4/Relu:activations:0Dtransformer_encoder_1/sequential_1/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
<transformer_encoder_1/sequential_1/dense_5/Tensordot/ReshapeReshapeBtransformer_encoder_1/sequential_1/dense_5/Tensordot/transpose:y:0Ctransformer_encoder_1/sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
;transformer_encoder_1/sequential_1/dense_5/Tensordot/MatMulMatMulEtransformer_encoder_1/sequential_1/dense_5/Tensordot/Reshape:output:0Ktransformer_encoder_1/sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
<transformer_encoder_1/sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Btransformer_encoder_1/sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
=transformer_encoder_1/sequential_1/dense_5/Tensordot/concat_1ConcatV2Ftransformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2:output:0Etransformer_encoder_1/sequential_1/dense_5/Tensordot/Const_2:output:0Ktransformer_encoder_1/sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
4transformer_encoder_1/sequential_1/dense_5/TensordotReshapeEtransformer_encoder_1/sequential_1/dense_5/Tensordot/MatMul:product:0Ftransformer_encoder_1/sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2È
Atransformer_encoder_1/sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOpJtransformer_encoder_1_sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0ý
2transformer_encoder_1/sequential_1/dense_5/BiasAddBiasAdd=transformer_encoder_1/sequential_1/dense_5/Tensordot:output:0Itransformer_encoder_1/sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2§
(transformer_encoder_1/dropout_4/IdentityIdentity;transformer_encoder_1/sequential_1/dense_5/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Î
transformer_encoder_1/add_1AddV2?transformer_encoder_1/layer_normalization_2/batchnorm/add_1:z:01transformer_encoder_1/dropout_4/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Jtransformer_encoder_1/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ý
8transformer_encoder_1/layer_normalization_3/moments/meanMeantransformer_encoder_1/add_1:z:0Stransformer_encoder_1/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(É
@transformer_encoder_1/layer_normalization_3/moments/StopGradientStopGradientAtransformer_encoder_1/layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ü
Etransformer_encoder_1/layer_normalization_3/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_1/add_1:z:0Itransformer_encoder_1/layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Ntransformer_encoder_1/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¯
<transformer_encoder_1/layer_normalization_3/moments/varianceMeanItransformer_encoder_1/layer_normalization_3/moments/SquaredDifference:z:0Wtransformer_encoder_1/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
;transformer_encoder_1/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
9transformer_encoder_1/layer_normalization_3/batchnorm/addAddV2Etransformer_encoder_1/layer_normalization_3/moments/variance:output:0Dtransformer_encoder_1/layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¹
;transformer_encoder_1/layer_normalization_3/batchnorm/RsqrtRsqrt=transformer_encoder_1/layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Ö
Htransformer_encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpQtransformer_encoder_1_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_1/layer_normalization_3/batchnorm/mulMul?transformer_encoder_1/layer_normalization_3/batchnorm/Rsqrt:y:0Ptransformer_encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ø
;transformer_encoder_1/layer_normalization_3/batchnorm/mul_1Multransformer_encoder_1/add_1:z:0=transformer_encoder_1/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ú
;transformer_encoder_1/layer_normalization_3/batchnorm/mul_2MulAtransformer_encoder_1/layer_normalization_3/moments/mean:output:0=transformer_encoder_1/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Î
Dtransformer_encoder_1/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOpMtransformer_encoder_1_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_1/layer_normalization_3/batchnorm/subSubLtransformer_encoder_1/layer_normalization_3/batchnorm/ReadVariableOp:value:0?transformer_encoder_1/layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ú
;transformer_encoder_1/layer_normalization_3/batchnorm/add_1AddV2?transformer_encoder_1/layer_normalization_3/batchnorm/mul_1:z:0=transformer_encoder_1/layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :Ò
global_average_pooling1d/MeanMean?transformer_encoder_1/layer_normalization_3/batchnorm/add_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:2.*
dtype0
dense_6/MatMulMatMul&global_average_pooling1d/Mean:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:.*
dtype0
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_7/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿö
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp<^token_and_position_embedding_1/embedding_2/embedding_lookup<^token_and_position_embedding_1/embedding_3/embedding_lookupE^transformer_encoder_1/layer_normalization_2/batchnorm/ReadVariableOpI^transformer_encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOpE^transformer_encoder_1/layer_normalization_3/batchnorm/ReadVariableOpI^transformer_encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOpQ^transformer_encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOp[^transformer_encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpD^transformer_encoder_1/multi_head_attention_1/key/add/ReadVariableOpN^transformer_encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpF^transformer_encoder_1/multi_head_attention_1/query/add/ReadVariableOpP^transformer_encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpF^transformer_encoder_1/multi_head_attention_1/value/add/ReadVariableOpP^transformer_encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpB^transformer_encoder_1/sequential_1/dense_4/BiasAdd/ReadVariableOpD^transformer_encoder_1/sequential_1/dense_4/Tensordot/ReadVariableOpB^transformer_encoder_1/sequential_1/dense_5/BiasAdd/ReadVariableOpD^transformer_encoder_1/sequential_1/dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2z
;token_and_position_embedding_1/embedding_2/embedding_lookup;token_and_position_embedding_1/embedding_2/embedding_lookup2z
;token_and_position_embedding_1/embedding_3/embedding_lookup;token_and_position_embedding_1/embedding_3/embedding_lookup2
Dtransformer_encoder_1/layer_normalization_2/batchnorm/ReadVariableOpDtransformer_encoder_1/layer_normalization_2/batchnorm/ReadVariableOp2
Htransformer_encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOpHtransformer_encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp2
Dtransformer_encoder_1/layer_normalization_3/batchnorm/ReadVariableOpDtransformer_encoder_1/layer_normalization_3/batchnorm/ReadVariableOp2
Htransformer_encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOpHtransformer_encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOp2¤
Ptransformer_encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOpPtransformer_encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOp2¸
Ztransformer_encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpZtransformer_encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2
Ctransformer_encoder_1/multi_head_attention_1/key/add/ReadVariableOpCtransformer_encoder_1/multi_head_attention_1/key/add/ReadVariableOp2
Mtransformer_encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpMtransformer_encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2
Etransformer_encoder_1/multi_head_attention_1/query/add/ReadVariableOpEtransformer_encoder_1/multi_head_attention_1/query/add/ReadVariableOp2¢
Otransformer_encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpOtransformer_encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2
Etransformer_encoder_1/multi_head_attention_1/value/add/ReadVariableOpEtransformer_encoder_1/multi_head_attention_1/value/add/ReadVariableOp2¢
Otransformer_encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpOtransformer_encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2
Atransformer_encoder_1/sequential_1/dense_4/BiasAdd/ReadVariableOpAtransformer_encoder_1/sequential_1/dense_4/BiasAdd/ReadVariableOp2
Ctransformer_encoder_1/sequential_1/dense_4/Tensordot/ReadVariableOpCtransformer_encoder_1/sequential_1/dense_4/Tensordot/ReadVariableOp2
Atransformer_encoder_1/sequential_1/dense_5/BiasAdd/ReadVariableOpAtransformer_encoder_1/sequential_1/dense_5/BiasAdd/ReadVariableOp2
Ctransformer_encoder_1/sequential_1/dense_5/Tensordot/ReadVariableOpCtransformer_encoder_1/sequential_1/dense_5/Tensordot/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
»
×
*__inference_model_1_layer_call_fn_45293408

inputs
unknown:.2
	unknown_0:	2
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

unknown_17:2.

unknown_18:.

unknown_19:.

unknown_20:
identity¢StatefulPartitionedCallé
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
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_1_layer_call_and_return_conditional_losses_45293051o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
Ú
¸
8__inference_transformer_encoder_1_layer_call_fn_45293852

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
identity¢StatefulPartitionedCall§
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
:ÿÿÿÿÿÿÿÿÿ.2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_45292902s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ.2: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
½&
¤

E__inference_model_1_layer_call_and_return_conditional_losses_45292655

inputs9
'token_and_position_embedding_1_45292454:.2:
'token_and_position_embedding_1_45292456:	24
transformer_encoder_1_45292587:220
transformer_encoder_1_45292589:24
transformer_encoder_1_45292591:220
transformer_encoder_1_45292593:24
transformer_encoder_1_45292595:220
transformer_encoder_1_45292597:24
transformer_encoder_1_45292599:22,
transformer_encoder_1_45292601:2,
transformer_encoder_1_45292603:2,
transformer_encoder_1_45292605:20
transformer_encoder_1_45292607:2 ,
transformer_encoder_1_45292609: 0
transformer_encoder_1_45292611: 2,
transformer_encoder_1_45292613:2,
transformer_encoder_1_45292615:2,
transformer_encoder_1_45292617:2"
dense_6_45292633:2.
dense_6_45292635:."
dense_7_45292649:.
dense_7_45292651:
identity¢dense_6/StatefulPartitionedCall¢dense_7/StatefulPartitionedCall¢6token_and_position_embedding_1/StatefulPartitionedCall¢-transformer_encoder_1/StatefulPartitionedCallÒ
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputs'token_and_position_embedding_1_45292454'token_and_position_embedding_1_45292456*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *e
f`R^
\__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_45292453Ã
-transformer_encoder_1/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0transformer_encoder_1_45292587transformer_encoder_1_45292589transformer_encoder_1_45292591transformer_encoder_1_45292593transformer_encoder_1_45292595transformer_encoder_1_45292597transformer_encoder_1_45292599transformer_encoder_1_45292601transformer_encoder_1_45292603transformer_encoder_1_45292605transformer_encoder_1_45292607transformer_encoder_1_45292609transformer_encoder_1_45292611transformer_encoder_1_45292613transformer_encoder_1_45292615transformer_encoder_1_45292617*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_45292586
(global_average_pooling1d/PartitionedCallPartitionedCall6transformer_encoder_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_45292419
dense_6/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_6_45292633dense_6_45292635*
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
GPU 2J 8 *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_45292632
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_45292649dense_7_45292651*
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
GPU 2J 8 *N
fIRG
E__inference_dense_7_layer_call_and_return_conditional_losses_45292648w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿó
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall.^transformer_encoder_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2^
-transformer_encoder_1/StatefulPartitionedCall-transformer_encoder_1/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
Ì
ü
E__inference_dense_5_layer_call_and_return_conditional_losses_45292290

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
:ÿÿÿÿÿÿÿÿÿ. 
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
:ÿÿÿÿÿÿÿÿÿ.2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ. : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
 
_user_specified_nameinputs
°Ä
<
$__inference__traced_restore_45294883
file_prefix1
assignvariableop_dense_6_kernel:2.-
assignvariableop_1_dense_6_bias:.3
!assignvariableop_2_dense_7_kernel:.-
assignvariableop_3_dense_7_bias:[
Hassignvariableop_4_token_and_position_embedding_1_embedding_2_embeddings:	2Z
Hassignvariableop_5_token_and_position_embedding_1_embedding_3_embeddings:.2b
Lassignvariableop_6_transformer_encoder_1_multi_head_attention_1_query_kernel:22\
Jassignvariableop_7_transformer_encoder_1_multi_head_attention_1_query_bias:2`
Jassignvariableop_8_transformer_encoder_1_multi_head_attention_1_key_kernel:22Z
Hassignvariableop_9_transformer_encoder_1_multi_head_attention_1_key_bias:2c
Massignvariableop_10_transformer_encoder_1_multi_head_attention_1_value_kernel:22]
Kassignvariableop_11_transformer_encoder_1_multi_head_attention_1_value_bias:2n
Xassignvariableop_12_transformer_encoder_1_multi_head_attention_1_attention_output_kernel:22d
Vassignvariableop_13_transformer_encoder_1_multi_head_attention_1_attention_output_bias:24
"assignvariableop_14_dense_4_kernel:2 .
 assignvariableop_15_dense_4_bias: 4
"assignvariableop_16_dense_5_kernel: 2.
 assignvariableop_17_dense_5_bias:2S
Eassignvariableop_18_transformer_encoder_1_layer_normalization_2_gamma:2R
Dassignvariableop_19_transformer_encoder_1_layer_normalization_2_beta:2S
Eassignvariableop_20_transformer_encoder_1_layer_normalization_3_gamma:2R
Dassignvariableop_21_transformer_encoder_1_layer_normalization_3_beta:2'
assignvariableop_22_adam_iter:	 )
assignvariableop_23_adam_beta_1: )
assignvariableop_24_adam_beta_2: (
assignvariableop_25_adam_decay: 0
&assignvariableop_26_adam_learning_rate: %
assignvariableop_27_total_2: %
assignvariableop_28_count_2: %
assignvariableop_29_total_1: %
assignvariableop_30_count_1: #
assignvariableop_31_total: #
assignvariableop_32_count: ;
)assignvariableop_33_adam_dense_6_kernel_m:2.5
'assignvariableop_34_adam_dense_6_bias_m:.;
)assignvariableop_35_adam_dense_7_kernel_m:.5
'assignvariableop_36_adam_dense_7_bias_m:c
Passignvariableop_37_adam_token_and_position_embedding_1_embedding_2_embeddings_m:	2b
Passignvariableop_38_adam_token_and_position_embedding_1_embedding_3_embeddings_m:.2j
Tassignvariableop_39_adam_transformer_encoder_1_multi_head_attention_1_query_kernel_m:22d
Rassignvariableop_40_adam_transformer_encoder_1_multi_head_attention_1_query_bias_m:2h
Rassignvariableop_41_adam_transformer_encoder_1_multi_head_attention_1_key_kernel_m:22b
Passignvariableop_42_adam_transformer_encoder_1_multi_head_attention_1_key_bias_m:2j
Tassignvariableop_43_adam_transformer_encoder_1_multi_head_attention_1_value_kernel_m:22d
Rassignvariableop_44_adam_transformer_encoder_1_multi_head_attention_1_value_bias_m:2u
_assignvariableop_45_adam_transformer_encoder_1_multi_head_attention_1_attention_output_kernel_m:22k
]assignvariableop_46_adam_transformer_encoder_1_multi_head_attention_1_attention_output_bias_m:2;
)assignvariableop_47_adam_dense_4_kernel_m:2 5
'assignvariableop_48_adam_dense_4_bias_m: ;
)assignvariableop_49_adam_dense_5_kernel_m: 25
'assignvariableop_50_adam_dense_5_bias_m:2Z
Lassignvariableop_51_adam_transformer_encoder_1_layer_normalization_2_gamma_m:2Y
Kassignvariableop_52_adam_transformer_encoder_1_layer_normalization_2_beta_m:2Z
Lassignvariableop_53_adam_transformer_encoder_1_layer_normalization_3_gamma_m:2Y
Kassignvariableop_54_adam_transformer_encoder_1_layer_normalization_3_beta_m:2;
)assignvariableop_55_adam_dense_6_kernel_v:2.5
'assignvariableop_56_adam_dense_6_bias_v:.;
)assignvariableop_57_adam_dense_7_kernel_v:.5
'assignvariableop_58_adam_dense_7_bias_v:c
Passignvariableop_59_adam_token_and_position_embedding_1_embedding_2_embeddings_v:	2b
Passignvariableop_60_adam_token_and_position_embedding_1_embedding_3_embeddings_v:.2j
Tassignvariableop_61_adam_transformer_encoder_1_multi_head_attention_1_query_kernel_v:22d
Rassignvariableop_62_adam_transformer_encoder_1_multi_head_attention_1_query_bias_v:2h
Rassignvariableop_63_adam_transformer_encoder_1_multi_head_attention_1_key_kernel_v:22b
Passignvariableop_64_adam_transformer_encoder_1_multi_head_attention_1_key_bias_v:2j
Tassignvariableop_65_adam_transformer_encoder_1_multi_head_attention_1_value_kernel_v:22d
Rassignvariableop_66_adam_transformer_encoder_1_multi_head_attention_1_value_bias_v:2u
_assignvariableop_67_adam_transformer_encoder_1_multi_head_attention_1_attention_output_kernel_v:22k
]assignvariableop_68_adam_transformer_encoder_1_multi_head_attention_1_attention_output_bias_v:2;
)assignvariableop_69_adam_dense_4_kernel_v:2 5
'assignvariableop_70_adam_dense_4_bias_v: ;
)assignvariableop_71_adam_dense_5_kernel_v: 25
'assignvariableop_72_adam_dense_5_bias_v:2Z
Lassignvariableop_73_adam_transformer_encoder_1_layer_normalization_2_gamma_v:2Y
Kassignvariableop_74_adam_transformer_encoder_1_layer_normalization_2_beta_v:2Z
Lassignvariableop_75_adam_transformer_encoder_1_layer_normalization_3_gamma_v:2Y
Kassignvariableop_76_adam_transformer_encoder_1_layer_normalization_3_beta_v:2
identity_78¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_73¢AssignVariableOp_74¢AssignVariableOp_75¢AssignVariableOp_76¢AssignVariableOp_8¢AssignVariableOp_9¢%
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:N*
dtype0*È$
value¾$B»$NB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:N*
dtype0*±
value§B¤NB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B §
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Î
_output_shapes»
¸::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*\
dtypesR
P2N	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_6_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_6_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_7_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_7_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_4AssignVariableOpHassignvariableop_4_token_and_position_embedding_1_embedding_2_embeddingsIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_5AssignVariableOpHassignvariableop_5_token_and_position_embedding_1_embedding_3_embeddingsIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_6AssignVariableOpLassignvariableop_6_transformer_encoder_1_multi_head_attention_1_query_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_7AssignVariableOpJassignvariableop_7_transformer_encoder_1_multi_head_attention_1_query_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_8AssignVariableOpJassignvariableop_8_transformer_encoder_1_multi_head_attention_1_key_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_9AssignVariableOpHassignvariableop_9_transformer_encoder_1_multi_head_attention_1_key_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:¾
AssignVariableOp_10AssignVariableOpMassignvariableop_10_transformer_encoder_1_multi_head_attention_1_value_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_11AssignVariableOpKassignvariableop_11_transformer_encoder_1_multi_head_attention_1_value_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_12AssignVariableOpXassignvariableop_12_transformer_encoder_1_multi_head_attention_1_attention_output_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ç
AssignVariableOp_13AssignVariableOpVassignvariableop_13_transformer_encoder_1_multi_head_attention_1_attention_output_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_4_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_4_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_5_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_5_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_18AssignVariableOpEassignvariableop_18_transformer_encoder_1_layer_normalization_2_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_19AssignVariableOpDassignvariableop_19_transformer_encoder_1_layer_normalization_2_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_20AssignVariableOpEassignvariableop_20_transformer_encoder_1_layer_normalization_3_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_21AssignVariableOpDassignvariableop_21_transformer_encoder_1_layer_normalization_3_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_iterIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_beta_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOpassignvariableop_24_adam_beta_2Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOpassignvariableop_25_adam_decayIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_learning_rateIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_total_2Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOpassignvariableop_28_count_2Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOpassignvariableop_31_totalIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOpassignvariableop_32_countIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_6_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_6_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_7_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_7_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_37AssignVariableOpPassignvariableop_37_adam_token_and_position_embedding_1_embedding_2_embeddings_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_38AssignVariableOpPassignvariableop_38_adam_token_and_position_embedding_1_embedding_3_embeddings_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_39AssignVariableOpTassignvariableop_39_adam_transformer_encoder_1_multi_head_attention_1_query_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_40AssignVariableOpRassignvariableop_40_adam_transformer_encoder_1_multi_head_attention_1_query_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_41AssignVariableOpRassignvariableop_41_adam_transformer_encoder_1_multi_head_attention_1_key_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_42AssignVariableOpPassignvariableop_42_adam_transformer_encoder_1_multi_head_attention_1_key_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_43AssignVariableOpTassignvariableop_43_adam_transformer_encoder_1_multi_head_attention_1_value_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_44AssignVariableOpRassignvariableop_44_adam_transformer_encoder_1_multi_head_attention_1_value_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ð
AssignVariableOp_45AssignVariableOp_assignvariableop_45_adam_transformer_encoder_1_multi_head_attention_1_attention_output_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Î
AssignVariableOp_46AssignVariableOp]assignvariableop_46_adam_transformer_encoder_1_multi_head_attention_1_attention_output_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_4_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_4_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_dense_5_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_dense_5_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_51AssignVariableOpLassignvariableop_51_adam_transformer_encoder_1_layer_normalization_2_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_52AssignVariableOpKassignvariableop_52_adam_transformer_encoder_1_layer_normalization_2_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_53AssignVariableOpLassignvariableop_53_adam_transformer_encoder_1_layer_normalization_3_gamma_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_54AssignVariableOpKassignvariableop_54_adam_transformer_encoder_1_layer_normalization_3_beta_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_dense_6_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp'assignvariableop_56_adam_dense_6_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_dense_7_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp'assignvariableop_58_adam_dense_7_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_59AssignVariableOpPassignvariableop_59_adam_token_and_position_embedding_1_embedding_2_embeddings_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_60AssignVariableOpPassignvariableop_60_adam_token_and_position_embedding_1_embedding_3_embeddings_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_61AssignVariableOpTassignvariableop_61_adam_transformer_encoder_1_multi_head_attention_1_query_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_62AssignVariableOpRassignvariableop_62_adam_transformer_encoder_1_multi_head_attention_1_query_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_63AssignVariableOpRassignvariableop_63_adam_transformer_encoder_1_multi_head_attention_1_key_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_64AssignVariableOpPassignvariableop_64_adam_transformer_encoder_1_multi_head_attention_1_key_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_65AssignVariableOpTassignvariableop_65_adam_transformer_encoder_1_multi_head_attention_1_value_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_66AssignVariableOpRassignvariableop_66_adam_transformer_encoder_1_multi_head_attention_1_value_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:Ð
AssignVariableOp_67AssignVariableOp_assignvariableop_67_adam_transformer_encoder_1_multi_head_attention_1_attention_output_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:Î
AssignVariableOp_68AssignVariableOp]assignvariableop_68_adam_transformer_encoder_1_multi_head_attention_1_attention_output_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_69AssignVariableOp)assignvariableop_69_adam_dense_4_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_70AssignVariableOp'assignvariableop_70_adam_dense_4_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_71AssignVariableOp)assignvariableop_71_adam_dense_5_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_72AssignVariableOp'assignvariableop_72_adam_dense_5_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_73AssignVariableOpLassignvariableop_73_adam_transformer_encoder_1_layer_normalization_2_gamma_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_74AssignVariableOpKassignvariableop_74_adam_transformer_encoder_1_layer_normalization_2_beta_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_75AssignVariableOpLassignvariableop_75_adam_transformer_encoder_1_layer_normalization_3_gamma_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_76AssignVariableOpKassignvariableop_76_adam_transformer_encoder_1_layer_normalization_3_beta_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 í
Identity_77Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_78IdentityIdentity_77:output:0^NoOp_1*
T0*
_output_shapes
: Ú
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_78Identity_78:output:0*±
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_76AssignVariableOp_762(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ì
ü
E__inference_dense_5_layer_call_and_return_conditional_losses_45294388

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
:ÿÿÿÿÿÿÿÿÿ. 
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
:ÿÿÿÿÿÿÿÿÿ.2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ. : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
 
_user_specified_nameinputs
¤
ü
E__inference_dense_4_layer_call_and_return_conditional_losses_45294349

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
:ÿÿÿÿÿÿÿÿÿ.2
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
:ÿÿÿÿÿÿÿÿÿ. r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
ú¿
­
#__inference__wrapped_model_45292216
input_2^
Lmodel_1_token_and_position_embedding_1_embedding_3_embedding_lookup_45292065:.2_
Lmodel_1_token_and_position_embedding_1_embedding_2_embedding_lookup_45292071:	2v
`model_1_transformer_encoder_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:22h
Vmodel_1_transformer_encoder_1_multi_head_attention_1_query_add_readvariableop_resource:2t
^model_1_transformer_encoder_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:22f
Tmodel_1_transformer_encoder_1_multi_head_attention_1_key_add_readvariableop_resource:2v
`model_1_transformer_encoder_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:22h
Vmodel_1_transformer_encoder_1_multi_head_attention_1_value_add_readvariableop_resource:2
kmodel_1_transformer_encoder_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:22o
amodel_1_transformer_encoder_1_multi_head_attention_1_attention_output_add_readvariableop_resource:2g
Ymodel_1_transformer_encoder_1_layer_normalization_2_batchnorm_mul_readvariableop_resource:2c
Umodel_1_transformer_encoder_1_layer_normalization_2_batchnorm_readvariableop_resource:2f
Tmodel_1_transformer_encoder_1_sequential_1_dense_4_tensordot_readvariableop_resource:2 `
Rmodel_1_transformer_encoder_1_sequential_1_dense_4_biasadd_readvariableop_resource: f
Tmodel_1_transformer_encoder_1_sequential_1_dense_5_tensordot_readvariableop_resource: 2`
Rmodel_1_transformer_encoder_1_sequential_1_dense_5_biasadd_readvariableop_resource:2g
Ymodel_1_transformer_encoder_1_layer_normalization_3_batchnorm_mul_readvariableop_resource:2c
Umodel_1_transformer_encoder_1_layer_normalization_3_batchnorm_readvariableop_resource:2@
.model_1_dense_6_matmul_readvariableop_resource:2.=
/model_1_dense_6_biasadd_readvariableop_resource:.@
.model_1_dense_7_matmul_readvariableop_resource:.=
/model_1_dense_7_biasadd_readvariableop_resource:
identity¢&model_1/dense_6/BiasAdd/ReadVariableOp¢%model_1/dense_6/MatMul/ReadVariableOp¢&model_1/dense_7/BiasAdd/ReadVariableOp¢%model_1/dense_7/MatMul/ReadVariableOp¢Cmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup¢Cmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup¢Lmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/ReadVariableOp¢Pmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp¢Lmodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/ReadVariableOp¢Pmodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOp¢Xmodel_1/transformer_encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOp¢bmodel_1/transformer_encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp¢Kmodel_1/transformer_encoder_1/multi_head_attention_1/key/add/ReadVariableOp¢Umodel_1/transformer_encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp¢Mmodel_1/transformer_encoder_1/multi_head_attention_1/query/add/ReadVariableOp¢Wmodel_1/transformer_encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp¢Mmodel_1/transformer_encoder_1/multi_head_attention_1/value/add/ReadVariableOp¢Wmodel_1/transformer_encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp¢Imodel_1/transformer_encoder_1/sequential_1/dense_4/BiasAdd/ReadVariableOp¢Kmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/ReadVariableOp¢Imodel_1/transformer_encoder_1/sequential_1/dense_5/BiasAdd/ReadVariableOp¢Kmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/ReadVariableOpc
,model_1/token_and_position_embedding_1/ShapeShapeinput_2*
T0*
_output_shapes
:
:model_1/token_and_position_embedding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
<model_1/token_and_position_embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<model_1/token_and_position_embedding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4model_1/token_and_position_embedding_1/strided_sliceStridedSlice5model_1/token_and_position_embedding_1/Shape:output:0Cmodel_1/token_and_position_embedding_1/strided_slice/stack:output:0Emodel_1/token_and_position_embedding_1/strided_slice/stack_1:output:0Emodel_1/token_and_position_embedding_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
2model_1/token_and_position_embedding_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : t
2model_1/token_and_position_embedding_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
,model_1/token_and_position_embedding_1/rangeRange;model_1/token_and_position_embedding_1/range/start:output:0=model_1/token_and_position_embedding_1/strided_slice:output:0;model_1/token_and_position_embedding_1/range/delta:output:0*
_output_shapes
:.ø
Cmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookupResourceGatherLmodel_1_token_and_position_embedding_1_embedding_3_embedding_lookup_452920655model_1/token_and_position_embedding_1/range:output:0*
Tindices0*_
_classU
SQloc:@model_1/token_and_position_embedding_1/embedding_3/embedding_lookup/45292065*
_output_shapes

:.2*
dtype0°
Lmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup/IdentityIdentityLmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup:output:0*
T0*_
_classU
SQloc:@model_1/token_and_position_embedding_1/embedding_3/embedding_lookup/45292065*
_output_shapes

:.2Ú
Nmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1IdentityUmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:.2
7model_1/token_and_position_embedding_1/embedding_2/CastCastinput_2*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
Cmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookupResourceGatherLmodel_1_token_and_position_embedding_1_embedding_2_embedding_lookup_45292071;model_1/token_and_position_embedding_1/embedding_2/Cast:y:0*
Tindices0*_
_classU
SQloc:@model_1/token_and_position_embedding_1/embedding_2/embedding_lookup/45292071*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0½
Lmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup/IdentityIdentityLmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup:output:0*
T0*_
_classU
SQloc:@model_1/token_and_position_embedding_1/embedding_2/embedding_lookup/45292071*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ç
Nmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1IdentityUmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
*model_1/token_and_position_embedding_1/addAddV2Wmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1:output:0Wmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ü
Wmodel_1/transformer_encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOp`model_1_transformer_encoder_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ã
Hmodel_1/transformer_encoder_1/multi_head_attention_1/query/einsum/EinsumEinsum.model_1/token_and_position_embedding_1/add:z:0_model_1/transformer_encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeä
Mmodel_1/transformer_encoder_1/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpVmodel_1_transformer_encoder_1_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0«
>model_1/transformer_encoder_1/multi_head_attention_1/query/addAddV2Qmodel_1/transformer_encoder_1/multi_head_attention_1/query/einsum/Einsum:output:0Umodel_1/transformer_encoder_1/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ø
Umodel_1/transformer_encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp^model_1_transformer_encoder_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0¿
Fmodel_1/transformer_encoder_1/multi_head_attention_1/key/einsum/EinsumEinsum.model_1/token_and_position_embedding_1/add:z:0]model_1/transformer_encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeà
Kmodel_1/transformer_encoder_1/multi_head_attention_1/key/add/ReadVariableOpReadVariableOpTmodel_1_transformer_encoder_1_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0¥
<model_1/transformer_encoder_1/multi_head_attention_1/key/addAddV2Omodel_1/transformer_encoder_1/multi_head_attention_1/key/einsum/Einsum:output:0Smodel_1/transformer_encoder_1/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ü
Wmodel_1/transformer_encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOp`model_1_transformer_encoder_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ã
Hmodel_1/transformer_encoder_1/multi_head_attention_1/value/einsum/EinsumEinsum.model_1/token_and_position_embedding_1/add:z:0_model_1/transformer_encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeä
Mmodel_1/transformer_encoder_1/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpVmodel_1_transformer_encoder_1_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0«
>model_1/transformer_encoder_1/multi_head_attention_1/value/addAddV2Qmodel_1/transformer_encoder_1/multi_head_attention_1/value/einsum/Einsum:output:0Umodel_1/transformer_encoder_1/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
:model_1/transformer_encoder_1/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>
8model_1/transformer_encoder_1/multi_head_attention_1/MulMulBmodel_1/transformer_encoder_1/multi_head_attention_1/query/add:z:0Cmodel_1/transformer_encoder_1/multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2®
Bmodel_1/transformer_encoder_1/multi_head_attention_1/einsum/EinsumEinsum@model_1/transformer_encoder_1/multi_head_attention_1/key/add:z:0<model_1/transformer_encoder_1/multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..*
equationaecd,abcd->acbeÖ
Dmodel_1/transformer_encoder_1/multi_head_attention_1/softmax/SoftmaxSoftmaxKmodel_1/transformer_encoder_1/multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..Û
Emodel_1/transformer_encoder_1/multi_head_attention_1/dropout/IdentityIdentityNmodel_1/transformer_encoder_1/multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..Ä
Dmodel_1/transformer_encoder_1/multi_head_attention_1/einsum_1/EinsumEinsumNmodel_1/transformer_encoder_1/multi_head_attention_1/dropout/Identity:output:0Bmodel_1/transformer_encoder_1/multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationacbe,aecd->abcd
bmodel_1/transformer_encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpkmodel_1_transformer_encoder_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ô
Smodel_1/transformer_encoder_1/multi_head_attention_1/attention_output/einsum/EinsumEinsumMmodel_1/transformer_encoder_1/multi_head_attention_1/einsum_1/Einsum:output:0jmodel_1/transformer_encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabcd,cde->abeö
Xmodel_1/transformer_encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpamodel_1_transformer_encoder_1_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0È
Imodel_1/transformer_encoder_1/multi_head_attention_1/attention_output/addAddV2\model_1/transformer_encoder_1/multi_head_attention_1/attention_output/einsum/Einsum:output:0`model_1/transformer_encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Á
0model_1/transformer_encoder_1/dropout_3/IdentityIdentityMmodel_1/transformer_encoder_1/multi_head_attention_1/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ë
!model_1/transformer_encoder_1/addAddV2.model_1/token_and_position_embedding_1/add:z:09model_1/transformer_encoder_1/dropout_3/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Rmodel_1/transformer_encoder_1/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
@model_1/transformer_encoder_1/layer_normalization_2/moments/meanMean%model_1/transformer_encoder_1/add:z:0[model_1/transformer_encoder_1/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(Ù
Hmodel_1/transformer_encoder_1/layer_normalization_2/moments/StopGradientStopGradientImodel_1/transformer_encoder_1/layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
Mmodel_1/transformer_encoder_1/layer_normalization_2/moments/SquaredDifferenceSquaredDifference%model_1/transformer_encoder_1/add:z:0Qmodel_1/transformer_encoder_1/layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2 
Vmodel_1/transformer_encoder_1/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ç
Dmodel_1/transformer_encoder_1/layer_normalization_2/moments/varianceMeanQmodel_1/transformer_encoder_1/layer_normalization_2/moments/SquaredDifference:z:0_model_1/transformer_encoder_1/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
Cmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
Amodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/addAddV2Mmodel_1/transformer_encoder_1/layer_normalization_2/moments/variance:output:0Lmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.É
Cmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/RsqrtRsqrtEmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.æ
Pmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpYmodel_1_transformer_encoder_1_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0¡
Amodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/mulMulGmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/Rsqrt:y:0Xmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2î
Cmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/mul_1Mul%model_1/transformer_encoder_1/add:z:0Emodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Cmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/mul_2MulImodel_1/transformer_encoder_1/layer_normalization_2/moments/mean:output:0Emodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Þ
Lmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOpUmodel_1_transformer_encoder_1_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
Amodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/subSubTmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/ReadVariableOp:value:0Gmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Cmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/add_1AddV2Gmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/mul_1:z:0Emodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2à
Kmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOpTmodel_1_transformer_encoder_1_sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0
Amodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
Amodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ¹
Bmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/ShapeShapeGmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Jmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Emodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2GatherV2Kmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/Shape:output:0Jmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/free:output:0Smodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Lmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Gmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2_1GatherV2Kmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/Shape:output:0Jmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/axes:output:0Umodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Bmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Amodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/ProdProdNmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2:output:0Kmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 
Dmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Cmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/Prod_1ProdPmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2_1:output:0Mmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Hmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : è
Cmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/concatConcatV2Jmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/free:output:0Jmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/axes:output:0Qmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
Bmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/stackPackJmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/Prod:output:0Lmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
: 
Fmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/transpose	TransposeGmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/add_1:z:0Lmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2£
Dmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/ReshapeReshapeJmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/transpose:y:0Kmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ£
Cmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/MatMulMatMulMmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/Reshape:output:0Smodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
Dmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
Jmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ó
Emodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/concat_1ConcatV2Nmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2:output:0Mmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/Const_2:output:0Smodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
<model_1/transformer_encoder_1/sequential_1/dense_4/TensordotReshapeMmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/MatMul:product:0Nmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. Ø
Imodel_1/transformer_encoder_1/sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOpRmodel_1_transformer_encoder_1_sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
:model_1/transformer_encoder_1/sequential_1/dense_4/BiasAddBiasAddEmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot:output:0Qmodel_1/transformer_encoder_1/sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. º
7model_1/transformer_encoder_1/sequential_1/dense_4/ReluReluCmodel_1/transformer_encoder_1/sequential_1/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. à
Kmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOpTmodel_1_transformer_encoder_1_sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0
Amodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
Amodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ·
Bmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/ShapeShapeEmodel_1/transformer_encoder_1/sequential_1/dense_4/Relu:activations:0*
T0*
_output_shapes
:
Jmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Emodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2GatherV2Kmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/Shape:output:0Jmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/free:output:0Smodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Lmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Gmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2_1GatherV2Kmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/Shape:output:0Jmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/axes:output:0Umodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Bmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Amodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/ProdProdNmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2:output:0Kmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: 
Dmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
Cmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/Prod_1ProdPmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2_1:output:0Mmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Hmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : è
Cmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/concatConcatV2Jmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/free:output:0Jmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/axes:output:0Qmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
Bmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/stackPackJmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/Prod:output:0Lmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
Fmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/transpose	TransposeEmodel_1/transformer_encoder_1/sequential_1/dense_4/Relu:activations:0Lmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. £
Dmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/ReshapeReshapeJmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/transpose:y:0Kmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ£
Cmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/MatMulMatMulMmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/Reshape:output:0Smodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Dmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Jmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ó
Emodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/concat_1ConcatV2Nmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2:output:0Mmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/Const_2:output:0Smodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
<model_1/transformer_encoder_1/sequential_1/dense_5/TensordotReshapeMmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/MatMul:product:0Nmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ø
Imodel_1/transformer_encoder_1/sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOpRmodel_1_transformer_encoder_1_sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
:model_1/transformer_encoder_1/sequential_1/dense_5/BiasAddBiasAddEmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot:output:0Qmodel_1/transformer_encoder_1/sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2·
0model_1/transformer_encoder_1/dropout_4/IdentityIdentityCmodel_1/transformer_encoder_1/sequential_1/dense_5/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2æ
#model_1/transformer_encoder_1/add_1AddV2Gmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/add_1:z:09model_1/transformer_encoder_1/dropout_4/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Rmodel_1/transformer_encoder_1/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
@model_1/transformer_encoder_1/layer_normalization_3/moments/meanMean'model_1/transformer_encoder_1/add_1:z:0[model_1/transformer_encoder_1/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(Ù
Hmodel_1/transformer_encoder_1/layer_normalization_3/moments/StopGradientStopGradientImodel_1/transformer_encoder_1/layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
Mmodel_1/transformer_encoder_1/layer_normalization_3/moments/SquaredDifferenceSquaredDifference'model_1/transformer_encoder_1/add_1:z:0Qmodel_1/transformer_encoder_1/layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2 
Vmodel_1/transformer_encoder_1/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ç
Dmodel_1/transformer_encoder_1/layer_normalization_3/moments/varianceMeanQmodel_1/transformer_encoder_1/layer_normalization_3/moments/SquaredDifference:z:0_model_1/transformer_encoder_1/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
Cmodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
Amodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/addAddV2Mmodel_1/transformer_encoder_1/layer_normalization_3/moments/variance:output:0Lmodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.É
Cmodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/RsqrtRsqrtEmodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.æ
Pmodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpYmodel_1_transformer_encoder_1_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0¡
Amodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/mulMulGmodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/Rsqrt:y:0Xmodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ð
Cmodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/mul_1Mul'model_1/transformer_encoder_1/add_1:z:0Emodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Cmodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/mul_2MulImodel_1/transformer_encoder_1/layer_normalization_3/moments/mean:output:0Emodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Þ
Lmodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOpUmodel_1_transformer_encoder_1_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
Amodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/subSubTmodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/ReadVariableOp:value:0Gmodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Cmodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/add_1AddV2Gmodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/mul_1:z:0Emodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2y
7model_1/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :ê
%model_1/global_average_pooling1d/MeanMeanGmodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/add_1:z:0@model_1/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
%model_1/dense_6/MatMul/ReadVariableOpReadVariableOp.model_1_dense_6_matmul_readvariableop_resource*
_output_shapes

:2.*
dtype0±
model_1/dense_6/MatMulMatMul.model_1/global_average_pooling1d/Mean:output:0-model_1/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
&model_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_6_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0¦
model_1/dense_6/BiasAddBiasAdd model_1/dense_6/MatMul:product:0.model_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.p
model_1/dense_6/ReluRelu model_1/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
%model_1/dense_7/MatMul/ReadVariableOpReadVariableOp.model_1_dense_7_matmul_readvariableop_resource*
_output_shapes

:.*
dtype0¥
model_1/dense_7/MatMulMatMul"model_1/dense_6/Relu:activations:0-model_1/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&model_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¦
model_1/dense_7/BiasAddBiasAdd model_1/dense_7/MatMul:product:0.model_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
IdentityIdentity model_1/dense_7/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
NoOpNoOp'^model_1/dense_6/BiasAdd/ReadVariableOp&^model_1/dense_6/MatMul/ReadVariableOp'^model_1/dense_7/BiasAdd/ReadVariableOp&^model_1/dense_7/MatMul/ReadVariableOpD^model_1/token_and_position_embedding_1/embedding_2/embedding_lookupD^model_1/token_and_position_embedding_1/embedding_3/embedding_lookupM^model_1/transformer_encoder_1/layer_normalization_2/batchnorm/ReadVariableOpQ^model_1/transformer_encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOpM^model_1/transformer_encoder_1/layer_normalization_3/batchnorm/ReadVariableOpQ^model_1/transformer_encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOpY^model_1/transformer_encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOpc^model_1/transformer_encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpL^model_1/transformer_encoder_1/multi_head_attention_1/key/add/ReadVariableOpV^model_1/transformer_encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpN^model_1/transformer_encoder_1/multi_head_attention_1/query/add/ReadVariableOpX^model_1/transformer_encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpN^model_1/transformer_encoder_1/multi_head_attention_1/value/add/ReadVariableOpX^model_1/transformer_encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpJ^model_1/transformer_encoder_1/sequential_1/dense_4/BiasAdd/ReadVariableOpL^model_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/ReadVariableOpJ^model_1/transformer_encoder_1/sequential_1/dense_5/BiasAdd/ReadVariableOpL^model_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : 2P
&model_1/dense_6/BiasAdd/ReadVariableOp&model_1/dense_6/BiasAdd/ReadVariableOp2N
%model_1/dense_6/MatMul/ReadVariableOp%model_1/dense_6/MatMul/ReadVariableOp2P
&model_1/dense_7/BiasAdd/ReadVariableOp&model_1/dense_7/BiasAdd/ReadVariableOp2N
%model_1/dense_7/MatMul/ReadVariableOp%model_1/dense_7/MatMul/ReadVariableOp2
Cmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookupCmodel_1/token_and_position_embedding_1/embedding_2/embedding_lookup2
Cmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookupCmodel_1/token_and_position_embedding_1/embedding_3/embedding_lookup2
Lmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/ReadVariableOpLmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/ReadVariableOp2¤
Pmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOpPmodel_1/transformer_encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp2
Lmodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/ReadVariableOpLmodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/ReadVariableOp2¤
Pmodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOpPmodel_1/transformer_encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOp2´
Xmodel_1/transformer_encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOpXmodel_1/transformer_encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOp2È
bmodel_1/transformer_encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpbmodel_1/transformer_encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2
Kmodel_1/transformer_encoder_1/multi_head_attention_1/key/add/ReadVariableOpKmodel_1/transformer_encoder_1/multi_head_attention_1/key/add/ReadVariableOp2®
Umodel_1/transformer_encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpUmodel_1/transformer_encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2
Mmodel_1/transformer_encoder_1/multi_head_attention_1/query/add/ReadVariableOpMmodel_1/transformer_encoder_1/multi_head_attention_1/query/add/ReadVariableOp2²
Wmodel_1/transformer_encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpWmodel_1/transformer_encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2
Mmodel_1/transformer_encoder_1/multi_head_attention_1/value/add/ReadVariableOpMmodel_1/transformer_encoder_1/multi_head_attention_1/value/add/ReadVariableOp2²
Wmodel_1/transformer_encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpWmodel_1/transformer_encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2
Imodel_1/transformer_encoder_1/sequential_1/dense_4/BiasAdd/ReadVariableOpImodel_1/transformer_encoder_1/sequential_1/dense_4/BiasAdd/ReadVariableOp2
Kmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/ReadVariableOpKmodel_1/transformer_encoder_1/sequential_1/dense_4/Tensordot/ReadVariableOp2
Imodel_1/transformer_encoder_1/sequential_1/dense_5/BiasAdd/ReadVariableOpImodel_1/transformer_encoder_1/sequential_1/dense_5/BiasAdd/ReadVariableOp2
Kmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/ReadVariableOpKmodel_1/transformer_encoder_1/sequential_1/dense_5/Tensordot/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!
_user_specified_name	input_2
¦
¢,
!__inference__traced_save_45294642
file_prefix-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableopT
Psavev2_token_and_position_embedding_1_embedding_2_embeddings_read_readvariableopT
Psavev2_token_and_position_embedding_1_embedding_3_embeddings_read_readvariableopX
Tsavev2_transformer_encoder_1_multi_head_attention_1_query_kernel_read_readvariableopV
Rsavev2_transformer_encoder_1_multi_head_attention_1_query_bias_read_readvariableopV
Rsavev2_transformer_encoder_1_multi_head_attention_1_key_kernel_read_readvariableopT
Psavev2_transformer_encoder_1_multi_head_attention_1_key_bias_read_readvariableopX
Tsavev2_transformer_encoder_1_multi_head_attention_1_value_kernel_read_readvariableopV
Rsavev2_transformer_encoder_1_multi_head_attention_1_value_bias_read_readvariableopc
_savev2_transformer_encoder_1_multi_head_attention_1_attention_output_kernel_read_readvariableopa
]savev2_transformer_encoder_1_multi_head_attention_1_attention_output_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableopP
Lsavev2_transformer_encoder_1_layer_normalization_2_gamma_read_readvariableopO
Ksavev2_transformer_encoder_1_layer_normalization_2_beta_read_readvariableopP
Lsavev2_transformer_encoder_1_layer_normalization_3_gamma_read_readvariableopO
Ksavev2_transformer_encoder_1_layer_normalization_3_beta_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_1_embedding_2_embeddings_m_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_1_embedding_3_embeddings_m_read_readvariableop_
[savev2_adam_transformer_encoder_1_multi_head_attention_1_query_kernel_m_read_readvariableop]
Ysavev2_adam_transformer_encoder_1_multi_head_attention_1_query_bias_m_read_readvariableop]
Ysavev2_adam_transformer_encoder_1_multi_head_attention_1_key_kernel_m_read_readvariableop[
Wsavev2_adam_transformer_encoder_1_multi_head_attention_1_key_bias_m_read_readvariableop_
[savev2_adam_transformer_encoder_1_multi_head_attention_1_value_kernel_m_read_readvariableop]
Ysavev2_adam_transformer_encoder_1_multi_head_attention_1_value_bias_m_read_readvariableopj
fsavev2_adam_transformer_encoder_1_multi_head_attention_1_attention_output_kernel_m_read_readvariableoph
dsavev2_adam_transformer_encoder_1_multi_head_attention_1_attention_output_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableopW
Ssavev2_adam_transformer_encoder_1_layer_normalization_2_gamma_m_read_readvariableopV
Rsavev2_adam_transformer_encoder_1_layer_normalization_2_beta_m_read_readvariableopW
Ssavev2_adam_transformer_encoder_1_layer_normalization_3_gamma_m_read_readvariableopV
Rsavev2_adam_transformer_encoder_1_layer_normalization_3_beta_m_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_1_embedding_2_embeddings_v_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_1_embedding_3_embeddings_v_read_readvariableop_
[savev2_adam_transformer_encoder_1_multi_head_attention_1_query_kernel_v_read_readvariableop]
Ysavev2_adam_transformer_encoder_1_multi_head_attention_1_query_bias_v_read_readvariableop]
Ysavev2_adam_transformer_encoder_1_multi_head_attention_1_key_kernel_v_read_readvariableop[
Wsavev2_adam_transformer_encoder_1_multi_head_attention_1_key_bias_v_read_readvariableop_
[savev2_adam_transformer_encoder_1_multi_head_attention_1_value_kernel_v_read_readvariableop]
Ysavev2_adam_transformer_encoder_1_multi_head_attention_1_value_bias_v_read_readvariableopj
fsavev2_adam_transformer_encoder_1_multi_head_attention_1_attention_output_kernel_v_read_readvariableoph
dsavev2_adam_transformer_encoder_1_multi_head_attention_1_attention_output_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableopW
Ssavev2_adam_transformer_encoder_1_layer_normalization_2_gamma_v_read_readvariableopV
Rsavev2_adam_transformer_encoder_1_layer_normalization_2_beta_v_read_readvariableopW
Ssavev2_adam_transformer_encoder_1_layer_normalization_3_gamma_v_read_readvariableopV
Rsavev2_adam_transformer_encoder_1_layer_normalization_3_beta_v_read_readvariableop
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
: %
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:N*
dtype0*È$
value¾$B»$NB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:N*
dtype0*±
value§B¤NB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ý*
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableopPsavev2_token_and_position_embedding_1_embedding_2_embeddings_read_readvariableopPsavev2_token_and_position_embedding_1_embedding_3_embeddings_read_readvariableopTsavev2_transformer_encoder_1_multi_head_attention_1_query_kernel_read_readvariableopRsavev2_transformer_encoder_1_multi_head_attention_1_query_bias_read_readvariableopRsavev2_transformer_encoder_1_multi_head_attention_1_key_kernel_read_readvariableopPsavev2_transformer_encoder_1_multi_head_attention_1_key_bias_read_readvariableopTsavev2_transformer_encoder_1_multi_head_attention_1_value_kernel_read_readvariableopRsavev2_transformer_encoder_1_multi_head_attention_1_value_bias_read_readvariableop_savev2_transformer_encoder_1_multi_head_attention_1_attention_output_kernel_read_readvariableop]savev2_transformer_encoder_1_multi_head_attention_1_attention_output_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableopLsavev2_transformer_encoder_1_layer_normalization_2_gamma_read_readvariableopKsavev2_transformer_encoder_1_layer_normalization_2_beta_read_readvariableopLsavev2_transformer_encoder_1_layer_normalization_3_gamma_read_readvariableopKsavev2_transformer_encoder_1_layer_normalization_3_beta_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableopWsavev2_adam_token_and_position_embedding_1_embedding_2_embeddings_m_read_readvariableopWsavev2_adam_token_and_position_embedding_1_embedding_3_embeddings_m_read_readvariableop[savev2_adam_transformer_encoder_1_multi_head_attention_1_query_kernel_m_read_readvariableopYsavev2_adam_transformer_encoder_1_multi_head_attention_1_query_bias_m_read_readvariableopYsavev2_adam_transformer_encoder_1_multi_head_attention_1_key_kernel_m_read_readvariableopWsavev2_adam_transformer_encoder_1_multi_head_attention_1_key_bias_m_read_readvariableop[savev2_adam_transformer_encoder_1_multi_head_attention_1_value_kernel_m_read_readvariableopYsavev2_adam_transformer_encoder_1_multi_head_attention_1_value_bias_m_read_readvariableopfsavev2_adam_transformer_encoder_1_multi_head_attention_1_attention_output_kernel_m_read_readvariableopdsavev2_adam_transformer_encoder_1_multi_head_attention_1_attention_output_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableopSsavev2_adam_transformer_encoder_1_layer_normalization_2_gamma_m_read_readvariableopRsavev2_adam_transformer_encoder_1_layer_normalization_2_beta_m_read_readvariableopSsavev2_adam_transformer_encoder_1_layer_normalization_3_gamma_m_read_readvariableopRsavev2_adam_transformer_encoder_1_layer_normalization_3_beta_m_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableopWsavev2_adam_token_and_position_embedding_1_embedding_2_embeddings_v_read_readvariableopWsavev2_adam_token_and_position_embedding_1_embedding_3_embeddings_v_read_readvariableop[savev2_adam_transformer_encoder_1_multi_head_attention_1_query_kernel_v_read_readvariableopYsavev2_adam_transformer_encoder_1_multi_head_attention_1_query_bias_v_read_readvariableopYsavev2_adam_transformer_encoder_1_multi_head_attention_1_key_kernel_v_read_readvariableopWsavev2_adam_transformer_encoder_1_multi_head_attention_1_key_bias_v_read_readvariableop[savev2_adam_transformer_encoder_1_multi_head_attention_1_value_kernel_v_read_readvariableopYsavev2_adam_transformer_encoder_1_multi_head_attention_1_value_bias_v_read_readvariableopfsavev2_adam_transformer_encoder_1_multi_head_attention_1_attention_output_kernel_v_read_readvariableopdsavev2_adam_transformer_encoder_1_multi_head_attention_1_attention_output_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableopSsavev2_adam_transformer_encoder_1_layer_normalization_2_gamma_v_read_readvariableopRsavev2_adam_transformer_encoder_1_layer_normalization_2_beta_v_read_readvariableopSsavev2_adam_transformer_encoder_1_layer_normalization_3_gamma_v_read_readvariableopRsavev2_adam_transformer_encoder_1_layer_normalization_3_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *\
dtypesR
P2N	
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

identity_1Identity_1:output:0*
_input_shapesø
õ: :2.:.:.::	2:.2:22:2:22:2:22:2:22:2:2 : : 2:2:2:2:2:2: : : : : : : : : : : :2.:.:.::	2:.2:22:2:22:2:22:2:22:2:2 : : 2:2:2:2:2:2:2.:.:.::	2:.2:22:2:22:2:22:2:22:2:2 : : 2:2:2:2:2:2: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:2.: 

_output_shapes
:.:$ 

_output_shapes

:.: 

_output_shapes
::%!

_output_shapes
:	2:$ 

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
:2:
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
: :$" 

_output_shapes

:2.: #

_output_shapes
:.:$$ 

_output_shapes

:.: %

_output_shapes
::%&!

_output_shapes
:	2:$' 

_output_shapes

:.2:(($
"
_output_shapes
:22:$) 

_output_shapes

:2:(*$
"
_output_shapes
:22:$+ 

_output_shapes

:2:(,$
"
_output_shapes
:22:$- 

_output_shapes

:2:(.$
"
_output_shapes
:22: /

_output_shapes
:2:$0 

_output_shapes

:2 : 1

_output_shapes
: :$2 

_output_shapes

: 2: 3

_output_shapes
:2: 4
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
:2:$8 

_output_shapes

:2.: 9

_output_shapes
:.:$: 

_output_shapes

:.: ;

_output_shapes
::%<!

_output_shapes
:	2:$= 

_output_shapes

:.2:(>$
"
_output_shapes
:22:$? 

_output_shapes

:2:(@$
"
_output_shapes
:22:$A 

_output_shapes

:2:(B$
"
_output_shapes
:22:$C 

_output_shapes

:2:(D$
"
_output_shapes
:22: E

_output_shapes
:2:$F 

_output_shapes

:2 : G

_output_shapes
: :$H 

_output_shapes

: 2: I

_output_shapes
:2: J

_output_shapes
:2: K

_output_shapes
:2: L

_output_shapes
:2: M

_output_shapes
:2:N

_output_shapes
: 
Ç
Ù
/__inference_sequential_1_layer_call_fn_45292381
dense_4_input
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_4_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_45292357s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
'
_user_specified_namedense_4_input


ö
E__inference_dense_6_layer_call_and_return_conditional_losses_45292632

inputs0
matmul_readvariableop_resource:2.-
biasadd_readvariableop_resource:.
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2.*
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
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs

r
V__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_45292419

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

r
V__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_45294130

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
¸
8__inference_transformer_encoder_1_layer_call_fn_45293815

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
identity¢StatefulPartitionedCall§
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
:ÿÿÿÿÿÿÿÿÿ.2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_45292586s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ.2: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
½&
¤

E__inference_model_1_layer_call_and_return_conditional_losses_45293051

inputs9
'token_and_position_embedding_1_45293001:.2:
'token_and_position_embedding_1_45293003:	24
transformer_encoder_1_45293006:220
transformer_encoder_1_45293008:24
transformer_encoder_1_45293010:220
transformer_encoder_1_45293012:24
transformer_encoder_1_45293014:220
transformer_encoder_1_45293016:24
transformer_encoder_1_45293018:22,
transformer_encoder_1_45293020:2,
transformer_encoder_1_45293022:2,
transformer_encoder_1_45293024:20
transformer_encoder_1_45293026:2 ,
transformer_encoder_1_45293028: 0
transformer_encoder_1_45293030: 2,
transformer_encoder_1_45293032:2,
transformer_encoder_1_45293034:2,
transformer_encoder_1_45293036:2"
dense_6_45293040:2.
dense_6_45293042:."
dense_7_45293045:.
dense_7_45293047:
identity¢dense_6/StatefulPartitionedCall¢dense_7/StatefulPartitionedCall¢6token_and_position_embedding_1/StatefulPartitionedCall¢-transformer_encoder_1/StatefulPartitionedCallÒ
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputs'token_and_position_embedding_1_45293001'token_and_position_embedding_1_45293003*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *e
f`R^
\__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_45292453Ã
-transformer_encoder_1/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0transformer_encoder_1_45293006transformer_encoder_1_45293008transformer_encoder_1_45293010transformer_encoder_1_45293012transformer_encoder_1_45293014transformer_encoder_1_45293016transformer_encoder_1_45293018transformer_encoder_1_45293020transformer_encoder_1_45293022transformer_encoder_1_45293024transformer_encoder_1_45293026transformer_encoder_1_45293028transformer_encoder_1_45293030transformer_encoder_1_45293032transformer_encoder_1_45293034transformer_encoder_1_45293036*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_45292902
(global_average_pooling1d/PartitionedCallPartitionedCall6transformer_encoder_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_45292419
dense_6/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_6_45293040dense_6_45293042*
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
GPU 2J 8 *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_45292632
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_45293045dense_7_45293047*
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
GPU 2J 8 *N
fIRG
E__inference_dense_7_layer_call_and_return_conditional_losses_45292648w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿó
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall.^transformer_encoder_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2^
-transformer_encoder_1/StatefulPartitionedCall-transformer_encoder_1/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
À&
¥

E__inference_model_1_layer_call_and_return_conditional_losses_45293200
input_29
'token_and_position_embedding_1_45293150:.2:
'token_and_position_embedding_1_45293152:	24
transformer_encoder_1_45293155:220
transformer_encoder_1_45293157:24
transformer_encoder_1_45293159:220
transformer_encoder_1_45293161:24
transformer_encoder_1_45293163:220
transformer_encoder_1_45293165:24
transformer_encoder_1_45293167:22,
transformer_encoder_1_45293169:2,
transformer_encoder_1_45293171:2,
transformer_encoder_1_45293173:20
transformer_encoder_1_45293175:2 ,
transformer_encoder_1_45293177: 0
transformer_encoder_1_45293179: 2,
transformer_encoder_1_45293181:2,
transformer_encoder_1_45293183:2,
transformer_encoder_1_45293185:2"
dense_6_45293189:2.
dense_6_45293191:."
dense_7_45293194:.
dense_7_45293196:
identity¢dense_6/StatefulPartitionedCall¢dense_7/StatefulPartitionedCall¢6token_and_position_embedding_1/StatefulPartitionedCall¢-transformer_encoder_1/StatefulPartitionedCallÓ
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_2'token_and_position_embedding_1_45293150'token_and_position_embedding_1_45293152*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *e
f`R^
\__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_45292453Ã
-transformer_encoder_1/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0transformer_encoder_1_45293155transformer_encoder_1_45293157transformer_encoder_1_45293159transformer_encoder_1_45293161transformer_encoder_1_45293163transformer_encoder_1_45293165transformer_encoder_1_45293167transformer_encoder_1_45293169transformer_encoder_1_45293171transformer_encoder_1_45293173transformer_encoder_1_45293175transformer_encoder_1_45293177transformer_encoder_1_45293179transformer_encoder_1_45293181transformer_encoder_1_45293183transformer_encoder_1_45293185*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_45292586
(global_average_pooling1d/PartitionedCallPartitionedCall6transformer_encoder_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_45292419
dense_6/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_6_45293189dense_6_45293191*
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
GPU 2J 8 *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_45292632
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_45293194dense_7_45293196*
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
GPU 2J 8 *N
fIRG
E__inference_dense_7_layer_call_and_return_conditional_losses_45292648w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿó
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall.^transformer_encoder_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2^
-transformer_encoder_1/StatefulPartitionedCall-transformer_encoder_1/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!
_user_specified_name	input_2
Å
¼
J__inference_sequential_1_layer_call_and_return_conditional_losses_45292395
dense_4_input"
dense_4_45292384:2 
dense_4_45292386: "
dense_5_45292389: 2
dense_5_45292391:2
identity¢dense_4/StatefulPartitionedCall¢dense_5/StatefulPartitionedCallý
dense_4/StatefulPartitionedCallStatefulPartitionedCalldense_4_inputdense_4_45292384dense_4_45292386*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_4_layer_call_and_return_conditional_losses_45292254
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_45292389dense_5_45292391*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_5_layer_call_and_return_conditional_losses_45292290{
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
'
_user_specified_namedense_4_input
¸È
ª
S__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_45292902

inputsX
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_1_query_add_readvariableop_resource:2V
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_1_key_add_readvariableop_resource:2X
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_1_value_add_readvariableop_resource:2c
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:22Q
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:2I
;layer_normalization_2_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_2_batchnorm_readvariableop_resource:2H
6sequential_1_dense_4_tensordot_readvariableop_resource:2 B
4sequential_1_dense_4_biasadd_readvariableop_resource: H
6sequential_1_dense_5_tensordot_readvariableop_resource: 2B
4sequential_1_dense_5_biasadd_readvariableop_resource:2I
;layer_normalization_3_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_3_batchnorm_readvariableop_resource:2
identity¢.layer_normalization_2/batchnorm/ReadVariableOp¢2layer_normalization_2/batchnorm/mul/ReadVariableOp¢.layer_normalization_3/batchnorm/ReadVariableOp¢2layer_normalization_3/batchnorm/mul/ReadVariableOp¢:multi_head_attention_1/attention_output/add/ReadVariableOp¢Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_1/key/add/ReadVariableOp¢7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_1/query/add/ReadVariableOp¢9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_1/value/add/ReadVariableOp¢9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp¢+sequential_1/dense_4/BiasAdd/ReadVariableOp¢-sequential_1/dense_4/Tensordot/ReadVariableOp¢+sequential_1/dense_5/BiasAdd/ReadVariableOp¢-sequential_1/dense_5/Tensordot/ReadVariableOpÀ
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¨
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¼
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¤
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2À
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¨
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>¨
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ô
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..*
equationaecd,abcd->acbe
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..ê
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/softmax/Softmax:softmax:0$multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabcd,cde->abeº
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0î
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @¥
dropout_3/dropout/MulMul/multi_head_attention_1/attention_output/add:z:0 dropout_3/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2v
dropout_3/dropout/ShapeShape/multi_head_attention_1/attention_output/add:z:0*
T0*
_output_shapes
:¤
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?È
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2g
addAddV2inputsdropout_3/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¹
"layer_normalization_2/moments/meanMeanadd:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¸
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ª
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
%layer_normalization_2/batchnorm/mul_1Muladd:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¢
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¤
-sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0m
#sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
$sequential_1/dense_4/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:n
,sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential_1/dense_4/Tensordot/GatherV2GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/free:output:05sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_1/dense_4/Tensordot/GatherV2_1GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/axes:output:07sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ­
#sequential_1/dense_4/Tensordot/ProdProd0sequential_1/dense_4/Tensordot/GatherV2:output:0-sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_1/dense_4/Tensordot/Prod_1Prod2sequential_1/dense_4/Tensordot/GatherV2_1:output:0/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
%sequential_1/dense_4/Tensordot/concatConcatV2,sequential_1/dense_4/Tensordot/free:output:0,sequential_1/dense_4/Tensordot/axes:output:03sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¸
$sequential_1/dense_4/Tensordot/stackPack,sequential_1/dense_4/Tensordot/Prod:output:0.sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Æ
(sequential_1/dense_4/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0.sequential_1/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2É
&sequential_1/dense_4/Tensordot/ReshapeReshape,sequential_1/dense_4/Tensordot/transpose:y:0-sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
%sequential_1/dense_4/Tensordot/MatMulMatMul/sequential_1/dense_4/Tensordot/Reshape:output:05sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
&sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: n
,sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
'sequential_1/dense_4/Tensordot/concat_1ConcatV20sequential_1/dense_4/Tensordot/GatherV2:output:0/sequential_1/dense_4/Tensordot/Const_2:output:05sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Â
sequential_1/dense_4/TensordotReshape/sequential_1/dense_4/Tensordot/MatMul:product:00sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0»
sequential_1/dense_4/BiasAddBiasAdd'sequential_1/dense_4/Tensordot:output:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ~
sequential_1/dense_4/ReluRelu%sequential_1/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ¤
-sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0m
#sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_1/dense_5/Tensordot/ShapeShape'sequential_1/dense_4/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential_1/dense_5/Tensordot/GatherV2GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/free:output:05sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_1/dense_5/Tensordot/GatherV2_1GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/axes:output:07sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ­
#sequential_1/dense_5/Tensordot/ProdProd0sequential_1/dense_5/Tensordot/GatherV2:output:0-sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_1/dense_5/Tensordot/Prod_1Prod2sequential_1/dense_5/Tensordot/GatherV2_1:output:0/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
%sequential_1/dense_5/Tensordot/concatConcatV2,sequential_1/dense_5/Tensordot/free:output:0,sequential_1/dense_5/Tensordot/axes:output:03sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¸
$sequential_1/dense_5/Tensordot/stackPack,sequential_1/dense_5/Tensordot/Prod:output:0.sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ä
(sequential_1/dense_5/Tensordot/transpose	Transpose'sequential_1/dense_4/Relu:activations:0.sequential_1/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. É
&sequential_1/dense_5/Tensordot/ReshapeReshape,sequential_1/dense_5/Tensordot/transpose:y:0-sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
%sequential_1/dense_5/Tensordot/MatMulMatMul/sequential_1/dense_5/Tensordot/Reshape:output:05sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
&sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2n
,sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
'sequential_1/dense_5/Tensordot/concat_1ConcatV20sequential_1/dense_5/Tensordot/GatherV2:output:0/sequential_1/dense_5/Tensordot/Const_2:output:05sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Â
sequential_1/dense_5/TensordotReshape/sequential_1/dense_5/Tensordot/MatMul:product:00sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
+sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0»
sequential_1/dense_5/BiasAddBiasAdd'sequential_1/dense_5/Tensordot:output:03sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_4/dropout/MulMul%sequential_1/dense_5/BiasAdd:output:0 dropout_4/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2l
dropout_4/dropout/ShapeShape%sequential_1/dense_5/BiasAdd:output:0*
T0*
_output_shapes
:¤
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?È
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
add_1AddV2)layer_normalization_2/batchnorm/add_1:z:0dropout_4/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2~
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
"layer_normalization_3/moments/meanMean	add_1:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.º
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(j
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ª
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
%layer_normalization_3/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¢
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2|
IdentityIdentity)layer_normalization_3/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp.^sequential_1/dense_4/Tensordot/ReadVariableOp,^sequential_1/dense_5/BiasAdd/ReadVariableOp.^sequential_1/dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ.2: : : : : : : : : : : : : : : : 2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2^
-sequential_1/dense_4/Tensordot/ReadVariableOp-sequential_1/dense_4/Tensordot/ReadVariableOp2Z
+sequential_1/dense_5/BiasAdd/ReadVariableOp+sequential_1/dense_5/BiasAdd/ReadVariableOp2^
-sequential_1/dense_5/Tensordot/ReadVariableOp-sequential_1/dense_5/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
»
×
*__inference_model_1_layer_call_fn_45293359

inputs
unknown:.2
	unknown_0:	2
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

unknown_17:2.

unknown_18:.

unknown_19:.

unknown_20:
identity¢StatefulPartitionedCallé
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
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_1_layer_call_and_return_conditional_losses_45292655o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs

Ô
&__inference_signature_wrapper_45293310
input_2
unknown:.2
	unknown_0:	2
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

unknown_17:2.

unknown_18:.

unknown_19:.

unknown_20:
identity¢StatefulPartitionedCallÈ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__wrapped_model_45292216o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!
_user_specified_name	input_2
²
Ò
/__inference_sequential_1_layer_call_fn_45294195

inputs
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identity¢StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_45292357s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
Ï¸
í
E__inference_model_1_layer_call_and_return_conditional_losses_45293745

inputsV
Dtoken_and_position_embedding_1_embedding_3_embedding_lookup_45293581:.2W
Dtoken_and_position_embedding_1_embedding_2_embedding_lookup_45293587:	2n
Xtransformer_encoder_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_1_multi_head_attention_1_query_add_readvariableop_resource:2l
Vtransformer_encoder_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:22^
Ltransformer_encoder_1_multi_head_attention_1_key_add_readvariableop_resource:2n
Xtransformer_encoder_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:22`
Ntransformer_encoder_1_multi_head_attention_1_value_add_readvariableop_resource:2y
ctransformer_encoder_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:22g
Ytransformer_encoder_1_multi_head_attention_1_attention_output_add_readvariableop_resource:2_
Qtransformer_encoder_1_layer_normalization_2_batchnorm_mul_readvariableop_resource:2[
Mtransformer_encoder_1_layer_normalization_2_batchnorm_readvariableop_resource:2^
Ltransformer_encoder_1_sequential_1_dense_4_tensordot_readvariableop_resource:2 X
Jtransformer_encoder_1_sequential_1_dense_4_biasadd_readvariableop_resource: ^
Ltransformer_encoder_1_sequential_1_dense_5_tensordot_readvariableop_resource: 2X
Jtransformer_encoder_1_sequential_1_dense_5_biasadd_readvariableop_resource:2_
Qtransformer_encoder_1_layer_normalization_3_batchnorm_mul_readvariableop_resource:2[
Mtransformer_encoder_1_layer_normalization_3_batchnorm_readvariableop_resource:28
&dense_6_matmul_readvariableop_resource:2.5
'dense_6_biasadd_readvariableop_resource:.8
&dense_7_matmul_readvariableop_resource:.5
'dense_7_biasadd_readvariableop_resource:
identity¢dense_6/BiasAdd/ReadVariableOp¢dense_6/MatMul/ReadVariableOp¢dense_7/BiasAdd/ReadVariableOp¢dense_7/MatMul/ReadVariableOp¢;token_and_position_embedding_1/embedding_2/embedding_lookup¢;token_and_position_embedding_1/embedding_3/embedding_lookup¢Dtransformer_encoder_1/layer_normalization_2/batchnorm/ReadVariableOp¢Htransformer_encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp¢Dtransformer_encoder_1/layer_normalization_3/batchnorm/ReadVariableOp¢Htransformer_encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOp¢Ptransformer_encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOp¢Ztransformer_encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp¢Ctransformer_encoder_1/multi_head_attention_1/key/add/ReadVariableOp¢Mtransformer_encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp¢Etransformer_encoder_1/multi_head_attention_1/query/add/ReadVariableOp¢Otransformer_encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp¢Etransformer_encoder_1/multi_head_attention_1/value/add/ReadVariableOp¢Otransformer_encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp¢Atransformer_encoder_1/sequential_1/dense_4/BiasAdd/ReadVariableOp¢Ctransformer_encoder_1/sequential_1/dense_4/Tensordot/ReadVariableOp¢Atransformer_encoder_1/sequential_1/dense_5/BiasAdd/ReadVariableOp¢Ctransformer_encoder_1/sequential_1/dense_5/Tensordot/ReadVariableOpZ
$token_and_position_embedding_1/ShapeShapeinputs*
T0*
_output_shapes
:
2token_and_position_embedding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ~
4token_and_position_embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4token_and_position_embedding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,token_and_position_embedding_1/strided_sliceStridedSlice-token_and_position_embedding_1/Shape:output:0;token_and_position_embedding_1/strided_slice/stack:output:0=token_and_position_embedding_1/strided_slice/stack_1:output:0=token_and_position_embedding_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*token_and_position_embedding_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*token_and_position_embedding_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ê
$token_and_position_embedding_1/rangeRange3token_and_position_embedding_1/range/start:output:05token_and_position_embedding_1/strided_slice:output:03token_and_position_embedding_1/range/delta:output:0*
_output_shapes
:.Ø
;token_and_position_embedding_1/embedding_3/embedding_lookupResourceGatherDtoken_and_position_embedding_1_embedding_3_embedding_lookup_45293581-token_and_position_embedding_1/range:output:0*
Tindices0*W
_classM
KIloc:@token_and_position_embedding_1/embedding_3/embedding_lookup/45293581*
_output_shapes

:.2*
dtype0
Dtoken_and_position_embedding_1/embedding_3/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_1/embedding_3/embedding_lookup:output:0*
T0*W
_classM
KIloc:@token_and_position_embedding_1/embedding_3/embedding_lookup/45293581*
_output_shapes

:.2Ê
Ftoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity:output:0*
T0*
_output_shapes

:.2
/token_and_position_embedding_1/embedding_2/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ë
;token_and_position_embedding_1/embedding_2/embedding_lookupResourceGatherDtoken_and_position_embedding_1_embedding_2_embedding_lookup_452935873token_and_position_embedding_1/embedding_2/Cast:y:0*
Tindices0*W
_classM
KIloc:@token_and_position_embedding_1/embedding_2/embedding_lookup/45293587*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0¥
Dtoken_and_position_embedding_1/embedding_2/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_1/embedding_2/embedding_lookup:output:0*
T0*W
_classM
KIloc:@token_and_position_embedding_1/embedding_2/embedding_lookup/45293587*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2×
Ftoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
"token_and_position_embedding_1/addAddV2Otoken_and_position_embedding_1/embedding_2/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_1/embedding_3/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ì
Otransformer_encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0«
@transformer_encoder_1/multi_head_attention_1/query/einsum/EinsumEinsum&token_and_position_embedding_1/add:z:0Wtransformer_encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeÔ
Etransformer_encoder_1/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpNtransformer_encoder_1_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0
6transformer_encoder_1/multi_head_attention_1/query/addAddV2Itransformer_encoder_1/multi_head_attention_1/query/einsum/Einsum:output:0Mtransformer_encoder_1/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2è
Mtransformer_encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_encoder_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0§
>transformer_encoder_1/multi_head_attention_1/key/einsum/EinsumEinsum&token_and_position_embedding_1/add:z:0Utransformer_encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeÐ
Ctransformer_encoder_1/multi_head_attention_1/key/add/ReadVariableOpReadVariableOpLtransformer_encoder_1_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0
4transformer_encoder_1/multi_head_attention_1/key/addAddV2Gtransformer_encoder_1/multi_head_attention_1/key/einsum/Einsum:output:0Ktransformer_encoder_1/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ì
Otransformer_encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0«
@transformer_encoder_1/multi_head_attention_1/value/einsum/EinsumEinsum&token_and_position_embedding_1/add:z:0Wtransformer_encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abdeÔ
Etransformer_encoder_1/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpNtransformer_encoder_1_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0
6transformer_encoder_1/multi_head_attention_1/value/addAddV2Itransformer_encoder_1/multi_head_attention_1/value/einsum/Einsum:output:0Mtransformer_encoder_1/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2w
2transformer_encoder_1/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>ê
0transformer_encoder_1/multi_head_attention_1/MulMul:transformer_encoder_1/multi_head_attention_1/query/add:z:0;transformer_encoder_1/multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
:transformer_encoder_1/multi_head_attention_1/einsum/EinsumEinsum8transformer_encoder_1/multi_head_attention_1/key/add:z:04transformer_encoder_1/multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..*
equationaecd,abcd->acbeÆ
<transformer_encoder_1/multi_head_attention_1/softmax/SoftmaxSoftmaxCtransformer_encoder_1/multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..¬
<transformer_encoder_1/multi_head_attention_1/einsum_1/EinsumEinsumFtransformer_encoder_1/multi_head_attention_1/softmax/Softmax:softmax:0:transformer_encoder_1/multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationacbe,aecd->abcd
Ztransformer_encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpctransformer_encoder_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Ü
Ktransformer_encoder_1/multi_head_attention_1/attention_output/einsum/EinsumEinsumEtransformer_encoder_1/multi_head_attention_1/einsum_1/Einsum:output:0btransformer_encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabcd,cde->abeæ
Ptransformer_encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpYtransformer_encoder_1_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0°
Atransformer_encoder_1/multi_head_attention_1/attention_output/addAddV2Ttransformer_encoder_1/multi_head_attention_1/attention_output/einsum/Einsum:output:0Xtransformer_encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2r
-transformer_encoder_1/dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @ç
+transformer_encoder_1/dropout_3/dropout/MulMulEtransformer_encoder_1/multi_head_attention_1/attention_output/add:z:06transformer_encoder_1/dropout_3/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¢
-transformer_encoder_1/dropout_3/dropout/ShapeShapeEtransformer_encoder_1/multi_head_attention_1/attention_output/add:z:0*
T0*
_output_shapes
:Ð
Dtransformer_encoder_1/dropout_3/dropout/random_uniform/RandomUniformRandomUniform6transformer_encoder_1/dropout_3/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0{
6transformer_encoder_1/dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
4transformer_encoder_1/dropout_3/dropout/GreaterEqualGreaterEqualMtransformer_encoder_1/dropout_3/dropout/random_uniform/RandomUniform:output:0?transformer_encoder_1/dropout_3/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2³
,transformer_encoder_1/dropout_3/dropout/CastCast8transformer_encoder_1/dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Í
-transformer_encoder_1/dropout_3/dropout/Mul_1Mul/transformer_encoder_1/dropout_3/dropout/Mul:z:00transformer_encoder_1/dropout_3/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2³
transformer_encoder_1/addAddV2&token_and_position_embedding_1/add:z:01transformer_encoder_1/dropout_3/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Jtransformer_encoder_1/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:û
8transformer_encoder_1/layer_normalization_2/moments/meanMeantransformer_encoder_1/add:z:0Stransformer_encoder_1/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(É
@transformer_encoder_1/layer_normalization_2/moments/StopGradientStopGradientAtransformer_encoder_1/layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ú
Etransformer_encoder_1/layer_normalization_2/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_1/add:z:0Itransformer_encoder_1/layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Ntransformer_encoder_1/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¯
<transformer_encoder_1/layer_normalization_2/moments/varianceMeanItransformer_encoder_1/layer_normalization_2/moments/SquaredDifference:z:0Wtransformer_encoder_1/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
;transformer_encoder_1/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
9transformer_encoder_1/layer_normalization_2/batchnorm/addAddV2Etransformer_encoder_1/layer_normalization_2/moments/variance:output:0Dtransformer_encoder_1/layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¹
;transformer_encoder_1/layer_normalization_2/batchnorm/RsqrtRsqrt=transformer_encoder_1/layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Ö
Htransformer_encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpQtransformer_encoder_1_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_1/layer_normalization_2/batchnorm/mulMul?transformer_encoder_1/layer_normalization_2/batchnorm/Rsqrt:y:0Ptransformer_encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ö
;transformer_encoder_1/layer_normalization_2/batchnorm/mul_1Multransformer_encoder_1/add:z:0=transformer_encoder_1/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ú
;transformer_encoder_1/layer_normalization_2/batchnorm/mul_2MulAtransformer_encoder_1/layer_normalization_2/moments/mean:output:0=transformer_encoder_1/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Î
Dtransformer_encoder_1/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOpMtransformer_encoder_1_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_1/layer_normalization_2/batchnorm/subSubLtransformer_encoder_1/layer_normalization_2/batchnorm/ReadVariableOp:value:0?transformer_encoder_1/layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ú
;transformer_encoder_1/layer_normalization_2/batchnorm/add_1AddV2?transformer_encoder_1/layer_normalization_2/batchnorm/mul_1:z:0=transformer_encoder_1/layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ð
Ctransformer_encoder_1/sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOpLtransformer_encoder_1_sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0
9transformer_encoder_1/sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
9transformer_encoder_1/sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ©
:transformer_encoder_1/sequential_1/dense_4/Tensordot/ShapeShape?transformer_encoder_1/layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Btransformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
=transformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2GatherV2Ctransformer_encoder_1/sequential_1/dense_4/Tensordot/Shape:output:0Btransformer_encoder_1/sequential_1/dense_4/Tensordot/free:output:0Ktransformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Dtransformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
?transformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2_1GatherV2Ctransformer_encoder_1/sequential_1/dense_4/Tensordot/Shape:output:0Btransformer_encoder_1/sequential_1/dense_4/Tensordot/axes:output:0Mtransformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
:transformer_encoder_1/sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ï
9transformer_encoder_1/sequential_1/dense_4/Tensordot/ProdProdFtransformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2:output:0Ctransformer_encoder_1/sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 
<transformer_encoder_1/sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: õ
;transformer_encoder_1/sequential_1/dense_4/Tensordot/Prod_1ProdHtransformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2_1:output:0Etransformer_encoder_1/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
@transformer_encoder_1/sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : È
;transformer_encoder_1/sequential_1/dense_4/Tensordot/concatConcatV2Btransformer_encoder_1/sequential_1/dense_4/Tensordot/free:output:0Btransformer_encoder_1/sequential_1/dense_4/Tensordot/axes:output:0Itransformer_encoder_1/sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ú
:transformer_encoder_1/sequential_1/dense_4/Tensordot/stackPackBtransformer_encoder_1/sequential_1/dense_4/Tensordot/Prod:output:0Dtransformer_encoder_1/sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
>transformer_encoder_1/sequential_1/dense_4/Tensordot/transpose	Transpose?transformer_encoder_1/layer_normalization_2/batchnorm/add_1:z:0Dtransformer_encoder_1/sequential_1/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
<transformer_encoder_1/sequential_1/dense_4/Tensordot/ReshapeReshapeBtransformer_encoder_1/sequential_1/dense_4/Tensordot/transpose:y:0Ctransformer_encoder_1/sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
;transformer_encoder_1/sequential_1/dense_4/Tensordot/MatMulMatMulEtransformer_encoder_1/sequential_1/dense_4/Tensordot/Reshape:output:0Ktransformer_encoder_1/sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
<transformer_encoder_1/sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
Btransformer_encoder_1/sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
=transformer_encoder_1/sequential_1/dense_4/Tensordot/concat_1ConcatV2Ftransformer_encoder_1/sequential_1/dense_4/Tensordot/GatherV2:output:0Etransformer_encoder_1/sequential_1/dense_4/Tensordot/Const_2:output:0Ktransformer_encoder_1/sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
4transformer_encoder_1/sequential_1/dense_4/TensordotReshapeEtransformer_encoder_1/sequential_1/dense_4/Tensordot/MatMul:product:0Ftransformer_encoder_1/sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. È
Atransformer_encoder_1/sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOpJtransformer_encoder_1_sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ý
2transformer_encoder_1/sequential_1/dense_4/BiasAddBiasAdd=transformer_encoder_1/sequential_1/dense_4/Tensordot:output:0Itransformer_encoder_1/sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ª
/transformer_encoder_1/sequential_1/dense_4/ReluRelu;transformer_encoder_1/sequential_1/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. Ð
Ctransformer_encoder_1/sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOpLtransformer_encoder_1_sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0
9transformer_encoder_1/sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
9transformer_encoder_1/sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       §
:transformer_encoder_1/sequential_1/dense_5/Tensordot/ShapeShape=transformer_encoder_1/sequential_1/dense_4/Relu:activations:0*
T0*
_output_shapes
:
Btransformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
=transformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2GatherV2Ctransformer_encoder_1/sequential_1/dense_5/Tensordot/Shape:output:0Btransformer_encoder_1/sequential_1/dense_5/Tensordot/free:output:0Ktransformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Dtransformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
?transformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2_1GatherV2Ctransformer_encoder_1/sequential_1/dense_5/Tensordot/Shape:output:0Btransformer_encoder_1/sequential_1/dense_5/Tensordot/axes:output:0Mtransformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
:transformer_encoder_1/sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ï
9transformer_encoder_1/sequential_1/dense_5/Tensordot/ProdProdFtransformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2:output:0Ctransformer_encoder_1/sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: 
<transformer_encoder_1/sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: õ
;transformer_encoder_1/sequential_1/dense_5/Tensordot/Prod_1ProdHtransformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2_1:output:0Etransformer_encoder_1/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
@transformer_encoder_1/sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : È
;transformer_encoder_1/sequential_1/dense_5/Tensordot/concatConcatV2Btransformer_encoder_1/sequential_1/dense_5/Tensordot/free:output:0Btransformer_encoder_1/sequential_1/dense_5/Tensordot/axes:output:0Itransformer_encoder_1/sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ú
:transformer_encoder_1/sequential_1/dense_5/Tensordot/stackPackBtransformer_encoder_1/sequential_1/dense_5/Tensordot/Prod:output:0Dtransformer_encoder_1/sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
>transformer_encoder_1/sequential_1/dense_5/Tensordot/transpose	Transpose=transformer_encoder_1/sequential_1/dense_4/Relu:activations:0Dtransformer_encoder_1/sequential_1/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
<transformer_encoder_1/sequential_1/dense_5/Tensordot/ReshapeReshapeBtransformer_encoder_1/sequential_1/dense_5/Tensordot/transpose:y:0Ctransformer_encoder_1/sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
;transformer_encoder_1/sequential_1/dense_5/Tensordot/MatMulMatMulEtransformer_encoder_1/sequential_1/dense_5/Tensordot/Reshape:output:0Ktransformer_encoder_1/sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
<transformer_encoder_1/sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Btransformer_encoder_1/sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
=transformer_encoder_1/sequential_1/dense_5/Tensordot/concat_1ConcatV2Ftransformer_encoder_1/sequential_1/dense_5/Tensordot/GatherV2:output:0Etransformer_encoder_1/sequential_1/dense_5/Tensordot/Const_2:output:0Ktransformer_encoder_1/sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
4transformer_encoder_1/sequential_1/dense_5/TensordotReshapeEtransformer_encoder_1/sequential_1/dense_5/Tensordot/MatMul:product:0Ftransformer_encoder_1/sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2È
Atransformer_encoder_1/sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOpJtransformer_encoder_1_sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0ý
2transformer_encoder_1/sequential_1/dense_5/BiasAddBiasAdd=transformer_encoder_1/sequential_1/dense_5/Tensordot:output:0Itransformer_encoder_1/sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2r
-transformer_encoder_1/dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ý
+transformer_encoder_1/dropout_4/dropout/MulMul;transformer_encoder_1/sequential_1/dense_5/BiasAdd:output:06transformer_encoder_1/dropout_4/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
-transformer_encoder_1/dropout_4/dropout/ShapeShape;transformer_encoder_1/sequential_1/dense_5/BiasAdd:output:0*
T0*
_output_shapes
:Ð
Dtransformer_encoder_1/dropout_4/dropout/random_uniform/RandomUniformRandomUniform6transformer_encoder_1/dropout_4/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0{
6transformer_encoder_1/dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
4transformer_encoder_1/dropout_4/dropout/GreaterEqualGreaterEqualMtransformer_encoder_1/dropout_4/dropout/random_uniform/RandomUniform:output:0?transformer_encoder_1/dropout_4/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2³
,transformer_encoder_1/dropout_4/dropout/CastCast8transformer_encoder_1/dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Í
-transformer_encoder_1/dropout_4/dropout/Mul_1Mul/transformer_encoder_1/dropout_4/dropout/Mul:z:00transformer_encoder_1/dropout_4/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Î
transformer_encoder_1/add_1AddV2?transformer_encoder_1/layer_normalization_2/batchnorm/add_1:z:01transformer_encoder_1/dropout_4/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Jtransformer_encoder_1/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ý
8transformer_encoder_1/layer_normalization_3/moments/meanMeantransformer_encoder_1/add_1:z:0Stransformer_encoder_1/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(É
@transformer_encoder_1/layer_normalization_3/moments/StopGradientStopGradientAtransformer_encoder_1/layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ü
Etransformer_encoder_1/layer_normalization_3/moments/SquaredDifferenceSquaredDifferencetransformer_encoder_1/add_1:z:0Itransformer_encoder_1/layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
Ntransformer_encoder_1/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¯
<transformer_encoder_1/layer_normalization_3/moments/varianceMeanItransformer_encoder_1/layer_normalization_3/moments/SquaredDifference:z:0Wtransformer_encoder_1/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
;transformer_encoder_1/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
9transformer_encoder_1/layer_normalization_3/batchnorm/addAddV2Etransformer_encoder_1/layer_normalization_3/moments/variance:output:0Dtransformer_encoder_1/layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¹
;transformer_encoder_1/layer_normalization_3/batchnorm/RsqrtRsqrt=transformer_encoder_1/layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.Ö
Htransformer_encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpQtransformer_encoder_1_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_1/layer_normalization_3/batchnorm/mulMul?transformer_encoder_1/layer_normalization_3/batchnorm/Rsqrt:y:0Ptransformer_encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ø
;transformer_encoder_1/layer_normalization_3/batchnorm/mul_1Multransformer_encoder_1/add_1:z:0=transformer_encoder_1/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ú
;transformer_encoder_1/layer_normalization_3/batchnorm/mul_2MulAtransformer_encoder_1/layer_normalization_3/moments/mean:output:0=transformer_encoder_1/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Î
Dtransformer_encoder_1/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOpMtransformer_encoder_1_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0
9transformer_encoder_1/layer_normalization_3/batchnorm/subSubLtransformer_encoder_1/layer_normalization_3/batchnorm/ReadVariableOp:value:0?transformer_encoder_1/layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2ú
;transformer_encoder_1/layer_normalization_3/batchnorm/add_1AddV2?transformer_encoder_1/layer_normalization_3/batchnorm/mul_1:z:0=transformer_encoder_1/layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :Ò
global_average_pooling1d/MeanMean?transformer_encoder_1/layer_normalization_3/batchnorm/add_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:2.*
dtype0
dense_6/MatMulMatMul&global_average_pooling1d/Mean:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:.*
dtype0
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_7/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿö
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp<^token_and_position_embedding_1/embedding_2/embedding_lookup<^token_and_position_embedding_1/embedding_3/embedding_lookupE^transformer_encoder_1/layer_normalization_2/batchnorm/ReadVariableOpI^transformer_encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOpE^transformer_encoder_1/layer_normalization_3/batchnorm/ReadVariableOpI^transformer_encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOpQ^transformer_encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOp[^transformer_encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpD^transformer_encoder_1/multi_head_attention_1/key/add/ReadVariableOpN^transformer_encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpF^transformer_encoder_1/multi_head_attention_1/query/add/ReadVariableOpP^transformer_encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpF^transformer_encoder_1/multi_head_attention_1/value/add/ReadVariableOpP^transformer_encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpB^transformer_encoder_1/sequential_1/dense_4/BiasAdd/ReadVariableOpD^transformer_encoder_1/sequential_1/dense_4/Tensordot/ReadVariableOpB^transformer_encoder_1/sequential_1/dense_5/BiasAdd/ReadVariableOpD^transformer_encoder_1/sequential_1/dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2z
;token_and_position_embedding_1/embedding_2/embedding_lookup;token_and_position_embedding_1/embedding_2/embedding_lookup2z
;token_and_position_embedding_1/embedding_3/embedding_lookup;token_and_position_embedding_1/embedding_3/embedding_lookup2
Dtransformer_encoder_1/layer_normalization_2/batchnorm/ReadVariableOpDtransformer_encoder_1/layer_normalization_2/batchnorm/ReadVariableOp2
Htransformer_encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOpHtransformer_encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp2
Dtransformer_encoder_1/layer_normalization_3/batchnorm/ReadVariableOpDtransformer_encoder_1/layer_normalization_3/batchnorm/ReadVariableOp2
Htransformer_encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOpHtransformer_encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOp2¤
Ptransformer_encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOpPtransformer_encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOp2¸
Ztransformer_encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpZtransformer_encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2
Ctransformer_encoder_1/multi_head_attention_1/key/add/ReadVariableOpCtransformer_encoder_1/multi_head_attention_1/key/add/ReadVariableOp2
Mtransformer_encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpMtransformer_encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2
Etransformer_encoder_1/multi_head_attention_1/query/add/ReadVariableOpEtransformer_encoder_1/multi_head_attention_1/query/add/ReadVariableOp2¢
Otransformer_encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpOtransformer_encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2
Etransformer_encoder_1/multi_head_attention_1/value/add/ReadVariableOpEtransformer_encoder_1/multi_head_attention_1/value/add/ReadVariableOp2¢
Otransformer_encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpOtransformer_encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2
Atransformer_encoder_1/sequential_1/dense_4/BiasAdd/ReadVariableOpAtransformer_encoder_1/sequential_1/dense_4/BiasAdd/ReadVariableOp2
Ctransformer_encoder_1/sequential_1/dense_4/Tensordot/ReadVariableOpCtransformer_encoder_1/sequential_1/dense_4/Tensordot/ReadVariableOp2
Atransformer_encoder_1/sequential_1/dense_5/BiasAdd/ReadVariableOpAtransformer_encoder_1/sequential_1/dense_5/BiasAdd/ReadVariableOp2
Ctransformer_encoder_1/sequential_1/dense_5/Tensordot/ReadVariableOpCtransformer_encoder_1/sequential_1/dense_5/Tensordot/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
 
_user_specified_nameinputs
Ä

*__inference_dense_7_layer_call_fn_45294159

inputs
unknown:.
	unknown_0:
identity¢StatefulPartitionedCallÚ
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
GPU 2J 8 *N
fIRG
E__inference_dense_7_layer_call_and_return_conditional_losses_45292648o
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
¾
Ø
*__inference_model_1_layer_call_fn_45293147
input_2
unknown:.2
	unknown_0:	2
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

unknown_17:2.

unknown_18:.

unknown_19:.

unknown_20:
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_1_layer_call_and_return_conditional_losses_45293051o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!
_user_specified_name	input_2
¸È
ª
S__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_45294119

inputsX
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_1_query_add_readvariableop_resource:2V
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_1_key_add_readvariableop_resource:2X
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_1_value_add_readvariableop_resource:2c
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:22Q
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:2I
;layer_normalization_2_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_2_batchnorm_readvariableop_resource:2H
6sequential_1_dense_4_tensordot_readvariableop_resource:2 B
4sequential_1_dense_4_biasadd_readvariableop_resource: H
6sequential_1_dense_5_tensordot_readvariableop_resource: 2B
4sequential_1_dense_5_biasadd_readvariableop_resource:2I
;layer_normalization_3_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_3_batchnorm_readvariableop_resource:2
identity¢.layer_normalization_2/batchnorm/ReadVariableOp¢2layer_normalization_2/batchnorm/mul/ReadVariableOp¢.layer_normalization_3/batchnorm/ReadVariableOp¢2layer_normalization_3/batchnorm/mul/ReadVariableOp¢:multi_head_attention_1/attention_output/add/ReadVariableOp¢Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_1/key/add/ReadVariableOp¢7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_1/query/add/ReadVariableOp¢9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_1/value/add/ReadVariableOp¢9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp¢+sequential_1/dense_4/BiasAdd/ReadVariableOp¢-sequential_1/dense_4/Tensordot/ReadVariableOp¢+sequential_1/dense_5/BiasAdd/ReadVariableOp¢-sequential_1/dense_5/Tensordot/ReadVariableOpÀ
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¨
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¼
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¤
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2À
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¨
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>¨
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ô
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..*
equationaecd,abcd->acbe
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..ê
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/softmax/Softmax:softmax:0$multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabcd,cde->abeº
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0î
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @¥
dropout_3/dropout/MulMul/multi_head_attention_1/attention_output/add:z:0 dropout_3/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2v
dropout_3/dropout/ShapeShape/multi_head_attention_1/attention_output/add:z:0*
T0*
_output_shapes
:¤
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?È
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2g
addAddV2inputsdropout_3/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¹
"layer_normalization_2/moments/meanMeanadd:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¸
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ª
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
%layer_normalization_2/batchnorm/mul_1Muladd:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¢
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¤
-sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0m
#sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
$sequential_1/dense_4/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:n
,sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential_1/dense_4/Tensordot/GatherV2GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/free:output:05sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_1/dense_4/Tensordot/GatherV2_1GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/axes:output:07sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ­
#sequential_1/dense_4/Tensordot/ProdProd0sequential_1/dense_4/Tensordot/GatherV2:output:0-sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_1/dense_4/Tensordot/Prod_1Prod2sequential_1/dense_4/Tensordot/GatherV2_1:output:0/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
%sequential_1/dense_4/Tensordot/concatConcatV2,sequential_1/dense_4/Tensordot/free:output:0,sequential_1/dense_4/Tensordot/axes:output:03sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¸
$sequential_1/dense_4/Tensordot/stackPack,sequential_1/dense_4/Tensordot/Prod:output:0.sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Æ
(sequential_1/dense_4/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0.sequential_1/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2É
&sequential_1/dense_4/Tensordot/ReshapeReshape,sequential_1/dense_4/Tensordot/transpose:y:0-sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
%sequential_1/dense_4/Tensordot/MatMulMatMul/sequential_1/dense_4/Tensordot/Reshape:output:05sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
&sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: n
,sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
'sequential_1/dense_4/Tensordot/concat_1ConcatV20sequential_1/dense_4/Tensordot/GatherV2:output:0/sequential_1/dense_4/Tensordot/Const_2:output:05sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Â
sequential_1/dense_4/TensordotReshape/sequential_1/dense_4/Tensordot/MatMul:product:00sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0»
sequential_1/dense_4/BiasAddBiasAdd'sequential_1/dense_4/Tensordot:output:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ~
sequential_1/dense_4/ReluRelu%sequential_1/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ¤
-sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0m
#sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_1/dense_5/Tensordot/ShapeShape'sequential_1/dense_4/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential_1/dense_5/Tensordot/GatherV2GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/free:output:05sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_1/dense_5/Tensordot/GatherV2_1GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/axes:output:07sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ­
#sequential_1/dense_5/Tensordot/ProdProd0sequential_1/dense_5/Tensordot/GatherV2:output:0-sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_1/dense_5/Tensordot/Prod_1Prod2sequential_1/dense_5/Tensordot/GatherV2_1:output:0/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
%sequential_1/dense_5/Tensordot/concatConcatV2,sequential_1/dense_5/Tensordot/free:output:0,sequential_1/dense_5/Tensordot/axes:output:03sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¸
$sequential_1/dense_5/Tensordot/stackPack,sequential_1/dense_5/Tensordot/Prod:output:0.sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ä
(sequential_1/dense_5/Tensordot/transpose	Transpose'sequential_1/dense_4/Relu:activations:0.sequential_1/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. É
&sequential_1/dense_5/Tensordot/ReshapeReshape,sequential_1/dense_5/Tensordot/transpose:y:0-sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
%sequential_1/dense_5/Tensordot/MatMulMatMul/sequential_1/dense_5/Tensordot/Reshape:output:05sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
&sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2n
,sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
'sequential_1/dense_5/Tensordot/concat_1ConcatV20sequential_1/dense_5/Tensordot/GatherV2:output:0/sequential_1/dense_5/Tensordot/Const_2:output:05sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Â
sequential_1/dense_5/TensordotReshape/sequential_1/dense_5/Tensordot/MatMul:product:00sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
+sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0»
sequential_1/dense_5/BiasAddBiasAdd'sequential_1/dense_5/Tensordot:output:03sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_4/dropout/MulMul%sequential_1/dense_5/BiasAdd:output:0 dropout_4/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2l
dropout_4/dropout/ShapeShape%sequential_1/dense_5/BiasAdd:output:0*
T0*
_output_shapes
:¤
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?È
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
add_1AddV2)layer_normalization_2/batchnorm/add_1:z:0dropout_4/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2~
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
"layer_normalization_3/moments/meanMean	add_1:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.º
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(j
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ª
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
%layer_normalization_3/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¢
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2|
IdentityIdentity)layer_normalization_3/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp.^sequential_1/dense_4/Tensordot/ReadVariableOp,^sequential_1/dense_5/BiasAdd/ReadVariableOp.^sequential_1/dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ.2: : : : : : : : : : : : : : : : 2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2^
-sequential_1/dense_4/Tensordot/ReadVariableOp-sequential_1/dense_4/Tensordot/ReadVariableOp2Z
+sequential_1/dense_5/BiasAdd/ReadVariableOp+sequential_1/dense_5/BiasAdd/ReadVariableOp2^
-sequential_1/dense_5/Tensordot/ReadVariableOp-sequential_1/dense_5/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
ÿ
W
;__inference_global_average_pooling1d_layer_call_fn_45294124

inputs
identityÊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_45292419i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ô>
Ù
J__inference_sequential_1_layer_call_and_return_conditional_losses_45294309

inputs;
)dense_4_tensordot_readvariableop_resource:2 5
'dense_4_biasadd_readvariableop_resource: ;
)dense_5_tensordot_readvariableop_resource: 25
'dense_5_biasadd_readvariableop_resource:2
identity¢dense_4/BiasAdd/ReadVariableOp¢ dense_4/Tensordot/ReadVariableOp¢dense_5/BiasAdd/ReadVariableOp¢ dense_5/Tensordot/ReadVariableOp
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0`
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       M
dense_4/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:a
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_4/Tensordot/transpose	Transposeinputs!dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¢
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¢
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: a
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. d
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
 dense_5/Tensordot/ReadVariableOpReadVariableOp)dense_5_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0`
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       a
dense_5/Tensordot/ShapeShapedense_4/Relu:activations:0*
T0*
_output_shapes
:a
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_5/Tensordot/transpose	Transposedense_4/Relu:activations:0!dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ¢
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¢
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2c
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2a
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
dense_5/BiasAddBiasAdddense_5/Tensordot:output:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2k
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Î
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
Ä

*__inference_dense_6_layer_call_fn_45294139

inputs
unknown:2.
	unknown_0:.
identity¢StatefulPartitionedCallÚ
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
GPU 2J 8 *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_45292632o
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
:ÿÿÿÿÿÿÿÿÿ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
º
ª
S__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_45292586

inputsX
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_1_query_add_readvariableop_resource:2V
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_1_key_add_readvariableop_resource:2X
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_1_value_add_readvariableop_resource:2c
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:22Q
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:2I
;layer_normalization_2_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_2_batchnorm_readvariableop_resource:2H
6sequential_1_dense_4_tensordot_readvariableop_resource:2 B
4sequential_1_dense_4_biasadd_readvariableop_resource: H
6sequential_1_dense_5_tensordot_readvariableop_resource: 2B
4sequential_1_dense_5_biasadd_readvariableop_resource:2I
;layer_normalization_3_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_3_batchnorm_readvariableop_resource:2
identity¢.layer_normalization_2/batchnorm/ReadVariableOp¢2layer_normalization_2/batchnorm/mul/ReadVariableOp¢.layer_normalization_3/batchnorm/ReadVariableOp¢2layer_normalization_3/batchnorm/mul/ReadVariableOp¢:multi_head_attention_1/attention_output/add/ReadVariableOp¢Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_1/key/add/ReadVariableOp¢7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_1/query/add/ReadVariableOp¢9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_1/value/add/ReadVariableOp¢9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp¢+sequential_1/dense_4/BiasAdd/ReadVariableOp¢-sequential_1/dense_4/Tensordot/ReadVariableOp¢+sequential_1/dense_5/BiasAdd/ReadVariableOp¢-sequential_1/dense_5/Tensordot/ReadVariableOpÀ
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¨
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¼
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¤
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2À
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¨
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>¨
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ô
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..*
equationaecd,abcd->acbe
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..
'multi_head_attention_1/dropout/IdentityIdentity0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..ê
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/Identity:output:0$multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabcd,cde->abeº
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0î
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_3/IdentityIdentity/multi_head_attention_1/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2g
addAddV2inputsdropout_3/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¹
"layer_normalization_2/moments/meanMeanadd:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¸
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ª
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
%layer_normalization_2/batchnorm/mul_1Muladd:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¢
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¤
-sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0m
#sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
$sequential_1/dense_4/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:n
,sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential_1/dense_4/Tensordot/GatherV2GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/free:output:05sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_1/dense_4/Tensordot/GatherV2_1GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/axes:output:07sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ­
#sequential_1/dense_4/Tensordot/ProdProd0sequential_1/dense_4/Tensordot/GatherV2:output:0-sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_1/dense_4/Tensordot/Prod_1Prod2sequential_1/dense_4/Tensordot/GatherV2_1:output:0/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
%sequential_1/dense_4/Tensordot/concatConcatV2,sequential_1/dense_4/Tensordot/free:output:0,sequential_1/dense_4/Tensordot/axes:output:03sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¸
$sequential_1/dense_4/Tensordot/stackPack,sequential_1/dense_4/Tensordot/Prod:output:0.sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Æ
(sequential_1/dense_4/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0.sequential_1/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2É
&sequential_1/dense_4/Tensordot/ReshapeReshape,sequential_1/dense_4/Tensordot/transpose:y:0-sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
%sequential_1/dense_4/Tensordot/MatMulMatMul/sequential_1/dense_4/Tensordot/Reshape:output:05sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
&sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: n
,sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
'sequential_1/dense_4/Tensordot/concat_1ConcatV20sequential_1/dense_4/Tensordot/GatherV2:output:0/sequential_1/dense_4/Tensordot/Const_2:output:05sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Â
sequential_1/dense_4/TensordotReshape/sequential_1/dense_4/Tensordot/MatMul:product:00sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0»
sequential_1/dense_4/BiasAddBiasAdd'sequential_1/dense_4/Tensordot:output:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ~
sequential_1/dense_4/ReluRelu%sequential_1/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ¤
-sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0m
#sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_1/dense_5/Tensordot/ShapeShape'sequential_1/dense_4/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential_1/dense_5/Tensordot/GatherV2GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/free:output:05sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_1/dense_5/Tensordot/GatherV2_1GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/axes:output:07sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ­
#sequential_1/dense_5/Tensordot/ProdProd0sequential_1/dense_5/Tensordot/GatherV2:output:0-sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_1/dense_5/Tensordot/Prod_1Prod2sequential_1/dense_5/Tensordot/GatherV2_1:output:0/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
%sequential_1/dense_5/Tensordot/concatConcatV2,sequential_1/dense_5/Tensordot/free:output:0,sequential_1/dense_5/Tensordot/axes:output:03sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¸
$sequential_1/dense_5/Tensordot/stackPack,sequential_1/dense_5/Tensordot/Prod:output:0.sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ä
(sequential_1/dense_5/Tensordot/transpose	Transpose'sequential_1/dense_4/Relu:activations:0.sequential_1/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. É
&sequential_1/dense_5/Tensordot/ReshapeReshape,sequential_1/dense_5/Tensordot/transpose:y:0-sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
%sequential_1/dense_5/Tensordot/MatMulMatMul/sequential_1/dense_5/Tensordot/Reshape:output:05sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
&sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2n
,sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
'sequential_1/dense_5/Tensordot/concat_1ConcatV20sequential_1/dense_5/Tensordot/GatherV2:output:0/sequential_1/dense_5/Tensordot/Const_2:output:05sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Â
sequential_1/dense_5/TensordotReshape/sequential_1/dense_5/Tensordot/MatMul:product:00sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
+sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0»
sequential_1/dense_5/BiasAddBiasAdd'sequential_1/dense_5/Tensordot:output:03sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2{
dropout_4/IdentityIdentity%sequential_1/dense_5/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
add_1AddV2)layer_normalization_2/batchnorm/add_1:z:0dropout_4/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2~
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
"layer_normalization_3/moments/meanMean	add_1:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.º
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(j
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ª
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
%layer_normalization_3/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¢
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2|
IdentityIdentity)layer_normalization_3/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp.^sequential_1/dense_4/Tensordot/ReadVariableOp,^sequential_1/dense_5/BiasAdd/ReadVariableOp.^sequential_1/dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ.2: : : : : : : : : : : : : : : : 2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2^
-sequential_1/dense_4/Tensordot/ReadVariableOp-sequential_1/dense_4/Tensordot/ReadVariableOp2Z
+sequential_1/dense_5/BiasAdd/ReadVariableOp+sequential_1/dense_5/BiasAdd/ReadVariableOp2^
-sequential_1/dense_5/Tensordot/ReadVariableOp-sequential_1/dense_5/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
º
ª
S__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_45293979

inputsX
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_1_query_add_readvariableop_resource:2V
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:22H
6multi_head_attention_1_key_add_readvariableop_resource:2X
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:22J
8multi_head_attention_1_value_add_readvariableop_resource:2c
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:22Q
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:2I
;layer_normalization_2_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_2_batchnorm_readvariableop_resource:2H
6sequential_1_dense_4_tensordot_readvariableop_resource:2 B
4sequential_1_dense_4_biasadd_readvariableop_resource: H
6sequential_1_dense_5_tensordot_readvariableop_resource: 2B
4sequential_1_dense_5_biasadd_readvariableop_resource:2I
;layer_normalization_3_batchnorm_mul_readvariableop_resource:2E
7layer_normalization_3_batchnorm_readvariableop_resource:2
identity¢.layer_normalization_2/batchnorm/ReadVariableOp¢2layer_normalization_2/batchnorm/mul/ReadVariableOp¢.layer_normalization_3/batchnorm/ReadVariableOp¢2layer_normalization_3/batchnorm/mul/ReadVariableOp¢:multi_head_attention_1/attention_output/add/ReadVariableOp¢Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_1/key/add/ReadVariableOp¢7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_1/query/add/ReadVariableOp¢9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_1/value/add/ReadVariableOp¢9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp¢+sequential_1/dense_4/BiasAdd/ReadVariableOp¢-sequential_1/dense_4/Tensordot/ReadVariableOp¢+sequential_1/dense_5/BiasAdd/ReadVariableOp¢-sequential_1/dense_5/Tensordot/ReadVariableOpÀ
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¨
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¼
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0Û
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¤
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ë
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2À
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0ß
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabc,cde->abde¨
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:2*
dtype0Ñ
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÃÐ>¨
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2Ô
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..*
equationaecd,abcd->acbe
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..
'multi_head_attention_1/dropout/IdentityIdentity0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ..ê
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/Identity:output:0$multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:22*
dtype0
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*
equationabcd,cde->abeº
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:2*
dtype0î
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
dropout_3/IdentityIdentity/multi_head_attention_1/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2g
addAddV2inputsdropout_3/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¹
"layer_normalization_2/moments/meanMeanadd:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.¸
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ª
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
%layer_normalization_2/batchnorm/mul_1Muladd:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¢
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¤
-sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes

:2 *
dtype0m
#sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
$sequential_1/dense_4/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:n
,sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential_1/dense_4/Tensordot/GatherV2GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/free:output:05sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_1/dense_4/Tensordot/GatherV2_1GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/axes:output:07sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ­
#sequential_1/dense_4/Tensordot/ProdProd0sequential_1/dense_4/Tensordot/GatherV2:output:0-sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_1/dense_4/Tensordot/Prod_1Prod2sequential_1/dense_4/Tensordot/GatherV2_1:output:0/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
%sequential_1/dense_4/Tensordot/concatConcatV2,sequential_1/dense_4/Tensordot/free:output:0,sequential_1/dense_4/Tensordot/axes:output:03sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¸
$sequential_1/dense_4/Tensordot/stackPack,sequential_1/dense_4/Tensordot/Prod:output:0.sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Æ
(sequential_1/dense_4/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0.sequential_1/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2É
&sequential_1/dense_4/Tensordot/ReshapeReshape,sequential_1/dense_4/Tensordot/transpose:y:0-sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
%sequential_1/dense_4/Tensordot/MatMulMatMul/sequential_1/dense_4/Tensordot/Reshape:output:05sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
&sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: n
,sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
'sequential_1/dense_4/Tensordot/concat_1ConcatV20sequential_1/dense_4/Tensordot/GatherV2:output:0/sequential_1/dense_4/Tensordot/Const_2:output:05sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Â
sequential_1/dense_4/TensordotReshape/sequential_1/dense_4/Tensordot/MatMul:product:00sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. 
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0»
sequential_1/dense_4/BiasAddBiasAdd'sequential_1/dense_4/Tensordot:output:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ~
sequential_1/dense_4/ReluRelu%sequential_1/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. ¤
-sequential_1/dense_5/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_5_tensordot_readvariableop_resource*
_output_shapes

: 2*
dtype0m
#sequential_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_1/dense_5/Tensordot/ShapeShape'sequential_1/dense_4/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential_1/dense_5/Tensordot/GatherV2GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/free:output:05sequential_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_1/dense_5/Tensordot/GatherV2_1GatherV2-sequential_1/dense_5/Tensordot/Shape:output:0,sequential_1/dense_5/Tensordot/axes:output:07sequential_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ­
#sequential_1/dense_5/Tensordot/ProdProd0sequential_1/dense_5/Tensordot/GatherV2:output:0-sequential_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_1/dense_5/Tensordot/Prod_1Prod2sequential_1/dense_5/Tensordot/GatherV2_1:output:0/sequential_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
%sequential_1/dense_5/Tensordot/concatConcatV2,sequential_1/dense_5/Tensordot/free:output:0,sequential_1/dense_5/Tensordot/axes:output:03sequential_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¸
$sequential_1/dense_5/Tensordot/stackPack,sequential_1/dense_5/Tensordot/Prod:output:0.sequential_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ä
(sequential_1/dense_5/Tensordot/transpose	Transpose'sequential_1/dense_4/Relu:activations:0.sequential_1/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. É
&sequential_1/dense_5/Tensordot/ReshapeReshape,sequential_1/dense_5/Tensordot/transpose:y:0-sequential_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
%sequential_1/dense_5/Tensordot/MatMulMatMul/sequential_1/dense_5/Tensordot/Reshape:output:05sequential_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
&sequential_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2n
,sequential_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
'sequential_1/dense_5/Tensordot/concat_1ConcatV20sequential_1/dense_5/Tensordot/GatherV2:output:0/sequential_1/dense_5/Tensordot/Const_2:output:05sequential_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Â
sequential_1/dense_5/TensordotReshape/sequential_1/dense_5/Tensordot/MatMul:product:00sequential_1/dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
+sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0»
sequential_1/dense_5/BiasAddBiasAdd'sequential_1/dense_5/Tensordot:output:03sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2{
dropout_4/IdentityIdentity%sequential_1/dense_5/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
add_1AddV2)layer_normalization_2/batchnorm/add_1:z:0dropout_4/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2~
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
"layer_normalization_3/moments/meanMean	add_1:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.º
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.*
	keep_dims(j
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.ª
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype0Ç
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
%layer_normalization_3/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¢
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype0Ã
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2¸
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2|
IdentityIdentity)layer_normalization_3/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp.^sequential_1/dense_4/Tensordot/ReadVariableOp,^sequential_1/dense_5/BiasAdd/ReadVariableOp.^sequential_1/dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ.2: : : : : : : : : : : : : : : : 2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2^
-sequential_1/dense_4/Tensordot/ReadVariableOp-sequential_1/dense_4/Tensordot/ReadVariableOp2Z
+sequential_1/dense_5/BiasAdd/ReadVariableOp+sequential_1/dense_5/BiasAdd/ReadVariableOp2^
-sequential_1/dense_5/Tensordot/ReadVariableOp-sequential_1/dense_5/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
¤
ü
E__inference_dense_4_layer_call_and_return_conditional_losses_45292254

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
:ÿÿÿÿÿÿÿÿÿ.2
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
:ÿÿÿÿÿÿÿÿÿ. r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ.2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
 
_user_specified_nameinputs
¾
Ø
*__inference_model_1_layer_call_fn_45292702
input_2
unknown:.2
	unknown_0:	2
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

unknown_17:2.

unknown_18:.

unknown_19:.

unknown_20:
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_1_layer_call_and_return_conditional_losses_45292655o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ.: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.
!
_user_specified_name	input_2
Ç
Ù
/__inference_sequential_1_layer_call_fn_45292308
dense_4_input
unknown:2 
	unknown_0: 
	unknown_1: 2
	unknown_2:2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_4_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_1_layer_call_and_return_conditional_losses_45292297s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
'
_user_specified_namedense_4_input
È	
ö
E__inference_dense_7_layer_call_and_return_conditional_losses_45292648

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
Å
¼
J__inference_sequential_1_layer_call_and_return_conditional_losses_45292409
dense_4_input"
dense_4_45292398:2 
dense_4_45292400: "
dense_5_45292403: 2
dense_5_45292405:2
identity¢dense_4/StatefulPartitionedCall¢dense_5/StatefulPartitionedCallý
dense_4/StatefulPartitionedCallStatefulPartitionedCalldense_4_inputdense_4_45292398dense_4_45292400*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ. *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_4_layer_call_and_return_conditional_losses_45292254
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_45292403dense_5_45292405*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_5_layer_call_and_return_conditional_losses_45292290{
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ.2: : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ.2
'
_user_specified_namedense_4_input"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ª
serving_default
;
input_20
serving_default_input_2:0ÿÿÿÿÿÿÿÿÿ.;
dense_70
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
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
¥
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
»
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias"
_tf_keras_layer
»
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias"
_tf_keras_layer
Æ
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
018
119
820
921"
trackable_list_wrapper
Æ
:0
;1
<2
=3
>4
?5
@6
A7
B8
C9
D10
E11
F12
G13
H14
I15
J16
K17
018
119
820
921"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ý
Qtrace_0
Rtrace_1
Strace_2
Ttrace_32ò
*__inference_model_1_layer_call_fn_45292702
*__inference_model_1_layer_call_fn_45293359
*__inference_model_1_layer_call_fn_45293408
*__inference_model_1_layer_call_fn_45293147¿
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
 zQtrace_0zRtrace_1zStrace_2zTtrace_3
É
Utrace_0
Vtrace_1
Wtrace_2
Xtrace_32Þ
E__inference_model_1_layer_call_and_return_conditional_losses_45293570
E__inference_model_1_layer_call_and_return_conditional_losses_45293745
E__inference_model_1_layer_call_and_return_conditional_losses_45293200
E__inference_model_1_layer_call_and_return_conditional_losses_45293253¿
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
 zUtrace_0zVtrace_1zWtrace_2zXtrace_3
ÎBË
#__inference__wrapped_model_45292216input_2"
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

Yiter

Zbeta_1

[beta_2
	\decay
]learning_rate0mæ1mç8mè9mé:mê;më<mì=mí>mî?mï@mðAmñBmòCmóDmôEmõFmöGm÷HmøImùJmúKmû0vü1vý8vþ9vÿ:v;v<v=v>v?v@vAvBvCvDvEvFvGvHvIvJvKv"
	optimizer
,
^serving_default"
signature_map
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
­
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object

dtrace_02ã
A__inference_token_and_position_embedding_1_layer_call_fn_45293754
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
 zdtrace_0

etrace_02þ
\__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_45293778
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
 zetrace_0
µ
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses
:
embeddings"
_tf_keras_layer
µ
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses
;
embeddings"
_tf_keras_layer

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
K15"
trackable_list_wrapper

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
K15"
trackable_list_wrapper
 "
trackable_list_wrapper
­
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ü
wtrace_0
xtrace_12¥
8__inference_transformer_encoder_1_layer_call_fn_45293815
8__inference_transformer_encoder_1_layer_call_fn_45293852®
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
 zwtrace_0zxtrace_1

ytrace_0
ztrace_12Û
S__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_45293979
S__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_45294119®
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
 zytrace_0zztrace_1

{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+&call_and_return_all_conditional_losses
_query_dense

_key_dense
_value_dense
_softmax
_dropout_layer
_output_dense"
_tf_keras_layer

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ë
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	Hgamma
Ibeta"
_tf_keras_layer
Ë
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	Jgamma
Kbeta"
_tf_keras_layer
Ã
	variables
trainable_variables
regularization_losses
 	keras_api
¡__call__
+¢&call_and_return_all_conditional_losses
£_random_generator"
_tf_keras_layer
Ã
¤	variables
¥trainable_variables
¦regularization_losses
§	keras_api
¨__call__
+©&call_and_return_all_conditional_losses
ª_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object

°trace_02ï
;__inference_global_average_pooling1d_layer_call_fn_45294124¯
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
 z°trace_0
©
±trace_02
V__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_45294130¯
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
 z±trace_0
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
²
²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
ð
·trace_02Ñ
*__inference_dense_6_layer_call_fn_45294139¢
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
 z·trace_0

¸trace_02ì
E__inference_dense_6_layer_call_and_return_conditional_losses_45294150¢
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
 z¸trace_0
 :2.2dense_6/kernel
:.2dense_6/bias
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
ð
¾trace_02Ñ
*__inference_dense_7_layer_call_fn_45294159¢
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
 z¾trace_0

¿trace_02ì
E__inference_dense_7_layer_call_and_return_conditional_losses_45294169¢
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
 z¿trace_0
 :.2dense_7/kernel
:2dense_7/bias
H:F	225token_and_position_embedding_1/embedding_2/embeddings
G:E.225token_and_position_embedding_1/embedding_3/embeddings
O:M2229transformer_encoder_1/multi_head_attention_1/query/kernel
I:G227transformer_encoder_1/multi_head_attention_1/query/bias
M:K2227transformer_encoder_1/multi_head_attention_1/key/kernel
G:E225transformer_encoder_1/multi_head_attention_1/key/bias
O:M2229transformer_encoder_1/multi_head_attention_1/value/kernel
I:G227transformer_encoder_1/multi_head_attention_1/value/bias
Z:X222Dtransformer_encoder_1/multi_head_attention_1/attention_output/kernel
P:N22Btransformer_encoder_1/multi_head_attention_1/attention_output/bias
 :2 2dense_4/kernel
: 2dense_4/bias
 : 22dense_5/kernel
:22dense_5/bias
?:=221transformer_encoder_1/layer_normalization_2/gamma
>:<220transformer_encoder_1/layer_normalization_2/beta
?:=221transformer_encoder_1/layer_normalization_3/gamma
>:<220transformer_encoder_1/layer_normalization_3/beta
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
8
À0
Á1
Â2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
üBù
*__inference_model_1_layer_call_fn_45292702input_2"¿
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
ûBø
*__inference_model_1_layer_call_fn_45293359inputs"¿
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
ûBø
*__inference_model_1_layer_call_fn_45293408inputs"¿
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
*__inference_model_1_layer_call_fn_45293147input_2"¿
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
B
E__inference_model_1_layer_call_and_return_conditional_losses_45293570inputs"¿
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
B
E__inference_model_1_layer_call_and_return_conditional_losses_45293745inputs"¿
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
E__inference_model_1_layer_call_and_return_conditional_losses_45293200input_2"¿
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
E__inference_model_1_layer_call_and_return_conditional_losses_45293253input_2"¿
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
ÍBÊ
&__inference_signature_wrapper_45293310input_2"
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
ëBè
A__inference_token_and_position_embedding_1_layer_call_fn_45293754x"
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
B
\__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_45293778x"
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
:0"
trackable_list_wrapper
'
:0"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ãnon_trainable_variables
Älayers
Åmetrics
 Ælayer_regularization_losses
Çlayer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
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
;0"
trackable_list_wrapper
'
;0"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ènon_trainable_variables
Élayers
Êmetrics
 Ëlayer_regularization_losses
Ìlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
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
øBõ
8__inference_transformer_encoder_1_layer_call_fn_45293815inputs"®
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
øBõ
8__inference_transformer_encoder_1_layer_call_fn_45293852inputs"®
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
B
S__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_45293979inputs"®
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
B
S__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_45294119inputs"®
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
<0
=1
>2
?3
@4
A5
B6
C7"
trackable_list_wrapper
X
<0
=1
>2
?3
@4
A5
B6
C7"
trackable_list_wrapper
 "
trackable_list_wrapper
´
Ínon_trainable_variables
Îlayers
Ïmetrics
 Ðlayer_regularization_losses
Ñlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
Ò	variables
Ótrainable_variables
Ôregularization_losses
Õ	keras_api
Ö__call__
+×&call_and_return_all_conditional_losses
Øpartial_output_shape
Ùfull_output_shape

<kernel
=bias"
_tf_keras_layer
ô
Ú	variables
Ûtrainable_variables
Üregularization_losses
Ý	keras_api
Þ__call__
+ß&call_and_return_all_conditional_losses
àpartial_output_shape
áfull_output_shape

>kernel
?bias"
_tf_keras_layer
ô
â	variables
ãtrainable_variables
äregularization_losses
å	keras_api
æ__call__
+ç&call_and_return_all_conditional_losses
èpartial_output_shape
éfull_output_shape

@kernel
Abias"
_tf_keras_layer
«
ê	variables
ëtrainable_variables
ìregularization_losses
í	keras_api
î__call__
+ï&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
ð	variables
ñtrainable_variables
òregularization_losses
ó	keras_api
ô__call__
+õ&call_and_return_all_conditional_losses
ö_random_generator"
_tf_keras_layer
ô
÷	variables
øtrainable_variables
ùregularization_losses
ú	keras_api
û__call__
+ü&call_and_return_all_conditional_losses
ýpartial_output_shape
þfull_output_shape

Bkernel
Cbias"
_tf_keras_layer
Á
ÿ	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Dkernel
Ebias"
_tf_keras_layer
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Fkernel
Gbias"
_tf_keras_layer
<
D0
E1
F2
G3"
trackable_list_wrapper
<
D0
E1
F2
G3"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ù
trace_0
trace_1
trace_2
trace_32
/__inference_sequential_1_layer_call_fn_45292308
/__inference_sequential_1_layer_call_fn_45294182
/__inference_sequential_1_layer_call_fn_45294195
/__inference_sequential_1_layer_call_fn_45292381¿
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
 ztrace_0ztrace_1ztrace_2ztrace_3
å
trace_0
trace_1
trace_2
trace_32ò
J__inference_sequential_1_layer_call_and_return_conditional_losses_45294252
J__inference_sequential_1_layer_call_and_return_conditional_losses_45294309
J__inference_sequential_1_layer_call_and_return_conditional_losses_45292395
J__inference_sequential_1_layer_call_and_return_conditional_losses_45292409¿
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
 ztrace_0ztrace_1ztrace_2ztrace_3
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
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
¢non_trainable_variables
£layers
¤metrics
 ¥layer_regularization_losses
¦layer_metrics
	variables
trainable_variables
regularization_losses
¡__call__
+¢&call_and_return_all_conditional_losses
'¢"call_and_return_conditional_losses"
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
§non_trainable_variables
¨layers
©metrics
 ªlayer_regularization_losses
«layer_metrics
¤	variables
¥trainable_variables
¦regularization_losses
¨__call__
+©&call_and_return_all_conditional_losses
'©"call_and_return_conditional_losses"
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
üBù
;__inference_global_average_pooling1d_layer_call_fn_45294124inputs"¯
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
B
V__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_45294130inputs"¯
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÞBÛ
*__inference_dense_6_layer_call_fn_45294139inputs"¢
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
ùBö
E__inference_dense_6_layer_call_and_return_conditional_losses_45294150inputs"¢
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
ÞBÛ
*__inference_dense_7_layer_call_fn_45294159inputs"¢
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
ùBö
E__inference_dense_7_layer_call_and_return_conditional_losses_45294169inputs"¢
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
¬	variables
­	keras_api

®total

¯count"
_tf_keras_metric
c
°	variables
±	keras_api

²total

³count
´
_fn_kwargs"
_tf_keras_metric
c
µ	variables
¶	keras_api

·total

¸count
¹
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
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
¸
ºnon_trainable_variables
»layers
¼metrics
 ½layer_regularization_losses
¾layer_metrics
Ò	variables
Ótrainable_variables
Ôregularization_losses
Ö__call__
+×&call_and_return_all_conditional_losses
'×"call_and_return_conditional_losses"
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
¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
Ú	variables
Ûtrainable_variables
Üregularization_losses
Þ__call__
+ß&call_and_return_all_conditional_losses
'ß"call_and_return_conditional_losses"
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
Änon_trainable_variables
Ålayers
Æmetrics
 Çlayer_regularization_losses
Èlayer_metrics
â	variables
ãtrainable_variables
äregularization_losses
æ__call__
+ç&call_and_return_all_conditional_losses
'ç"call_and_return_conditional_losses"
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
Énon_trainable_variables
Êlayers
Ëmetrics
 Ìlayer_regularization_losses
Ílayer_metrics
ê	variables
ëtrainable_variables
ìregularization_losses
î__call__
+ï&call_and_return_all_conditional_losses
'ï"call_and_return_conditional_losses"
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
Înon_trainable_variables
Ïlayers
Ðmetrics
 Ñlayer_regularization_losses
Òlayer_metrics
ð	variables
ñtrainable_variables
òregularization_losses
ô__call__
+õ&call_and_return_all_conditional_losses
'õ"call_and_return_conditional_losses"
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
Ónon_trainable_variables
Ôlayers
Õmetrics
 Ölayer_regularization_losses
×layer_metrics
÷	variables
øtrainable_variables
ùregularization_losses
û__call__
+ü&call_and_return_all_conditional_losses
'ü"call_and_return_conditional_losses"
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
Ønon_trainable_variables
Ùlayers
Úmetrics
 Ûlayer_regularization_losses
Ülayer_metrics
ÿ	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ð
Ýtrace_02Ñ
*__inference_dense_4_layer_call_fn_45294318¢
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
 zÝtrace_0

Þtrace_02ì
E__inference_dense_4_layer_call_and_return_conditional_losses_45294349¢
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
 zÞtrace_0
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
ßnon_trainable_variables
àlayers
ámetrics
 âlayer_regularization_losses
ãlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ð
ätrace_02Ñ
*__inference_dense_5_layer_call_fn_45294358¢
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
 zätrace_0

åtrace_02ì
E__inference_dense_5_layer_call_and_return_conditional_losses_45294388¢
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
 zåtrace_0
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
/__inference_sequential_1_layer_call_fn_45292308dense_4_input"¿
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
Bý
/__inference_sequential_1_layer_call_fn_45294182inputs"¿
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
Bý
/__inference_sequential_1_layer_call_fn_45294195inputs"¿
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
B
/__inference_sequential_1_layer_call_fn_45292381dense_4_input"¿
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
B
J__inference_sequential_1_layer_call_and_return_conditional_losses_45294252inputs"¿
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
B
J__inference_sequential_1_layer_call_and_return_conditional_losses_45294309inputs"¿
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
¢B
J__inference_sequential_1_layer_call_and_return_conditional_losses_45292395dense_4_input"¿
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
¢B
J__inference_sequential_1_layer_call_and_return_conditional_losses_45292409dense_4_input"¿
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
0
®0
¯1"
trackable_list_wrapper
.
¬	variables"
_generic_user_object
:  (2total
:  (2count
0
²0
³1"
trackable_list_wrapper
.
°	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
·0
¸1"
trackable_list_wrapper
.
µ	variables"
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
ÞBÛ
*__inference_dense_4_layer_call_fn_45294318inputs"¢
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
ùBö
E__inference_dense_4_layer_call_and_return_conditional_losses_45294349inputs"¢
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
ÞBÛ
*__inference_dense_5_layer_call_fn_45294358inputs"¢
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
ùBö
E__inference_dense_5_layer_call_and_return_conditional_losses_45294388inputs"¢
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
%:#2.2Adam/dense_6/kernel/m
:.2Adam/dense_6/bias/m
%:#.2Adam/dense_7/kernel/m
:2Adam/dense_7/bias/m
M:K	22<Adam/token_and_position_embedding_1/embedding_2/embeddings/m
L:J.22<Adam/token_and_position_embedding_1/embedding_3/embeddings/m
T:R222@Adam/transformer_encoder_1/multi_head_attention_1/query/kernel/m
N:L22>Adam/transformer_encoder_1/multi_head_attention_1/query/bias/m
R:P222>Adam/transformer_encoder_1/multi_head_attention_1/key/kernel/m
L:J22<Adam/transformer_encoder_1/multi_head_attention_1/key/bias/m
T:R222@Adam/transformer_encoder_1/multi_head_attention_1/value/kernel/m
N:L22>Adam/transformer_encoder_1/multi_head_attention_1/value/bias/m
_:]222KAdam/transformer_encoder_1/multi_head_attention_1/attention_output/kernel/m
U:S22IAdam/transformer_encoder_1/multi_head_attention_1/attention_output/bias/m
%:#2 2Adam/dense_4/kernel/m
: 2Adam/dense_4/bias/m
%:# 22Adam/dense_5/kernel/m
:22Adam/dense_5/bias/m
D:B228Adam/transformer_encoder_1/layer_normalization_2/gamma/m
C:A227Adam/transformer_encoder_1/layer_normalization_2/beta/m
D:B228Adam/transformer_encoder_1/layer_normalization_3/gamma/m
C:A227Adam/transformer_encoder_1/layer_normalization_3/beta/m
%:#2.2Adam/dense_6/kernel/v
:.2Adam/dense_6/bias/v
%:#.2Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v
M:K	22<Adam/token_and_position_embedding_1/embedding_2/embeddings/v
L:J.22<Adam/token_and_position_embedding_1/embedding_3/embeddings/v
T:R222@Adam/transformer_encoder_1/multi_head_attention_1/query/kernel/v
N:L22>Adam/transformer_encoder_1/multi_head_attention_1/query/bias/v
R:P222>Adam/transformer_encoder_1/multi_head_attention_1/key/kernel/v
L:J22<Adam/transformer_encoder_1/multi_head_attention_1/key/bias/v
T:R222@Adam/transformer_encoder_1/multi_head_attention_1/value/kernel/v
N:L22>Adam/transformer_encoder_1/multi_head_attention_1/value/bias/v
_:]222KAdam/transformer_encoder_1/multi_head_attention_1/attention_output/kernel/v
U:S22IAdam/transformer_encoder_1/multi_head_attention_1/attention_output/bias/v
%:#2 2Adam/dense_4/kernel/v
: 2Adam/dense_4/bias/v
%:# 22Adam/dense_5/kernel/v
:22Adam/dense_5/bias/v
D:B228Adam/transformer_encoder_1/layer_normalization_2/gamma/v
C:A227Adam/transformer_encoder_1/layer_normalization_2/beta/v
D:B228Adam/transformer_encoder_1/layer_normalization_3/gamma/v
C:A227Adam/transformer_encoder_1/layer_normalization_3/beta/v¤
#__inference__wrapped_model_45292216};:<=>?@ABCHIDEFGJK01890¢-
&¢#
!
input_2ÿÿÿÿÿÿÿÿÿ.
ª "1ª.
,
dense_7!
dense_7ÿÿÿÿÿÿÿÿÿ­
E__inference_dense_4_layer_call_and_return_conditional_losses_45294349dDE3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ.2
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ. 
 
*__inference_dense_4_layer_call_fn_45294318WDE3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ.2
ª "ÿÿÿÿÿÿÿÿÿ. ­
E__inference_dense_5_layer_call_and_return_conditional_losses_45294388dFG3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ. 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 
*__inference_dense_5_layer_call_fn_45294358WFG3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ. 
ª "ÿÿÿÿÿÿÿÿÿ.2¥
E__inference_dense_6_layer_call_and_return_conditional_losses_45294150\01/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ.
 }
*__inference_dense_6_layer_call_fn_45294139O01/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "ÿÿÿÿÿÿÿÿÿ.¥
E__inference_dense_7_layer_call_and_return_conditional_losses_45294169\89/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_7_layer_call_fn_45294159O89/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ.
ª "ÿÿÿÿÿÿÿÿÿÕ
V__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_45294130{I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ­
;__inference_global_average_pooling1d_layer_call_fn_45294124nI¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
ª "!ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÂ
E__inference_model_1_layer_call_and_return_conditional_losses_45293200y;:<=>?@ABCHIDEFGJK01898¢5
.¢+
!
input_2ÿÿÿÿÿÿÿÿÿ.
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Â
E__inference_model_1_layer_call_and_return_conditional_losses_45293253y;:<=>?@ABCHIDEFGJK01898¢5
.¢+
!
input_2ÿÿÿÿÿÿÿÿÿ.
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Á
E__inference_model_1_layer_call_and_return_conditional_losses_45293570x;:<=>?@ABCHIDEFGJK01897¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ.
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Á
E__inference_model_1_layer_call_and_return_conditional_losses_45293745x;:<=>?@ABCHIDEFGJK01897¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ.
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
*__inference_model_1_layer_call_fn_45292702l;:<=>?@ABCHIDEFGJK01898¢5
.¢+
!
input_2ÿÿÿÿÿÿÿÿÿ.
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
*__inference_model_1_layer_call_fn_45293147l;:<=>?@ABCHIDEFGJK01898¢5
.¢+
!
input_2ÿÿÿÿÿÿÿÿÿ.
p

 
ª "ÿÿÿÿÿÿÿÿÿ
*__inference_model_1_layer_call_fn_45293359k;:<=>?@ABCHIDEFGJK01897¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ.
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
*__inference_model_1_layer_call_fn_45293408k;:<=>?@ABCHIDEFGJK01897¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ.
p

 
ª "ÿÿÿÿÿÿÿÿÿÃ
J__inference_sequential_1_layer_call_and_return_conditional_losses_45292395uDEFGB¢?
8¢5
+(
dense_4_inputÿÿÿÿÿÿÿÿÿ.2
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 Ã
J__inference_sequential_1_layer_call_and_return_conditional_losses_45292409uDEFGB¢?
8¢5
+(
dense_4_inputÿÿÿÿÿÿÿÿÿ.2
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 ¼
J__inference_sequential_1_layer_call_and_return_conditional_losses_45294252nDEFG;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 ¼
J__inference_sequential_1_layer_call_and_return_conditional_losses_45294309nDEFG;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 
/__inference_sequential_1_layer_call_fn_45292308hDEFGB¢?
8¢5
+(
dense_4_inputÿÿÿÿÿÿÿÿÿ.2
p 

 
ª "ÿÿÿÿÿÿÿÿÿ.2
/__inference_sequential_1_layer_call_fn_45292381hDEFGB¢?
8¢5
+(
dense_4_inputÿÿÿÿÿÿÿÿÿ.2
p

 
ª "ÿÿÿÿÿÿÿÿÿ.2
/__inference_sequential_1_layer_call_fn_45294182aDEFG;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p 

 
ª "ÿÿÿÿÿÿÿÿÿ.2
/__inference_sequential_1_layer_call_fn_45294195aDEFG;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p

 
ª "ÿÿÿÿÿÿÿÿÿ.2³
&__inference_signature_wrapper_45293310;:<=>?@ABCHIDEFGJK0189;¢8
¢ 
1ª.
,
input_2!
input_2ÿÿÿÿÿÿÿÿÿ."1ª.
,
dense_7!
dense_7ÿÿÿÿÿÿÿÿÿ»
\__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_45293778[;:*¢'
 ¢

xÿÿÿÿÿÿÿÿÿ.
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 
A__inference_token_and_position_embedding_1_layer_call_fn_45293754N;:*¢'
 ¢

xÿÿÿÿÿÿÿÿÿ.
ª "ÿÿÿÿÿÿÿÿÿ.2Í
S__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_45293979v<=>?@ABCHIDEFGJK7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 Í
S__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_45294119v<=>?@ABCHIDEFGJK7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ.2
 ¥
8__inference_transformer_encoder_1_layer_call_fn_45293815i<=>?@ABCHIDEFGJK7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p 
ª "ÿÿÿÿÿÿÿÿÿ.2¥
8__inference_transformer_encoder_1_layer_call_fn_45293852i<=>?@ABCHIDEFGJK7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ.2
p
ª "ÿÿÿÿÿÿÿÿÿ.2