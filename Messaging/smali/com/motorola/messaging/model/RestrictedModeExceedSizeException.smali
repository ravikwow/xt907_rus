.class public final Lcom/motorola/messaging/model/RestrictedModeExceedSizeException;
.super Lcom/motorola/messaging/model/ExceedMessageSizeException;
.source "RestrictedModeExceedSizeException.java"

# interfaces
.implements Lcom/motorola/messaging/model/RestrictedModeException;


# static fields
.field private static final serialVersionUID:J = 0x5c416c282daa5082L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/motorola/messaging/model/ExceedMessageSizeException;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/motorola/messaging/model/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method
