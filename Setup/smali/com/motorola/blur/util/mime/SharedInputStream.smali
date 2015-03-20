.class public Lcom/motorola/blur/util/mime/SharedInputStream;
.super Ljava/io/InputStream;
.source "SharedInputStream.java"


# instance fields
.field private mIn:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/motorola/blur/util/mime/SharedInputStream;->mIn:Ljava/io/InputStream;

    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/motorola/blur/util/mime/SharedInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method
