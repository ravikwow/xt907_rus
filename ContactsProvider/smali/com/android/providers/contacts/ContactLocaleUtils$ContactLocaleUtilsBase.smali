.class public Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
.super Ljava/lang/Object;
.source "ContactLocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactLocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactLocaleUtilsBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactLocaleUtils;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactLocaleUtils;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->this$0:Lcom/android/providers/contacts/ContactLocaleUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 43
    return-object p1
.end method
