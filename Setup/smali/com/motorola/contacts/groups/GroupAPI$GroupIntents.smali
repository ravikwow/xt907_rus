.class public Lcom/motorola/contacts/groups/GroupAPI$GroupIntents;
.super Ljava/lang/Object;
.source "GroupAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/groups/GroupAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupIntents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/contacts/groups/GroupAPI$GroupIntents$SavingGroup;,
        Lcom/motorola/contacts/groups/GroupAPI$GroupIntents$ConfirmGroup;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIRM_GROUP:Ljava/lang/String; = "com.motorola.contacts.ACTION_CONFIRM_GROUP"

.field public static final ACTION_SAVING_GROUP:Ljava/lang/String; = "com.motorola.contacts.ACTION_SAVING_GROUP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method
