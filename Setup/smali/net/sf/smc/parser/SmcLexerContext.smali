.class public Lnet/sf/smc/parser/SmcLexerContext;
.super Lstatemap/FSMContext;
.source "SmcLexerContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/smc/parser/SmcLexerContext$1;,
        Lnet/sf/smc/parser/SmcLexerContext$SourceMap_NeverUsed;,
        Lnet/sf/smc/parser/SmcLexerContext$SourceMap_SourceEnd;,
        Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Start;,
        Lnet/sf/smc/parser/SmcLexerContext$SourceMap_Default;,
        Lnet/sf/smc/parser/SmcLexerContext$SourceMap;,
        Lnet/sf/smc/parser/SmcLexerContext$NewCommentMap_Start;,
        Lnet/sf/smc/parser/SmcLexerContext$NewCommentMap_Default;,
        Lnet/sf/smc/parser/SmcLexerContext$NewCommentMap;,
        Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_CommentEnd;,
        Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_CommentStart;,
        Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Start;,
        Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap_Default;,
        Lnet/sf/smc/parser/SmcLexerContext$OldCommentMap;,
        Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Colon;,
        Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Scope;,
        Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Word;,
        Lnet/sf/smc/parser/SmcLexerContext$TokenMap_PercentKeyword;,
        Lnet/sf/smc/parser/SmcLexerContext$TokenMap_PercentStart;,
        Lnet/sf/smc/parser/SmcLexerContext$TokenMap_CommentStart;,
        Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Start;,
        Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Default;,
        Lnet/sf/smc/parser/SmcLexerContext$TokenMap;,
        Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    }
.end annotation


# instance fields
.field private transient _owner:Lnet/sf/smc/parser/SmcLexer;


# direct methods
.method public constructor <init>(Lnet/sf/smc/parser/SmcLexer;)V
    .locals 1
    .param p1, "owner"    # Lnet/sf/smc/parser/SmcLexer;

    .prologue
    .line 111
    sget-object v0, Lnet/sf/smc/parser/SmcLexerContext$TokenMap;->Start:Lnet/sf/smc/parser/SmcLexerContext$TokenMap_Start;

    invoke-direct {p0, v0}, Lstatemap/FSMContext;-><init>(Lstatemap/State;)V

    .line 113
    iput-object p1, p0, Lnet/sf/smc/parser/SmcLexerContext;->_owner:Lnet/sf/smc/parser/SmcLexer;

    .line 114
    return-void
.end method

.method public constructor <init>(Lnet/sf/smc/parser/SmcLexer;Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;)V
    .locals 0
    .param p1, "owner"    # Lnet/sf/smc/parser/SmcLexer;
    .param p2, "initState"    # Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    .prologue
    .line 118
    invoke-direct {p0, p2}, Lstatemap/FSMContext;-><init>(Lstatemap/State;)V

    .line 120
    iput-object p1, p0, Lnet/sf/smc/parser/SmcLexerContext;->_owner:Lnet/sf/smc/parser/SmcLexer;

    .line 121
    return-void
.end method


# virtual methods
.method public EOL()V
    .locals 1

    .prologue
    .line 131
    const-string v0, "EOL"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->EOL(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public alpha()V
    .locals 1

    .prologue
    .line 139
    const-string v0, "alpha"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->alpha(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public asterisk()V
    .locals 1

    .prologue
    .line 147
    const-string v0, "asterisk"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->asterisk(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public colon()V
    .locals 1

    .prologue
    .line 155
    const-string v0, "colon"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->colon(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 157
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public comma()V
    .locals 1

    .prologue
    .line 163
    const-string v0, "comma"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 164
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->comma(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public commentDone()V
    .locals 1

    .prologue
    .line 171
    const-string v0, "commentDone"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->commentDone(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public digit()V
    .locals 1

    .prologue
    .line 179
    const-string v0, "digit"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->digit(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public dollar()V
    .locals 1

    .prologue
    .line 187
    const-string v0, "dollar"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->dollar(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public enterStartState()V
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->Entry(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 126
    return-void
.end method

.method public equal()V
    .locals 1

    .prologue
    .line 195
    const-string v0, "equal"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->equal(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 197
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 198
    return-void
.end method

.method protected getOwner()Lnet/sf/smc/parser/SmcLexer;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lnet/sf/smc/parser/SmcLexerContext;->_owner:Lnet/sf/smc/parser/SmcLexer;

    return-object v0
.end method

.method public getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstatemap/StateUndefinedException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lstatemap/StateUndefinedException;

    invoke-direct {v0}, Lstatemap/StateUndefinedException;-><init>()V

    throw v0

    .line 330
    :cond_0
    iget-object v0, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    check-cast v0, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    return-object v0
.end method

.method public gt()V
    .locals 1

    .prologue
    .line 203
    const-string v0, "gt"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->gt(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public left_brace()V
    .locals 1

    .prologue
    .line 211
    const-string v0, "left_brace"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 212
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->left_brace(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 213
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public left_bracket()V
    .locals 1

    .prologue
    .line 219
    const-string v0, "left_bracket"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 220
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->left_bracket(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 221
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public left_paren()V
    .locals 1

    .prologue
    .line 227
    const-string v0, "left_paren"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 228
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->left_paren(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 229
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public lt()V
    .locals 1

    .prologue
    .line 235
    const-string v0, "lt"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 236
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->lt(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 237
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public percent()V
    .locals 1

    .prologue
    .line 243
    const-string v0, "percent"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 244
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->percent(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 245
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public period()V
    .locals 1

    .prologue
    .line 251
    const-string v0, "period"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 252
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->period(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 253
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public right_brace()V
    .locals 1

    .prologue
    .line 259
    const-string v0, "right_brace"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 260
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->right_brace(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 261
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public right_paren()V
    .locals 1

    .prologue
    .line 267
    const-string v0, "right_paren"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 268
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->right_paren(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 269
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public semicolon()V
    .locals 1

    .prologue
    .line 275
    const-string v0, "semicolon"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 276
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->semicolon(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 277
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setOwner(Lnet/sf/smc/parser/SmcLexer;)V
    .locals 2
    .param p1, "owner"    # Lnet/sf/smc/parser/SmcLexer;

    .prologue
    .line 340
    if-nez p1, :cond_0

    .line 342
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null owner"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_0
    iput-object p1, p0, Lnet/sf/smc/parser/SmcLexerContext;->_owner:Lnet/sf/smc/parser/SmcLexer;

    .line 351
    return-void
.end method

.method public slash()V
    .locals 1

    .prologue
    .line 283
    const-string v0, "slash"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 284
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->slash(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 285
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public sourceDone()V
    .locals 1

    .prologue
    .line 291
    const-string v0, "sourceDone"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 292
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->sourceDone(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 293
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public underscore()V
    .locals 1

    .prologue
    .line 299
    const-string v0, "underscore"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 300
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->underscore(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 301
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public unicode()V
    .locals 1

    .prologue
    .line 307
    const-string v0, "unicode"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 308
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->unicode(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 309
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public whitespace()V
    .locals 1

    .prologue
    .line 315
    const-string v0, "whitespace"

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 316
    invoke-virtual {p0}, Lnet/sf/smc/parser/SmcLexerContext;->getState()Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/smc/parser/SmcLexerContext$SmcLexerState;->whitespace(Lnet/sf/smc/parser/SmcLexerContext;)V

    .line 317
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 318
    return-void
.end method
