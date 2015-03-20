.class public final Lnet/sf/smc/model/SmcFSM;
.super Lnet/sf/smc/model/SmcElement;
.source "SmcFSM.java"


# instance fields
.field private _accessLevel:Ljava/lang/String;

.field private _context:Ljava/lang/String;

.field private _declareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _fsmClassName:Ljava/lang/String;

.field private _header:Ljava/lang/String;

.field private _headerLine:I

.field private _importList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _includeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _maps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcMap;",
            ">;"
        }
    .end annotation
.end field

.field private _package:Ljava/lang/String;

.field private _source:Ljava/lang/String;

.field private _sourceFileName:Ljava/lang/String;

.field private _startState:Ljava/lang/String;

.field private _targetFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "targetFile"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnet/sf/smc/model/SmcElement;-><init>(Ljava/lang/String;I)V

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_startState:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_source:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_context:Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lnet/sf/smc/model/SmcFSM;->_sourceFileName:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lnet/sf/smc/model/SmcFSM;->_targetFileName:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Context"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_fsmClassName:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_header:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_includeList:Ljava/util/List;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_package:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_importList:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_declareList:Ljava/util/List;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_accessLevel:Ljava/lang/String;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/smc/model/SmcFSM;->_headerLine:I

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_maps:Ljava/util/List;

    .line 119
    return-void
.end method


# virtual methods
.method public accept(Lnet/sf/smc/model/SmcVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lnet/sf/smc/model/SmcVisitor;

    .prologue
    .line 138
    invoke-virtual {p1, p0}, Lnet/sf/smc/model/SmcVisitor;->visit(Lnet/sf/smc/model/SmcFSM;)V

    .line 139
    return-void
.end method

.method public addDeclare(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 517
    iget-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_declareList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    return-void
.end method

.method public addImport(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 507
    iget-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_importList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    return-void
.end method

.method public addInclude(Ljava/lang/String;)V
    .locals 4
    .param p1, "includeFile"    # Ljava/lang/String;

    .prologue
    .line 473
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 478
    .local v0, "c":C
    const/16 v2, 0x22

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_0

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, "filename":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lnet/sf/smc/model/SmcFSM;->_includeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    return-void

    .line 484
    .end local v1    # "filename":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "filename":Ljava/lang/String;
    goto :goto_0
.end method

.method public addMap(Lnet/sf/smc/model/SmcMap;)V
    .locals 1
    .param p1, "map"    # Lnet/sf/smc/model/SmcMap;

    .prologue
    .line 536
    iget-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_maps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    return-void
.end method

.method public dump(Ljava/io/PrintStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/PrintStream;

    .prologue
    .line 551
    const-string v3, "Start State: "

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 552
    iget-object v3, p0, Lnet/sf/smc/model/SmcFSM;->_startState:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 553
    const-string v3, "     Source:"

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 554
    iget-object v3, p0, Lnet/sf/smc/model/SmcFSM;->_source:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 556
    const-string v3, " none."

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 563
    :goto_0
    const-string v3, "    Context: "

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 564
    iget-object v3, p0, Lnet/sf/smc/model/SmcFSM;->_context:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 566
    iget-object v3, p0, Lnet/sf/smc/model/SmcFSM;->_includeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 568
    .local v1, "include":Ljava/lang/String;
    const-string v3, "     Include: "

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 560
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "include":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 561
    iget-object v3, p0, Lnet/sf/smc/model/SmcFSM;->_source:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 572
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v3, "       Maps:"

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 575
    iget-object v3, p0, Lnet/sf/smc/model/SmcFSM;->_maps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcMap;

    .line 577
    .local v2, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 580
    .end local v2    # "map":Lnet/sf/smc/model/SmcMap;
    :cond_2
    return-void
.end method

.method public findMap(Ljava/lang/String;)Lnet/sf/smc/model/SmcMap;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 293
    const/4 v2, 0x0

    .line 295
    .local v2, "retval":Lnet/sf/smc/model/SmcMap;
    iget-object v3, p0, Lnet/sf/smc/model/SmcFSM;->_maps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mapIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcMap;>;"
    const/4 v2, 0x0

    .line 296
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    if-nez v2, :cond_1

    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/smc/model/SmcMap;

    .line 300
    .local v0, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v0}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 302
    move-object v2, v0

    goto :goto_0

    .line 306
    .end local v0    # "map":Lnet/sf/smc/model/SmcMap;
    :cond_1
    return-object v2
.end method

.method public getAccessLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_accessLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_context:Ljava/lang/String;

    return-object v0
.end method

.method public getDeclarations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_declareList:Ljava/util/List;

    return-object v0
.end method

.method public getDeclareCount()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_declareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFsmClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_fsmClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_header:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderLine()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lnet/sf/smc/model/SmcFSM;->_headerLine:I

    return v0
.end method

.method public getImportCount()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_importList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getImports()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_importList:Ljava/util/List;

    return-object v0
.end method

.method public getIncludes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_includeList:Ljava/util/List;

    return-object v0
.end method

.method public getMaps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_maps:Ljava/util/List;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_package:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_source:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_sourceFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_startState:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lnet/sf/smc/model/SmcFSM;->_targetFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransitions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcTransition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    new-instance v0, Lnet/sf/smc/model/SmcFSM$1;

    invoke-direct {v0, p0}, Lnet/sf/smc/model/SmcFSM$1;-><init>(Lnet/sf/smc/model/SmcFSM;)V

    .line 333
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lnet/sf/smc/model/SmcTransition;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v3, "retval":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcTransition;>;"
    iget-object v4, p0, Lnet/sf/smc/model/SmcFSM;->_maps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/smc/model/SmcMap;

    .line 339
    .local v2, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v2}, Lnet/sf/smc/model/SmcMap;->getTransitions()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v3, v0}, Lnet/sf/smc/model/SmcFSM;->merge(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 343
    .end local v2    # "map":Lnet/sf/smc/model/SmcMap;
    :cond_0
    return-object v3
.end method

.method public hasEntryActions()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 348
    iget-object v3, p0, Lnet/sf/smc/model/SmcFSM;->_maps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/smc/model/SmcMap;

    .line 350
    .local v1, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v1}, Lnet/sf/smc/model/SmcMap;->hasEntryActions()Z

    move-result v3

    if-ne v3, v2, :cond_0

    .line 355
    .end local v1    # "map":Lnet/sf/smc/model/SmcMap;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasExitActions()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 368
    iget-object v3, p0, Lnet/sf/smc/model/SmcFSM;->_maps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/smc/model/SmcMap;

    .line 370
    .local v1, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v1}, Lnet/sf/smc/model/SmcMap;->hasExitActions()Z

    move-result v3

    if-ne v3, v2, :cond_0

    .line 375
    .end local v1    # "map":Lnet/sf/smc/model/SmcMap;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setAccessLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessLevel"    # Ljava/lang/String;

    .prologue
    .line 527
    iput-object p1, p0, Lnet/sf/smc/model/SmcFSM;->_accessLevel:Ljava/lang/String;

    .line 528
    return-void
.end method

.method public setContext(Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Ljava/lang/String;

    .prologue
    .line 427
    iput-object p1, p0, Lnet/sf/smc/model/SmcFSM;->_context:Ljava/lang/String;

    .line 428
    return-void
.end method

.method public setFsmClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fsmName"    # Ljava/lang/String;

    .prologue
    .line 437
    iput-object p1, p0, Lnet/sf/smc/model/SmcFSM;->_fsmClassName:Ljava/lang/String;

    .line 438
    iput-object p1, p0, Lnet/sf/smc/model/SmcFSM;->_targetFileName:Ljava/lang/String;

    .line 440
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 3
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 449
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 453
    .local v0, "c":C
    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/smc/model/SmcFSM;->_header:Ljava/lang/String;

    .line 462
    :goto_0
    iget-object v1, p0, Lnet/sf/smc/model/SmcFSM;->_includeList:Ljava/util/List;

    iget-object v2, p0, Lnet/sf/smc/model/SmcFSM;->_header:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    return-void

    .line 459
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/smc/model/SmcFSM;->_header:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHeaderLine(I)V
    .locals 1
    .param p1, "lineNumber"    # I

    .prologue
    .line 403
    iget v0, p0, Lnet/sf/smc/model/SmcFSM;->_headerLine:I

    if-gez v0, :cond_0

    .line 405
    iput p1, p0, Lnet/sf/smc/model/SmcFSM;->_headerLine:I

    .line 408
    :cond_0
    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 497
    iput-object p1, p0, Lnet/sf/smc/model/SmcFSM;->_package:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 393
    iput-object p1, p0, Lnet/sf/smc/model/SmcFSM;->_source:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setStartState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 417
    iput-object p1, p0, Lnet/sf/smc/model/SmcFSM;->_startState:Ljava/lang/String;

    .line 418
    return-void
.end method
