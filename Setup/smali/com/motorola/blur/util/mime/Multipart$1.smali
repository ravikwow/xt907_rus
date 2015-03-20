.class Lcom/motorola/blur/util/mime/Multipart$1;
.super Lcom/motorola/blur/util/mime/BodyPart;
.source "Multipart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/util/mime/Multipart;->nexBodyPart()Lcom/motorola/blur/util/mime/BodyPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/util/mime/Multipart;


# direct methods
.method constructor <init>(Lcom/motorola/blur/util/mime/Multipart;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lcom/motorola/blur/util/mime/Multipart$1;->this$0:Lcom/motorola/blur/util/mime/Multipart;

    invoke-direct {p0}, Lcom/motorola/blur/util/mime/BodyPart;-><init>()V

    .line 81
    new-instance v0, Lcom/motorola/blur/util/mime/Headers;

    invoke-direct {v0}, Lcom/motorola/blur/util/mime/Headers;-><init>()V

    .line 82
    .local v0, "headers":Lcom/motorola/blur/util/mime/Headers;
    const/4 v1, 0x0

    .line 83
    .local v1, "line":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/motorola/blur/util/mime/Multipart$1;->this$0:Lcom/motorola/blur/util/mime/Multipart;

    iget-object v2, v2, Lcom/motorola/blur/util/mime/Multipart;->mIs:Lcom/motorola/blur/util/mime/BoundaryInputStream;

    invoke-virtual {v2}, Lcom/motorola/blur/util/mime/CRLFInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 89
    :cond_0
    iput-object v0, p0, Lcom/motorola/blur/util/mime/BodyPart;->mHeaders:Lcom/motorola/blur/util/mime/Headers;

    .line 90
    return-void

    .line 87
    :cond_1
    invoke-virtual {v0, v1}, Lcom/motorola/blur/util/mime/Headers;->addRawHeaderLine(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v3, p0, Lcom/motorola/blur/util/mime/BodyPart;->mHeaders:Lcom/motorola/blur/util/mime/Headers;

    invoke-virtual {v3}, Lcom/motorola/blur/util/mime/Headers;->getTransferEncoding()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "transferEncoding":Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/blur/util/mime/Multipart$1;->this$0:Lcom/motorola/blur/util/mime/Multipart;

    iget-object v3, v3, Lcom/motorola/blur/util/mime/Multipart;->mIs:Lcom/motorola/blur/util/mime/BoundaryInputStream;

    invoke-static {v3, v2}, Lcom/motorola/blur/util/mime/MimeCodec;->decodInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 96
    .local v1, "in":Ljava/io/InputStream;
    iget-object v3, p0, Lcom/motorola/blur/util/mime/BodyPart;->mHeaders:Lcom/motorola/blur/util/mime/Headers;

    invoke-virtual {v3}, Lcom/motorola/blur/util/mime/Headers;->getContentType()Lcom/motorola/blur/util/mime/ContentType;

    move-result-object v0

    .line 97
    .local v0, "contentType":Lcom/motorola/blur/util/mime/ContentType;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/ContentType;->isFlowed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    new-instance v3, Lcom/motorola/blur/util/mime/FlowedInputStream;

    invoke-virtual {v0}, Lcom/motorola/blur/util/mime/ContentType;->delSP()Z

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/motorola/blur/util/mime/FlowedInputStream;-><init>(Ljava/io/InputStream;Z)V

    move-object v1, v3

    .line 102
    .end local v1    # "in":Ljava/io/InputStream;
    :cond_0
    return-object v1
.end method

.method protected writeBody(Ljava/io/Writer;Lcom/motorola/blur/util/mime/ProgressFeedback;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "feedback"    # Lcom/motorola/blur/util/mime/ProgressFeedback;

    .prologue
    .line 108
    return-void
.end method
