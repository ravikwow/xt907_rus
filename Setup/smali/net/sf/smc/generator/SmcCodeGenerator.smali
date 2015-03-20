.class public abstract Lnet/sf/smc/generator/SmcCodeGenerator;
.super Lnet/sf/smc/model/SmcVisitor;
.source "SmcCodeGenerator.java"


# static fields
.field public static final DEBUG_LEVEL_0:I = 0x0

.field public static final DEBUG_LEVEL_1:I = 0x1

.field public static final GRAPH_LEVEL_0:I = 0x0

.field public static final GRAPH_LEVEL_1:I = 0x1

.field public static final GRAPH_LEVEL_2:I = 0x2

.field public static final NO_DEBUG_OUTPUT:I = -0x1

.field public static final NO_GRAPH_LEVEL:I = -0x1

.field private static final SOURCE_PATH_FORMAT:Ljava/lang/String; = "{0}{1}.{2}"

.field private static _suffix:Ljava/lang/String;


# instance fields
.field protected final _accessLevel:Ljava/lang/String;

.field protected final _castType:Ljava/lang/String;

.field protected final _debugLevel:I

.field protected final _genericFlag:Z

.field protected final _graphLevel:I

.field protected _guardCount:I

.field protected _guardIndex:I

.field protected final _headerDirectory:Ljava/lang/String;

.field protected _indent:Ljava/lang/String;

.field protected final _noCatchFlag:Z

.field protected final _noExceptionFlag:Z

.field protected final _noStreamsFlag:Z

.field protected final _reflectFlag:Z

.field protected final _serialFlag:Z

.field protected _source:Ljava/io/PrintStream;

.field protected final _srcDirectory:Ljava/lang/String;

.field protected final _srcfileBase:Ljava/lang/String;

.field protected final _syncFlag:Z

.field protected final _targetfileBase:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lnet/sf/smc/generator/SmcOptions;Ljava/lang/String;)V
    .locals 2
    .param p1, "options"    # Lnet/sf/smc/generator/SmcOptions;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lnet/sf/smc/model/SmcVisitor;-><init>()V

    .line 88
    invoke-virtual {p1}, Lnet/sf/smc/generator/SmcOptions;->srcfileBase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_srcfileBase:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lnet/sf/smc/generator/SmcOptions;->targetfileBase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_targetfileBase:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Lnet/sf/smc/generator/SmcOptions;->srcDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_srcDirectory:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Lnet/sf/smc/generator/SmcOptions;->headerDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_headerDirectory:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Lnet/sf/smc/generator/SmcOptions;->castType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_castType:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Lnet/sf/smc/generator/SmcOptions;->graphLevel()I

    move-result v0

    iput v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_graphLevel:I

    .line 94
    invoke-virtual {p1}, Lnet/sf/smc/generator/SmcOptions;->serialFlag()Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_serialFlag:Z

    .line 95
    invoke-virtual {p1}, Lnet/sf/smc/generator/SmcOptions;->debugLevel()I

    move-result v0

    iput v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_debugLevel:I

    .line 96
    invoke-virtual {p1}, Lnet/sf/smc/generator/SmcOptions;->noExceptionFlag()Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noExceptionFlag:Z

    .line 97
    invoke-virtual {p1}, Lnet/sf/smc/generator/SmcOptions;->noCatchFlag()Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noCatchFlag:Z

    .line 98
    invoke-virtual {p1}, Lnet/sf/smc/generator/SmcOptions;->noStreamsFlag()Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_noStreamsFlag:Z

    .line 99
    invoke-virtual {p1}, Lnet/sf/smc/generator/SmcOptions;->reflectFlag()Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_reflectFlag:Z

    .line 100
    invoke-virtual {p1}, Lnet/sf/smc/generator/SmcOptions;->syncFlag()Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_syncFlag:Z

    .line 101
    invoke-virtual {p1}, Lnet/sf/smc/generator/SmcOptions;->genericFlag()Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_genericFlag:Z

    .line 102
    invoke-virtual {p1}, Lnet/sf/smc/generator/SmcOptions;->accessLevel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_accessLevel:Ljava/lang/String;

    .line 103
    sput-object p2, Lnet/sf/smc/generator/SmcCodeGenerator;->_suffix:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_indent:Ljava/lang/String;

    .line 106
    iput v1, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardCount:I

    .line 107
    iput v1, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_guardIndex:I

    .line 108
    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x22

    const/16 v6, 0x5c

    .line 236
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    .line 238
    move-object v4, p0

    .line 262
    .local v4, "retval":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 242
    .end local v4    # "retval":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 245
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 248
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 250
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 251
    .local v1, "c":C
    if-eq v1, v6, :cond_1

    if-ne v1, v7, :cond_2

    .line 253
    :cond_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 256
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 259
    .end local v1    # "c":C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "retval":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method protected allNilEndStates(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/sf/smc/model/SmcGuard;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "guards":Ljava/util/List;, "Ljava/util/List<Lnet/sf/smc/model/SmcGuard;>;"
    const/4 v3, 0x1

    .line 189
    const/4 v2, 0x1

    .line 191
    .local v2, "retcode":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 192
    .local v0, "git":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/sf/smc/model/SmcGuard;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-ne v4, v3, :cond_1

    if-ne v2, v3, :cond_1

    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/smc/model/SmcGuard;

    .line 196
    .local v1, "guard":Lnet/sf/smc/model/SmcGuard;
    invoke-virtual {v1}, Lnet/sf/smc/model/SmcGuard;->getTransType()Lnet/sf/smc/model/SmcElement$TransType;

    move-result-object v4

    sget-object v5, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_SET:Lnet/sf/smc/model/SmcElement$TransType;

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Lnet/sf/smc/model/SmcGuard;->getEndState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "nil"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    :goto_1
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 201
    .end local v1    # "guard":Lnet/sf/smc/model/SmcGuard;
    :cond_1
    return v2
.end method

.method protected isLoopback(Lnet/sf/smc/model/SmcElement$TransType;Ljava/lang/String;)Z
    .locals 2
    .param p1, "transType"    # Lnet/sf/smc/model/SmcElement$TransType;
    .param p2, "endState"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 171
    sget-object v1, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_SET:Lnet/sf/smc/model/SmcElement$TransType;

    if-eq p1, v1, :cond_0

    sget-object v1, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

    if-ne p1, v1, :cond_1

    :cond_0
    const-string v1, "nil"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected scopeStateName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "mapName"    # Ljava/lang/String;

    .prologue
    .line 272
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 274
    .local v1, "retval":Ljava/io/StringWriter;
    const-string v2, "::"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 275
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 277
    invoke-virtual {v1, p2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 278
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v1, p1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 288
    :goto_0
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 283
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 284
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(I)V

    .line 285
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSource(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "source"    # Ljava/io/PrintStream;

    .prologue
    .line 218
    iput-object p1, p0, Lnet/sf/smc/generator/SmcCodeGenerator;->_source:Ljava/io/PrintStream;

    .line 219
    return-void
.end method

.method public sourceFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "basename"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 140
    new-instance v1, Ljava/text/MessageFormat;

    const-string v2, "{0}{1}.{2}"

    invoke-direct {v1, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, "formatter":Ljava/text/MessageFormat;
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/Object;

    .line 144
    .local v0, "args":[Ljava/lang/Object;
    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 145
    const/4 v2, 0x1

    aput-object p2, v0, v2

    .line 146
    if-nez p3, :cond_0

    .line 148
    sget-object v2, Lnet/sf/smc/generator/SmcCodeGenerator;->_suffix:Ljava/lang/String;

    aput-object v2, v0, v3

    .line 155
    :goto_0
    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 152
    :cond_0
    aput-object p3, v0, v3

    goto :goto_0
.end method
