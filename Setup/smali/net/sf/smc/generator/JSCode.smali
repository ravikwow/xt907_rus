.class Lnet/sf/smc/generator/JSCode;
.super Ljava/lang/Object;
.source "SmcJSGenerator.java"


# instance fields
.field private jsClasses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/sf/smc/generator/JSClass;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/smc/generator/JSCode;->jsClasses:Ljava/util/ArrayList;

    .line 1157
    return-void
.end method


# virtual methods
.method public addClass(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "baseClass"    # Ljava/lang/String;

    .prologue
    .line 1159
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/sf/smc/generator/JSCode;->addClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    move-result-object v0

    return-object v0
.end method

.method public addClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "baseClass"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    .prologue
    .line 1162
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/sf/smc/generator/JSCode;->addClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    move-result-object v0

    return-object v0
.end method

.method public addClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "baseClass"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;
    .param p4, "code"    # Ljava/lang/String;

    .prologue
    .line 1165
    new-instance v0, Lnet/sf/smc/generator/JSClass;

    invoke-direct {v0}, Lnet/sf/smc/generator/JSClass;-><init>()V

    .line 1166
    .local v0, "jsClass":Lnet/sf/smc/generator/JSClass;
    invoke-virtual {v0, p1}, Lnet/sf/smc/generator/JSClass;->setName(Ljava/lang/String;)V

    .line 1167
    invoke-virtual {v0, p2}, Lnet/sf/smc/generator/JSClass;->setBaseClass(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {v0, p3}, Lnet/sf/smc/generator/JSClass;->addParams(Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    .line 1169
    invoke-virtual {v0, p4}, Lnet/sf/smc/generator/JSClass;->addConstructorCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    .line 1170
    iget-object v1, p0, Lnet/sf/smc/generator/JSCode;->jsClasses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    return-object v0
.end method

.method public generateCode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1177
    const-string v2, ""

    .line 1178
    .local v2, "tmp":Ljava/lang/String;
    iget-object v3, p0, Lnet/sf/smc/generator/JSCode;->jsClasses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/smc/generator/JSClass;

    .line 1179
    .local v1, "jsc":Lnet/sf/smc/generator/JSClass;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lnet/sf/smc/generator/JSClass;->generateCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1181
    .end local v1    # "jsc":Lnet/sf/smc/generator/JSClass;
    :cond_0
    return-object v2
.end method

.method public getCurrentClass()Lnet/sf/smc/generator/JSClass;
    .locals 2

    .prologue
    .line 1174
    iget-object v0, p0, Lnet/sf/smc/generator/JSCode;->jsClasses:Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/sf/smc/generator/JSCode;->jsClasses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/smc/generator/JSClass;

    return-object v0
.end method
