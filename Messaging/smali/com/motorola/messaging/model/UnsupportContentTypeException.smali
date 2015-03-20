.class public Lcom/motorola/messaging/model/UnsupportContentTypeException;
.super Lcom/motorola/messaging/model/ContentRestrictionException;
.source "UnsupportContentTypeException.java"


# static fields
.field private static final serialVersionUID:J = 0x253ff03fb5b89761L


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
