.class public abstract Lcom/motorola/blur/util/mime/ParameterizedValue;
.super Ljava/lang/Object;
.source "ParameterizedValue.java"


# instance fields
.field private mDirty:Z

.field private mParams:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/blur/util/mime/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private mUseEncodedWord:Z

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "useEncodedWord"    # Z

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean p1, p0, Lcom/motorola/blur/util/mime/ParameterizedValue;->mUseEncodedWord:Z

    .line 48
    return-void
.end method


# virtual methods
.method protected addParameter(Lcom/motorola/blur/util/mime/Parameter;)V
    .locals 2
    .param p1, "param"    # Lcom/motorola/blur/util/mime/Parameter;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/motorola/blur/util/mime/ParameterizedValue;->mParams:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/util/mime/ParameterizedValue;->mParams:Ljava/util/LinkedHashMap;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/util/mime/ParameterizedValue;->mParams:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/motorola/blur/util/mime/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/util/mime/ParameterizedValue;->mDirty:Z

    .line 145
    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 66
    if-eqz p2, :cond_0

    .line 67
    new-instance v0, Lcom/motorola/blur/util/mime/Parameter;

    invoke-direct {v0, p1, p2}, Lcom/motorola/blur/util/mime/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/motorola/blur/util/mime/ParameterizedValue;->addParameter(Lcom/motorola/blur/util/mime/Parameter;)V

    .line 69
    :cond_0
    return-void
.end method

.method protected varargs addParameters([Ljava/lang/String;)V
    .locals 4
    .param p1, "namesAndValues"    # [Ljava/lang/String;

    .prologue
    .line 126
    array-length v1, p1

    .line 127
    .local v1, "len":I
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    .line 128
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must have an even number of parameter strings."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 131
    aget-object v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p1, v3

    invoke-virtual {p0, v2, v3}, Lcom/motorola/blur/util/mime/ParameterizedValue;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 133
    :cond_1
    return-void
.end method

.method protected abstract getBaseValue()Ljava/lang/String;
.end method

.method protected getParameter(Ljava/lang/String;)Lcom/motorola/blur/util/mime/Parameter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/motorola/blur/util/mime/ParameterizedValue;->mParams:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/util/mime/ParameterizedValue;->mParams:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/util/mime/Parameter;

    goto :goto_0
.end method

.method public getParameterValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/motorola/blur/util/mime/ParameterizedValue;->getParameter(Ljava/lang/String;)Lcom/motorola/blur/util/mime/Parameter;

    move-result-object v0

    .line 57
    .local v0, "param":Lcom/motorola/blur/util/mime/Parameter;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected setDirty()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/util/mime/ParameterizedValue;->mDirty:Z

    .line 102
    return-void
.end method

.method protected setParameters(Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {p1}, Lcom/motorola/blur/util/mime/Parameter;->parse(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/util/mime/ParameterizedValue;->mParams:Ljava/util/LinkedHashMap;

    .line 118
    return-void
.end method

.method protected setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/motorola/blur/util/mime/ParameterizedValue;->mValue:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x22

    .line 76
    iget-object v4, p0, Lcom/motorola/blur/util/mime/ParameterizedValue;->mValue:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/motorola/blur/util/mime/ParameterizedValue;->mDirty:Z

    if-eqz v4, :cond_3

    .line 77
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/ParameterizedValue;->getBaseValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/motorola/blur/util/mime/ParameterizedValue;->mParams:Ljava/util/LinkedHashMap;

    if-eqz v4, :cond_2

    .line 79
    iget-object v4, p0, Lcom/motorola/blur/util/mime/ParameterizedValue;->mParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/util/mime/Parameter;

    .line 80
    .local v1, "p":Lcom/motorola/blur/util/mime/Parameter;
    const-string v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-boolean v4, p0, Lcom/motorola/blur/util/mime/ParameterizedValue;->mUseEncodedWord:Z

    if-eqz v4, :cond_1

    .line 82
    invoke-virtual {v1}, Lcom/motorola/blur/util/mime/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1}, Lcom/motorola/blur/util/mime/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/motorola/blur/util/mime/MimeCodec;->encodeWord(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "word":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 86
    .end local v3    # "word":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Lcom/motorola/blur/util/mime/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/motorola/blur/util/mime/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/blur/util/mime/MimeCodec;->encodeParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 90
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/motorola/blur/util/mime/Parameter;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/util/mime/ParameterizedValue;->mValue:Ljava/lang/String;

    .line 91
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/motorola/blur/util/mime/ParameterizedValue;->mDirty:Z

    .line 93
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v4, p0, Lcom/motorola/blur/util/mime/ParameterizedValue;->mValue:Ljava/lang/String;

    return-object v4
.end method
