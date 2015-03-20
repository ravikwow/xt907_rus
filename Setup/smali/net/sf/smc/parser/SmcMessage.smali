.class public final Lnet/sf/smc/parser/SmcMessage;
.super Ljava/lang/Object;
.source "SmcMessage.java"


# static fields
.field public static final ERROR:I = 0x1

.field public static final WARNING:I


# instance fields
.field private final _level:I

.field private final _lineNumber:I

.field private final _name:Ljava/lang/String;

.field private final _text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "level"    # I
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    if-nez p4, :cond_1

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null text"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_2
    if-gez p2, :cond_3

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative lineNumber"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_3
    if-eqz p3, :cond_4

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid level ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty text"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_5
    iput-object p1, p0, Lnet/sf/smc/parser/SmcMessage;->_name:Ljava/lang/String;

    .line 120
    iput p2, p0, Lnet/sf/smc/parser/SmcMessage;->_lineNumber:I

    .line 121
    iput p3, p0, Lnet/sf/smc/parser/SmcMessage;->_level:I

    .line 122
    iput-object p4, p0, Lnet/sf/smc/parser/SmcMessage;->_text:Ljava/lang/String;

    .line 124
    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lnet/sf/smc/parser/SmcMessage;->_level:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lnet/sf/smc/parser/SmcMessage;->_lineNumber:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lnet/sf/smc/parser/SmcMessage;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lnet/sf/smc/parser/SmcMessage;->_text:Ljava/lang/String;

    return-object v0
.end method
