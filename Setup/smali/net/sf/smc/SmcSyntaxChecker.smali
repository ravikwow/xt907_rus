.class public final Lnet/sf/smc/SmcSyntaxChecker;
.super Lnet/sf/smc/model/SmcVisitor;
.source "SmcSyntaxChecker.java"


# instance fields
.field private _checkFlag:Z

.field private _fsmName:Ljava/lang/String;

.field private _messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/parser/SmcMessage;",
            ">;"
        }
    .end annotation
.end field

.field private _targetLanguage:Lnet/sf/smc/parser/SmcParser$TargetLanguage;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/sf/smc/parser/SmcParser$TargetLanguage;)V
    .locals 1
    .param p1, "fsm"    # Ljava/lang/String;
    .param p2, "targetLanguage"    # Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    .prologue
    .line 108
    invoke-direct {p0}, Lnet/sf/smc/model/SmcVisitor;-><init>()V

    .line 110
    iput-object p1, p0, Lnet/sf/smc/SmcSyntaxChecker;->_fsmName:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lnet/sf/smc/SmcSyntaxChecker;->_targetLanguage:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/smc/SmcSyntaxChecker;->_messages:Ljava/util/List;

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/smc/SmcSyntaxChecker;->_checkFlag:Z

    .line 114
    return-void
.end method

.method private _findState(Ljava/lang/String;Lnet/sf/smc/model/SmcGuard;)Z
    .locals 9
    .param p1, "endState"    # Ljava/lang/String;
    .param p2, "guard"    # Lnet/sf/smc/model/SmcGuard;

    .prologue
    const/4 v8, 0x1

    .line 434
    const-string v7, "::"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 435
    .local v0, "index":I
    invoke-virtual {p2}, Lnet/sf/smc/model/SmcGuard;->getTransition()Lnet/sf/smc/model/SmcTransition;

    move-result-object v6

    .line 436
    .local v6, "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v6}, Lnet/sf/smc/model/SmcTransition;->getState()Lnet/sf/smc/model/SmcState;

    move-result-object v4

    .line 437
    .local v4, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual {v4}, Lnet/sf/smc/model/SmcState;->getMap()Lnet/sf/smc/model/SmcMap;

    move-result-object v1

    .line 438
    .local v1, "map":Lnet/sf/smc/model/SmcMap;
    const/4 v3, 0x0

    .line 441
    .local v3, "retval":Z
    if-gez v0, :cond_1

    .line 444
    invoke-virtual {v1, p1}, Lnet/sf/smc/model/SmcMap;->isKnownState(Ljava/lang/String;)Z

    move-result v3

    .line 483
    :cond_0
    :goto_0
    return v3

    .line 449
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "mapName":Ljava/lang/String;
    add-int/lit8 v7, v0, 0x2

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, "stateName":Ljava/lang/String;
    invoke-virtual {v1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v8, :cond_3

    .line 458
    invoke-virtual {v4}, Lnet/sf/smc/model/SmcState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v8, :cond_2

    .line 461
    const/4 v3, 0x1

    goto :goto_0

    .line 467
    :cond_2
    invoke-virtual {v1, v5}, Lnet/sf/smc/model/SmcMap;->isKnownState(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 475
    :cond_3
    invoke-virtual {v1}, Lnet/sf/smc/model/SmcMap;->getFSM()Lnet/sf/smc/model/SmcFSM;

    move-result-object v7

    invoke-virtual {v7, v2}, Lnet/sf/smc/model/SmcFSM;->findMap(Ljava/lang/String;)Lnet/sf/smc/model/SmcMap;

    move-result-object v1

    .line 476
    if-eqz v1, :cond_0

    .line 478
    invoke-virtual {v1, v5}, Lnet/sf/smc/model/SmcMap;->isKnownState(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/parser/SmcMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lnet/sf/smc/SmcSyntaxChecker;->_messages:Ljava/util/List;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lnet/sf/smc/SmcSyntaxChecker;->_checkFlag:Z

    return v0
.end method

.method public visit(Lnet/sf/smc/model/SmcFSM;)V
    .locals 12
    .param p1, "fsm"    # Lnet/sf/smc/model/SmcFSM;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 143
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcFSM;->getStartState()Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "startState":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcFSM;->getContext()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "context":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcFSM;->getHeader()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "header":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcFSM;->getHeaderLine()I

    move-result v2

    .line 150
    .local v2, "headerLine":I
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 153
    :cond_0
    iget-object v6, p0, Lnet/sf/smc/SmcSyntaxChecker;->_messages:Ljava/util/List;

    new-instance v7, Lnet/sf/smc/parser/SmcMessage;

    iget-object v8, p0, Lnet/sf/smc/SmcSyntaxChecker;->_fsmName:Ljava/lang/String;

    const-string v9, "\"%start\" missing."

    invoke-direct {v7, v8, v10, v11, v9}, Lnet/sf/smc/parser/SmcMessage;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iput-boolean v10, p0, Lnet/sf/smc/SmcSyntaxChecker;->_checkFlag:Z

    .line 162
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 164
    iget-object v6, p0, Lnet/sf/smc/SmcSyntaxChecker;->_messages:Ljava/util/List;

    new-instance v7, Lnet/sf/smc/parser/SmcMessage;

    iget-object v8, p0, Lnet/sf/smc/SmcSyntaxChecker;->_fsmName:Ljava/lang/String;

    const-string v9, "\"%class\" missing."

    invoke-direct {v7, v8, v10, v11, v9}, Lnet/sf/smc/parser/SmcMessage;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iput-boolean v10, p0, Lnet/sf/smc/SmcSyntaxChecker;->_checkFlag:Z

    .line 173
    :cond_2
    iget-object v6, p0, Lnet/sf/smc/SmcSyntaxChecker;->_targetLanguage:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    sget-object v7, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->C_PLUS_PLUS:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    if-ne v6, v7, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 177
    :cond_3
    iget-object v6, p0, Lnet/sf/smc/SmcSyntaxChecker;->_messages:Ljava/util/List;

    new-instance v7, Lnet/sf/smc/parser/SmcMessage;

    iget-object v8, p0, Lnet/sf/smc/SmcSyntaxChecker;->_fsmName:Ljava/lang/String;

    const-string v9, "\"%header\" missing."

    invoke-direct {v7, v8, v10, v11, v9}, Lnet/sf/smc/parser/SmcMessage;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iput-boolean v10, p0, Lnet/sf/smc/SmcSyntaxChecker;->_checkFlag:Z

    .line 212
    :cond_4
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcFSM;->getMaps()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/smc/model/SmcMap;

    .line 214
    .local v4, "map":Lnet/sf/smc/model/SmcMap;
    invoke-virtual {v4, p0}, Lnet/sf/smc/model/SmcMap;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_0

    .line 217
    .end local v4    # "map":Lnet/sf/smc/model/SmcMap;
    :cond_5
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcGuard;)V
    .locals 10
    .param p1, "guard"    # Lnet/sf/smc/model/SmcGuard;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 326
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcGuard;->getEndState()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "endState":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcGuard;->getCondition()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "condition":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcGuard;->getTransType()Lnet/sf/smc/model/SmcElement$TransType;

    move-result-object v2

    sget-object v3, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    if-ne v2, v3, :cond_2

    .line 360
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcGuard;->getTransType()Lnet/sf/smc/model/SmcElement$TransType;

    move-result-object v2

    sget-object v3, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

    if-ne v2, v3, :cond_1

    .line 362
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcGuard;->getPushState()Ljava/lang/String;

    move-result-object v1

    .line 364
    const-string v2, "nil"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 366
    iget-object v2, p0, Lnet/sf/smc/SmcSyntaxChecker;->_messages:Ljava/util/List;

    new-instance v3, Lnet/sf/smc/parser/SmcMessage;

    iget-object v4, p0, Lnet/sf/smc/SmcSyntaxChecker;->_fsmName:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getLineNumber()I

    move-result v5

    const-string v6, "may not push to nil state."

    invoke-direct {v3, v4, v5, v9, v6}, Lnet/sf/smc/parser/SmcMessage;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    iput-boolean v8, p0, Lnet/sf/smc/SmcSyntaxChecker;->_checkFlag:Z

    .line 388
    :cond_1
    :goto_1
    return-void

    .line 334
    :cond_2
    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 336
    iget-object v2, p0, Lnet/sf/smc/SmcSyntaxChecker;->_messages:Ljava/util/List;

    new-instance v3, Lnet/sf/smc/parser/SmcMessage;

    iget-object v4, p0, Lnet/sf/smc/SmcSyntaxChecker;->_fsmName:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getLineNumber()I

    move-result v5

    const-string v6, "may not transition to the default state."

    invoke-direct {v3, v4, v5, v9, v6}, Lnet/sf/smc/parser/SmcMessage;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iput-boolean v8, p0, Lnet/sf/smc/SmcSyntaxChecker;->_checkFlag:Z

    goto :goto_0

    .line 346
    :cond_3
    const-string v2, "nil"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, p1}, Lnet/sf/smc/SmcSyntaxChecker;->_findState(Ljava/lang/String;Lnet/sf/smc/model/SmcGuard;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    iget-object v2, p0, Lnet/sf/smc/SmcSyntaxChecker;->_messages:Ljava/util/List;

    new-instance v3, Lnet/sf/smc/parser/SmcMessage;

    iget-object v4, p0, Lnet/sf/smc/SmcSyntaxChecker;->_fsmName:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getLineNumber()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no such state as \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v9, v6}, Lnet/sf/smc/parser/SmcMessage;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    iput-boolean v8, p0, Lnet/sf/smc/SmcSyntaxChecker;->_checkFlag:Z

    goto :goto_0

    .line 375
    :cond_4
    invoke-direct {p0, v1, p1}, Lnet/sf/smc/SmcSyntaxChecker;->_findState(Ljava/lang/String;Lnet/sf/smc/model/SmcGuard;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 377
    iget-object v2, p0, Lnet/sf/smc/SmcSyntaxChecker;->_messages:Ljava/util/List;

    new-instance v3, Lnet/sf/smc/parser/SmcMessage;

    iget-object v4, p0, Lnet/sf/smc/SmcSyntaxChecker;->_fsmName:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getLineNumber()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no such state as \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v9, v6}, Lnet/sf/smc/parser/SmcMessage;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    iput-boolean v8, p0, Lnet/sf/smc/SmcSyntaxChecker;->_checkFlag:Z

    goto/16 :goto_1
.end method

.method public visit(Lnet/sf/smc/model/SmcMap;)V
    .locals 4
    .param p1, "map"    # Lnet/sf/smc/model/SmcMap;

    .prologue
    .line 224
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcMap;->getStates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/smc/model/SmcState;

    .line 226
    .local v1, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual {v1, p0}, Lnet/sf/smc/model/SmcState;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_0

    .line 230
    .end local v1    # "state":Lnet/sf/smc/model/SmcState;
    :cond_0
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcMap;->hasDefaultState()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 232
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcMap;->getDefaultState()Lnet/sf/smc/model/SmcState;

    move-result-object v2

    invoke-virtual {v2, p0}, Lnet/sf/smc/model/SmcState;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    .line 235
    :cond_1
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcParameter;)V
    .locals 8
    .param p1, "parameter"    # Lnet/sf/smc/model/SmcParameter;

    .prologue
    .line 394
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcParameter;->getType()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "typeName":Ljava/lang/String;
    iget-object v1, p0, Lnet/sf/smc/SmcSyntaxChecker;->_targetLanguage:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    sget-object v2, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->TCL:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    if-ne v1, v2, :cond_0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "reference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    iget-object v1, p0, Lnet/sf/smc/SmcSyntaxChecker;->_messages:Ljava/util/List;

    new-instance v2, Lnet/sf/smc/parser/SmcMessage;

    iget-object v3, p0, Lnet/sf/smc/SmcSyntaxChecker;->_fsmName:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sf/smc/model/SmcElement;->getLineNumber()I

    move-result v4

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tcl parameter type not \"value\" or \"reference\" but \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lnet/sf/smc/parser/SmcMessage;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/sf/smc/SmcSyntaxChecker;->_checkFlag:Z

    .line 424
    :cond_0
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcState;)V
    .locals 3
    .param p1, "state"    # Lnet/sf/smc/model/SmcState;

    .prologue
    .line 241
    invoke-virtual {p1}, Lnet/sf/smc/model/SmcState;->getTransitions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/smc/model/SmcTransition;

    .line 243
    .local v1, "transition":Lnet/sf/smc/model/SmcTransition;
    invoke-virtual {v1, p0}, Lnet/sf/smc/model/SmcTransition;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_0

    .line 246
    .end local v1    # "transition":Lnet/sf/smc/model/SmcTransition;
    :cond_0
    return-void
.end method

.method public visit(Lnet/sf/smc/model/SmcTransition;)V
    .locals 19
    .param p1, "transition"    # Lnet/sf/smc/model/SmcTransition;

    .prologue
    .line 252
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getGuards()Ljava/util/List;

    move-result-object v5

    .line 253
    .local v5, "guards":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcGuard;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 257
    .local v4, "guardCount":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/sf/smc/SmcSyntaxChecker;->_targetLanguage:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    sget-object v14, Lnet/sf/smc/parser/SmcParser$TargetLanguage;->TCL:Lnet/sf/smc/parser/SmcParser$TargetLanguage;

    if-ne v13, v14, :cond_0

    .line 260
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getParameters()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sf/smc/model/SmcParameter;

    .line 262
    .local v8, "parameter":Lnet/sf/smc/model/SmcParameter;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lnet/sf/smc/model/SmcParameter;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_0

    .line 268
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "parameter":Lnet/sf/smc/model/SmcParameter;
    :cond_0
    const/4 v13, 0x1

    if-le v4, v13, :cond_2

    .line 270
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcTransition;->getState()Lnet/sf/smc/model/SmcState;

    move-result-object v9

    .line 271
    .local v9, "state":Lnet/sf/smc/model/SmcState;
    invoke-virtual {v9}, Lnet/sf/smc/model/SmcState;->getMap()Lnet/sf/smc/model/SmcMap;

    move-result-object v13

    invoke-virtual {v13}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v7

    .line 272
    .local v7, "mapName":Ljava/lang/String;
    invoke-virtual {v9}, Lnet/sf/smc/model/SmcState;->getClassName()Ljava/lang/String;

    move-result-object v10

    .line 273
    .local v10, "stateName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/smc/model/SmcElement;->getName()Ljava/lang/String;

    move-result-object v12

    .line 274
    .local v12, "transName":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 278
    .local v2, "conditions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/smc/model/SmcGuard;

    .line 280
    .local v3, "guard":Lnet/sf/smc/model/SmcGuard;
    invoke-virtual {v3}, Lnet/sf/smc/model/SmcGuard;->getCondition()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "condition":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 285
    new-instance v11, Ljava/lang/StringBuffer;

    const/16 v13, 0x1f4

    invoke-direct {v11, v13}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 287
    .local v11, "text":Ljava/lang/StringBuffer;
    const-string v13, "State "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    const-string v13, "::"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    const-string v13, " has multiple transitions with "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    const-string v13, "same name (\""

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    const-string v13, "\") and guard (\""

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    const-string v13, "\")."

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/sf/smc/SmcSyntaxChecker;->_messages:Ljava/util/List;

    new-instance v14, Lnet/sf/smc/parser/SmcMessage;

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sf/smc/SmcSyntaxChecker;->_fsmName:Ljava/lang/String;

    invoke-virtual {v3}, Lnet/sf/smc/model/SmcElement;->getLineNumber()I

    move-result v16

    const/16 v17, 0x1

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v14 .. v18}, Lnet/sf/smc/parser/SmcMessage;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lnet/sf/smc/SmcSyntaxChecker;->_checkFlag:Z

    goto :goto_1

    .line 310
    .end local v11    # "text":Ljava/lang/StringBuffer;
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 315
    .end local v1    # "condition":Ljava/lang/String;
    .end local v2    # "conditions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "guard":Lnet/sf/smc/model/SmcGuard;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "mapName":Ljava/lang/String;
    .end local v9    # "state":Lnet/sf/smc/model/SmcState;
    .end local v10    # "stateName":Ljava/lang/String;
    .end local v12    # "transName":Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/smc/model/SmcGuard;

    .line 317
    .restart local v3    # "guard":Lnet/sf/smc/model/SmcGuard;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lnet/sf/smc/model/SmcGuard;->accept(Lnet/sf/smc/model/SmcVisitor;)V

    goto :goto_2

    .line 320
    .end local v3    # "guard":Lnet/sf/smc/model/SmcGuard;
    :cond_3
    return-void
.end method
