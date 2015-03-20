.class final Lnet/sf/smc/Smc$Language;
.super Ljava/lang/Object;
.source "Smc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/Smc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Language"
.end annotation


# instance fields
.field private final _generator:Ljava/lang/reflect/Constructor;

.field private final _headerGenerator:Ljava/lang/reflect/Constructor;

.field private final _language:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

.field private final _name:Ljava/lang/String;

.field private final _optionFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/sf/smc/parser/SmcParser$TargetLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 5
    .param p1, "language"    # Lnet/sf/smc/parser/SmcParser$TargetLanguage;
    .param p2, "optionFlag"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "generator"    # Ljava/lang/Class;
    .param p5, "headerGenerator"    # Ljava/lang/Class;

    .prologue
    .line 1401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1402
    const/4 v1, 0x0

    .line 1403
    .local v1, "sourceCtor":Ljava/lang/reflect/Constructor;
    const/4 v0, 0x0

    .line 1405
    .local v0, "headerCtor":Ljava/lang/reflect/Constructor;
    iput-object p1, p0, Lnet/sf/smc/Smc$Language;->_language:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    .line 1406
    iput-object p2, p0, Lnet/sf/smc/Smc$Language;->_optionFlag:Ljava/lang/String;

    .line 1407
    iput-object p3, p0, Lnet/sf/smc/Smc$Language;->_name:Ljava/lang/String;

    .line 1409
    if-eqz p4, :cond_0

    .line 1413
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnet/sf/smc/generator/SmcOptions;

    aput-object v4, v2, v3

    invoke-virtual {p4, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1421
    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    .line 1425
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnet/sf/smc/generator/SmcOptions;

    aput-object v4, v2, v3

    invoke-virtual {p5, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 1433
    :cond_1
    :goto_1
    iput-object v1, p0, Lnet/sf/smc/Smc$Language;->_generator:Ljava/lang/reflect/Constructor;

    .line 1434
    iput-object v0, p0, Lnet/sf/smc/Smc$Language;->_headerGenerator:Ljava/lang/reflect/Constructor;

    .line 1435
    return-void

    .line 1429
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1417
    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1514
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 1516
    .local v0, "retcode":Z
    :goto_0
    if-nez v0, :cond_0

    instance-of v3, p1, Lnet/sf/smc/Smc$Language;

    if-eqz v3, :cond_0

    .line 1518
    iget-object v3, p0, Lnet/sf/smc/Smc$Language;->_language:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    check-cast p1, Lnet/sf/smc/Smc$Language;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v4, p1, Lnet/sf/smc/Smc$Language;->_language:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 1522
    :cond_0
    :goto_1
    return v0

    .end local v0    # "retcode":Z
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    move v0, v2

    .line 1514
    goto :goto_0

    .end local p1    # "o":Ljava/lang/Object;
    .restart local v0    # "retcode":Z
    :cond_2
    move v0, v2

    .line 1518
    goto :goto_1
.end method

.method public generator(Lnet/sf/smc/generator/SmcOptions;)Lnet/sf/smc/generator/SmcCodeGenerator;
    .locals 6
    .param p1, "options"    # Lnet/sf/smc/generator/SmcOptions;

    .prologue
    .line 1463
    const/4 v2, 0x0

    .line 1467
    .local v2, "retval":Lnet/sf/smc/generator/SmcCodeGenerator;
    :try_start_0
    iget-object v3, p0, Lnet/sf/smc/Smc$Language;->_generator:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lnet/sf/smc/generator/SmcCodeGenerator;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1480
    :goto_0
    return-object v2

    .line 1471
    :catch_0
    move-exception v1

    .line 1473
    .local v1, "jex":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lnet/sf/smc/generator/SmcOptions;->srcfileBase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1474
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, ".sm: failed to create "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1475
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v4, p0, Lnet/sf/smc/Smc$Language;->_language:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 1476
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, " generator:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1477
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public hasHeaderFile()Z
    .locals 1

    .prologue
    .line 1485
    iget-object v0, p0, Lnet/sf/smc/Smc$Language;->_headerGenerator:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1528
    iget-object v0, p0, Lnet/sf/smc/Smc$Language;->_language:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public headerGenerator(Lnet/sf/smc/generator/SmcOptions;)Lnet/sf/smc/generator/SmcCodeGenerator;
    .locals 5
    .param p1, "options"    # Lnet/sf/smc/generator/SmcOptions;

    .prologue
    .line 1491
    const/4 v1, 0x0

    .line 1495
    .local v1, "retval":Lnet/sf/smc/generator/SmcCodeGenerator;
    :try_start_0
    iget-object v2, p0, Lnet/sf/smc/Smc$Language;->_headerGenerator:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lnet/sf/smc/generator/SmcCodeGenerator;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1504
    :goto_0
    return-object v1

    .line 1499
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public language()Lnet/sf/smc/parser/SmcParser$TargetLanguage;
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lnet/sf/smc/Smc$Language;->_language:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1457
    iget-object v0, p0, Lnet/sf/smc/Smc$Language;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public optionFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1452
    iget-object v0, p0, Lnet/sf/smc/Smc$Language;->_optionFlag:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1534
    iget-object v0, p0, Lnet/sf/smc/Smc$Language;->_name:Ljava/lang/String;

    return-object v0
.end method
