.class public Lcom/android/phone/MotoCallerInfo$MotoMoExtraInfo;
.super Ljava/lang/Object;
.source "MotoCallerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MotoCallerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotoMoExtraInfo"
.end annotation


# instance fields
.field contactRef:Landroid/net/Uri;

.field convertNumber:Ljava/lang/String;

.field orgNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/phone/MotoCallerInfo$MotoMoExtraInfo;->orgNumber:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/android/phone/MotoCallerInfo$MotoMoExtraInfo;->convertNumber:Ljava/lang/String;

    return-void
.end method
