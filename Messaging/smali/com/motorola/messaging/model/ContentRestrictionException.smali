.class public Lcom/motorola/messaging/model/ContentRestrictionException;
.super Ljava/lang/Exception;
.source "ContentRestrictionException.java"


# static fields
.field private static final serialVersionUID:J = 0x729aef8c652652bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method
