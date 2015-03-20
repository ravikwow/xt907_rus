.class public final Lstatemap/StateUndefinedException;
.super Ljava/lang/RuntimeException;
.source "StateUndefinedException.java"


# static fields
.field private static final serialVersionUID:J = 0x60000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 79
    return-void
.end method
