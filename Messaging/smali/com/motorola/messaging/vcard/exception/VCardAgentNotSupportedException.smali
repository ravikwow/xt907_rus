.class public Lcom/motorola/messaging/vcard/exception/VCardAgentNotSupportedException;
.super Lcom/motorola/messaging/vcard/exception/VCardNotSupportedException;
.source "VCardAgentNotSupportedException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/motorola/messaging/vcard/exception/VCardNotSupportedException;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/motorola/messaging/vcard/exception/VCardNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method