.class public Lcom/motorola/messaging/drm/DrmException;
.super Ljava/lang/Exception;
.source "DrmException.java"


# static fields
.field private static final serialVersionUID:J = 0x3f57ea58e25034ceL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method
