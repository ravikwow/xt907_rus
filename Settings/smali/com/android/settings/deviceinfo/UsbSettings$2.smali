.class Lcom/android/settings/deviceinfo/UsbSettings$2;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 94
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$300(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb_cdrom_enabled"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    return v1

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
