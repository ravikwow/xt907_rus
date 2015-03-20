.class public Lcom/android/phone/MotoCallerInfo;
.super Ljava/lang/Object;
.source "MotoCallerInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MotoCallerInfo$MotoMoExtraInfo;
    }
.end annotation


# instance fields
.field googleCallerInfo:Lcom/android/internal/telephony/CallerInfo;

.field public moExtraInfo:Lcom/android/phone/MotoCallerInfo$MotoMoExtraInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/android/phone/MotoCallerInfo$MotoMoExtraInfo;

    invoke-direct {v0}, Lcom/android/phone/MotoCallerInfo$MotoMoExtraInfo;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MotoCallerInfo;->moExtraInfo:Lcom/android/phone/MotoCallerInfo$MotoMoExtraInfo;

    .line 23
    return-void
.end method
