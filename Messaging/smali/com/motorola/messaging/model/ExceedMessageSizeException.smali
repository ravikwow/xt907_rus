.class public Lcom/motorola/messaging/model/ExceedMessageSizeException;
.super Lcom/motorola/messaging/model/ContentRestrictionException;
.source "ExceedMessageSizeException.java"


# static fields
.field private static final serialVersionUID:J = 0x5c416c21a8bc3882L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/motorola/messaging/model/ContentRestrictionException;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/motorola/messaging/model/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method
