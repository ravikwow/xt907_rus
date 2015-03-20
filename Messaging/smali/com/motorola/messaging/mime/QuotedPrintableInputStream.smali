.class public Lcom/motorola/messaging/mime/QuotedPrintableInputStream;
.super Ljava/io/InputStream;
.source "QuotedPrintableInputStream.java"


# instance fields
.field byteq:Lcom/motorola/messaging/mime/ByteQueue;

.field pushbackq:Lcom/motorola/messaging/mime/ByteQueue;

.field private state:B

.field private stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 34
    new-instance v0, Lcom/motorola/messaging/mime/ByteQueue;

    invoke-direct {v0}, Lcom/motorola/messaging/mime/ByteQueue;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->byteq:Lcom/motorola/messaging/mime/ByteQueue;

    .line 35
    new-instance v0, Lcom/motorola/messaging/mime/ByteQueue;

    invoke-direct {v0}, Lcom/motorola/messaging/mime/ByteQueue;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->pushbackq:Lcom/motorola/messaging/mime/ByteQueue;

    .line 36
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->state:B

    .line 39
    iput-object p1, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    .line 40
    return-void
.end method

.method private asciiCharToNumericValue(B)B
    .locals 3
    .param p1, "c"    # B

    .prologue
    .line 199
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 200
    add-int/lit8 v0, p1, -0x30

    int-to-byte v0, v0

    .line 204
    :goto_0
    return v0

    .line 201
    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_1

    .line 202
    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 203
    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_2

    .line 204
    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 210
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a hexadecimal digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fillBuffer()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x39

    const/16 v10, 0x30

    const/16 v9, 0xd

    const/16 v8, 0x3d

    const/4 v7, 0x0

    .line 111
    const/4 v3, 0x0

    .line 112
    .local v3, "msdChar":B
    :goto_0
    iget-object v4, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->byteq:Lcom/motorola/messaging/mime/ByteQueue;

    invoke-virtual {v4}, Lcom/motorola/messaging/mime/ByteQueue;->count()I

    move-result v4

    if-nez v4, :cond_0

    .line 113
    iget-object v4, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->pushbackq:Lcom/motorola/messaging/mime/ByteQueue;

    invoke-virtual {v4}, Lcom/motorola/messaging/mime/ByteQueue;->count()I

    move-result v4

    if-nez v4, :cond_1

    .line 114
    invoke-direct {p0}, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->populatePushbackQueue()V

    .line 115
    iget-object v4, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->pushbackq:Lcom/motorola/messaging/mime/ByteQueue;

    invoke-virtual {v4}, Lcom/motorola/messaging/mime/ByteQueue;->count()I

    move-result v4

    if-nez v4, :cond_1

    .line 191
    :cond_0
    return-void

    .line 120
    :cond_1
    iget-object v4, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->pushbackq:Lcom/motorola/messaging/mime/ByteQueue;

    invoke-virtual {v4}, Lcom/motorola/messaging/mime/ByteQueue;->dequeue()B

    move-result v0

    .line 122
    .local v0, "b":B
    iget-byte v4, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->state:B

    packed-switch v4, :pswitch_data_0

    .line 185
    const-string v4, "QuotedPrintableIS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->state:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iput-byte v7, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->state:B

    .line 187
    iget-object v4, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->byteq:Lcom/motorola/messaging/mime/ByteQueue;

    invoke-virtual {v4, v0}, Lcom/motorola/messaging/mime/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 124
    :pswitch_0
    if-eq v0, v8, :cond_2

    .line 125
    iget-object v4, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->byteq:Lcom/motorola/messaging/mime/ByteQueue;

    invoke-virtual {v4, v0}, Lcom/motorola/messaging/mime/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 128
    :cond_2
    const/4 v4, 0x1

    iput-byte v4, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->state:B

    goto :goto_0

    .line 132
    :pswitch_1
    if-ne v0, v9, :cond_3

    .line 133
    const/4 v4, 0x2

    iput-byte v4, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->state:B

    goto :goto_0

    .line 135
    :cond_3
    if-lt v0, v10, :cond_4

    if-le v0, v11, :cond_6

    :cond_4
    const/16 v4, 0x41

    if-lt v0, v4, :cond_5

    const/16 v4, 0x46

    if-le v0, v4, :cond_6

    :cond_5
    const/16 v4, 0x61

    if-lt v0, v4, :cond_7

    const/16 v4, 0x66

    if-gt v0, v4, :cond_7

    .line 136
    :cond_6
    const/4 v4, 0x3

    iput-byte v4, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->state:B

    .line 137
    move v3, v0

    .line 138
    goto :goto_0

    .line 139
    :cond_7
    if-ne v0, v8, :cond_8

    .line 144
    const-string v4, "QuotedPrintableIS"

    const-string v5, "Malformed MIME; got =="

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v4, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->byteq:Lcom/motorola/messaging/mime/ByteQueue;

    invoke-virtual {v4, v8}, Lcom/motorola/messaging/mime/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 148
    :cond_8
    const-string v4, "QuotedPrintableIS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed MIME; expected \\r or [0-9A-Z], got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iput-byte v7, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->state:B

    .line 151
    iget-object v4, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->byteq:Lcom/motorola/messaging/mime/ByteQueue;

    invoke-virtual {v4, v8}, Lcom/motorola/messaging/mime/ByteQueue;->enqueue(B)V

    .line 152
    iget-object v4, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->byteq:Lcom/motorola/messaging/mime/ByteQueue;

    invoke-virtual {v4, v0}, Lcom/motorola/messaging/mime/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 156
    :pswitch_2
    const/16 v4, 0xa

    if-ne v0, v4, :cond_9

    .line 157
    iput-byte v7, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->state:B

    goto/16 :goto_0

    .line 160
    :cond_9
    const-string v4, "QuotedPrintableIS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed MIME; expected 10, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iput-byte v7, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->state:B

    .line 163
    iget-object v4, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->byteq:Lcom/motorola/messaging/mime/ByteQueue;

    invoke-virtual {v4, v8}, Lcom/motorola/messaging/mime/ByteQueue;->enqueue(B)V

    .line 164
    iget-object v4, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->byteq:Lcom/motorola/messaging/mime/ByteQueue;

    invoke-virtual {v4, v9}, Lcom/motorola/messaging/mime/ByteQueue;->enqueue(B)V

    .line 165
    iget-object v4, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->byteq:Lcom/motorola/messaging/mime/ByteQueue;

    invoke-virtual {v4, v0}, Lcom/motorola/messaging/mime/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 169
    :pswitch_3
    if-lt v0, v10, :cond_a

    if-le v0, v11, :cond_c

    :cond_a
    const/16 v4, 0x41

    if-lt v0, v4, :cond_b

    const/16 v4, 0x46

    if-le v0, v4, :cond_c

    :cond_b
    const/16 v4, 0x61

    if-lt v0, v4, :cond_d

    const/16 v4, 0x66

    if-gt v0, v4, :cond_d

    .line 170
    :cond_c
    invoke-direct {p0, v3}, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->asciiCharToNumericValue(B)B

    move-result v2

    .line 171
    .local v2, "msd":B
    invoke-direct {p0, v0}, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->asciiCharToNumericValue(B)B

    move-result v1

    .line 172
    .local v1, "low":B
    iput-byte v7, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->state:B

    .line 173
    iget-object v4, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->byteq:Lcom/motorola/messaging/mime/ByteQueue;

    shl-int/lit8 v5, v2, 0x4

    or-int/2addr v5, v1

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lcom/motorola/messaging/mime/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 176
    .end local v1    # "low":B
    .end local v2    # "msd":B
    :cond_d
    const-string v4, "QuotedPrintableIS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed MIME; expected [0-9A-Z], got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iput-byte v7, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->state:B

    .line 179
    iget-object v4, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->byteq:Lcom/motorola/messaging/mime/ByteQueue;

    invoke-virtual {v4, v8}, Lcom/motorola/messaging/mime/ByteQueue;->enqueue(B)V

    .line 180
    iget-object v4, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->byteq:Lcom/motorola/messaging/mime/ByteQueue;

    invoke-virtual {v4, v3}, Lcom/motorola/messaging/mime/ByteQueue;->enqueue(B)V

    .line 181
    iget-object v4, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->byteq:Lcom/motorola/messaging/mime/ByteQueue;

    invoke-virtual {v4, v0}, Lcom/motorola/messaging/mime/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private populatePushbackQueue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v1, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->pushbackq:Lcom/motorola/messaging/mime/ByteQueue;

    invoke-virtual {v1}, Lcom/motorola/messaging/mime/ByteQueue;->count()I

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 88
    .local v0, "i":I
    :sswitch_0
    iget-object v1, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->pushbackq:Lcom/motorola/messaging/mime/ByteQueue;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/mime/ByteQueue;->enqueue(B)V

    .line 80
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 81
    .restart local v0    # "i":I
    sparse-switch v0, :sswitch_data_0

    .line 96
    iget-object v1, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->pushbackq:Lcom/motorola/messaging/mime/ByteQueue;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/mime/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 84
    :sswitch_1
    iget-object v1, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->pushbackq:Lcom/motorola/messaging/mime/ByteQueue;

    invoke-virtual {v1}, Lcom/motorola/messaging/mime/ByteQueue;->clear()V

    goto :goto_0

    .line 92
    :sswitch_2
    iget-object v1, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->pushbackq:Lcom/motorola/messaging/mime/ByteQueue;

    invoke-virtual {v1}, Lcom/motorola/messaging/mime/ByteQueue;->clear()V

    .line 93
    iget-object v1, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->pushbackq:Lcom/motorola/messaging/mime/ByteQueue;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/mime/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x9 -> :sswitch_0
        0xa -> :sswitch_2
        0xd -> :sswitch_2
        0x20 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 49
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->fillBuffer()V

    .line 53
    iget-object v1, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->byteq:Lcom/motorola/messaging/mime/ByteQueue;

    invoke-virtual {v1}, Lcom/motorola/messaging/mime/ByteQueue;->count()I

    move-result v1

    if-nez v1, :cond_1

    .line 54
    const/4 v0, -0x1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/mime/QuotedPrintableInputStream;->byteq:Lcom/motorola/messaging/mime/ByteQueue;

    invoke-virtual {v1}, Lcom/motorola/messaging/mime/ByteQueue;->dequeue()B

    move-result v0

    .line 57
    .local v0, "val":B
    if-gez v0, :cond_0

    .line 60
    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method
