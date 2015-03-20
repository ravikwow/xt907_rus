.class Lnet/sf/smc/generator/JSFunction;
.super Ljava/lang/Object;
.source "SmcJSGenerator.java"


# instance fields
.field private argumentList:Ljava/lang/String;

.field private functionCode:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1279
    const-string v0, ""

    iput-object v0, p0, Lnet/sf/smc/generator/JSFunction;->functionCode:Ljava/lang/String;

    .line 1280
    return-void
.end method


# virtual methods
.method public addCode(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;
    .locals 2
    .param p1, "fc"    # Ljava/lang/String;

    .prologue
    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sf/smc/generator/JSFunction;->functionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/smc/generator/JSFunction;->functionCode:Ljava/lang/String;

    .line 1303
    return-object p0
.end method

.method public addParams(Ljava/lang/String;)Lnet/sf/smc/generator/JSFunction;
    .locals 2
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 1291
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sf/smc/generator/JSFunction;->argumentList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/smc/generator/JSFunction;->argumentList:Ljava/lang/String;

    .line 1296
    :goto_0
    return-object p0

    .line 1294
    :cond_0
    iput-object p1, p0, Lnet/sf/smc/generator/JSFunction;->argumentList:Ljava/lang/String;

    goto :goto_0
.end method

.method public generateCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sf/smc/generator/JSFunction;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":function("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/smc/generator/JSFunction;->argumentList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/smc/generator/JSFunction;->functionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArgumentList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lnet/sf/smc/generator/JSFunction;->argumentList:Ljava/lang/String;

    return-object v0
.end method

.method public setArgumentList(Ljava/lang/String;)V
    .locals 0
    .param p1, "al"    # Ljava/lang/String;

    .prologue
    .line 1285
    iput-object p1, p0, Lnet/sf/smc/generator/JSFunction;->argumentList:Ljava/lang/String;

    .line 1286
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "fc"    # Ljava/lang/String;

    .prologue
    .line 1299
    iput-object p1, p0, Lnet/sf/smc/generator/JSFunction;->functionCode:Ljava/lang/String;

    .line 1300
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fn"    # Ljava/lang/String;

    .prologue
    .line 1282
    iput-object p1, p0, Lnet/sf/smc/generator/JSFunction;->name:Ljava/lang/String;

    .line 1283
    return-void
.end method
