.class public Lcom/android/settings/sdencryption/EncryptionSettingsService$LocalBinder;
.super Landroid/os/Binder;
.source "EncryptionSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sdencryption/EncryptionSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sdencryption/EncryptionSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/settings/sdencryption/EncryptionSettingsService;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionSettingsService$LocalBinder;->this$0:Lcom/android/settings/sdencryption/EncryptionSettingsService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/android/settings/sdencryption/EncryptionSettingsService;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionSettingsService$LocalBinder;->this$0:Lcom/android/settings/sdencryption/EncryptionSettingsService;

    return-object v0
.end method
