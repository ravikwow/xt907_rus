.class public Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;
.super Ljava/lang/Object;
.source "Sms7BitEncodingTranslator.java"


# static fields
.field public static final ASCII_MAP:[C

.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z

.field public static final charToAscii:Landroid/util/SparseIntArray;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTranslationTable:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xa

    .line 16
    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEBUG_ALL:Z

    sput-boolean v1, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->DEBUG:Z

    .line 17
    sget-boolean v1, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->LOCAL_LOG:Z

    .line 85
    const/16 v1, 0x5f

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->ASCII_MAP:[C

    .line 99
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->charToAscii:Landroid/util/SparseIntArray;

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->ASCII_MAP:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 102
    sget-object v1, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->charToAscii:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->ASCII_MAP:[C

    aget-char v2, v2, v0

    add-int/lit8 v3, v0, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 104
    .restart local v0    # "i":I
    :cond_1
    sget-object v1, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    sget-object v1, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    return-void

    .line 85
    :array_0
    .array-data 2
        0x20s
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
        0x60s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x7bs
        0x7cs
        0x7ds
        0x7es
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->mContext:Landroid/content/Context;

    .line 115
    return-void
.end method

.method private noTranslationNeeded(C)Z
    .locals 4
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 247
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isGSM()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 248
    const-string v2, "\u00a1\u00a3\u00a4\u00a5\u00a7\u00bf\u00c4\u00c5\u00c6\u00c7\u00c9\u00d1\u00d6\u00d8\u00dc\u00df\u00e0\u00e4\u00e5\u00e6\u00e8\u00e9\u00ec\u00f1\u00f2\u00f6\u00f8\u00f9\u00fc\u0393\u0394\u0398\u039b\u039e\u03a0\u03a3\u03a6\u03a8\u03a9\u20ac"

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 248
    goto :goto_0

    .line 251
    :cond_2
    const-string v2, "\u00a1\u00a3\u00a4\u00a5\u00a7\u00bf\u00c4\u00c5\u00c6\u00c7\u00c9\u00d1\u00d6\u00d8\u00dc\u00df\u00e0\u00e4\u00e5\u00e6\u00e8\u00e9\u00ec\u00f1\u00f2\u00f6\u00f8\u00f9\u00fc\u0393\u0394\u0398\u039b\u039e\u03a0\u03a3\u03a6\u03a8\u03a9\u20ac"

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v3, :cond_3

    sget-object v2, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private translateIfNeeded(C)C
    .locals 6
    .param p1, "c"    # C

    .prologue
    const/16 v1, 0x20

    const/4 v5, -0x1

    .line 182
    sget-boolean v2, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 183
    const-string v2, "SvnBitEncdgTrnsltr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Translating character "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " if needed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    if-lt p1, v1, :cond_1

    const/16 v2, 0x5f

    if-le p1, v2, :cond_2

    :cond_1
    const/16 v2, 0x61

    if-lt p1, v2, :cond_4

    const/16 v2, 0x7e

    if-gt p1, v2, :cond_4

    .line 199
    :cond_2
    sget-boolean v1, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->LOCAL_LOG:Z

    if-eqz v1, :cond_3

    .line 200
    const-string v1, "SvnBitEncdgTrnsltr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No translation needed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local p1    # "c":C
    :cond_3
    :goto_0
    return p1

    .line 211
    .restart local p1    # "c":C
    :cond_4
    const/16 v2, 0xa

    if-eq p1, v2, :cond_5

    const/16 v2, 0xc

    if-eq p1, v2, :cond_5

    const/16 v2, 0xd

    if-ne p1, v2, :cond_6

    .line 212
    :cond_5
    sget-boolean v1, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->LOCAL_LOG:Z

    if-eqz v1, :cond_3

    .line 213
    const-string v1, "SvnBitEncdgTrnsltr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No translation needed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_6
    invoke-direct {p0, p1}, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->noTranslationNeeded(C)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 219
    sget-boolean v1, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->LOCAL_LOG:Z

    if-eqz v1, :cond_3

    .line 220
    const-string v1, "SvnBitEncdgTrnsltr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No translation needed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_7
    iget-object v2, p0, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 233
    .local v0, "translation":I
    if-eq v0, v5, :cond_9

    .line 234
    sget-boolean v1, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->LOCAL_LOG:Z

    if-eqz v1, :cond_8

    .line 235
    const-string v1, "SvnBitEncdgTrnsltr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " translated to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_8
    int-to-char p1, v0

    goto/16 :goto_0

    .line 240
    :cond_9
    const-string v2, "SvnBitEncdgTrnsltr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No translation found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "! Replacing for empty space"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v1

    .line 242
    goto/16 :goto_0
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 6
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "throwsException"    # Z

    .prologue
    const/4 v3, 0x0

    .line 130
    sget-boolean v4, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 131
    const-string v4, "SvnBitEncdgTrnsltr"

    const-string v5, "translate"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    if-nez p1, :cond_1

    .line 135
    const-string v4, "SvnBitEncdgTrnsltr"

    const-string v5, "Null message can not be translated"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    if-eqz p2, :cond_4

    .line 137
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Null message can not be translated"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 144
    :cond_1
    iget-object v4, p0, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/messaging/mime/Sms7BitSettingsProvider;->getTableInstance(Landroid/content/Context;)Landroid/util/SparseIntArray;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    .line 146
    iget-object v4, p0, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_3

    .line 147
    :cond_2
    const-string v4, "SvnBitEncdgTrnsltr"

    const-string v5, "Feature is on but translation table has not been loaded yet!"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    if-eqz p2, :cond_4

    .line 149
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Feature is on but translation table has not been loaded yet!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 156
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 157
    .local v2, "size":I
    if-gtz v2, :cond_5

    .line 158
    const-string v3, ""

    .line 166
    .end local v2    # "size":I
    :cond_4
    :goto_0
    return-object v3

    .line 161
    .restart local v2    # "size":I
    :cond_5
    new-array v1, v2, [C

    .line 162
    .local v1, "output":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_6

    .line 163
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/motorola/messaging/mime/Sms7BitEncodingTranslator;->translateIfNeeded(C)C

    move-result v3

    aput-char v3, v1, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    :cond_6
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
