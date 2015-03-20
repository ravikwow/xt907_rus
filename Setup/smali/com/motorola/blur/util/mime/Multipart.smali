.class public Lcom/motorola/blur/util/mime/Multipart;
.super Lcom/motorola/blur/util/mime/BodyPart;
.source "Multipart.java"


# static fields
.field private static final CHARS:Ljava/lang/String; = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field private static final HYPHEN:Ljava/lang/String; = "--"

.field private static rand:Ljava/util/Random;


# instance fields
.field private final mContentType:Lcom/motorola/blur/util/mime/ContentType;

.field mIs:Lcom/motorola/blur/util/mime/BoundaryInputStream;

.field private mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/blur/util/mime/BodyPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/motorola/blur/util/mime/BodyPart;-><init>()V

    .line 53
    invoke-static {}, Lcom/motorola/blur/util/mime/Multipart;->generateMultipartBoundary()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "multipartBoundary":Ljava/lang/String;
    new-instance v1, Lcom/motorola/blur/util/mime/ContentType;

    const-string v2, "multipart"

    const-string v3, "mixed"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "boundary"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/blur/util/mime/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/motorola/blur/util/mime/Multipart;->mContentType:Lcom/motorola/blur/util/mime/ContentType;

    .line 57
    iget-object v1, p0, Lcom/motorola/blur/util/mime/BodyPart;->mHeaders:Lcom/motorola/blur/util/mime/Headers;

    iget-object v2, p0, Lcom/motorola/blur/util/mime/Multipart;->mContentType:Lcom/motorola/blur/util/mime/ContentType;

    invoke-virtual {v1, v2}, Lcom/motorola/blur/util/mime/Headers;->setContentType(Lcom/motorola/blur/util/mime/ContentType;)V

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/blur/util/mime/Multipart;->mParts:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/motorola/blur/util/mime/ContentType;Lcom/motorola/blur/util/mime/CRLFInputStream;)V
    .locals 2
    .param p1, "contentType"    # Lcom/motorola/blur/util/mime/ContentType;
    .param p2, "in"    # Lcom/motorola/blur/util/mime/CRLFInputStream;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/motorola/blur/util/mime/BodyPart;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/motorola/blur/util/mime/Multipart;->mContentType:Lcom/motorola/blur/util/mime/ContentType;

    .line 63
    iget-object v1, p0, Lcom/motorola/blur/util/mime/BodyPart;->mHeaders:Lcom/motorola/blur/util/mime/Headers;

    invoke-virtual {v1, p1}, Lcom/motorola/blur/util/mime/Headers;->setContentType(Lcom/motorola/blur/util/mime/ContentType;)V

    .line 64
    invoke-virtual {p1}, Lcom/motorola/blur/util/mime/ContentType;->getBoundary()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "boundary":Ljava/lang/String;
    new-instance v1, Lcom/motorola/blur/util/mime/BoundaryInputStream;

    invoke-direct {v1, p2, v0}, Lcom/motorola/blur/util/mime/BoundaryInputStream;-><init>(Lcom/motorola/blur/util/mime/CRLFInputStream;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/motorola/blur/util/mime/Multipart;->mIs:Lcom/motorola/blur/util/mime/BoundaryInputStream;

    .line 66
    return-void
.end method

.method private static declared-synchronized generateMultipartBoundary()Ljava/lang/String;
    .locals 6

    .prologue
    .line 194
    const-class v3, Lcom/motorola/blur/util/mime/Multipart;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/motorola/blur/util/mime/Multipart;->rand:Ljava/util/Random;

    if-nez v2, :cond_0

    .line 195
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    sput-object v2, Lcom/motorola/blur/util/mime/Multipart;->rand:Ljava/util/Random;

    .line 197
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 198
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "Motorola-A-Mail-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    .line 200
    const-string v2, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    sget-object v4, Lcom/motorola/blur/util/mime/Multipart;->rand:Ljava/util/Random;

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 194
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public addBodyPart(Lcom/motorola/blur/util/mime/BodyPart;)V
    .locals 1
    .param p1, "part"    # Lcom/motorola/blur/util/mime/BodyPart;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/motorola/blur/util/mime/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()Lcom/motorola/blur/util/mime/ContentType;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/motorola/blur/util/mime/Multipart;->mContentType:Lcom/motorola/blur/util/mime/ContentType;

    return-object v0
.end method

.method public isAlternative()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/blur/util/mime/Multipart;->mContentType:Lcom/motorola/blur/util/mime/ContentType;

    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/ContentType;->isAlternative()Z

    move-result v0

    return v0
.end method

.method public isBodyCompleted()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/motorola/blur/util/mime/Multipart;->mIs:Lcom/motorola/blur/util/mime/BoundaryInputStream;

    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/BoundaryInputStream;->seenBoundary()Z

    move-result v0

    return v0
.end method

.method public isMultipartCompleted()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/blur/util/mime/Multipart;->mIs:Lcom/motorola/blur/util/mime/BoundaryInputStream;

    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/BoundaryInputStream;->seenMultipartEnd()Z

    move-result v0

    return v0
.end method

.method public nexBodyPart()Lcom/motorola/blur/util/mime/BodyPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/motorola/blur/util/mime/Multipart;->skipToEndOfPart()V

    .line 75
    iget-object v0, p0, Lcom/motorola/blur/util/mime/Multipart;->mIs:Lcom/motorola/blur/util/mime/BoundaryInputStream;

    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/BoundaryInputStream;->hasMorePart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/motorola/blur/util/mime/Multipart;->mIs:Lcom/motorola/blur/util/mime/BoundaryInputStream;

    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/BoundaryInputStream;->reset()V

    .line 78
    new-instance v0, Lcom/motorola/blur/util/mime/Multipart$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/util/mime/Multipart$1;-><init>(Lcom/motorola/blur/util/mime/Multipart;)V

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlternative()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/motorola/blur/util/mime/Multipart;->mContentType:Lcom/motorola/blur/util/mime/ContentType;

    const-string v1, "alternative"

    invoke-virtual {v0, v1}, Lcom/motorola/blur/util/mime/ContentType;->setSubType(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public skipToEndOfPart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/util/mime/Multipart;->mIs:Lcom/motorola/blur/util/mime/BoundaryInputStream;

    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/CRLFInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    return-void
.end method

.method protected writeBody(Ljava/io/Writer;Lcom/motorola/blur/util/mime/ProgressFeedback;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "feedback"    # Lcom/motorola/blur/util/mime/ProgressFeedback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    return-void
.end method

.method public writeTo(Ljava/io/Writer;Lcom/motorola/blur/util/mime/ProgressFeedback;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "feedback"    # Lcom/motorola/blur/util/mime/ProgressFeedback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    const-string v3, "Content-Type"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/blur/util/mime/Multipart;->mContentType:Lcom/motorola/blur/util/mime/ContentType;

    invoke-virtual {v4}, Lcom/motorola/blur/util/mime/ParameterizedValue;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 156
    iget-object v3, p0, Lcom/motorola/blur/util/mime/Multipart;->mContentType:Lcom/motorola/blur/util/mime/ContentType;

    invoke-virtual {v3}, Lcom/motorola/blur/util/mime/ContentType;->getBoundary()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "multipartBoundary":Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/blur/util/mime/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 158
    iget-object v3, p0, Lcom/motorola/blur/util/mime/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/blur/util/mime/BodyPart;

    .line 163
    .local v2, "part":Lcom/motorola/blur/util/mime/BodyPart;
    const-string v3, "\r\n"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 166
    invoke-virtual {v2, p1, p2}, Lcom/motorola/blur/util/mime/BodyPart;->writeTo(Ljava/io/Writer;Lcom/motorola/blur/util/mime/ProgressFeedback;)V

    goto :goto_0

    .line 173
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "part":Lcom/motorola/blur/util/mime/BodyPart;
    :cond_0
    const-string v3, "\r\n"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 181
    :cond_1
    const-string v3, "\r\n"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 183
    return-void
.end method
