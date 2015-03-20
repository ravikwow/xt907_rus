.class public final Lstatemap/TransitionUndefinedException;
.super Ljava/lang/RuntimeException;
.source "TransitionUndefinedException.java"


# static fields
.field private static final serialVersionUID:J = 0x60000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 91
    return-void
.end method
