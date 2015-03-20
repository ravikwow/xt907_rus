.class Lnet/sf/smc/generator/JSClass;
.super Ljava/lang/Object;
.source "SmcJSGenerator.java"


# instance fields
.field private argumentList:Ljava/lang/String;

.field private baseClass:Ljava/lang/String;

.field private constructorCode:Ljava/lang/String;

.field private functionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/sf/smc/generator/JSFunction;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private staticMembers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1194
    const-string v0, ""

    iput-object v0, p0, Lnet/sf/smc/generator/JSClass;->constructorCode:Ljava/lang/String;

    .line 1195
    const-string v0, ""

    iput-object v0, p0, Lnet/sf/smc/generator/JSClass;->argumentList:Ljava/lang/String;

    .line 1196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/smc/generator/JSClass;->staticMembers:Ljava/util/HashMap;

    .line 1197
    return-void
.end method


# virtual methods
.method public addConstructorCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;
    .locals 2
    .param p1, "cc"    # Ljava/lang/String;

    .prologue
    .line 1214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sf/smc/generator/JSClass;->constructorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/smc/generator/JSClass;->constructorCode:Ljava/lang/String;

    .line 1215
    return-object p0
.end method

.method public addFunction(Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1222
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lnet/sf/smc/generator/JSClass;->addFunction(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    move-result-object v0

    return-object v0
.end method

.method public addFunction(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .prologue
    .line 1225
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/smc/generator/JSClass;->addFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;

    move-result-object v0

    return-object v0
.end method

.method public addFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;

    .prologue
    .line 1228
    new-instance v0, Lnet/sf/smc/generator/JSFunction;

    invoke-direct {v0}, Lnet/sf/smc/generator/JSFunction;-><init>()V

    .line 1229
    .local v0, "jsFunc":Lnet/sf/smc/generator/JSFunction;
    invoke-virtual {v0, p1}, Lnet/sf/smc/generator/JSFunction;->setName(Ljava/lang/String;)V

    .line 1230
    invoke-virtual {v0, p2}, Lnet/sf/smc/generator/JSFunction;->setArgumentList(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {v0, p3}, Lnet/sf/smc/generator/JSFunction;->addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;

    .line 1232
    iget-object v1, p0, Lnet/sf/smc/generator/JSClass;->functionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1233
    return-object p0
.end method

.method public addParams(Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;
    .locals 2
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 1205
    iget-object v0, p0, Lnet/sf/smc/generator/JSClass;->argumentList:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/smc/generator/JSClass;->argumentList:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1206
    :cond_0
    iput-object p1, p0, Lnet/sf/smc/generator/JSClass;->argumentList:Ljava/lang/String;

    .line 1210
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/smc/generator/JSClass;->functionList:Ljava/util/ArrayList;

    .line 1211
    return-object p0

    .line 1208
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sf/smc/generator/JSClass;->argumentList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/smc/generator/JSClass;->argumentList:Ljava/lang/String;

    goto :goto_0
.end method

.method public addStaticMember(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/smc/generator/JSClass;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 1236
    iget-object v0, p0, Lnet/sf/smc/generator/JSClass;->staticMembers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    return-object p0
.end method

.method public generateCode()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1246
    const-string v5, ""

    .line 1247
    .local v5, "tmpl":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "function "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/sf/smc/generator/JSClass;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/sf/smc/generator/JSClass;->argumentList:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "){\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1248
    iget-object v7, p0, Lnet/sf/smc/generator/JSClass;->baseClass:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lnet/sf/smc/generator/JSClass;->baseClass:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 1249
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/sf/smc/generator/JSClass;->baseClass:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".apply(this,arguments);\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1251
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/sf/smc/generator/JSClass;->constructorCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n}\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1252
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/sf/smc/generator/JSClass;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".prototype=State.mixin("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1253
    iget-object v7, p0, Lnet/sf/smc/generator/JSClass;->baseClass:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lnet/sf/smc/generator/JSClass;->baseClass:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 1254
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "new "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/sf/smc/generator/JSClass;->baseClass:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1258
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",{\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1259
    const-string v0, ""

    .line 1260
    .local v0, "comma":Ljava/lang/String;
    iget-object v7, p0, Lnet/sf/smc/generator/JSClass;->functionList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/generator/JSFunction;

    .line 1261
    .local v2, "jsFunction":Lnet/sf/smc/generator/JSFunction;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lnet/sf/smc/generator/JSFunction;->generateCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1262
    const-string v0, ","

    goto :goto_1

    .line 1256
    .end local v0    # "comma":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "jsFunction":Lnet/sf/smc/generator/JSFunction;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "{}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1264
    .restart local v0    # "comma":Ljava/lang/String;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n});\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1265
    iget-object v7, p0, Lnet/sf/smc/generator/JSClass;->staticMembers:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1266
    .local v4, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1267
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1268
    .local v6, "val":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lnet/sf/smc/generator/JSClass;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1269
    goto :goto_2

    .line 1270
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "val":Ljava/lang/String;
    :cond_3
    return-object v5
.end method

.method public getBaseClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lnet/sf/smc/generator/JSClass;->baseClass:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentFunction()Lnet/sf/smc/generator/JSFunction;
    .locals 2

    .prologue
    .line 1240
    iget-object v0, p0, Lnet/sf/smc/generator/JSClass;->functionList:Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/sf/smc/generator/JSClass;->functionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/smc/generator/JSFunction;

    return-object v0
.end method

.method public setBaseClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "bc"    # Ljava/lang/String;

    .prologue
    .line 1202
    iput-object p1, p0, Lnet/sf/smc/generator/JSClass;->baseClass:Ljava/lang/String;

    .line 1203
    return-void
.end method

.method public setFunctionList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/sf/smc/generator/JSFunction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1218
    .local p1, "fl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/sf/smc/generator/JSFunction;>;"
    iput-object p1, p0, Lnet/sf/smc/generator/JSClass;->functionList:Ljava/util/ArrayList;

    .line 1219
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cn"    # Ljava/lang/String;

    .prologue
    .line 1199
    iput-object p1, p0, Lnet/sf/smc/generator/JSClass;->name:Ljava/lang/String;

    .line 1200
    return-void
.end method
