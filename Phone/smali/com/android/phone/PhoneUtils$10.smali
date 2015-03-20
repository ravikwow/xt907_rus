.class final Lcom/android/phone/PhoneUtils$10;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/location/CountryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->getCurrentCountryIso()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onCountryDetected(Landroid/location/Country;)V
    .locals 1
    .param p1, "country"    # Landroid/location/Country;

    .prologue
    .line 3613
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/android/phone/PhoneUtils;->mCountryIso:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$802(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3614
    monitor-exit p0

    return-void

    .line 3613
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
