.class public final Lcom/motorola/messaging/model/RestrictedModeNonCoreException;
.super Lcom/motorola/messaging/model/UnsupportContentTypeException;
.source "RestrictedModeNonCoreException.java"

# interfaces
.implements Lcom/motorola/messaging/model/RestrictedModeException;


# static fields
.field private static final serialVersionUID:J = 0x3320b6697c12a761L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/motorola/messaging/model/UnsupportContentTypeException;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/motorola/messaging/model/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method
