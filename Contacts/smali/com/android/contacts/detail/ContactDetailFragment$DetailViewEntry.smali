.class Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
.super Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
.source "ContactDetailFragment.java"

# interfaces
.implements Lcom/android/contacts/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DetailViewEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
        "Lcom/android/contacts/Collapser$Collapsible",
        "<",
        "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public chatCapability:I

.field public collapseCount:I

.field public context:Landroid/content/Context;

.field public data:Ljava/lang/String;

.field public ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public intent:Landroid/content/Intent;

.field public isPrimary:Z

.field public kind:Ljava/lang/String;

.field private mIsInSubSection:Z

.field public maxLines:I

.field public mimetype:Ljava/lang/String;

.field public presence:I

.field public secondaryActionDescription:I

.field public secondaryActionIcon:I

.field public secondaryIntent:Landroid/content/Intent;

.field public type:I

.field public typeString:Ljava/lang/String;

.field public uri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1284
    invoke-direct {p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>(I)V

    .line 1229
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    .line 1234
    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 1237
    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    .line 1238
    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 1239
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    .line 1240
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    .line 1242
    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 1243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->ids:Ljava/util/ArrayList;

    .line 1244
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseCount:I

    .line 1246
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    .line 1247
    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    .line 1249
    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mIsInSubSection:Z

    .line 1285
    iput-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isEnabled:Z

    .line 1286
    return-void
.end method

.method public static fromValues(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/contacts/model/dataitem/DataItem;
    .param p2, "isDirectoryEntry"    # Z
    .param p3, "directoryId"    # J

    .prologue
    .line 1293
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 1294
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    .line 1295
    iput-object p0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->context:Landroid/content/Context;

    .line 1296
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 1297
    if-eqz p2, :cond_0

    .line 1298
    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "directory"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 1301
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 1302
    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->getKindString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1303
    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->buildDataString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1305
    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->hasKindTypeColumn()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1306
    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->getKindTypeColumn()I

    move-result v3

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    .line 1309
    const-string v3, ""

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 1310
    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v3

    iget-object v3, v3, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 1311
    .local v2, "type":Lcom/android/contacts/model/account/AccountType$EditType;
    iget v3, v2, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    iget v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    if-ne v3, v4, :cond_1

    .line 1312
    iget-object v3, v2, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1314
    iget v3, v2, Lcom/android/contacts/model/account/AccountType$EditType;->labelRes:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 1327
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "type":Lcom/android/contacts/model/account/AccountType$EditType;
    :cond_2
    :goto_0
    return-object v0

    .line 1317
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "type":Lcom/android/contacts/model/account/AccountType$EditType;
    :cond_3
    invoke-virtual {p1}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    iget-object v4, v2, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_0

    .line 1324
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "type":Lcom/android/contacts/model/account/AccountType$EditType;
    :cond_4
    const-string v3, ""

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public click(Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V
    .locals 1
    .param p1, "clickedView"    # Landroid/view/View;
    .param p2, "fragmentListener"    # Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .prologue
    .line 1399
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 1401
    :cond_0
    :goto_0
    return-void

    .line 1400
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-interface {p2, v0}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onItemClicked(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public collapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z
    .locals 4
    .param p1, "entry"    # Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .prologue
    const/4 v1, 0x1

    .line 1345
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->shouldCollapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1346
    const/4 v1, 0x0

    .line 1374
    :goto_0
    return v1

    .line 1350
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    invoke-static {v0, v2}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget v3, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    invoke-static {v2, v3}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v2

    if-le v0, v2, :cond_1

    .line 1352
    iget v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    .line 1353
    iget-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1354
    iget-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 1358
    :cond_1
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    iget v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 1361
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    invoke-static {v0}, Landroid/provider/ContactsContract$StatusUpdates;->getPresencePrecedence(I)I

    move-result v0

    iget v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    invoke-static {v2}, Landroid/provider/ContactsContract$StatusUpdates;->getPresencePrecedence(I)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1363
    iget v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    .line 1367
    :cond_2
    iget-boolean v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 1372
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->ids:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseCount:I

    goto :goto_0

    .line 1367
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    goto :goto_1
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1227
    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z

    move-result v0

    return v0
.end method

.method public isInSubSection()Z
    .locals 1

    .prologue
    .line 1339
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mIsInSubSection:Z

    return v0
.end method

.method public setIsInSubSection(Z)V
    .locals 0
    .param p1, "isInSubSection"    # Z

    .prologue
    .line 1335
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mIsInSubSection:Z

    .line 1336
    return-void
.end method

.method public setPresence(I)V
    .locals 0
    .param p1, "presence"    # I

    .prologue
    .line 1331
    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    .line 1332
    return-void
.end method

.method public shouldCollapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z
    .locals 5
    .param p1, "entry"    # Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .prologue
    const/4 v0, 0x0

    .line 1379
    if-nez p1, :cond_1

    .line 1394
    :cond_0
    :goto_0
    return v0

    .line 1383
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1387
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1394
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1227
    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->shouldCollapseWith(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1254
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "== DetailViewEntry ==\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  typeString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  maxLines: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mimetype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isPrimary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  secondaryActionIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  secondaryActionDescription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 1266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    if-nez v1, :cond_2

    .line 1271
    const-string v1, "  secondaryIntent: (null)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ids: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->ids:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/common/collect/Iterables;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  collapseCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->collapseCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  presence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  chatCapability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsInSubsection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mIsInSubSection:Z

    if-eqz v1, :cond_3

    const-string v1, "true"

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1262
    :cond_0
    const-string v1, "false"

    goto/16 :goto_0

    .line 1268
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1273
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  secondaryIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1279
    :cond_3
    const-string v1, "false"

    goto :goto_3
.end method
