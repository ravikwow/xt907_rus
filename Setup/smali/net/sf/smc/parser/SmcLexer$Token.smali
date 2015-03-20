.class final Lnet/sf/smc/parser/SmcLexer$Token;
.super Ljava/lang/Object;
.source "SmcLexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcLexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Token"
.end annotation


# instance fields
.field private _lineNumber:I

.field private _type:I

.field private _value:Ljava/lang/String;

.field final synthetic this$0:Lnet/sf/smc/parser/SmcLexer;


# direct methods
.method constructor <init>(Lnet/sf/smc/parser/SmcLexer;)V
    .locals 1

    .prologue
    .line 1160
    iput-object p1, p0, Lnet/sf/smc/parser/SmcLexer$Token;->this$0:Lnet/sf/smc/parser/SmcLexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1161
    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/smc/parser/SmcLexer$Token;->_type:I

    .line 1162
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/smc/parser/SmcLexer$Token;->_value:Ljava/lang/String;

    .line 1163
    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/smc/parser/SmcLexer$Token;->_lineNumber:I

    .line 1164
    return-void
.end method

.method static synthetic access$000(Lnet/sf/smc/parser/SmcLexer$Token;)V
    .locals 0
    .param p0, "x0"    # Lnet/sf/smc/parser/SmcLexer$Token;

    .prologue
    .line 1157
    invoke-direct {p0}, Lnet/sf/smc/parser/SmcLexer$Token;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 1221
    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/smc/parser/SmcLexer$Token;->_type:I

    .line 1222
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/smc/parser/SmcLexer$Token;->_value:Ljava/lang/String;

    .line 1223
    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/smc/parser/SmcLexer$Token;->_lineNumber:I

    .line 1224
    return-void
.end method


# virtual methods
.method copy()Lnet/sf/smc/parser/SmcLexer$Token;
    .locals 2

    .prologue
    .line 1200
    new-instance v0, Lnet/sf/smc/parser/SmcLexer$Token;

    iget-object v1, p0, Lnet/sf/smc/parser/SmcLexer$Token;->this$0:Lnet/sf/smc/parser/SmcLexer;

    invoke-direct {v0, v1}, Lnet/sf/smc/parser/SmcLexer$Token;-><init>(Lnet/sf/smc/parser/SmcLexer;)V

    .line 1202
    .local v0, "retval":Lnet/sf/smc/parser/SmcLexer$Token;
    iget v1, p0, Lnet/sf/smc/parser/SmcLexer$Token;->_type:I

    invoke-virtual {v0, v1}, Lnet/sf/smc/parser/SmcLexer$Token;->setType(I)V

    .line 1203
    iget-object v1, p0, Lnet/sf/smc/parser/SmcLexer$Token;->_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/sf/smc/parser/SmcLexer$Token;->setValue(Ljava/lang/String;)V

    .line 1204
    iget v1, p0, Lnet/sf/smc/parser/SmcLexer$Token;->_lineNumber:I

    invoke-virtual {v0, v1}, Lnet/sf/smc/parser/SmcLexer$Token;->setLineNumber(I)V

    .line 1206
    return-object v0
.end method

.method getLineNumber()I
    .locals 1

    .prologue
    .line 1189
    iget v0, p0, Lnet/sf/smc/parser/SmcLexer$Token;->_lineNumber:I

    return v0
.end method

.method getType()I
    .locals 1

    .prologue
    .line 1168
    iget v0, p0, Lnet/sf/smc/parser/SmcLexer$Token;->_type:I

    return v0
.end method

.method getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lnet/sf/smc/parser/SmcLexer$Token;->_value:Ljava/lang/String;

    return-object v0
.end method

.method setLineNumber(I)V
    .locals 0
    .param p1, "line_number"    # I

    .prologue
    .line 1194
    iput p1, p0, Lnet/sf/smc/parser/SmcLexer$Token;->_lineNumber:I

    .line 1195
    return-void
.end method

.method setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1173
    iput p1, p0, Lnet/sf/smc/parser/SmcLexer$Token;->_type:I

    .line 1174
    return-void
.end method

.method setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1184
    iput-object p1, p0, Lnet/sf/smc/parser/SmcLexer$Token;->_value:Ljava/lang/String;

    .line 1185
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1211
    new-instance v0, Ljava/lang/String;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1213
    .local v0, "output":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lnet/sf/smc/parser/SmcLexer;->_TypeName:[Ljava/lang/String;
    invoke-static {}, Lnet/sf/smc/parser/SmcLexer;->access$100()[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnet/sf/smc/parser/SmcLexer$Token;->_type:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/smc/parser/SmcLexer$Token;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1216
    return-object v0
.end method
