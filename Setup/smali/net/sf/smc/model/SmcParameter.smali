.class public final Lnet/sf/smc/model/SmcParameter;
.super Lnet/sf/smc/model/SmcElement;
.source "SmcParameter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sf/smc/model/SmcElement;",
        "Ljava/lang/Comparable",
        "<",
        "Lnet/sf/smc/model/SmcParameter;",
        ">;"
    }
.end annotation


# static fields
.field public static final TCL_REFERENCE_TYPE:Ljava/lang/String; = "reference"

.field public static final TCL_VALUE_TYPE:Ljava/lang/String; = "value"


# instance fields
.field private _type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lnet/sf/smc/model/SmcElement;-><init>(Ljava/lang/String;I)V

    .line 71
    iput-object p3, p0, Lnet/sf/smc/model/SmcParameter;->_type:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public accept(Lnet/sf/smc/model/SmcVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lnet/sf/smc/model/SmcVisitor;

    .prologue
    .line 85
    invoke-virtual {p1, p0}, Lnet/sf/smc/model/SmcVisitor;->visit(Lnet/sf/smc/model/SmcParameter;)V

    .line 86
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lnet/sf/smc/model/SmcParameter;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnet/sf/smc/model/SmcParameter;->compareTo(Lnet/sf/smc/model/SmcParameter;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnet/sf/smc/model/SmcParameter;)I
    .locals 3
    .param p1, "param"    # Lnet/sf/smc/model/SmcParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v1, p0, Lnet/sf/smc/model/SmcElement;->_name:Ljava/lang/String;

    iget-object v2, p1, Lnet/sf/smc/model/SmcElement;->_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 113
    .local v0, "retval":I
    if-nez v0, :cond_0

    .line 115
    iget-object v1, p0, Lnet/sf/smc/model/SmcParameter;->_type:Ljava/lang/String;

    iget-object v2, p1, Lnet/sf/smc/model/SmcParameter;->_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 118
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 175
    if-ne p0, p1, :cond_1

    move v1, v2

    .line 177
    .local v1, "retval":Z
    :goto_0
    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    instance-of v4, p1, Lnet/sf/smc/model/SmcParameter;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 181
    check-cast v0, Lnet/sf/smc/model/SmcParameter;

    .line 183
    .local v0, "parameter":Lnet/sf/smc/model/SmcParameter;
    iget-object v4, p0, Lnet/sf/smc/model/SmcElement;->_name:Ljava/lang/String;

    iget-object v5, v0, Lnet/sf/smc/model/SmcElement;->_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v2, :cond_2

    iget-object v4, p0, Lnet/sf/smc/model/SmcParameter;->_type:Ljava/lang/String;

    iget-object v5, v0, Lnet/sf/smc/model/SmcParameter;->_type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 187
    .end local v0    # "parameter":Lnet/sf/smc/model/SmcParameter;
    :cond_0
    :goto_1
    return v1

    .end local v1    # "retval":Z
    :cond_1
    move v1, v3

    .line 175
    goto :goto_0

    .restart local v0    # "parameter":Lnet/sf/smc/model/SmcParameter;
    .restart local v1    # "retval":Z
    :cond_2
    move v1, v3

    .line 183
    goto :goto_1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lnet/sf/smc/model/SmcParameter;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lnet/sf/smc/model/SmcParameter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .param p1, "typeName"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/smc/model/SmcParameter;->_type:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v0, "retval":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lnet/sf/smc/model/SmcElement;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v1, p0, Lnet/sf/smc/model/SmcParameter;->_type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 216
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v1, p0, Lnet/sf/smc/model/SmcParameter;->_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
