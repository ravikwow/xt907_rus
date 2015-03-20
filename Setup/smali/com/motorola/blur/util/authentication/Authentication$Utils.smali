.class public Lcom/motorola/blur/util/authentication/Authentication$Utils;
.super Ljava/lang/Object;
.source "Authentication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/util/authentication/Authentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# static fields
.field private static final FLAGS_OFFSET:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static baseCode(I)I
    .locals 1
    .param p0, "responseCode"    # I

    .prologue
    .line 110
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static flags(I)I
    .locals 1
    .param p0, "responseCode"    # I

    .prologue
    .line 120
    ushr-int/lit8 v0, p0, 0x8

    return v0
.end method

.method public static makeReponseCode(II)I
    .locals 1
    .param p0, "baseCode"    # I
    .param p1, "flags"    # I

    .prologue
    .line 101
    shl-int/lit8 v0, p1, 0x8

    add-int/2addr v0, p0

    return v0
.end method
