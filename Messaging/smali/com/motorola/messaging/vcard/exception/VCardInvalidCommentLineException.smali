.class public Lcom/motorola/messaging/vcard/exception/VCardInvalidCommentLineException;
.super Lcom/motorola/messaging/vcard/exception/VCardInvalidLineException;
.source "VCardInvalidCommentLineException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/motorola/messaging/vcard/exception/VCardInvalidLineException;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/motorola/messaging/vcard/exception/VCardInvalidLineException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method